Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0DE0C4332F
	for <webhook@archiver.kernel.org>; Sun, 29 Oct 2023 20:18:16 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.79872.1698610688589453283
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Oct 2023 13:18:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Wxs0ZYWx;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6b5e6301a19so3776556b3a.0
        for <yocto@lists.yoctoproject.org>; Sun, 29 Oct 2023 13:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698610687; x=1699215487; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VPemZyaTFTAIhtdHNYxGz9rX2r7gZiq7Co9facIY2XA=;
        b=Wxs0ZYWxqV4wROrJsMNMi92qBcmjAhHqXdIvI0qif+dxJvTr8odhMMhKCyY+DmUgF0
         gMXkdXuxNKqOw+5PNcJToxsa5k6LeSd5Q7z3xZiBAE3Q8ySNM/dpXw+swxgWWL1jdGOv
         E+P0rFeJMcYFERgK9dDTtxNNKg/vMVgUk/KEJrr2ZSYluHR2ct1wrJ+tcvWu6mg3RXV2
         rSybxon7LPHyTHMO9uCiTWZ5FIBw89PQsfmjam3KuVFFqJT4+FPz06GcYRiwPAp5eSGp
         Cxmro9Hq+fudYyAt/OBgkziutp7bPHcnqSu1n4nr8BUO4GWzJL6p+pf4mtVTIKimaAef
         5mzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698610687; x=1699215487;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPemZyaTFTAIhtdHNYxGz9rX2r7gZiq7Co9facIY2XA=;
        b=KJUkhEQIGfIGMC9cjmmCFsVqdkmdIgreq83HdLVLboiPAt2zvofBVEZ90BMejZpX86
         WRNWs6OdClnFyZFwbEobYR4sZN4BKZUQy9FESnZyicW8HqSv46skxF1HxzybKE2U03uE
         e4uuQDVMhp9pjfbWNnbtBQ2VeaGp+vj+C6F+wlLUXIge6ytHrVTDHLiCp7RcWAA6VK4q
         xdyfYd8zILZDYvW0yZSgLEDFK58IN7mkS6wqtsUzTOa9W/BPL9nOWl8ttuhWJ5XnEjR8
         OtGOYWkK2SavvY623QXShcU3WCf9/UW1fXp9V7s7VboPDKSIW1s+mqS5JQudBWZnhfPg
         kZYQ==
X-Gm-Message-State: AOJu0Yz1+cNWA8dbHOQU7Z0EUrLQ8v+e7HF5q9xmhgss0hYn1/mCffKP
	NQS0LSzejAG4OOghJ/AdKur0zGU/ipP0ow==
X-Google-Smtp-Source: AGHT+IHqgWK/JnvjcGY9/N9cCwInrdypnmbqTJ/guUYOqyygqW7+FUg1YfbRAwmVMwbKZ/h0tzNJwg==
X-Received: by 2002:a05:6a20:a120:b0:17e:4454:edc3 with SMTP id q32-20020a056a20a12000b0017e4454edc3mr11200208pzk.47.1698610687460;
        Sun, 29 Oct 2023 13:18:07 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:9dbd:3536:679:1ce7])
        by smtp.gmail.com with ESMTPSA id c8-20020a62e808000000b006be7d407a11sm4744134pfi.178.2023.10.29.13.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 13:18:06 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [yocto-autobuilder-helper][PATCH] scripts: add list-yp-compatible-layers.py
Date: Sun, 29 Oct 2023 13:17:53 -0700
Message-Id: <20231029201753.1318824-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 29 Oct 2023 20:18:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61513

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
Changes in v2:
  * corrected the updating of the layers set()
  * moved all important parameters to args
  * clean up some comments

 scripts/list-yp-compatible-layers.py | 181 +++++++++++++++++++++++++++
 1 file changed, 181 insertions(+)
 create mode 100755 scripts/list-yp-compatible-layers.py

diff --git a/scripts/list-yp-compatible-layers.py b/scripts/list-yp-compatible-layers.py
new file mode 100755
index 0000000..9d5fc48
--- /dev/null
+++ b/scripts/list-yp-compatible-layers.py
@@ -0,0 +1,181 @@
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
+# NOTE: We cannot directly filter 'property_list' for the branch in the
+#       /builders/<>/builds/<> REST API, as it is not exposed. We may need
+#       to set a large number of builds (e.g. -n 400) to match older branches,
+#       since "master" runs far more often than any other branch.
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
+    parser.add_argument("-b", "--branches",
+            help = "Branches to find a matching build for in Auto Builder builds query",
+            action="store", dest="query_branches", default="dunfell,kirkstone,mickledore,nanbield,master")
+    parser.add_argument("-j", "--jobs",
+            help = "Jobs ('Builders') to query on the Auto Builder that perform the actual compatibility checks",
+            action="store", dest="query_jobs", default="check-layer,check-layer-nightly")
+    parser.add_argument("-n", "--num-builds",
+            help = "Limit the number of Auto Builder builds to query",
+            action="store", dest="num_builds", default=20)
+    parser.add_argument("-o", "--output-filename",
+            help = "Name of the file to use for JSON output",
+            action="store", dest="out_file", default="yp_compatible_layers.json")
+    parser.add_argument("-u", "--url",
+            help = "URL for the Auto Builder REST API",
+            action="store", dest="api_url", default='https://autobuilder.yoctoproject.org/typhoon/api/v2')
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
+    api_url = args.api_url
+    desired_branches = args.query_branches.split(',')
+    desired_jobs = args.query_jobs.split(',')
+    num_builds = args.num_builds
+    output_filename = args.out_file
+    # Currently unused, as the actual name of the builder is used in the REST API query
+    builder_id=dict()
+    # Get info about a builder
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders?name=check-layer
+    builder_id['check_layer']=39
+    builder_id['check_layer_nightly']=121
+    # Get the "api"
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/application.spec
+
+    # Get a specific step raw stdio log
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/121/builds/1651/steps/11/logs/stdio/raw
+
+    # Filter for strings in the name of a step
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds/1651/steps?name__contains=Test
+    # curl https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds/1651/steps?name__contains=Run&field=name&field=number
+    #
+    # Get the latest build (NOTE: '-' in front of 'number' does reverse order)
+    # https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?order=-number&limit=1
+    #
+    # Get list of properties for a build
+    # https://autobuilder.yoctoproject.org/typhoon/api/v2/builds/453477/property_list
+    #
+    # Get the buildid of a build from builders/ so the builds/<buildid> api can be queried for property_list
+    # otherwise, we have no way to get the 'branch'
+    # https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?limit=10&field=buildid
+
+    def latest_builds(job, limit):
+        # Limit to successful builds (however, this includes Skip)
+        #latest_20 = requests.get('https://autobuilder.yoctoproject.org/typhoon/api/v2/builders/check-layer-nightly/builds?limit=20&order=-buildid&field=buildid')
+        url_str = f'{api_url}/builders/{job}/builds?state_string__contains=successful&limit={str(limit)}&order=-buildid&field=buildid&field=state_string'
+        r = requests.get(url_str)
+        return r
+
+    # Set objects are not JSON serializable, so we convert our set to a list
+    class YPCompatibleJSONEncoder(json.JSONEncoder):
+        def default(self, obj):
+            if isinstance(obj, set):
+                return list(obj)
+            return json.JSONEncoder.default(self, obj)
+
+    compatible_dict = dict().fromkeys(desired_jobs, dict().fromkeys(desired_branches, None))
+    for job in desired_jobs:
+        # We want a list we can decrement once a valid branch has been found
+        desired_branches_copy = desired_branches.copy()
+        # Create a simpler, flatter placeholder dict to work with inside the loop
+        job_compatible_dict = dict().fromkeys(desired_branches_copy, set())
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
+            if branch in desired_branches_copy:
+                logger.info(f'\tProcessing branch: {branch}...')
+                url_str = f'{api_url}/builds/{build_id}/steps?name__contains=Run&field=name&field=number'
+                steps_req = requests.get(url_str)
+                steps_dict = steps_req.json()['steps']
+                for step in steps_dict:
+                    try:
+                        step_num = step['number']
+                        # Currently, meta-virtualization does not have ' cmds' so use a look ahead
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
+                            for layer in layers:
+                                if job_compatible_dict[branch]:
+                                    old_layers_set = job_compatible_dict[branch].copy()
+                                    new_layers_set = set([layer]).union(old_layers_set)
+                                    # Replace the old data with the new data
+                                    job_compatible_dict[branch] = new_layers_set
+                                    logger.debug(f"job_compatible_dict['{branch}'] = {job_compatible_dict[branch]}")
+                                else:
+                                    local_layers = set([layer])
+                                    job_compatible_dict[branch] = local_layers
+                                    logger.debug(f"job_compatible_dict['{branch}'] = {job_compatible_dict[branch]}")
+                    except Exception as err:
+                        logger.error(err)
+                        sys.exit(1)
+                desired_branches_copy.remove(branch)
+        for j in compatible_dict:
+            if j == job:
+                # Attempts at using compatible_dict[job][branch].add(layer) added to all jobs
+                # Apparently dicts and sets are weird and so as a functional approach:
+                # Replace the placeholder with real data
+                compatible_dict[j] = job_compatible_dict
+            else:
+                continue
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


