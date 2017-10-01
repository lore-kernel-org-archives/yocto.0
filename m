Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F035E00E46; Sun,  1 Oct 2017 09:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 704D0E00B87
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:50 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id y192so3550471pgd.5
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=olfKOjfL1aRciFXlFgvsHKJOsnYxngGTDslYC7iMv38=;
	b=cSPbzhKXdl7pVuL0+bz+gy7+Vt4MOtOBXDk5Yod36iWhvYb5Wbuj3/58ft454iMIYJ
	BeWv2YuPuK56da3xaZ0Axb+5tOYbCMpBC/dZZxPvREfxCdgBtGrTpcLsG7+y1rFxWU66
	IDFw/QDezebi13LoAODfdEy9q/FK+bjHVW6WtL7IBapyBLjaycciT2toBVzxKxToL59h
	YjH6bJB6OE3UaKHeJdyT/nXmf9SRS4DFwEKQQbyi8VVtUNCXXMUME7ykKKRtP8llSRfR
	VXNRzjRaNCO1ONk8h1ocvCFz03smzySeZRNVY4d5De8Cq0h2K5tlRSzztGd3zw7PzWa3
	lBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=olfKOjfL1aRciFXlFgvsHKJOsnYxngGTDslYC7iMv38=;
	b=FHdQW3drPubgc/rGaDPRsyNquIMHNtDHnAupDs0MzzMc0WDYDfAVin6MLRWrEi4Iky
	Zn6urxUrI3JXubtYsZneHQphQnXCKNAhcGch6Akxa5yiHXNGgx//Og3UtcyjUX4EjDH0
	hzLSdYzPhGo6/KHhEy2NYG2n5pIYMQmJlLd5GB7fA3ItoujzN/mrEmUJj+Je+LdrZRr9
	zV10GrgaAwvrACbqf3CS4jF1FQnsqjKMPRdLDseAqemMWu/rByab7Tqed2Z9DTIX4HO0
	fN57J8WU2HufK69Obfn/c3quUhEfGd91gOkdCt/KyToCowYeVYoCpgO23uYce6gReEiq
	AA1g==
X-Gm-Message-State: AHPjjUinba8qJngD3Fuj+nS7yXD/lZvO6oG6Om+bUOnuL4rFcHv/C6e6
	fUeRmBUnDiER0AlAC6fg/M0=
X-Google-Smtp-Source: AOwi7QApMzbvmpBBjF/Zao372U8P5M0ignbo01YgKAgcC4GHXrJEhVrG/Sarw0PzN5EagSIEaZfKcQ==
X-Received: by 10.98.86.28 with SMTP id k28mr12594758pfb.89.1506876230214;
	Sun, 01 Oct 2017 09:43:50 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:40 -0700
Message-Id: <1506876220-22710-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/10] linux-yocto/4.12: update path version
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:50 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto_4.12.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-yocto_4.12.bbappend b/recipes-kernel/linux/linux-yocto_4.12.bbappend
index 0e610d4..9d68c99 100644
--- a/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.10:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.12:"
 
 SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-- 
2.7.4


