function onCreate() -- this here only happens once, that's what creation does
	for i= 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'MARSHYSIDENOTE_assets') -- change 'playerStrums' to 'opponentStrums' for DD notes
    end
    for b = 0, getProperty('unspawnNotes.length') - 1 do
		if not getPropertyFromGroup('unspawnNotes', b, 'mustPress') then -- change 'if' to 'if not' for DD notes
			setPropertyFromGroup('opponentStrums', b, 'texture', 'MARSHYSIDENOTE_assets')
		end
	end
end

function onUpdate(elapsed)
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then -- same deal with b
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'MARSHYSIDENOTE_assets');
		end
	end
end