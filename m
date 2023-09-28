Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AFCCE7B19
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 09:47:44 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.10011.1695894462995883503
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 02:47:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Xcvzs9Rj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-405621baba7so99416885e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 02:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695894461; x=1696499261; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TdxFVhzfOpWm/Fzynm//cmp6TlPOUbu87bwvCnGVhX0=;
        b=Xcvzs9RjLR1yQblzZAQ6SQdPzucRrC16VYpWVK4Wg7rr7TIipIQvWvtj1E3vlGmJJW
         f2zmyspRiYXVnsNF7cf+gOV59vvj20oGfsaxKjjwHhnfGatxrKBo1LcWo0qj9jg9vsqi
         EIRihDdBDlUUlNKLL2SMaaxUkMHCyp/uo/nVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695894461; x=1696499261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TdxFVhzfOpWm/Fzynm//cmp6TlPOUbu87bwvCnGVhX0=;
        b=K9oNeBaVrHLDXlK4ax+UANL3mSknToAmA40Tcol/SSamsQWun4Hhn//u4KIHPwOrPO
         d3J2LXe6e3Jc8Kbpw6V3EgIA0gOXuORGcGKTtvJ7ppqE/5NNn5gP4rzEUEiOVzrJVZlz
         2P0xdbzL9OG7VMrw8/ByEHJQYNGQnjAc+FZDRAs14F2kCAc61JCLe2LdDCWXWHyeJLFM
         AK6yD0rHVUa6YfaPu64qVoV+X6qd1UgoQRNHQYI7uKlZl3WEMm3OK1wNChY0JUXUfZhQ
         gAQ3Xdd9FChtxn8582zpKwnEwUCZYCCfK+ulBF/D35wLz3j2CcrQKUrzRqEh5UXUJVgc
         O3pQ==
X-Gm-Message-State: AOJu0Ywl3s8v8WXAsLiPIRKYmbqo2FhbO0AElmAb7gj8sq03RW90qoIe
	bXZyWkbfnd9Sb4jY8PpxJ65yzL6LS2dSt7y0YvQ=
X-Google-Smtp-Source: AGHT+IGoQMNum7YYqppdq5ZqwcJU+SFNfn1YfigKK7XeQmTm+mILgmo64KhNddNLualDGHm+CtAQNw==
X-Received: by 2002:a1c:7704:0:b0:401:dc7c:2494 with SMTP id t4-20020a1c7704000000b00401dc7c2494mr733222wmi.27.1695894461055;
        Thu, 28 Sep 2023 02:47:41 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c378500b004064ac107cfsm2039591wmr.39.2023.09.28.02.47.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 02:47:40 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH 4/4] Drop wikilog plugin, we're not going back to it!
Date: Thu, 28 Sep 2023 10:47:37 +0100
Message-Id: <20230928094737.2373931-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
References: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:47:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61152

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README.md            |  17 +-
 TODO                 |   2 -
 lib/__init__.py      |   0
 lib/wiki.py          | 210 -------------------------
 reporters/wikilog.py | 361 -------------------------------------------
 services.py          |   6 -
 6 files changed, 5 insertions(+), 591 deletions(-)
 delete mode 100644 lib/__init__.py
 delete mode 100644 lib/wiki.py
 delete mode 100644 reporters/wikilog.py

diff --git a/README.md b/README.md
index 1d976aa0..8b97dd5a 100644
--- a/README.md
+++ b/README.md
@@ -26,16 +26,14 @@ yocto-autobuilder-helper script parameters.
 
 ### Code layout
 - [builders.py](builders.py) -- configures the builders with minimal buildsteps to invoke the yocto-autobuilder-helper scripts
-- lib/
-  - [wiki.py](lib/wiki.py) -- implements some mediawiki related functionality as used by the wikilog plugin
 reporters/
-  - [wikilog.py](reporters/wikilog.py) -- our custom plugin to write info on build failures to a wiki page
+  - [swatbot.py](reporters/swatbot.py) -- our custom plugin to write info on build failures to a swatbot instance
 - steps/
   - [writelayerinfo.py](steps/writelayerinfo.py) -- write the user supplied (or default) repos to a JSON file for use by the scripts
 - [config.py](config.py) -- goal is to contain all values that might need changing to redeploy this code elsewhere. Goal hasn't yet been met.
 - [master.cfg](master.cfg) -- calls into other scripts to do most configuration. Cluster specific config still lives here (i.e. controller url).
 - [schedulers.py](schedulers.py) -- sets up the force schedulers with controls for modifying inputs for each builder.
-- [services.py](services.py) -- configures irc, mail and wikilog reporters.
+- [services.py](services.py) -- configures irc, mail and swatbot reporters.
 - [workers.py](workers.py) -- configures the worker objects
 - [www.py](www.py) -- sets up the web UI
 
@@ -50,14 +48,9 @@ yocto-autobuilder[2].
 custom buildset to iterate the repo_, branch_, and commit_ properties set by
 the schedulers and write a JSON file with the user's values.
 
-### WikiLog reporter
-[reporters/wikilog.py](reporters/wikilog.py) -- a buildbot service to listen
-for build failures and write some information on them to the configured wiki
-page.
-
-[lib/wiki.py](lib/wiki.py) -- some helper functions for the wiki plugin, much
-of this code can be replaced by porting the plugin to be a
-buildbot.util.service.HTTPClient implementation
+### Swatbot reporter
+[reporters/swatbot.py](reporters/swatbot.py) -- a buildbot service to listen
+for build failures and write some information on them to the swatbot instance configured.
 
 ## Deployment
 The following deployment steps assume that the target system has a copy of
diff --git a/TODO b/TODO
index d43bfeed..47b5f58b 100644
--- a/TODO
+++ b/TODO
@@ -1,10 +1,8 @@
 
  * Add nightly-checkuri
- * Add wikilog link on console page
  * per worker auth (workers.py & config.py)
  * Add IRC notifier (services.py) [Michael]
  * add mail notification functionality to yocto-autobuilder-helper, it already
    knows how to iterate error reports. (services.py)
  * Simple script to start buildbot controller, janitor and PRServer [Michael]
  * Look into allowed_origins property of built in web server
- * switch wikilog to buildbot.util.service.HTTPClient?
diff --git a/lib/__init__.py b/lib/__init__.py
deleted file mode 100644
index e69de29b..00000000
diff --git a/lib/wiki.py b/lib/wiki.py
deleted file mode 100644
index c9e14ae6..00000000
--- a/lib/wiki.py
+++ /dev/null
@@ -1,210 +0,0 @@
-#
-# SPDX-License-Identifier: GPL-2.0-only
-#
-
-'''
-Created on Dec 13, 2016
-
-__author__ = "Joshua Lock"
-__copyright__ = "Copyright 2016, Intel Corp."
-__credits__ = ["Joshua Lock"]
-'''
-
-import codecs
-import hashlib
-import time
-import requests
-from twisted.python import log
-
-
-class YPWiki(object):
-    MAX_TRIES = 5
-    TIMEOUT = 60
-
-    def __init__(self, wiki_uri, wiki_un, wiki_pass):
-        self.wiki_uri = wiki_uri
-        self.wiki_un = wiki_un
-        self.wiki_pass = wiki_pass
-
-    @staticmethod
-    def retry_request(requesturl, **kwargs):
-        """
-        Rather than failing when a request to a 'requesturl' throws an
-        exception retry again a minute later. Perform this retry no more than
-        5 times.
-
-        @type   requesturl:  string
-        """
-        kwargs['timeout'] = YPWiki.TIMEOUT
-
-        def try_request():
-            try:
-                req = requests.get(requesturl, **kwargs)
-                return req
-            except (requests.exceptions.RequestException,
-                    requests.exceptions.Timeout):
-                return None
-
-        tries = 0
-        req = None
-        while not req and tries < YPWiki.MAX_TRIES:
-            if tries > 0:
-                time.sleep(60)
-            req = try_request()
-            tries = tries + 1
-
-        return req
-
-    @staticmethod
-    def parse_json(response):
-        """
-        This method handles stripping UTF-8 BOM from the beginning of responses
-        from the Yocto Project wiki.
-
-        http://en.wikipedia.org/wiki/Byte_Order_Mark
-        http://bugs.python.org/issue18958
-
-        @type   response:   requests.Response
-        """
-        bom = codecs.BOM_UTF8
-        text = ''
-
-        # In Requests 0.8.2 (Ubuntu 12.04) Response.content has type unicode,
-        # whereas in requests 2.1.10 (Fedora 23) Response.content is a str
-        # Ensure that bom is the same type as the content, codecs.BOM_UTF8 is
-        # a str
-
-        # If we discover a BOM set the encoding appropriately so that the
-        # built in decoding routines in requests work correctly.
-        if response.content.startswith(bom):
-            response.encoding = 'utf-8-sig'
-
-        return response.json()
-
-    def login(self):
-        """
-        Login to the wiki and return cookies for the logged in session
-        """
-        payload = {
-            'action': 'login',
-            'lgname': self.wiki_un,
-            'lgpassword': self.wiki_pass,
-            'utf8': '',
-            'format': 'json'
-        }
-
-        try:
-            req1 = requests.post(self.wiki_uri, data=payload,
-                                 timeout=self.TIMEOUT)
-        except (requests.exceptions.RequestException,
-                requests.exceptions.Timeout):
-            return None
-
-        parsed = self.parse_json(req1)
-        login_token = parsed['login']['token'].encode('utf-8')
-
-        payload['lgtoken'] = login_token
-        try:
-            req2 = requests.post(self.wiki_uri, data=payload,
-                                 cookies=req1.cookies, timeout=self.TIMEOUT)
-        except (requests.exceptions.RequestException,
-                requests.exceptions.Timeout):
-            return None
-
-        return req2.cookies.copy()
-
-    def get_content(self, wiki_page):
-        """
-        Get the current content of the 'wiki_page' -- to make the wiki page
-        as useful as possible the most recent log entry should be at the top,
-        to that end we need to edit the whole page so that we can insert the
-        new entry after the log but before the other entries.
-
-        This method fetches the current page content, splits out the blurb and
-        returns a pair:
-        1) the blurb
-        2) the current entries
-
-        @type   wiki_page:  string
-        """
-
-        pm = '?format=json&action=query&prop=revisions&rvprop=content&titles='
-
-        req = self.retry_request(self.wiki_uri+pm+wiki_page)
-        if not req:
-            return None, None
-
-        parsed = self.parse_json(req)
-        pageid = sorted(parsed['query']['pages'].keys())[-1]
-        blurb, entries, footer = "\n", "", "\n==Archived Logs=="
-        if 'revisions' in parsed['query']['pages'][pageid]:
-            content = parsed['query']['pages'][pageid]['revisions'][0]['*']
-            blurb, entries = content.split('==', 1)
-            # ensure we keep only a single newline after the blurb
-            blurb = blurb.strip() + "\n"
-            entries = '==' + entries
-            try:
-                entries, footer = entries.rsplit('\n==Archived Logs==', 1)
-                footer = '\n==Archived Logs==' + footer
-            except ValueError:
-                pass
-
-        return blurb, entries, footer
-
-    def post_entry(self, wiki_page, content, summary, cookies):
-        """
-        Post the new page contents 'content' to  the page title 'wiki_page'
-        with a 'summary' using the login credentials from 'cookies'
-
-        @type   wiki_page:  string
-        @type   content:    string
-        @type   summary:    string
-        @type   cookies:    CookieJar
-        """
-
-        params = ("?format=json&action=query&prop=info|revisions"
-                  "&intoken=edit&rvprop=timestamp&titles=")
-        req = self.retry_request(self.wiki_uri+params+wiki_page,
-                                 cookies=cookies)
-        if not req:
-            return False
-
-        parsed = self.parse_json(req)
-        pageid = sorted(parsed['query']['pages'].keys())[-1]
-        edit_token = parsed['query']['pages'][pageid]['edittoken']
-        edit_cookie = cookies.copy()
-        edit_cookie.update(req.cookies)
-
-        content = content.encode('utf-8')
-
-        content_hash = hashlib.md5(content).hexdigest()
-
-        payload = {
-            'action': 'edit',
-            'assert': 'user',
-            'title': wiki_page,
-            'summary': summary,
-            'text': content,
-            'md5': content_hash,
-            'token': edit_token,
-            'utf8': '',
-            'format': 'json'
-        }
-
-        try:
-            req = requests.post(self.wiki_uri, data=payload,
-                                cookies=edit_cookie, timeout=self.TIMEOUT)
-        except (requests.exceptions.RequestException,
-                requests.exceptions.Timeout):
-            return False
-
-        if not req.status_code == requests.codes.ok:
-            log.err("Unexpected status code %s received when trying to post"
-                    " an entry to the wiki." % req.status_code)
-            return False
-        else:
-            result = self.parse_json(req)
-            status = result.get('edit', {}).get('result', '')
-            if status == 'Success':
-                return True
-            return False
diff --git a/reporters/wikilog.py b/reporters/wikilog.py
deleted file mode 100644
index ff43e9df..00000000
--- a/reporters/wikilog.py
+++ /dev/null
@@ -1,361 +0,0 @@
-#
-# SPDX-License-Identifier: GPL-2.0-only
-#
-
-from buildbot.reporters import utils
-from buildbot.util import service
-from twisted.internet import defer, threads
-from twisted.python import log
-from buildbot.process.results import SUCCESS, WARNINGS, FAILURE, SKIPPED, EXCEPTION, RETRY, CANCELLED
-
-from yoctoabb.lib.wiki import YPWiki
-
-import time
-import pprint
-import re
-
-monitored_parents = ['a-full', 'a-quick']
-
-class WikiLog(service.BuildbotService):
-    name = "WikiLog"
-    wiki = None
-    # wantPreviousBuilds wantLogs
-    neededDetails = dict(wantProperties=True, wantSteps=True)
-    wikiLock = None
-
-    def checkConfig(self, wiki_uri, wiki_un, wiki_pass, wiki_page,
-                    identifier=None, **kwargs):
-        service.BuildbotService.checkConfig(self)
-
-    @defer.inlineCallbacks
-    def reconfigService(self, wiki_uri, wiki_un, wiki_pass, wiki_page,
-                        identifier=None, **kwargs):
-        yield service.BuildbotService.reconfigService(self)
-        self.wiki_page = wiki_page
-        self.identifier = None
-        self.idstring = ""
-        if identifier:
-            self.identifier = identifier.replace(" ", "-")
-            self.idstring = " on " + self.identifier
-        self.wiki = YPWiki(wiki_uri, wiki_un, wiki_pass)
-        self.wikiLock = defer.DeferredLock()
-
-    @defer.inlineCallbacks
-    def startService(self):
-        yield service.BuildbotService.startService(self)
-
-        startConsuming = self.master.mq.startConsuming
-        self._buildCompleteConsumer = yield startConsuming(
-            self.buildFinished,
-            ('builds', None, 'finished'))
-
-        self._buildStartedConsumer = yield startConsuming(
-            self.buildStarted,
-            ('builds', None, 'new'))
-
-    def stopService(self):
-        self._buildCompleteConsumer.stopConsuming()
-        self._buildStartedConsumer.stopConsuming()
-
-    @defer.inlineCallbacks
-    def buildStarted(self, key, build):
-        yield utils.getDetailsForBuild(self.master, build, **self.neededDetails)
-        #log.err("wkl: buildStarted %s %s" % (key, pprint.pformat(build)))
-
-        # Only place initial entries in the wiki for builds with no parents
-        if not build['buildset']['parent_buildid']:
-            # Only log full/quick builds on the wiki log
-            if build['builder']['name'] not in monitored_parents:
-                return
-            yield self.wikiLock.acquire()
-            try:
-                result = yield threads.deferToThread(self.logBuild, build)
-            finally:
-                self.wikiLock.release()
-
-            if not result:
-                log.err("wkl: Failed to log build %s on %s" % (
-                    build['buildid'], build['builder']['name']))
-
-    # Assume we only have a parent, doesn't handle builds nested more than one level.
-    @defer.inlineCallbacks
-    def buildFinished(self, key, build):
-        yield utils.getDetailsForBuild(self.master, build, **self.neededDetails)
-        #log.err("wkl: buildFinished %s %s" % (key, pprint.pformat(build)))
-
-        parent = None
-        if build['buildset']['parent_buildid']:
-            parent = yield self.master.data.get(("builds", build['buildset']['parent_buildid']))
-            yield utils.getDetailsForBuild(self.master, parent, **self.neededDetails)
-
-        # Only run the logging code for builds in the monitored_parents list, or builds with
-        # failures (to try and cut down on wiki noise)
-        havelog = False
-        headerpresent = False
-        if build['results'] in [FAILURE, EXCEPTION, WARNINGS]:
-            havelog = True
-        if (parent and parent['builder']['name'] in monitored_parents) or \
-                (build['builder']['name'] in monitored_parents):
-            havelog = True
-            headerpresent = True
-
-        if not havelog:
-            return
-
-        if not headerpresent:
-            yield self.wikiLock.acquire()
-            try:
-                result = yield threads.deferToThread(self.logBuild, build)
-            finally:
-                self.wikiLock.release()
-
-            if not result:
-                log.err("wkl: Failed to log build failure %s on %s" % (
-                    build['buildid'], build['builder']['name']))
-                return
-
-        entry = yield self.getEntry(build, parent)
-        yield self.wikiLock.acquire()
-        try:
-            update = yield threads.deferToThread(self.updateBuild, build, parent, entry)
-        finally:
-            self.wikiLock.release()
-        if not update:
-            log.err("wkl: Failed to update wikilog with build %s failure" %
-                    build['buildid'])
-
-    def logBuild(self, build):
-        """
-        Extract information about 'build' and post an entry to the wiki
-
-        @type   build:  buildbot.status.build.BuildStatus
-        """
-
-        log.err("wkl: logbuild %s" % (build))
-
-        builder = build['builder']['name']
-        reason = "No reason given"
-        if 'reason' in build['properties'] and build['properties']['reason'][0]:
-            reason = build['properties']['reason'][0]
-        buildid = build['buildid']
-        start = build['started_at']
-        url = build['url']
-        buildbranch = build['properties']['branch_poky'][0]
-
-        chash = build['properties']['commit_poky'][0]
-        if not chash or len(chash) < 1 or chash == "HEAD":
-            chash = "YP_CHASH"
-
-        forcedby = "Unknown"
-        if 'owner' in build['properties']:
-            forcedby = build['properties']['owner'][0]
-        starttime = start.ctime()
-
-        sectionfmt = '==[{} {} {} - {} {}{}]=='
-        section_title = sectionfmt.format(url, builder, buildid, buildbranch, chash, self.idstring)
-        summaryfmt = 'Adding new BuildLog entry for build %s (%s)'
-        summary = summaryfmt % (buildid, chash)
-        summary = summary + self.idstring
-        content = '<div id="' + str(buildid) + '"></div>\n'
-        content = content + "* '''Build ID''' - %s" % chash
-        content = content + self.idstring
-        content = content + '\n* Started at: %s\n' % starttime
-        content = content + '* ' + forcedby + '\n* ' + reason + '\n'
-        new_entry = '{}\n{}\n'.format(section_title, content)
-
-        blurb, entries, footer = self.wiki.get_content(self.wiki_page)
-        if not blurb:
-            log.err("wkl: Unexpected content retrieved from wiki!")
-            return False
-
-        content = blurb + new_entry + entries + footer
-        cookies = self.wiki.login()
-
-        if not cookies:
-            log.err("wkl: Failed to login to wiki")
-            return False
-
-        post = self.wiki.post_entry(self.wiki_page, content, summary, cookies)
-        if not post:
-            log.err("wkl: Failed to post entry for %s" % buildid)
-            return False
-
-        log.msg("wkl: Posting wikilog entry for %s" % buildid)
-        return True
-
-    def updateEntryBuildInfo(self, entry, title, build):
-        """
-        Extract the branch and commit hash from the properties of the 'build'
-        and update the 'entry' string with extracted values
-
-        @type   entry: string
-        @type   build:   buildbot.status.build.BuildStatus
-        """
-
-        chash = None
-        if "yp_build_revision" in build['properties']:
-            chash = build['properties']['yp_build_revision'][0]
-        if not chash or len(chash) < 1 or chash == "HEAD":
-            chash = "YP_CHASH"
-
-        new_entry = entry.replace("YP_CHASH", chash, 2)
-        new_title = title.replace("YP_CHASH", chash, 2)
-
-        return new_entry, new_title
-
-    @defer.inlineCallbacks
-    def getEntry(self, build, parent):
-        """
-        Extract information about 'build' and update an entry in the wiki
-
-        @type   build:  buildbot.status.build.BuildStatus
-        """
-        if not parent:
-            parent = build
-
-        url = build['url']
-        buildid = build['buildid']
-        builder = build['builder']['name']
-        log_entries = []
-        logentry = ""
-        for s in build['steps']:
-
-            # Ignore logs for steps which succeeded/cancelled
-            result = s['results']
-            if result in (SUCCESS, RETRY, CANCELLED, SKIPPED):
-                continue
-            #if result == WARNINGS:
-            #    # ignore warnings for log purposes for now
-            #    continue
-
-            # Log for FAILURE, EXCEPTION
-
-            step_name = s['name']
-            step_number = s['number']
-            logs = yield self.master.data.get(("steps", s['stepid'], 'logs'))
-            logs = list(logs)
-            logstring = []
-            for l in logs:
-                log_url = '%s/steps/%s/logs/%s' % (url, step_number, l['name'])
-                logstring.append('[%s %s]' % (log_url, l['name']))
-
-            logs = ' '.join(logstring)
-            logentry = logentry + '\n* [%s %s] %s failed: %s' % (url, builder, step_name, logs)
-        return logentry
-
-    def updateBuild(self, build, parent, logentry):
-
-        if not parent:
-            parent = build
-        buildid = build['buildid']
-        builder = build['builder']['name']
-
-        log.err("wkl: Starting to update entry for %s(%s)" % (buildid, parent['buildid']))
-
-        blurb, entries, footer = self.wiki.get_content(self.wiki_page)
-        if not blurb:
-            log.err("wkl: Unexpected content retrieved from wiki!")
-            return False
-
-        entry_list = re.split('\=\=\[(.+)\]\=\=.*', entries)
-
-        # [1::2] selects only the odd entries, i.e. separators/titles
-        titles = entry_list[1::2]
-        if len(titles) > 200:
-            # Archive off entries when the log becomes too long
-
-            log.err("wkl: Archiving off entries from %s (size %s)" % (titles[50], len(titles)))
-
-            sep = '==[' + titles[50] + ']=='
-            head, archive = entries.split(sep, 1)
-            archive = sep + archive
-
-
-            archivenum = int(max(re.findall(r'\[%s/Archive/([0-9]+)\]' % self.wiki_page, footer)))
-            nextnum = str(archivenum + 1).zfill(4)
-
-            cookies = self.wiki.login()
-            if not cookies:
-                log.err("wkl: Failed to login to wiki")
-                return False
-
-            post = self.wiki.post_entry(self.wiki_page + "/Archive/" + nextnum, archive, "Archive out older buildlog entries", cookies)
-            if not post:
-                log.err("wkl: Failed to save new archive page %s" % (nextnum))
-                return False
-
-            entries = head
-            entry_list = re.split('\=\=\[(.+)\]\=\=.*', entries)
-
-            footer = footer + "\n* [[" + self.wiki_page + "/Archive/" + nextnum + "]]"
-
-        entry = ''
-        title = ''
-        foundmatch = False
-        # Start at the beginning of entry list and keep iterating until we find
-        # a title which contains our url/identifier
-        for idx, entry in enumerate(entry_list):
-            # The matched title contents should always start with a http*
-            # schemed URI
-            if entry.startswith('http'):
-                # format of the title is:
-                # ==[url builder buildid - buildbranch commit_hash on identifier]==
-                title_components = entry.split(None, 8)
-
-                if title_components[0] == parent['url']:
-                    if self.identifier and title_components[7] == self.identifier:
-                        foundmatch = True
-                    elif not self.identifier:
-                        foundmatch = True
-
-                if foundmatch:
-                    entry = entry_list[idx+1]
-                    title = entry_list[idx]
-                    break
-
-        if not entry or not title:
-            errmsg = ("wkl: Failed to update entry for {0} couldn't find a matching title containing url: {1}")
-            log.err(errmsg.format(buildid, parent['url']))
-            return False
-
-        new_entry = '\n' + entry.strip() + logentry + '\n\n'
-
-        summary = 'Updating entry with failures in %s' % builder
-        summary = summary + self.idstring
-
-        new_entry, new_title = self.updateEntryBuildInfo(new_entry, title, parent)
-
-        # If unchanged, skip the update
-        if entry == new_entry and title == new_title:
-            log.msg("wkl: Entry unchanged for wikilog entry %s" % buildid)
-            return True
-
-        # Find the point where the first entry's title starts and the second
-        # entry's title begins, then replace the text between those points
-        # with the newly generated entry.
-        it = re.finditer('\=\=\[(.+)\]\=\=', entries)
-        entry_title = next(it)
-        while entry_title.group(1) != title:
-            entry_title = next(it)
-        head = entries[:entry_title.start()]
-        try:
-            next_title = next(it)
-            tail = entries[next_title.start():]
-        except StopIteration:
-            # There was no following entry
-            tail = ""
-
-        update = blurb + head + "==[" + new_title + "]==\n" + new_entry + tail + footer
-
-        cookies = self.wiki.login()
-        if not cookies:
-            log.err("wkl: Failed to login to wiki")
-            return False
-
-        post = self.wiki.post_entry(self.wiki_page, update, summary, cookies)
-        if not post:
-            log.err("wkl: Failed to update entry for %s(%s)" % (buildid, parent['buildid']))
-            return False
-
-        log.msg("wkl: Updating wikilog entry for %s(%s)" % (buildid, parent['buildid']))
-        return True
diff --git a/services.py b/services.py
index bdfdbc1d..67e5fb6f 100644
--- a/services.py
+++ b/services.py
@@ -36,12 +36,6 @@ generator = reporters.BuildStatusGenerator(
 #                   channels=["yocto"],
 #                   noticeOnChannel=True))
 
-# from yoctoabb.reporters import wikilog
-# services.append(
-#     wikilog.WikiLog("https://wiki.yoctoproject.org/wiki/api.php",
-#                     "User", "password", "LogPage",
-#                     "Production Cluster")
-# )
 
 # from yoctoabb.reporters import swatbot
 # services.append(
-- 
2.39.2


