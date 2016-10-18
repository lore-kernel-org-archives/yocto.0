Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7749FE00ABE; Mon, 17 Oct 2016 17:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A0DE00AF2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:37 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id hh10so9719334pac.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=gyyVFyKP3Ycf8a3aOw4/xWatG7tYbiYN00hZSH5zuOc=;
	b=Q8hY3ChtoSWDXRZkI0MHLGxhx0yIK3+Il5uNJvagzF2B4SWB3qPLSR/xDd9C3in+l5
	rJ6gac/bgwkno2Ln43fbTZ3/K2JNONYMQXO2NJ3sxW9FBhzyCMl5d3KxzhnhNq2oKBhm
	i7FYmlNfNxd0DVYS4Ncgla+tlApjE1HVEfPx7NkhsAcsEWzWGPZb9eMcTeOsh8TbAskL
	T73BzdbYq+P/eJChRMS9GEzaJFFvj9buu1zuYAI750ez6bWr8oTY+b6PxYuaC/JXwuVN
	V5G9u/IE0aDd7ibwv8011fb5s+YVUOFhPO7gT12E8wFccMWbLGsX0KecaQa59iDTwW9i
	HDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=gyyVFyKP3Ycf8a3aOw4/xWatG7tYbiYN00hZSH5zuOc=;
	b=PpClPlv3puX/WysBt/5sezVDznmkXDPjyfY7eQLA0wb21Q5X7qxi/jy1TzNQbtKIyb
	YHLw/pzl/mxGyfsnM+k++dEERLBANBCVyMOjHh1lW3md6nH4LDIQhjeHayYisxzWyEDr
	KJ1UIB+abExo4YuOuNnZWrZHP2LurhFBrWqNVmLXQ+veTTR4U7HCcGfP278LtmVvfmrn
	8cpXNPB7ByJ+vwA0+qChyH4Yv2g6CkZrnj/7NUMt1kqWcFFCIaE1kwBRZxmAWTKwPRyQ
	+MqujZt9VM1aASq04ZCEqU8JmA+iIsMPTREvtrTz8T5nMrOC8TnTkDNAZwHtyr+t7WMD
	nrAg==
X-Gm-Message-State: AA6/9Rn5scenXwN/WEr7DAWWdQu5HfsPfbzENMHbCaRnQrCTPiBdJRg3GkjGp90+n7b1XA==
X-Received: by 10.66.50.234 with SMTP id f10mr169183pao.30.1476748957535;
	Mon, 17 Oct 2016 17:02:37 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:19 -0700
Message-Id: <1476748950-21342-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/17] qemu: Add tpm flag
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:38 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-devtools/qemu/qemu_2.7.0.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/qemu/qemu_2.7.0.bbappend

diff --git a/recipes-devtools/qemu/qemu_2.7.0.bbappend b/recipes-devtools/qemu/qemu_2.7.0.bbappend
new file mode 100644
index 0000000..d4cecb9
--- /dev/null
+++ b/recipes-devtools/qemu/qemu_2.7.0.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', '--enable-tpm', '', d)}"
-- 
2.7.4


