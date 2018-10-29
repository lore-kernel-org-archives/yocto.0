Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DAACE00BBF; Mon, 29 Oct 2018 11:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4BAAE00AC5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:05 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id e81-v6so10912652itc.1
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=DKQp1BHFlyJxGC6Q5XGI666LPN5iVHXMPwPol9Ovd9w=;
	b=H5MsXFvJvi4ytOMQuNg9KKG2tG5U7bIXUrdfN8yUF2hBEnpELyekcmutk+NGli9aED
	CzyANNISarrK64uvInWxBoQJUlUMysDvk9eIATL8hry2ppUvSnITyufxQGN8oQI80nxb
	vvahItbleZzl2S6km05zlsFIj/8TPcD9WaYAP8HHhk+oCLxHZ3i7kforWKFQRpEbP5LP
	T+7yzQTkZsTmVuC3PsEtM5ChfIcrkLrIa75EQADKD2MeYh7r5p5zJI5piBbEpMRw/H7M
	eJ6wmKi0BR6L97o1LtQqYzVvlnTQjgxw6fukx1ME4YQjPm/lfuX8UhPI1fhg3/Y8bdT0
	LRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=DKQp1BHFlyJxGC6Q5XGI666LPN5iVHXMPwPol9Ovd9w=;
	b=WYokq2lsPUmuFGIaszlpJzXxH+VxWY36ZZ+mV9X8As7rOBlQ9BupByNbRmS3zjbIsx
	pzMJ56G7F7URjDDX935B0zh4thF4mCp6g1jeRG+DZ5lC6WdXIkEtjh5Jjvsi+PhZFPRe
	THsS3sb1NOqYe6ih6/UcXmpLGKRnBU1mDKKAMLW/COcpPKuZm2MproNjKuk5kuK5qlUt
	sR72w5gKk1ScUFDAhx0xL2KAZfdzmDhqP3yUQCrVHBtM6ObJt9NwX9ZNzuRKAr/JNw7C
	Sxyokaerggj82VJ3ftfIN1Bv8b65bnPO105BJh9cC1GW07tmYACPoKFEGXM3T6rSru7b
	LZsw==
X-Gm-Message-State: AGRZ1gLJer/cTT8fMWMhseNbwuyzzwliTQlhaTtfEiU/A3A/TnKPwkBU
	mqRY95PlrG9SzuPekZoHdpiHsIgxuMg=
X-Google-Smtp-Source: AJdET5eJj/FidZes8DDr+ib3yoQ0A+IMLjNa83gPJT5lSs/NSmJY0lY5l1NvqDJW7UqWJviTUFYcdA==
X-Received: by 2002:a24:5050:: with SMTP id m77-v6mr1606774itb.2.1540837985076;
	Mon, 29 Oct 2018 11:33:05 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.33.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:33:04 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:55 -0400
Message-Id: <20181029183257.20970-5-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181029183257.20970-1-joe@deserted.net>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
Subject: [meta-selinux][sumo][PATCH 5/7] refpolicy_git.inc: lock SRCREVs on the actual version hashes
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:12 -0000

From: Awais Belal <awais_belal@mentor.com>

Using AUTOREV in the main repository has its downsides.
1. The checked out version isn't actually the version depicted
   by PV.
2. Breaks builds in scenarios where network isn't available
   or BB_NO_NETWORK is used even after sources are already
   fetched.

1 is self explanatory, for 2 whenever SRCREV is set to AUTOREV and
SRCPV is used in PV the fetcher tries to access the network in order
to determine SRCPV (bb.fetch2.get_srcrev) and fails for obvious
reasons during parsing even when versioned recipes are used as
PREFERRED_VERSION because parsing still happens for recipes that are
in BB's search paths and we see.
Traceback (most recent call last):
bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception NetworkAccess: Network access disabled through BB_NO_NETWORK (or set indirectly due to use of BB_FETCH_PREMIRRORONLY) but access requested with command git -c core.fsyncobjectfiles=0 ls-remote git://github.com/TresysTechnology/refpolicy.git  (for url git://github.com/TresysTechnology/refpolicy.git)

So we lock the REVs and do that with a soft assignment which
allows overriding the REVs from elsewhere.

Signed-off-by: Awais Belal <awais_belal@mentor.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/refpolicy/refpolicy_git.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index f71eb35..6c318ab 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -3,8 +3,8 @@ PV = "2.20170805+git${SRCPV}"
 SRC_URI = "git://github.com/TresysTechnology/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
 SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git;branch=master;name=refpolicy-contrib;destsuffix=refpolicy/policy/modules/contrib"
 
-SRCREV_refpolicy = "${AUTOREV}"
-SRCREV_refpolicy-contrib = "${AUTOREV}"
+SRCREV_refpolicy ?= "794ed7efd0eca19d0353659a1ec9d4ef4e4b751c"
+SRCREV_refpolicy-contrib ?= "a393275a6ecb76311323726a029767a3a01e109e"
 SRCREV_FORMAT = "refpolicy.refpolicy-contrib"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
-- 
2.17.1


