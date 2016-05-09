Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCCE7E00EC4; Mon,  9 May 2016 04:52:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A5CE00DF1
	for <yocto@yoctoproject.org>; Mon,  9 May 2016 04:52:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 09 May 2016 04:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,600,1455004800"; d="scan'208";a="975687187"
Received: from jlock-mobl2.ger.corp.intel.com ([10.252.11.52])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2016 04:52:23 -0700
Message-ID: <1462794742.3401.20.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 09 May 2016 12:52:22 +0100
In-Reply-To: <CAPhnLPATskV6QGFsCQ+SrJcoisnua5aPR4Ya5UzXGoQ9av-1fw@mail.gmail.com>
References: <1462791978-16776-1-git-send-email-joshua.g.lock@intel.com>
	<CAPhnLPATskV6QGFsCQ+SrJcoisnua5aPR4Ya5UzXGoQ9av-1fw@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] bin/buildlogger: add new script to aid SWAT process
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 May 2016 11:52:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-05-09 at 12:42 +0100, Flanagan, Elizabeth wrote:
> A few things.
> 
> On 9 May 2016 at 12:06, Joshua Lock <joshua.g.lock@intel.com> wrote:
> > 
> > buildlogger will be started with the autobuilder and, when
> > correctly
> > configured, monitor the AB's JSON API for newly started builds.
> > When one is
> > detected information about the build will be posted to the wiki.
> > 
> > Requires a ConfigParser (ini) style configuration file at
> > AB_BASE/etc/buildlogger.conf formatted as follows:
> Can we get a buildlogger.conf.example in AB_BASE/etc?

Sure, I'll add that in a v2.

> > 
> > 
> > [wikiuser]
> > username = botuser
> > password = botuserpassword
> > 
> > [wiki]
> > pagetitle = BuildLog
> > 
> > Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
> > ---
> >  .gitignore              |   2 +
> >  bin/buildlogger         | 273
> > ++++++++++++++++++++++++++++++++++++++++++++++++
> >  yocto-start-autobuilder |   8 ++
> >  yocto-stop-autobuilder  |  45 ++++----
> >  4 files changed, 309 insertions(+), 19 deletions(-)
> >  create mode 100755 bin/buildlogger
> > 
> > diff --git a/.gitignore b/.gitignore
> > index 3f9505b..48c8a85 100644
> > --- a/.gitignore
> > +++ b/.gitignore
> > @@ -8,6 +8,7 @@
> >  ###################################################
> >  buildset-config
> >  config/autobuilder.conf
> > +etc/buildlogger.conf
> > 
> >  # Everything else #
> >  ###################
> > @@ -25,6 +26,7 @@ yocto-controller/controller.cfg
> >  yocto-controller/state.sqlite
> >  yocto-controller/twistd.log*
> >  yocto-controller/buildbot.tac
> > +yocto-controller/logger.log
> >  yocto-worker/build-appliance/build(newcommits)
> >  yocto-worker/buildbot.tac
> >  yocto-worker/janitor.log
> > diff --git a/bin/buildlogger b/bin/buildlogger
> > new file mode 100755
> > index 0000000..7b39f92
> > --- /dev/null
> > +++ b/bin/buildlogger
> > @@ -0,0 +1,273 @@
> > +#!/usr/bin/env python3
> > +'''
> > +Created on May 5, 2016
> > +
> > +__author__ = "Joshua Lock"
> > +__copyright__ = "Copyright 2016, Intel Corporation"
> > +__credits__ = ["Joshua Lock"]
> > +__license__ = "GPL"
> > +__version__ = "2.0"
> > +__maintainer__ = "Joshua Lock"
> > +__email__ = "joshua.g.lock@intel.com"
> > +'''
> > +
> > +# We'd probably benefit from using some caching, but first we'd
> > need the AB API
> > +# to include
> > +#
> > +# We can set repo url, branch & commit for a bunch of repositorys.
> > +# Do they all get built for nightly?
> > +
> > +try:
> > +    import configparser
> > +except ImportError:
> > +    import ConfigParser as configparser
> > +import json
> > +import os
> > +import requests
> > +import signal
> > +import sys
> > +import time
> > +
> > +abapi = "https://autobuilder.yoctoproject.org/main/json/builders/n
> > ightly/builds/_all"
> > +# Wiki editing params
> > +un = ''
> > +pw = ''
> > +wikiapi = "https://wiki.yoctoproject.org/wiki/api.php"
> > +title = ''
> > +
> > +last_logged = ''
> > +# TODO: probably shouldn't write files in the same location as the
> > script?
> > +cachefile = 'buildlogger.lastbuild'
> > +tmpfile = '/tmp/.buildlogger.pid'
> > +
> > +
> > +# Load configuration information from an ini
> > +def load_config(configfile):
> > +    global un
> > +    global pw
> > +    global title
> > +    success = False
> > +
> > +    if os.path.exists(configfile):
> > +        try:
> > +            config = configparser.ConfigParser()
> > +            config.read(configfile)
> > +            un = config.get('wikiuser', 'username')
> > +            pw = config.get('wikiuser', 'password')
> > +            title = config.get('wiki', 'pagetitle')
> > +            success = True
> > +        except configparser.Error as ex:
> > +            print('Failed to load buildlogger configuration with
> > error: %s' % str(ex))
> > +    else:
> > +        print('Config file %s does not exist, please create and
> > populate it.' % configfile)
> > +
> > +    return success
> > +
> > +# we can't rely on the built in JSON parser in the requests module
> > because
> > +# the JSON we get from the wiki begins with a UTF-8 BOM which
> > chokes
> > +# json.loads().
> > +# Thus we decode the raw resonse content into a string and load
> > that into a
> > +# JSON object ourselves.
> > +#
> > +# http://en.wikipedia.org/wiki/Byte_Order_Mark
> > +# http://bugs.python.org/issue18958
> > +def parse_json(response):
> > +    text = response.content.decode('utf-8-sig')
> > +
> > +    return json.loads(text)
> > +
> > +
> > +# Get the current content of the BuildLog page -- to make the wiki
> > page as
> > +# useful as possible the most recent log entry should be at the
> > top, to
> > +# that end we need to edit the whole page so that we can insert
> > the new entry
> > +# after the log but before the other entries.
> > +# This method fetches the current page content, splits out the
> > blurb and
> > +# returns a pair:
> > +# 1) the blurb
> > +# 2) the current entries
> > +def wiki_get_content():
> > +    params =
> > '?format=json&action=query&prop=revisions&rvprop=content&titles='
> > +    req = requests.get(wikiapi+params+title)
> > +    parsed = parse_json(req)
> > +    pageid = sorted(parsed['query']['pages'].keys())[-1]
> > +    content =
> > parsed['query']['pages'][pageid]['revisions'][0]['*']
> > +    blurb, entries = content.split('==', 1)
> > +    # ensure we keep only a single newline after the blurb
> > +    blurb = blurb.strip() + "\n"
> > +    entries = '=='+entries
> > +
> > +    return blurb, entries
> > +
> > +
> > +# Login to the wiki and return cookies for the logged in session
> > +def wiki_login():
> > +    payload = {
> > +        'action': 'login',
> > +        'lgname': un,
> > +        'lgpassword': pw,
> > +        'utf8': '',
> > +        'format': 'json'
> > +    }
> > +    req1 = requests.post(wikiapi, data=payload)
> > +    parsed = parse_json(req1)
> > +    login_token = parsed['login']['token']
> > +
> > +    payload['lgtoken'] = login_token
> > +    req2 = requests.post(wikiapi, data=payload,
> > cookies=req1.cookies)
> > +
> > +    return req2.cookies.copy()
> > +
> > +
> > +# Post the new page contents *content* with a summary of the
> > action *summary*
> > +def wiki_post_page(content, summary, cookies):
> > +    params =
> > '?format=json&action=query&prop=info|revisions&intoken=edit&rvprop=
> > timestamp&titles='
> > +    req = requests.get(wikiapi+params+title, cookies=cookies)
> > +
> > +    parsed = parse_json(req)
> > +    pageid = sorted(parsed['query']['pages'].keys())[-1]
> > +    edit_token = parsed['query']['pages'][pageid]['edittoken']
> > +
> > +    edit_cookie = cookies.copy()
> > +    edit_cookie.update(req.cookies)
> > +
> > +    payload = {
> > +        'action': 'edit',
> > +        'assert': 'user',
> > +        'title': title,
> > +        'summary': summary,
> > +        'text': content,
> > +        'token': edit_token,
> > +        'utf8': '',
> > +        'format': 'json'
> > +    }
> > +
> > +    req = requests.post(wikiapi, data=payload,
> > cookies=edit_cookie)
> > +    if not req.status_code == requests.codes.ok:
> > +        print("Unexpected status code %s received when trying to
> > post entry to"
> > +              "the wiki." % req.status_code)
> > +        return False
> > +    else:
> > +        return True
> > +
> > +
> > +# Extract required info about the last build from the
> > Autobuilder's JSON API
> > +# and format it for entry into the BuildLog, along with a summary
> > of the edit
> > +def ab_last_build_to_entry(build_json, build_id):
> > +    build_info = build_json[build_id]
> > +    builder = build_info.get('builderName', 'Unknown builder')
> > +    reason = build_info.get('reason', 'No reason given')
> > +    buildid = build_info.get('number', '')
> > +    buildbranch = ''
> > +    chash = ''
> > +    for prop in build_info.get('properties'):
> > +        if prop[0] == 'branch':
> > +            buildbranch = prop[1]
> > +        # TODO: is it safe to assume we're building from the poky
> > repo? Or at
> > +        # least only to log the poky commit hash.
> > +        if prop[0] == 'commit_poky':
> > +            chash = prop[1]
> > +
> > +    urlfmt = 'https://autobuilder.yoctoproject.org/main/builders/%
> > s/builds/%s/'
> > +    url = urlfmt % (builder, buildid)
> > +    sectionfmt = '==[%s %s %s - %s %s]=='
> > +    section_title = sectionfmt % (url, builder, buildid,
> > buildbranch, chash)
> > +    summaryfmt = 'Adding new BuildLog entry for build %s (%s)'
> > +    summary = summaryfmt % (buildid, chash)
> > +    content = "* '''Build ID''' - %s\n" % chash
> > +    content = content + '* ' + reason + '\n'
> > +    new_entry = '%s\n%s\n' % (section_title, content)
> > +
> > +    return new_entry, summary
> > +
> > +
> > +# Write the last logged build id to a file
> > +def write_last_build(buildid):
> > +    with open(cachefile, 'w') as fi:
> > +        fi.write(buildid)
> > +
> > +
> > +# Read last logged buildid from a file
> > +def read_last_build():
> > +    last_build = ''
> > +    try:
> > +        with open(cachefile, 'r') as fi:
> > +            last_build = fi.readline()
> > +    except FileNotFoundError as ex:
> > +        # A build hasn't been logged yet
> > +        pass
> > +    except Exception as e:
> > +        print('Error reading last build %s' % str(e))
> > +
> > +    return last_build
> > +
> > +
> > +def watch_for_builds(configfile):
> > +    if not load_config(configfile):
> > +        print('Failed to start buildlogger.')
> > +        sys.exit(1)
> > +    last_logged = read_last_build()
> > +
> > +    while True:
> > +        # wait a minute...
> > +        time.sleep(60)
> > +
> > +        builds = requests.get(abapi)
> > +
> > +        if not builds:
> > +            print("Failed to fetch Autobuilder data. Exiting.")
> > +            continue
> > +        try:
> > +            build_json = builds.json()
> > +        except Exception as e:
> > +            print("Failed to decode JSON: %s" % str(e))
> > +            continue
> > +
> > +        last_build = sorted(build_json.keys())[-1]
> > +        # If a new build is detected, post a new entry to the
> > BuildLog
> > +        if last_build != last_logged:
> > +            new_entry, summary =
> > ab_last_build_to_entry(build_json, last_build)
> > +            blurb, entries = wiki_get_content()
> > +            entries = new_entry+entries
> > +            cookies = wiki_login()
> > +            if wiki_post_page(blurb+entries, summary, cookies):
> > +                write_last_build(last_build)
> > +                last_logged = last_build
> > +                print("Entry posted:\n%s\n" % new_entry)
> > +            else:
> > +                print("Failed to post new entry.")
> > +
> > +    sys.exit(0)
> > +
> > +
> > +if __name__ == "__main__":
> > +    if len(sys.argv) < 2:
> > +        print('Please specify the path to the config file on the
> > command line as the first argument.')
> > +        sys.exit(1)
> > +
> > +    # Check to see if this is running already. If so, kill it and
> > rerun
> > +    if os.path.exists(tmpfile) and os.path.isfile(tmpfile):
> > +        print("A prior PID file exists. Attempting to kill.")
> > +        with open(tmpfile, 'r') as f:
> > +            pid=f.readline()
> > +        try:
> > +            os.kill(int(pid), signal.SIGKILL)
> > +            # We need to sleep for a second or two just to give
> > the SIGKILL time
> > +            time.sleep(2)
> > +        except OSError as ex:
> > +            print("""We weren't able to kill the prior
> > buildlogger. Trying again.""")
> > +            pass
> > +        # Check if the process that we killed is alive.
> > +        try:
> > +           os.kill(int(pid), 0)
> > +        except OSError as ex:
> > +           pass
> > +    elif os.path.exists(tmpfile) and not os.path.isfile(tmpfile):
> > +        raise Exception("""/tmp/.buildlogger.pid is a directory,
> > remove it to continue.""")
> > +    try:
> > +        os.unlink(tmpfile)
> > +    except:
> > +        pass
> > +    with open(tmpfile, 'w') as f:
> > +        f.write(str(os.getpid()))
> > +
> > +    watch_for_builds(sys.argv[1])
> > diff --git a/yocto-start-autobuilder b/yocto-start-autobuilder
> > index 85b748d..f8154c1 100755
> > --- a/yocto-start-autobuilder
> > +++ b/yocto-start-autobuilder
> > @@ -72,6 +72,14 @@ if os.path.isfile(os.path.join(AB_BASE,
> > ".setupdone")):
> >          os.chdir(os.path.join(AB_BASE, "yocto-controller"))
> >          subprocess.call(["make", "start"])
> >          os.chdir(AB_BASE)
> This should be:
> 
> a. Optional and defaulting to False (something in autobuilder.conf
> like PUSH_TO_WIKI)

Sure, that makes sense.

> b. Probably only want to run this on controller/both. If you run it
> on
> workers you're going to have a lot of workers hitting the page.

You can't see it from the context, but this is 4 lines beneath an
    if sys.argv[1] == "controller" or sys.argv[1] == "both":

> 
> Realise, most autobuilder end users won't use this functionality, so
> yeah, let's make sure this is only run when we tell it to.

You have to configure it for it to do anything, however I agree —
there's no point in even trying to start the script unless a user has
opted in. I'll add an option to autobuilder.conf

Thanks,

Joshua

