Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33656E01892; Sun, 13 May 2018 13:59:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB693E00CC8
	for <yocto@yoctoproject.org>; Sun, 13 May 2018 13:59:05 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id v17-v6so7021078uak.6
	for <yocto@yoctoproject.org>; Sun, 13 May 2018 13:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=f5doeT/C65XWJ8xtGniFDRGCT0sUEyZowuKmRCJi+So=;
	b=tCxGGod5haVUf8aLP0f3Qel1nJe785kK22AB3ZxwGiZyucuWAmgqfSLBuTvShJNtR2
	8BehTM+B++THZhci5NJycC1Olkz1qbLK4YJkci4FUD3wyYnM/2O/vSid2q5+Qqd/C1y0
	Phw+kx7NQKdmGbcVFPSuxetXmzUnDKPokM9uKIACvD6o8C7wA+UL+wvS6PaK1YpNCtPn
	vOLrN3EIkFzUSPjmXF8D174ULAeE3vVE/k18pffL/q26jQLddZ/0AweuzCNU3IG3IuPY
	cBotB8MNyezyIMiWmU/aeAf5CwGnUmi4yIaNoTYBLWW5tlDy2rsmLUxx3FgbnlyC5Jy4
	RxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=f5doeT/C65XWJ8xtGniFDRGCT0sUEyZowuKmRCJi+So=;
	b=P8C3gQU0jLUVZ8+/nTypte6Y9GzQWXXaM6l0+oZMO/bgWFnM9Or31qjgOLlFdZ2DMp
	tUMOljKEDvj+CvvWJN+4UJTw64iXTLK4knoJPTaQxKzscpASdB+Lva2qwaDf2zssvLQ4
	jFikUML68aCnnJCReVZbAX3XLpSCNQD3si69g33nu74rm3DdIiQoelUgkBfaz9iQoW40
	Y1Mmuv6keUheRLqcxTxzNaG0/afDK0wXRmwfKi9KgA2v4+HYmfOM1lQOkYmMLmuzgfHt
	lN/UC0nW/u0LxHQHSZ1wi+pdhsbNCTcYrREVlLWC74aiaHuds6UL5FIjLnZDcltcPoeY
	8MqQ==
X-Gm-Message-State: ALKqPweUoVB6ku/JiA6fcZ3jcs9KXSLv2AMfxaAV2bVcUigh1lfjocPh
	S/fpbdwyJRRA4F7tEHvEIKEGK389z3mtgISU8O6+Jw==
X-Google-Smtp-Source: AB8JxZpWac77A/oBPnNxnEdgEYgf2YP463r9vdthKMoX1VM897EnQm9tADFYAZzLorh+A4b8Cz9NpqAC52DDvVySv4U=
X-Received: by 2002:a9f:309a:: with SMTP id
	j26-v6mr9315528uab.71.1526245144728; 
	Sun, 13 May 2018 13:59:04 -0700 (PDT)
MIME-Version: 1.0
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Sun, 13 May 2018 22:58:52 +0200
Message-ID: <CAKRytNwzOzk0N9Z1mg6V2zufrQutWYRrjn7bcbijEa3FwdQH8g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to modify a meta third party layer sources from my custom layer
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
X-List-Received-Date: Sun, 13 May 2018 20:59:07 -0000
Content-Type: multipart/alternative; boundary="000000000000b11b15056c1ca3f7"

--000000000000b11b15056c1ca3f7
Content-Type: text/plain; charset="UTF-8"

Hello everyone,
I'm new to yocto so please don't kill me :). I have a question, probably
very stupid and simple, but I'm really don't know how to understand this so
I'm trying to ask to the cummunity.

I'm using Yocto 2.4 for an hardware with meta-freescale layer to support it.
However I have to apply some changes. I'm able to build if I
modify/overwrite and delete some files by myself, but when I try to use a
custom layer to do that I cannot build, because obviously I don't know what
I should do.

My custom layer applies some patches to work and work-shared dirs and
everything is ok, but I don't understand how to add files and changes to my
layer to modify meta-freescale sources.

I can create a fork of that layer, but I prefer to add all changes to my
layer.
In particular I need to add some .inc, .bb files into /recipes-bsp/u-boot/
of meta-freescale and a folder with some files and patches taken from
poky/meta/..../u-boot/ like u-boot-fw-utils-imx_2017.09.bb and
u-boot-common_2017.09.inc

How can I do this from a custom layer? Which is the right procedure?

Custom layers can modify only work and work-shared dirs content or also
other layer sources, because that they are executed?

Thank you.

--000000000000b11b15056c1ca3f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,=C2=A0<div>I&#39;m new to yocto so please d=
on&#39;t kill me :). I have a question, probably very stupid and simple, bu=
t I&#39;m really don&#39;t know how to understand this so I&#39;m trying to=
 ask to the cummunity.</div><div><br></div><div>I&#39;m using Yocto 2.4 for=
 an hardware with meta-freescale layer to support it.</div><div>However I h=
ave to apply some changes. I&#39;m able to build if I modify/overwrite and =
delete some files by myself, but when I try to use a custom layer to do tha=
t I cannot build, because obviously I don&#39;t know what I should do.</div=
><div><br></div><div>My custom layer applies some patches to work and work-=
shared dirs and everything is ok, but I don&#39;t understand how to add fil=
es and changes to my layer to modify meta-freescale sources.</div><div><br>=
</div><div>I can create a fork of that layer, but I prefer to add all chang=
es to my layer.</div><div>In particular I need to add some .inc, .bb files =
into /recipes-bsp/u-boot/ of meta-freescale and a folder with some files an=
d patches taken from poky/meta/..../u-boot/ like=C2=A0<a href=3D"http://u-b=
oot-fw-utils-imx_2017.09.bb">u-boot-fw-utils-imx_2017.09.bb</a>=C2=A0and u-=
boot-common_2017.09.inc</div><div></div><div><br></div><div>How can I do th=
is from a custom layer? Which is the right procedure?</div><div><br></div><=
div>Custom layers can modify only work and work-shared dirs content or also=
 other layer sources, because that they are executed?</div><div><br></div><=
div>Thank you.</div><div><br></div></div>

--000000000000b11b15056c1ca3f7--
