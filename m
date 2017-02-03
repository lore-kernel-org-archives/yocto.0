Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B9DE004D2; Fri,  3 Feb 2017 10:51:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1000E00480
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 10:51:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v13IpapL009626
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 3 Feb 2017 10:51:39 -0800
Received: from [128.224.56.214] (128.224.56.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 3 Feb 2017 10:51:34 -0800
To: David Vincent <freesilicon@gmail.com>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
References: <20170125103759.15880-1-freesilicon@gmail.com>
	<CADkTA4N8iMJD1pt=E9qSsjGKAOfvMnHAwS=3h1AntxTxDXOUGQ@mail.gmail.com>
	<CADkTA4MvR-tpPbyHgDsVV7xcRk5Ef6zKJF335m4vcphYCvhGWg@mail.gmail.com>
	<1710687.9RfHKcS4U3@crde-port-20.cahors.local>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <503ef641-856e-a831-d39e-2c33b3b2440d@windriver.com>
Date: Fri, 3 Feb 2017 13:51:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1710687.9RfHKcS4U3@crde-port-20.cahors.local>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Fri, 03 Feb 2017 18:51:43 -0000
X-Groupsio-MsgNum: 34270
Content-Type: multipart/mixed; boundary="------------8049771CC4A0702C72C0551A"

--------------8049771CC4A0702C72C0551A
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-03 03:42 AM, David Vincent wrote:
> On dimanche 29 janvier 2017 23:31:49 CET Bruce Ashfield wrote:
>> On Wed, Jan 25, 2017 at 1:05 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
>> wrote:
>>
>> I spent Friday looking into this in more detail, and to keep things
>> consistent
>> with how the path and config queues are handled, with all the tree
>> manipulations
>> pull out of the various scripts and exposed in the bbclass itself, I ended
>> up with
>> a different implementation of the support.
>>
>> The kern-tools change is the same as you did (and is your change), the
>> difference
>> is in the bbclass processing, where do_patch() modifies the tree, and it
>> consumes
>> the output of the meta-data routine .. versus the kgit-meta script itself.
> Thanks for looking into this and come up with a better implementation. I agree
> that mine was a little harsh.
>> The work can be seen in my poky-contrib tree:
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=zedd/kernel,
>> in the
>> commit "kern-tools: re-enable scc merge command".
>>
>> These changes are on master, and passed my testing to merge feature branches
>> into the branch being built.
> Saw it, read it and saw that it was now in master-next, ready to be pulled.
>>
>> If you are able to try it out (on master), that would be great. I'm going
>> to let it
>> soak for a few days, and once it merges to master, it can be ported to
>> morty.
> Sorry, I don't have a master build ready but as soon as I can test it whether
> on morty or master, I will report back.

I was able to merge branches with this patch applied to Morty.

Cheers,

Bruce

>
> David
>


--------------8049771CC4A0702C72C0551A
Content-Type: text/x-patch;
	name="0001-kern-tools-re-enable-scc-merge-command.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-kern-tools-re-enable-scc-merge-command.patch"

From 8e08efa4b567e58386247575ae28835841f484c0 Mon Sep 17 00:00:00 2001
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Wed, 25 Jan 2017 13:29:34 -0500
Subject: [PATCH] kern-tools: re-enable scc merge command

The ability to merge two branches directly from a .scc file was
dropped during the streamlining of the tools.

As was pointed out by David Vincent <freesilicon@gmail.com>, there is
once again a valid use case for this functionality, so we restore the
capability.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                       | 16 +++++++++++++++-
 meta/recipes-kernel/kern-tools/kern-tools-native_git.bb |  3 ++-
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index a60327a..eb35dce 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -148,7 +148,7 @@ do_kernel_metadata() {
 	# run1: pull all the configuration fragments, no matter where they come from
 	elements="`echo -n ${bsp_definition} ${sccs} ${patches} ${KERNEL_FEATURES}`"
 	if [ -n "${elements}" ]; then
-		scc --force -o ${S}/${meta_dir}:cfg,meta ${includes} ${bsp_definition} ${sccs} ${patches} ${KERNEL_FEATURES}
+		scc --force -o ${S}/${meta_dir}:cfg,merge,meta ${includes} ${bsp_definition} ${sccs} ${patches} ${KERNEL_FEATURES}
 		if [ $? -ne 0 ]; then
 			bbfatal_log "Could not generate configuration queue for ${KMACHINE}."
 		fi
@@ -165,6 +165,7 @@ do_kernel_metadata() {
 }
 
 do_patch() {
+	set +e
 	cd ${S}
 
 	check_git_config
@@ -177,6 +178,19 @@ do_patch() {
 			bbfatal_log "Patch failures can be resolved in the linux source directory ${S})"
 		fi
 	fi
+
+	if [ -f "${meta_dir}/merge.queue" ]; then
+		# we need to merge all these branches
+		for b in $(cat ${meta_dir}/merge.queue); do
+			git show-ref --verify --quiet refs/heads/${b}
+			if [ $? -eq 0 ]; then
+				bbnote "Merging branch ${b}"
+				git merge -q --no-ff -m "Merge branch ${b}" ${b}
+			else
+				bbfatal "branch ${b} does not exist, cannot merge"
+			fi
+		done
+	fi
 }
 
 do_kernel_checkout() {
diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
index 8af0155..aa27ec8 100644
--- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
+++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
@@ -4,7 +4,8 @@ LIC_FILES_CHKSUM = "file://git/tools/kgit;beginline=5;endline=9;md5=a6c2fa8aef1b
 
 DEPENDS = "git-native"
 
-SRCREV = "85564e69555b713c2759d58ec5ade54424d051d8"
+SRCREV = "c14440d4e7ae0160c260ed65c3e123be5dc97ae8"
+
 PR = "r12"
 PV = "0.2+git${SRCPV}"
 
-- 
2.7.4


--------------8049771CC4A0702C72C0551A--
