congress_members_list = Psych.load_file('db/legislators-current.yaml')


congress_members_list.each do |member|
  CongressMember.create!(name: member["name"]["official_full"],
                        title: member["terms"].last["type"].capitalize,
                        state: member["terms"].last["state"],
                        district: member["terms"].last["district"],
                        website: member["terms"].last["url"],
                        end: member["terms"].last["end"]
    )
end
