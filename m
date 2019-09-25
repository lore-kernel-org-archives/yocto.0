Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C467E00E81; Wed, 25 Sep 2019 00:27:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C663EE00E48
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:26:29 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8P7QRSk004909
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 00:26:27 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 00:26:27 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 25 Sep 2019 15:24:09 +0800
Message-ID: <1569396253-36865-13-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
References: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 12/16] rng-tools: fix rngd failed in fips mode
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
X-List-Received-Date: Wed, 25 Sep 2019 07:28:09 -0000
Content-Type: text/plain

The FIPS test is something done on government or more secure organizations
for extra security check.
...
root@qemux86-64:~# systemctl status rngd
Unit rngd-tools.service could not be found.
root@qemux86-64:~# systemctl status rngd
rngd.service - Hardware RNG Entropy Gatherer Daemon
   Loaded: loaded (/lib/systemd/system/rngd.service; enabled; vendor preset: enabled)
   Active: inactive (dead) since Sun 2019-09-22 11:10:41 UTC; 18min ago
  Process: 317 ExecStart=/usr/sbin/rngd -f $EXTRA_ARGS (code=exited, status=0/SUCCESS)
 Main PID: 317 (code=exited, status=0/SUCCESS)

Sep 22 11:10:37 qemux86-64 rngd[317]: RNDADDENTROPY failed: Operation not permitted
Sep 22 11:10:37 qemux86-64 rngd[317]: RNDADDENTROPY failed: Operation not permitted
Sep 22 11:10:37 qemux86-64 rngd[317]: too many FIPS failures, disabling entropy source
...

From rngd manual, add `-i' to default
...
-i, --ignorefail
  Ignore repeated fips failures
...

After applying the fix
...
rngd.service - Hardware RNG Entropy Gatherer Daemon
   Loaded: loaded (/lib/systemd/system/rngd.service; enabled; vendor preset: enabled)
   Active: active (running) since Sun 2019-09-22 12:18:31 UTC; 4min 35s ago
 Main PID: 121 (rngd)
    Tasks: 2
   Memory: 1.8M
   CGroup: /system.slice/rngd.service
           /usr/sbin/rngd -f -r /dev/hwrng -i

Sep 22 12:23:06 qemux86-64 rngd[121]: RNDADDENTROPY failed: Operation not permitted
...

Refer:
https://www.unix.com/unix-for-advanced-and-expert-users/265510-rngd-failed-fips-test.html

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-support/rng-tools/rng-tools/default | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/rng-tools/rng-tools/default b/recipes-support/rng-tools/rng-tools/default
index b9f8e03..1ae6b33 100644
--- a/recipes-support/rng-tools/rng-tools/default
+++ b/recipes-support/rng-tools/rng-tools/default
@@ -1 +1 @@
-EXTRA_ARGS="-r /dev/hwrng"
+EXTRA_ARGS="-r /dev/hwrng -i"
-- 
2.7.4


