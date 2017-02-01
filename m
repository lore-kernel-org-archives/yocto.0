Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C3EE00546; Wed,  1 Feb 2017 12:09:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E611E004D8
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 12:09:53 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 01 Feb 2017 12:09:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,321,1477983600"; d="scan'208";a="1101785909"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.128.122])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2017 12:09:52 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Feb 2017 14:12:58 -0600
Message-Id: <1485979978-4971-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [[PATCH][yocto-autobuilder]] bin/forcebuild.py: Add a script to support force a build
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
X-List-Received-Date: Wed, 01 Feb 2017 20:09:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The script supports to list avaialable builders and his options,
also can force a build if the builder is IDLE or not.

Also supports specify options via cmdline using python dictionaries
as string.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 bin/forcebuild.py | 183 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 183 insertions(+)
 create mode 100755 bin/forcebuild.py

diff --git a/bin/forcebuild.py b/bin/forcebuild.py
new file mode 100755
index 0000000..5fe61a0
--- /dev/null
+++ b/bin/forcebuild.py
@@ -0,0 +1,183 @@
+#!/usr/bin/env python
+
+# YoctoAutobuilder force build script
+#
+# Copyright (C) 2017 Intel Corporation
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License version 2 as
+# published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License along
+# with this program; if not, write to the Free Software Foundation, Inc.,
+# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
+
+import urllib2
+import urllib
+import cookielib
+import uuid
+import sys
+import argparse
+import json
+from bs4 import BeautifulSoup
+
+class YoctoAutobuilderAPI(object):
+    def __init__(self, server):
+        self.server = server
+        self.opener = urllib2.build_opener(
+                urllib2.HTTPCookieProcessor(cookielib.CookieJar()))
+
+    def login(self, user, passwd):
+        data = urllib.urlencode(dict(username=user,
+                                     passwd=passwd))
+        url = self.server + "/login"
+        request = urllib2.Request(url, data)
+        result = self.opener.open(request).read()
+        if result.find("The username or password you entered were not correct") > 0:
+            print("Invalid username or password")
+            return 1
+        return 0
+
+    def _get_builders(self):
+        url = "%s/json/builders/?as_text=1" % (self.server)
+        request = urllib2.Request(url)
+        json_raw_data = self.opener.open(request)
+
+        return json.load(json_raw_data)
+
+    def list_builders(self):
+        builders = self._get_builders()
+
+        if builders:
+            print('Available builders:\n')
+            for builder in builders:
+                print(builder)
+            return 0
+        else:
+            print('No available builders in this server.')
+            return 1
+
+    def _get_options_by_builder(self, builder):
+        options = {}
+
+        url = "%s/builders/%s" % (self.server, builder)
+        request = urllib2.Request(url)
+        html = self.opener.open(request).read()
+
+        inputs = BeautifulSoup(html, 'lxml').find_all('input')
+        for input in inputs:
+            type = input.attrs['type']
+            if  type == 'submit':
+                continue
+
+            options[input.attrs['name']] = input.attrs['value']
+
+        selects = BeautifulSoup(html, 'lxml').find_all('select')
+        for select in selects:
+            value = select.find_all('option', selected=True)[0].getText()
+            options[select.attrs['name']] = value
+
+        return options
+
+    def list_options(self, builder):
+        builders = self._get_builders()
+        if not builder in builders:
+            print('Builder %s specified isn\'t available' % builder)
+            return 1
+
+        opts = self._get_options_by_builder(builder)
+        print('Available options in builder %s:\n' % (builder))
+        for name in opts:
+            value = opts[name]
+            print('Name: %s, Default value: %s' % (name, value))
+
+    def force_build(self, builder, opts, idle_check=False):
+        builders = self._get_builders()
+        if not builder in builders:
+            print('Builder specified isn\'t available')
+            return 1
+
+        state = builders[builder]['state']
+        if idle_check and not state == 'idle':
+            print('Builder %s specified isn\'t IDLE, current state %s' \
+                    % (builder, state))
+            return 1
+
+        opts = eval(opts) # FIXME: transform string argument into dictionary, security?
+        current_opts = self._get_options_by_builder(builder)
+        for opt in opts:
+            if not opt in current_opts:
+                print('Option %s isn\'t supported by builder %s' % \
+                        (opt, builder))
+                return 1
+            else:
+                current_opts[opt] = opts[opt]
+
+        url_params = urllib.urlencode(current_opts)
+        url = "%s/builders/%s/force" % (self.server, builder)
+        request = urllib2.Request(url, url_params)
+        result = self.opener.open(request)
+        if 'Forced build' in result.read():
+            return 0
+        else:
+            print("Failed to force build")
+            return 1
+
+def main():
+    parser = argparse.ArgumentParser(description="Yocto Autobuilder force build script",
+            add_help=False)
+    parser.add_argument('-s', '--server', help='Server URL',
+            action='store', required=True)
+
+    parser.add_argument('-u', '--username', action='store', required=True)
+    parser.add_argument('-p', '--password', action='store', required=True)
+
+    group = parser.add_mutually_exclusive_group()
+    group.add_argument('--list-builders', help='List available builders',
+            action='store_true')
+    group.add_argument('--list-options', help='List options by builder',
+            action='store', metavar='BUILDER')
+    group.add_argument('--force-build', help='Force build by builder',
+            action='store', metavar='BUILDER')
+    group.add_argument('--force-build-idle', help='Force build by builder if is idle',
+            action='store', metavar='BUILDER')
+
+    parser.add_argument('-o', '--options', help='Custom options by operation',
+            action='store')
+
+    parser.add_argument('-d', '--debug', help='Enable debug output',
+            action='store_true')
+    parser.add_argument('-q', '--quiet', help='Print only errors',
+            action='store_true')
+
+    parser.add_argument('-h', '--help', action='help', default=argparse.SUPPRESS,
+                        help='show this help message and exit')
+
+    args = parser.parse_args()
+
+    api = YoctoAutobuilderAPI(args.server)
+    if api.login(args.username, args.password):
+        return 1
+
+    if args.list_builders:
+        return api.list_builders()
+    elif args.list_options:
+        return api.list_options(args.list_options)
+    elif args.force_build:
+        return api.force_build(args.force_build, args.options)
+    elif args.force_build_idle:
+        return api.force_build(args.force_build_idle, args.options, idle_check=True)
+
+if __name__ == '__main__':
+    try:
+        ret = main()
+    except Exception:
+        ret = 1
+        import traceback
+        traceback.print_exc()
+    sys.exit(ret)
-- 
2.1.4


