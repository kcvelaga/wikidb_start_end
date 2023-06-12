# wikidb_start_end

Generate a structured list of when each Wikimedia project was created, and if applicable, the closure date as well.

mediawiki-config files on gerrit.wikimedia.org have [lists of databases by various categories](https://gerrit.wikimedia.org/r/plugins/gitiles/operations/mediawiki-config/+/refs/heads/master/dblists), when a wiki is created/closed the database code is added to the respective list. [git-blame](https://git-scm.com/docs/git-blame) helps to see which line of the file was last modified when and by whom. As the dblists are structured as one db (wiki) per line, this data can be used to understand when a wiki was created, as database creation is an essential step for wiki creation.

## For Wikimedia project creation date

The git files were created on 2012-02-24, which is the reason for many wikis having their date recorded as 2012-02-24. This source can only be used for wikis created after 2012-02-24. For wikis created before that date, three sources are used, according to three broad timelines.

* 2001 to mid-2006: [Wikimedia Incubator](https://incubator.wikimedia.org/wiki/Incubator:Main_Page) was set up in June 2006, which created a framework for the creation of new language wikis (with an exception to Wikidata). Post its creation, the [site creation log](https://incubator.wikimedia.org/wiki/Incubator:Site_creation_log) was maintained. Prior to that, the least available revision timestamp from the revision and archive table is considered a proxy for the creation date.
* mid-2006 to August 2010: A manually cleaned version (output as CSV file) of the incubator site creation log is used.
    * This can potentially be used beyond 2010 as well, however, the list doesn't follow a consistent HTML format to scrape from. Since the records don't change, a one-time manual extraction seemed reasonable to fill this gap.
* August 2010 to March 2012: The [new projects mailing list](https://lists.wikimedia.org/hyperkitty/list/newprojects@lists.wikimedia.org/) has been created in 2010, where an automated message is sent every time a new wiki is created. The date of the email has been considered as a proxy for the creation date.
* Post March 2012: The git blame date for database creation has been used.

## For the Wikimedia project closure date

_under construction_