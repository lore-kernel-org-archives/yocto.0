Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05D7CE00C09; Fri, 19 Jul 2019 08:07:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cavallini.koan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF209E00BA1
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 08:07:11 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id j5so54900801ioj.8
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 08:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=55giSF4JaolM/xEfvsFAtNhGZTzJwDhWINteOTktg1w=;
	b=l8WxKcq4IxRRBXpXkCtnDgrXnwZfkSGkX+gPFq701HHEC8eYmAitskwQmWYPFmyBQA
	djeF6/hHhJQFiv7JC4FylwW9NeWkmz0LWUus9y4JeIqbJcdyg06g3qTFnPsEoYp7zigA
	4j6ZW/r9i9kQd75Fx7RVMr1ncw8k+ukQ4ygIzMpmUiZNlgzrzwEOUkFbR1wvXbvGAKxH
	lMHD32SQSK/4L3Gx+v4ue0jdY3jNaSp9Xhe67A1MX6arLwEFga1RKCesn7Iec4Dq3Un0
	dkl0O4ATIM3Un9h3PXVcLTqHvaaGz03ALeo5vWyF1HMNSWqyRaumZB6LdVqIpK+j3BZF
	CvFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=55giSF4JaolM/xEfvsFAtNhGZTzJwDhWINteOTktg1w=;
	b=tUQGN3A23bxosVjcShNqbEIsCF+5uKdywUh+TfvKw/g8vXUU4ponHuwIAbNpxmtSaj
	YJTNFu07Ll6yW5r3PVRmF233Xk1OCKxHBa+kWoYejrH4+iT1R7t2L+BSJjPKwjGxNaPN
	t/z2nZ4viHVEA0yYu15JkgCGUSelFkzRubbZow9LmviQJEmjvfZ7Wvvw7xkl8e+wBNWv
	fUDO5rShJg9FUwDoj6XoovIgmQN8hL6w/Msuc7Xadx+rfMOSKsg/CDoPBgNozi/OmDP5
	ZWpe6n+u/qulL1ITjNvG3e6QJVMTyJxmKB2F+CSNtXMhTYjO0bKMfBdjJ0B/ADdE4f88
	gd2w==
X-Gm-Message-State: APjAAAXPuu4H8VGANWvczrTokqmgjrTBTnLsi98j2ZkZVAE3FHNMIapp
	hDh/hn4MroiryIu7aT+8dtbY7xWiC7x+c1k5/D6dgJNt/4c=
X-Google-Smtp-Source: APXvYqyfLWlFQaSwbBTQXJKo0OJWlFYXS5CuLLqthZ/nh5OAR54+0QWgQBJC/hf88FyGtPo9rlf//OpqaRgku5FpuFA=
X-Received: by 2002:a05:6602:2413:: with SMTP id
	s19mr3505684ioa.161.1563548831260; 
	Fri, 19 Jul 2019 08:07:11 -0700 (PDT)
MIME-Version: 1.0
References: <b2bd0bf9-fea1-b60a-9686-309715948612@bisdn.de>
In-Reply-To: <b2bd0bf9-fea1-b60a-9686-309715948612@bisdn.de>
From: Marco <cavallini.koan@gmail.com>
Date: Fri, 19 Jul 2019 17:07:00 +0200
Message-ID: <CAFQ+DijXWS0pUrr4wp2RLTwHvvsKakU4=z586d+73e_LWWFgGA@mail.gmail.com>
To: Pierluigi Greto <pierluigi.greto@bisdn.de>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Image not staring after upgrade from sumo to thud
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
X-List-Received-Date: Fri, 19 Jul 2019 15:07:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Pierluigi,
is not clear what guide did you read and what is your issue.

Distinti Saluti / Best Regards
--
Marco Cavallini | KOAN sas | Bergamo - Italia
embedded software engineering
http://KoanSoftware.com

Il giorno gio 11 lug 2019 alle ore 10:51 Pierluigi Greto
<pierluigi.greto@bisdn.de> ha scritto:
>
> Hi all,
>
> I have several platforms and I have upgrade Yocto from sumo to thud.
> Most of them works fine after the upgrade, but some of them are not
> starting. Basically after I install the image and I have chose my OS in
> grub, the system reboot. But if I create the image using sumo, the image
> is working fine.
> My system is a x86 arch. I have read the guide for migrating from sumo
> to thud and I was using COMPATIBLE_MACHINE for kernel multiconfig. I
> have fix this because it's known issue. But other than that, I don't
> know why it's not working (also because most of the other platforms are
> working as with sumo).
> Any suggestions?
> Thank you.
>
> Best,
> Pierluigi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

