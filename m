Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88ED8E00874; Mon, 20 Aug 2018 05:26:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6248DE007C9
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 05:26:16 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id w126-v6so25420971oie.7
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 05:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0fp1EjwbhGAPIx51ihDrzNSq3aOrEcktyaHCZ+Lxc6A=;
	b=UvwrXlHDOgbPCX2d3L8MDecNrc1auNZaHoUTDaLxbB66yWWDt+GN/WHEeNjlm53p3K
	/HubAtaN1coJtQxN8E29Tn1Ic8CmKuNfK+WaKmHgwvQTObgGYPqchaFlloiEJfousWHz
	jDxgNXpKNt35lhXHPWT1mIrUpfpMob8NeZYlc8sfetuJW27yZZJrrHpbJaiYVEMUY7Qd
	YUDbZLjnM6ReocYoMGXva4YqUajziRbhm2fVTkv+Sg/3KkT29fBRsj30+xpo3etUHACi
	MExwmd/EFWZKvCaUvyNC/1xOQ9JtOjjGh/VprqSJ87HmDlGZvBfws1XZ2klbAipc9LlY
	SGKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0fp1EjwbhGAPIx51ihDrzNSq3aOrEcktyaHCZ+Lxc6A=;
	b=uVtDP7r0XO5v08RvxU9kpTmo+MtEMFFyhtqNdnpcpXcXEKTDUEKqAG+2wHCx+X0AUS
	5VqBMscV5gNg6WI6j/d8hLy0nCKCq5o/BU6cJyrl6lkaVhnMp1wg/dNpgel1dPjQ9Ikf
	X9RHoqpmSv/95Tgzh6qS7IvaJw6FfQEOoWX95iWdDE9sNB3MqwarNPe3mu6GTadPFTM0
	wDlLeVnEkg1vzuWyMOkukIsQHvW0MKyfEoZlWfOaSoGtZ/OX9s7SDN0BNPjdbHI2Tum4
	aEPOcPSuZBkdgSebb3XLHHNeDiSFc8UKPuhpAi7kKNiJ/z0dz91iybqTr55DK1JJOwFK
	PAYQ==
X-Gm-Message-State: AOUpUlGbLjwu5KYjQbgyYTvrnAzJ++YkvNRtn6+rfo7PpYNnbUKdvNgB
	emSK37SR0sx8Zk7z5W9HCdLXpVSfGc2lLqXaU+c=
X-Google-Smtp-Source: AA+uWPxskcSgh0ymtWkbLOavHtqBjX4cTiHM1dfk5FVvBgC5MCe5JgXyUaLbpW3DyUZCpAlVgeWrFWENzavzgnRmEdw=
X-Received: by 2002:aca:3ad4:: with SMTP id
	h203-v6mr12934057oia.294.1534767975596; 
	Mon, 20 Aug 2018 05:26:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 05:26:14
	-0700 (PDT)
In-Reply-To: <HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
References: <HE1PR06MB1689A8B4242EF071FDD42F78943E0@HE1PR06MB1689.eurprd06.prod.outlook.com>
	<CANNYZj94ivO54g88AT4g1KLTbtPHGfiFxA=Owvnvu=RqHYRVKg@mail.gmail.com>
	<HE1PR06MB1689535B4BAC12A98F5883AC94320@HE1PR06MB1689.eurprd06.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Aug 2018 14:26:14 +0200
Message-ID: <CANNYZj8Vcx1D6Pr6rtj3NFXG0gsUgm1oMuNrpnYmTuVSAOT-9g@mail.gmail.com>
To: Nader Hariri <nader.hariri@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ptest-runner "No ptests found."
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
X-List-Received-Date: Mon, 20 Aug 2018 12:26:17 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-20 14:07 GMT+02:00 Nader Hariri <nader.hariri@hotmail.com>:
> So,  contrary to what is stated in the ptest wiki and the yocto
> documentation, using EXTRA_IMAGE_FEATURES doesn't install ptests packages
> (from ptest-enabled recipes) in my image, and I can't figure out why ..

You can run 'bitbake -e <image>' to figure out why
EXTRA_IMAGE_FEATURES has no effect. In my tests (poky master) it seems
to work as intended:

#
# $IMAGE_FEATURES [8 operations]
#   append /home/alexander/development/meta-qt5/conf/layer.conf:36
#     [validitems] "qtcreator-debug"
#   set? /home/alexander/development/poky/meta/conf/distro/include/default-distrovars.inc:24
#     ""
#   set /home/alexander/development/poky/meta/conf/documentation.conf:208
#     [doc] "The primary list of features to include in an image.
Configure this variable in an image recipe."
#   append /home/alexander/development/poky/meta/conf/bitbake.conf:812
#     "${EXTRA_IMAGE_FEATURES}"
#   set? /home/alexander/development/poky/meta/classes/image.bbclass:34
#     ""
#   set /home/alexander/development/poky/meta/classes/image.bbclass:35
#     [type] "list"
#   append /home/alexander/development/poky/meta/classes/image.bbclass:36
#     [validitems] "debug-tweaks read-only-rootfs empty-root-password
allow-empty-password allow-root-login post-install-logging"
#   set image.bbclass:166
[__anon_168__home_alexander_development_poky_meta_classes_image_bbclass]
#     "debug-tweaks"
# pre-expansion value:
#   "debug-tweaks"
IMAGE_FEATURES="debug-tweaks"


Alex

