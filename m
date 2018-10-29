Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 607E9E00BC2; Mon, 29 Oct 2018 09:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 439E0E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:04:35 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id i17-v6so9260199wre.7
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Hq1CALX0nkaCly627XH8I+QzYpLVZtm+Felgg07MAeY=;
	b=f66LIWQT+7ha1BCKAEgQOSfJCJ9ShLcVS2uBvKIyC1dX6H7jLvMuUtJW957vx5QHDS
	Lbo+g16u45ZDEnby49q9yOtrRsI/ZnSnnkLVc7jfV7iTsEqm6k99KoB/XlVHx+4s0HZn
	VUEh5sSrXxNrgf+FabWlJ6djF6Lm5Dzs0w25vu3tmarNFV0vMVBieUPUNXBVQvsrHSxb
	Yy2BauR1dcbPyc4Tb2kXgw43in/6yyLSXvzTfehh4kxPE2WxzuULEfJcg+2ls8MK+PpY
	UreTCpYfwgY4S54EOJGILotSY5/D8Y2WjNlHZ1lH6BR/yl0T1xUKrm+yclFuF3NyXO9q
	snKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Hq1CALX0nkaCly627XH8I+QzYpLVZtm+Felgg07MAeY=;
	b=hyYicGPpWBxWQPAF7Ugd38lx1ZPwDwbHcH+6smAed49kyrvrgMgjEOH+8UC0uXXE+t
	YKZbcPjAPjCZPS3Ss5u809My6e+8VzZmlAAz2OiEDfcwgriy0QFMoco1ELwMVwG4Fj/O
	igB0Bt7ipnn6T3+l4hSPTQEge+maGpU2LYe/U8IlfL1ehLMzHOixE6MXOW1Q2iM6xAyW
	f0O5TptALIulbkFjcw1iYCFkV4NrA23PX/uY9d6QrLe9LXJV5Vlt+24stq4U77+bNb/1
	gawGwzT25iG5v80rllRGx8nuhlB4ekuC4QoTHG6qZmI42erVUp8e1QZg8puesdOvnnWM
	wlbg==
X-Gm-Message-State: AGRZ1gL9Xj/cfCuPlaJtPJU4imgzHQK54XDnmGXyEd2XGKXZW5my7h51
	0n2hkSkS6jm4+K48ex9Sdoa3M9AN6VbY/+F0/sDvkc8R
X-Google-Smtp-Source: AJdET5cpBHJRwFzf7xZwZ8s6Q/D/YX8vxJoWKyIgqMUqMjq441d1YxEPmrq4tPN/wuvyXl0sNE/nhEGZz/FjauCIqas=
X-Received: by 2002:adf:a3c5:: with SMTP id m5-v6mr16364905wrb.1.1540829074096;
	Mon, 29 Oct 2018 09:04:34 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 29 Oct 2018 17:04:22 +0100
Message-ID: <CAAfyv36m-6dc-XYCOotNMLMLk98VBE7jSTG6XuoRj7XS6hOxaw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: intel-nuc: hddimg EFI_PROVIDER for final install
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
X-List-Received-Date: Mon, 29 Oct 2018 16:04:37 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build hddimg for intel-nuc. Basically default
EFI_PROVIDER is systemd-boot but I want to use grub-efi so I've
updated variable accordingly. I have some changes in grub-efi (more
rootfs partitions + data). When trying to start hddimg it will start
grub with grub.cfg with my changes and not one which should be used
for "live" boot. I don't have an idea hos sysconfig found updated
grub.cfg and not one for live boot. Any ideas or I need to change also
something else? Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

