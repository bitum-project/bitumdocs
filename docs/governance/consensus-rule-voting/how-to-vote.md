# <img class="bitum-icon" src="/img/bitum-icons/TicketVoted.svg" /> **How to Vote**

This guide assumes you already have an active wallet and have purchased tickets. If not, please follow the [Voting Preparation](overview.md#voting-preparation) guide.

The choice a ticket votes with depends on your vote preference at the time the ticket is chosen, not when it is bought. So you can set your choice at any time within the voting window and all future tickets will vote accordingly.

## <img class="bitum-icon" src="/img/bitum-icons/Servers.svg" /> **Voting with a Voting Service Provider (VSP)**

If your Voting Service Provider (VSP) has updated to the latest VSP software, you will find a 'Voting' page in the navigation menu with dropdown options for each agenda. After you've chosen how you want your tickets to vote, simply press the 'Update Voting Preferences' button to save your vote choices. Below you'll find an image of the vote choices for vote version 5.

<img src="/img/voting_preferences.png">

You can also update your voting preferences via Bitum. Under the 'Tickets section', 'Governance tab', you'll find the option to set your vote.

<img src="/img/bitum/voting.png">


---------------------------

## <img class="bitum-icon" src="/img/bitum-icons/Solo.svg" /> **Solo Voting**

##I just want the commands!##

###**YES**###
`bitumctl --wallet setvotechoice lnfeatures yes`

###**NO**###
`bitumctl --wallet setvotechoice lnfeatures no`

----------------

Through the command line, you'll want to familiarize yourself with the `bitumctl --wallet getvotechoices` and `bitumctl --wallet setvotechoice "agendaid" "choiceid"` commands.

The first command, `bitumctl --wallet getvotechoices`, returns JSON resembling this:

```
{
  "version": 5,
  "choices": [
    {
      "agendaid": "lnfeatures",
      "agendadescription": "Enable features defined in DCP0002 and DCP0003 necessary to support Lightning Network (LN)",
      "choiceid": "abstain",
      "choicedescription": "change to the new consensus rules"
    }
  ]
}
```

The second command, `bitumctl --wallet setvotechoice "agendaid" "choiceid"`, let's you set your votechoice. `"agendaid"` is found via the `getvotechoices` command above, and `"choiceid"` can be `yes`, `no`, or `abstain`.

For example, issuing `bitumctl --wallet setvotechoice lnfeatures yes` results in the following changes to `bitumctl --wallet getvotechoices`:

```
{
  "version": 5,
  "choices": [
    {
      "agendaid": "lnfeatures",
      "agendadescription": "Enable features defined in DCP0002 and DCP0003 necessary to support Lightning Network (LN)",
      "choiceid": "yes",
      "choicedescription": "change to the new consensus rules"
    }
  ]
}
```
