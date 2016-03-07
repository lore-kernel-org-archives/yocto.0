Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E92CCE00C94; Mon,  7 Mar 2016 12:54:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6F50E0083D
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:17 -0800 (PST)
X-TM-IMSS-Message-ID: <5220d7c700020aa8@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220d7c700020aa8 ; Mon, 7 Mar 2016 15:57:12 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGO003618; Mon, 7 Mar 2016 15:54:00 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:50 -0500
Message-Id: <1457383972-6283-11-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 11/13] refpolicy: Add support for the SYSTEMD build.conf option.
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:27 -0000

refpolicy has introduced a new build.conf option, SYSTEMD=y,
to enable rules specific to using systemd as the init system.
In particular, without setting this option, rules for direct
domain transitions from init_t to daemon domains are not included
in the policy.  Define a POLICY_SYSTEMD variable in the refpolicy
common include file that can be set elsewhere to enable this support.

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 recipes-security/refpolicy/refpolicy_common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 0b0b2fd..67d0426 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -35,6 +35,7 @@ POLICY_DISTRO ?= "redhat"
 POLICY_UBAC ?= "n"
 POLICY_UNK_PERMS ?= "allow"
 POLICY_DIRECT_INITRC ?= "n"
+POLICY_SYSTEMD ?= "n"
 POLICY_MONOLITHIC ?= "n"
 POLICY_CUSTOM_BUILDOPT ?= ""
 POLICY_QUIET ?= "y"
@@ -48,6 +49,7 @@ EXTRA_OEMAKE += "NAME=${POLICY_NAME} \
 	UBAC=${POLICY_UBAC} \
 	UNK_PERMS=${POLICY_UNK_PERMS} \
 	DIRECT_INITRC=${POLICY_DIRECT_INITRC} \
+	SYSTEMD=${POLICY_SYSTEMD} \
 	MONOLITHIC=${POLICY_MONOLITHIC} \
 	CUSTOM_BUILDOPT=${POLICY_CUSTOM_BUILDOPT} \
 	QUIET=${POLICY_QUIET} \
-- 
2.4.3


