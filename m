Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B62CC25B47
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 22:19:19 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.28050.1698445158081923195
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 15:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X2cTzAAm;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6b44befac59so2719466b3a.0
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 15:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698445157; x=1699049957; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7R7/7/QhiIHDQ0IuAl/mNDNfx4a5EWo+RDMqhCHKTLM=;
        b=X2cTzAAmFGWCxT2fu2oc3YM+EsBxbMRc6N/Kv9KZ4HU6R4o0g+C2VcDcqqIV8qoUuk
         yyUhvA9i7pv4YvPZVWKEebZDsxpdTPfQADFupvwXNH2KBzef4wtZvjpi2u6AWeveyIfq
         ZmjJDQlAjO0XkVwWPVX7L+wKJyIl7P5iIvlYwUviuLQuiSHGTIUwsQYd+r2jdil0T7TT
         IWRreQDZadXzPLrHAKmNMAxJj5wsdhZCsh8s9iiLyLrTdzFpmU7hK27cxZ2AYfbuGwAb
         DiZzcuoGtYttRIzqjnLlzIapyirOPTQdHBfdQctVoVQ9WLRrscF3YDZmkhr23lnTLay+
         TzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698445157; x=1699049957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7R7/7/QhiIHDQ0IuAl/mNDNfx4a5EWo+RDMqhCHKTLM=;
        b=TQKGyMwUgw5tMEgxLvcH68d3bhkwtRWuQhV1LE3+3fJTSCbPrTt2i2jil+srxbVO65
         dDUlp4xnxZMTaeaYEtr+wBf3EB1paJRokdqSSDsagzUlXjtbVVTymQ3TcjZLAsa7yhpY
         T/Zn+JBtTsebjM759AyYWaqU5XeH6XYLKCvEi4pYFH9fyO9jdz145d7DHSotxB3Exeki
         IYJuwHF6PcHimhDuv1DqSuWhe31CjnxV9LXK4/xwgmQxVsTXYJKGScPDuMTviNw7ejuz
         fVk5m7r0lKUBOG10IOqIwuLLMBSCSpRXfYJR63Bw+JnyEr0O/I9E+DK4ENiC9qeFS2BC
         lNTQ==
X-Gm-Message-State: AOJu0Yzbhytc3vgLBANilfSDc4GxWFwR2QrgEIy2zBkqTvIurtvumdrE
	h7aCpxaPS5edSQfJ4LIkMVbkp8DASRkkGw==
X-Google-Smtp-Source: AGHT+IFEtHB3vuL/aRtIAphuSOh3kNxopc056BeW/G4nzwKcFKoVCfKGZHWZKBi9Jzrr2lD/i7Lm+A==
X-Received: by 2002:a05:6a20:3c8d:b0:17b:8638:c6c6 with SMTP id b13-20020a056a203c8d00b0017b8638c6c6mr8400306pzj.13.1698445157096;
        Fri, 27 Oct 2023 15:19:17 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:86f5:78c8:cb9c:655c])
        by smtp.gmail.com with ESMTPSA id s18-20020a63a312000000b005ab7b055573sm1437421pge.79.2023.10.27.15.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 15:19:16 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [yocto-autobuilder-helper][PATCH] scripts: add list-yp-compatible-layers.py
Date: Fri, 27 Oct 2023 15:18:52 -0700
Message-Id: <20231027221852.568247-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 22:19:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61504

This is a handy helper script to query the Buildbot REST API to
create a list of Yocto Project Compatible 2.0 layers, as defined by
successful running of the "check-layers*" jobs.

The script only considers the 'jobs' ("Builders" in Buildbot speak) you
ask it to query.

The script looks at the latest -n successful builds for a branch that
matches from a list. The number of builds approach was used because
the property_list cannot be queried for "branch" in the "builders" API.

It looks for a "step" name pattern via a regex, with which all currently
running "check-layer" and "check-layer-nightly" jobs conform.

Once a branch has successfully been queried, it is removed from the list
in further iterations. The intent is to only find the latest passing
list of compatible layers, for each branch.

The output is a yp_compatible_layers.json file which can
be pretty printed with:

cat yp_compatible_layers.json | jq

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 scripts/list-yp-compatible-layers.py | 155 +++++++++++++++++++++++++++
 1 file changed, 155 insertions(+)
 create mode 100755 scripts/list-yp-compatible-layers.py

diff --git a/scripts/list-yp-compatible-layers.py b/scripts/list-yp-compatible-layers.py
new file mode 100755
index 0000000..f247057
--- /dev/null
+++ b/scripts/list-yp-compatible-layers.py
@@ -0,0 +1,155 @@
+#!/usr/bin/env python3
+
+# Query layers that are Yocto Project Compatible (2.0) on the AutoBuilder
+# and make a yp_compatible_layers.json file as an output
+#
+# Copyright (C) 2023 Konsulko Group
+# Author: Tim Orling <tim.orling@konsulko.com>
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+#
+# SPDX-License-Identifier: MIT
+#
+# Variables that should be modified for your needs (could become args)
+#
+# api_url:
+#   the url for the Buildbot REST API on the AutoBuilder
+# desired_branches:
+#   list of branches to find a matching build for
+# desired_jobs:
+#   list of "Builders" on the AutoBuilder that perform the
+#   actual compatibility checks
+# output_filename:
+#   name for the json file to output
+#
+# For "pretty" output:
+#  cat yp_compatible_layers.json | jq
+
+import sys
+import os
+
+sys.path.insert(0, os.path.realpath(os.path.join(os.path.dirname(__file__), '..')))
+
+import argparse
+import logging
+import re
+import requests
+import json
+
+
+def main():
+    # Setup logging
+    logging.basicConfig(level=logging.INFO, format="%(levelname)s: %(message)s")
+    logger = logging.getLogger('list-yocto-project-compatible-layers')
+
+    parser = argparse.ArgumentParser(description='query Yocto AutoBuilder check-layer* jobs and create a json file of Yocto Compatible 2.0 layers')
+
+    parser.add_argument("-n", "--num-builds",
+            help = "Limit the number of Auto Builder builds to query",
+            action="store", dest="num_builds", default=20)
+    parser.add_argument("-d", "--debug",
+            help = "Enable debug output",
+            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
+    parser.add_argument("-q", "--quiet",
+            help = "Hide all output except error messages",
+            action="store_const", const=logging.ERROR, dest="loglevel")
+
+    args = parser.parse_args()
+
+    logger.setLevel(args.loglevel)
+
+    api_url = 'https://autobuilder.yoctoproject.org/typhoon/api/v2'
+    desired_branches = {"dunfell", "kirkstone", "mickledore", "nanbield", "master"}
+    desired_jobs = {"check-layer", "check-layer-nightly"}
+    num_builds = args.num_builds
+    output_filename = 'yp_compatible_layers.json'
+    builder_id=dict()
+    # get info about a builder
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders?name=check-layer
+    builder_id['check_layer']=39
+    builder_id['check_layer_nightly']=121
+    # get the "api"
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/application.spec
+
+    # get a specific step raw stdio log
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/121/builds/1651/steps/11/logs/stdio/raw
+
+    # filter for strings in the name of a step
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds/1651/steps?name__contains=Test
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds/1651/steps?name__contains=Run&field=name&field=number
+    #
+    # get the latest build (NOTE: - in front of 'number' does reverse order)
+    # https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?order=-number&limit=1
+    #
+    # get list of properties for a build
+    # https://autobuilder.yoctoproject.org/typhoon/api/v2/builds/453477/property_list
+    #
+    # get the buildid of a build from builders/ so the builds/<buildid> api can be queried for property_list
+    # otherwise, we have no way to get the 'branch'
+    # https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?limit=10&field=buildid
+
+    def latest_builds(job, limit):
+        # limit to successful builds (however, this includes Skip)
+        url_str = f'{api_url}/builders/{job}/builds?state_string__contains=successful&limit={str(limit)}&order=-buildid&field=buildid&field=state_string'
+        r = requests.get(url_str)
+        return r
+
+    # set objects are not JSON serializable, so we convert our set to a list
+    class YPCompatibleJSONEncoder(json.JSONEncoder):
+        def default(self, obj):
+            if isinstance(obj, set):
+                return list(obj)
+            return json.JSONEncoder.default(self, obj)
+
+    #latest_20 = requests.get('https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?limit=20&order=-buildid&field=buildid')
+    compatible_dict = dict().fromkeys(desired_jobs, dict().fromkeys(desired_branches, set()))
+    for job in desired_jobs:
+        # we want a list we can decrement once a valid branch has been found
+        copy_desired_branches = desired_branches.copy()
+        logger.info(f'Processing at most {num_builds} builds for AutoBuilder job: {job}...')
+        for builds in latest_builds(job, num_builds).json()['builds']:
+            build_id=builds['buildid']
+            logger.debug(f'\tProcessing build: {build_id}...')
+            url_str = f'{api_url}/builds/{build_id}/property_list?name=yp_build_branch'
+            #r = requests.get('https://autobuilder.yoctoproject.org/typhoon/api/v2/builds/%s/property_list?name=yp_build_branch' % builds['buildid'])
+            r = requests.get(url_str)
+            try:
+                result_dict = r.json()['_properties'][0]
+                branch = result_dict['value'].replace('"','')
+            except:
+                pass
+            if branch in copy_desired_branches:
+                logger.info(f'\tProcessing branch: {branch}...')
+                url_str = f'{api_url}/builds/{build_id}/steps?name__contains=Run&field=name&field=number'
+                steps_req = requests.get(url_str)
+                steps_dict = steps_req.json()['steps']
+                for step in steps_dict:
+                    try:
+                        step_num = step['number']
+                        # currently, meta-virtualization does not have 'cmds' so use a look ahead
+                        repo_regex = re.compile(r"^Test (.+) YP Compatibility: Run(?: cmds)$")
+                        repo = repo_regex.match(step['name']).group(1)
+                    except:
+                        pass
+                    try:
+                        url_str = f'{api_url}/builds/{build_id}/steps/{step_num}/logs/stdio/raw'
+                        log_req = requests.get(url_str)
+                        log = log_req.content.decode("utf-8")
+                        # We only care about layers that have passed
+                        layer_regex = re.compile(r"^INFO: (.+) ... PASS$", re.MULTILINE)
+                        layers = layer_regex.findall(log)
+                        if len(layers) > 0:
+                            logger.info(f'\t\tDetected {layers}')
+                        for layer in layers:
+                            compatible_dict[job][branch].add(layer)
+                    except:
+                        sys.exit(1)
+                copy_desired_branches.remove(branch)
+    with open(output_filename, 'w') as f:
+        json.dump(compatible_dict, f, cls=YPCompatibleJSONEncoder)
+
+    sys.exit(0)
+
+
+if __name__ == "__main__":
+    main()
-- 
2.34.1


