Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4918E00D7E; Mon, 26 Aug 2019 08:23:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49A79E00D4F
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 08:23:19 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id s145so14321151qke.7
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2019 08:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AkHBNL03dj6TBE3Y2zgpWjbN5doAIGBMP9GQxUmCQEk=;
	b=csxYncO1Cv1YCItMC5/zgYtO/3iYyexXJtS3buNPmn5wmU7HYr17dE7QT5yhjRVJ+p
	SQS4/EPXJ1Dr/s8GwFHndU86hs020ecG8m5beuPlQx2RYK8BsKX+eHmrozXEGiunnNsC
	9HREc+T6WkZQley4qDAX8PTClas/GHJfXF+QrlSx4tsHSa0Ly1VFPYbG/sbrep8iHAms
	FbNjqpAKzh9MNnf4NihC8mXrchqMfGoXlpNjz1lteZ7qCi84gNOX7dzE6h/urheXA4+o
	ApOATvTdtwHffm/ItN29X91hQ/aVBUcOxuZ3X4Le1X3g8XH9UEN8Ub59LvBbSJ7teoqm
	MrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AkHBNL03dj6TBE3Y2zgpWjbN5doAIGBMP9GQxUmCQEk=;
	b=kNhAfY5mP5wjcRQpu4BieA0IqsDX0iwblO+IraZzxfQ9jT++Y/g6csseBZ4JkwzSMx
	0uvxlE8H8n2QsMYaLSA9bfXr/3WhrNP0JStuTuMUIBBBPEVEh5kgtY9KCcw8WZBzNOot
	U/JXwuwdEDkeiE2ppjJOZz+n+b30pasTT26H4AsGdWSJJv6HXy02MW9H9tcxOzBlt4JN
	xEp68kCXA/5E6vDU+infCDLIpcZ+BrntfHMrXfLDJlHHCZ7ND4aFHpOJ7fvL8UnQisFG
	FSo8oL2kJykbGw7nEPEbs3fckcWlwue9Ss/9vBCs848j2alrK4fd5pdetbPLEwzPg29h
	lX4Q==
X-Gm-Message-State: APjAAAVFpXwHBujimouzxG7SbWXXlOk4TjsGJgDEZAdtVBc/rpkcFMr5
	seyFuz4x6gN7L2sRwutBDfhTR0I9byn3C386oDFG0DxF
X-Google-Smtp-Source: APXvYqzYTj22A5W/ee+wmA/aOmJAWiLexp1kj+8SzHJ2AvENIesC1Dly1zbi6LuNXgXYo3Qgiz2lYPhK4LRZWITKH/0=
X-Received: by 2002:a05:620a:131b:: with SMTP id
	o27mr16773461qkj.140.1566832998409; 
	Mon, 26 Aug 2019 08:23:18 -0700 (PDT)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 26 Aug 2019 17:23:04 +0200
Message-ID: <CAGAf8LwaOtu0OaRR+FuikEgvXTkNst6KUmd2wF_MV+t0UxTwCQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: WARNING: bluez5-5.50-r0 do_fetch: Failed to fetch URL file://variscite-bt.conf
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
X-List-Received-Date: Mon, 26 Aug 2019 15:23:21 -0000
Content-Type: multipart/alternative; boundary="0000000000004aec1e059106bcef"

--0000000000004aec1e059106bcef
Content-Type: text/plain; charset="UTF-8"

Hello Folks,

While doing the following YOCTO build:
http://variwiki.com/index.php?title=Yocto_Build_Release&release=RELEASE_MORTY_V1

Actually, using the latest available tag: thud-fslc-4.14.78-mx6ul-v1.1
<https://github.com/varigit/variscite-bsp-platform/releases/tag/thud-fslc-4.14.78-mx6ul-v1.1>
From https://github.com/varigit/variscite-bsp-platform/tags

I've got the following error, while compiling for both:
bitbake -k fsl-image-gui
bitbake -k fsl-image-qt5

Seems, that the local file: file://variscite-bt.conf is somehow missing?!

I can add this file artificially, but, the question is: why this file is
missing???
_______

Transcript follows:
bluez5-5.50-r0 do_fetch: Failed to fetch variscite-bt.conf
https://pastebin.com/U9LRtNwr

Thank you,
Zoran
_______

--0000000000004aec1e059106bcef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Folks,</div><div><br></div><div>While doing the=
 following YOCTO build:</div><div><a href=3D"http://variwiki.com/index.php?=
title=3DYocto_Build_Release&amp;release=3DRELEASE_MORTY_V1">http://variwiki=
.com/index.php?title=3DYocto_Build_Release&amp;release=3DRELEASE_MORTY_V1</=
a></div><div><br></div><div>Actually, using the latest available tag: <a hr=
ef=3D"https://github.com/varigit/variscite-bsp-platform/releases/tag/thud-f=
slc-4.14.78-mx6ul-v1.1">thud-fslc-4.14.78-mx6ul-v1.1</a></div><div>From <a =
href=3D"https://github.com/varigit/variscite-bsp-platform/tags">https://git=
hub.com/varigit/variscite-bsp-platform/tags</a></div><div><br></div><div>I&=
#39;ve got the following error, while compiling for both:<br></div><div>bit=
bake -k fsl-image-gui</div><div>bitbake -k fsl-image-qt5</div><div><br></di=
v><div>Seems, that the local file: file://variscite-bt.conf is somehow miss=
ing?!<br></div><div><br></div><div>I can add this file artificially, but, t=
he question is: why this file is missing???<br></div><div>_______</div><div=
><br></div><div>Transcript follows:<span style=3D"font-weight:normal"><font=
 size=3D"2"><br></font></span></div><div><span style=3D"font-weight:normal"=
><font size=3D"2">bluez5-5.50-r0 do_fetch: Failed to fetch variscite-bt.con=
f</font></span><font size=3D"2"><span style=3D"font-weight:normal"><br></sp=
an></font></div><div><font size=3D"2"><span style=3D"font-weight:normal"><a=
 href=3D"https://pastebin.com/U9LRtNwr">https://pastebin.com/U9LRtNwr</a></=
span></font></div><div><div><br></div><div>Thank you,</div><div>Zoran</div>=
<div>_______</div><div><br></div><span style=3D"font-weight:normal"></span>=
</div></div>

--0000000000004aec1e059106bcef--
