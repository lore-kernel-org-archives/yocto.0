Return-Path: <jngigiw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8195FE009A5; Wed,  8 Feb 2017 02:43:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jngigiw[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.179 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8559EE009B9
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 02:43:16 -0800 (PST)
Received: by mail-wr0-f179.google.com with SMTP id o16so58087587wra.1
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 02:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4Kz3IpDhU/5ZntiVq5l8aZtQHk6MrRyPkaA0sLx9Skc=;
	b=J2YSqHedSc0K396W/QDITP0EiVitbbDv6FQ31psykOAyQQsSfu0VHJNJYMeiZzT5HL
	N6rcmod26Rt26n+83YhtGLhwURwg4V6v7Wm3mQ/BAamP2ggDsSVLt3BGqXwKtMIOuPFg
	+xSDeqzPre+LN3LMEnjUFWhOlcrIJvsYNnLsPEAU7CunGrSB/y9YmxOMwUi9dX9fTPmC
	mPPSDcPJzdOizakvEZBw7Q6+ZVjaM5fops4CnTOVuwWVbXVo/ChxZ5Su1z5EUD58x7N2
	YDK6oTO2KQhf6cHoP82iCj3YutFgrvhz2g61OlDIMHxMKdMFO+8ZEOMNQOMLCzNmJy84
	pVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4Kz3IpDhU/5ZntiVq5l8aZtQHk6MrRyPkaA0sLx9Skc=;
	b=uVEemGO9f1Ckzygbckp/gPe7I0twmtXap+CgLwc7tvlI59vvGnpMuPS3AGn29xQTZR
	6uwErFavdx9K9VKxO6Ow6BpmcHapMTJ45n0NXsgvNWq/4gdobdayDlKtVAYnSHPpxqiZ
	b2kuNveQzdyxne0AwyoYtnyAvAJXDkzE1cEVrqB6WktyBQ3XchurQNJtER9jzjwBgUvi
	ith/zxJwmwYuyl0sa4TDXQdFvEy4OdDY71xG/jDIXlLAJoweg2dMTI9LnINB9FquO7ti
	WtSQ9bK8dLpdx3IyewHybPU5m2iY6Ygo+7oT1BZqiqca88NofGRXw/lklNZSdVKO+og3
	/BQA==
X-Gm-Message-State: AIkVDXLzRQIpi0VJ6XAHskViUrmaByJqzguzy4rXMgs3ogcX3lfcqAV5lT1Y9A/BpVjXm/KIgY3w5z9z6nRa6w==
X-Received: by 10.223.174.199 with SMTP id y65mr22174458wrc.19.1486550595222; 
	Wed, 08 Feb 2017 02:43:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.16.149 with HTTP; Wed, 8 Feb 2017 02:43:14 -0800 (PST)
From: Joseph Ngigi <jngigiw@gmail.com>
Date: Wed, 8 Feb 2017 13:43:14 +0300
Message-ID: <CABaDK3Vx3kuY0h8G9pX8TLKCCWEOz3-s2XfzpoxSKHKShx-MAQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 08 Feb 2017 06:52:32 -0800
Subject: Core-Image-sato GUI
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
X-List-Received-Date: Wed, 08 Feb 2017 10:43:20 -0000
Content-Type: multipart/alternative; boundary=001a114767fa2b43e0054802885e

--001a114767fa2b43e0054802885e
Content-Type: text/plain; charset=UTF-8

Hello,

I am developing a Linux system for Allwinner's cubieboard2. I have so far
managed to build the core-image-sato which works well.

My only concern is I'd like to include a login prompt once the GUI starts,
for security purposes. Which files should I use to do that?
I know how to do that using xdm but Sato doesn't seem to be using xdm
despite X being in-built. I will appreciate any help to that effect.

-- 
J.W.Ngigi

+254 725 451 900

--001a114767fa2b43e0054802885e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>I am developing a Linux=
 system for Allwinner&#39;s cubieboard2. I have so far managed to build the=
 core-image-sato which works well. <br><br></div>My only concern is I&#39;d=
 like to include a login prompt once the GUI starts, for security purposes.=
 Which files should I use to do that?<br></div>I know how to do that using =
xdm but Sato doesn&#39;t seem to be using xdm despite X being in-built. I w=
ill appreciate any help to that effect.<br clear=3D"all"><div><div><div><di=
v><br>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr">J.W.Ngigi</div><div dir=3D"ltr">=
<br>+254 725 451 900<br></div></div></div></div>
</div></div></div></div></div>

--001a114767fa2b43e0054802885e--
