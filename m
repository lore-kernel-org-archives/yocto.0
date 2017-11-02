Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C163BE00C44; Thu,  2 Nov 2017 08:51:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32BE3E00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 08:51:20 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id g90so5439671wrd.6
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 08:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:cc:subject:date:message-id;
	bh=igJwvDE+0lW1uoyJJHeoblvFq3TsyIb+L4e1cR8761A=;
	b=RfW+LVDUnpn2Tymvy3wwLVEdZmBYiMptepZRIHbyvFCOWiu8ZBuVyynlm86mnDHz+P
	RPPoKusSm9U9jZH5lQd/MhM3BQ/Wevx7rw+yLhPtN5+vkIXB1bP+f2hq3hD/O9/I5g+s
	CTtNyJx7mJ/2fr6NCIxx/8v4F6IYH8FomkWV9q5b3SbG5cSozTIvFlwZKYDYFcxyQs6q
	UVF7MwCV4rzQkg4AOZR1SJa7RbGLtBz9/rxOk8FmHM3UCZWyYtaguoUflfbJwV8Fs8Mb
	AZvUYb/DI1f7PKeJg5/KnwKmsmW+3FXO8ZeuFlTKgZdzWqDHjbDZeOE4cQJ7Hs0NeSH1
	LeQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=igJwvDE+0lW1uoyJJHeoblvFq3TsyIb+L4e1cR8761A=;
	b=qjyDPckt4xsZnwJg5fffv5CXe77WCRbCInW+ECfaGwpU/iQ1pJetf4dGWsHDUz0+3d
	ZsPF+baAIjwSENRnHpGwy9HnEct4589Nr092D3fAtarAFboO8jgqoTCiGTsHMdwa/xgC
	fCB+i08/y49loJsNG5P6KUIA3okT4B5ZX/2EnPS8Hs2hgEfj60Tm0biGwnXRL9VZEcis
	5u2cU5AFoiBBHgfbTh7vswDOT4rYUZR+CMloBs2bcda5mwbGHtDNM2vLYVkUzHWsiAa0
	JdWDhGrVudjyALDfpTkayYw29k8vmztJR1SvYhYdZYU9rDLogUrDVo7578pPaPRyNG5G
	zi1A==
X-Gm-Message-State: AMCzsaUuLtQPzwJ5xAuV1mHtkOHFOH4YYwl9NLDE7g8+hJItzOxNQxpx
	oWdAJ7GsWXcoz67yscvmC6hHir54F+M=
X-Google-Smtp-Source: ABhQp+Qcg+yRq2dkEGsE3Li8/654JV1ptTO4DMTke7RMjnCu3wClAOV8zeBJFETxYFagEfnS/PKjmg==
X-Received: by 10.223.167.65 with SMTP id e1mr3586313wrd.280.1509637879693;
	Thu, 02 Nov 2017 08:51:19 -0700 (PDT)
Received: from localhost.localdomain
	(host86-154-149-85.range86-154.btcentralplus.com. [86.154.149.85])
	by smtp.gmail.com with ESMTPSA id 89sm1481975wri.79.2017.11.02.08.51.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Nov 2017 08:51:18 -0700 (PDT)
Sender: Andrei Gherzan <andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Nov 2017 15:51:05 +0000
Message-Id: <1509637869-29982-1-git-send-email-andrei@gherzan.com>
X-Mailer: git-send-email 2.7.4
Cc: Andrei Gherzan <andrei@gherzan.com>
Subject: [meta-raspberrypi][PATCH 1/5] x264: Disable asm for raspberrypi0-wifi
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
X-List-Received-Date: Thu, 02 Nov 2017 15:51:23 -0000

This used to work in the past because this machine was based on raspberrypi
one. Now that they are separate, we need a configuration for it too otherwise:

| common/arm/quant-a.S: Assembler messages:
| common/arm/quant-a.S:362: Error: selected processor does not support `rbit
r1,r1' in ARM mode
| common/arm/quant-a.S:363: Error: selected processor does not support `rbit
r1,r1' in ARM mode

Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
---
 recipes-multimedia/x264/x264_git.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-multimedia/x264/x264_git.bbappend b/recipes-multimedia/x264/x264_git.bbappend
index c1cb3bc..505719e 100644
--- a/recipes-multimedia/x264/x264_git.bbappend
+++ b/recipes-multimedia/x264/x264_git.bbappend
@@ -1 +1,2 @@
 EXTRA_OECONF_append_raspberrypi = " --disable-asm"
+EXTRA_OECONF_append_raspberrypi0-wifi = " --disable-asm"
-- 
2.7.4


