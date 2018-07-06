Return-Path: <owestermann@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2328DE010AC; Fri,  6 Jul 2018 06:53:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (owestermann[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76FCBE0108A
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 06:53:56 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id h22-v6so6857848vke.4
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 06:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=O/ULFVTVml8WYzUd+mCNhPcZ3sUG17ZX2An7Q0/B8FY=;
	b=I9gatrjvid536TFDiC6DllCaA3yAkEzde/rs6Ga5bzT+o/RuwUGDjHwDJqVNNByVMb
	IDASAhuaPDJQDr8MKAAO09skXx/c5kWBuRTKojN8Jf1ZbOXeX52prWnp8rzYezy9Qm2G
	mnAly3mrcj5qpdhcxT5IaHOvGTmBTYteUeokk4FNssfBtNhN1WWzAfvr1NW+4VkY7+oc
	3FAWR7HnvrPhCjrsMQc485i7jvao2PTtoI4Hy4/T4PqJl6sTXyLbjikil8m9EBuJlZ6D
	lt2hP3r7b20eDY3M/5r9g20NmcLpLmKx+Ub41uwHckLrTAr9vESjrtwZofjRt2jKvbWA
	NznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=O/ULFVTVml8WYzUd+mCNhPcZ3sUG17ZX2An7Q0/B8FY=;
	b=kLkfm03bamKKqb1ChPKlF7/OSMGGynq7y+AzvHXlh5JzCInr1+AS9VxGY9pyu3eSVk
	/5CLpN6tz9/eBEUoonXeW6Uw/+aZtUFbswlZHb2kWcxmKaFglVe4UAxBrfjYoPa3XkM0
	gXjQk99Va6iP1vPXE98F6ZcNFWp8wD59gNM3m0zLP6jhSf/el3zdMZ9HC+O2IbZGNjr4
	PEMFFIM/3u+NcCyEYZsz2iMBPRG/J6SBjd+kLpbsAf/woMC6TIqb9lhb8UbVt3bJOwm4
	vHsXgFpwS86Xj9TxMEunRRSe2d2u3x8kqQl826LSxahlaRyLjuBvwzbaJfBkjHK1GWjp
	TCHQ==
X-Gm-Message-State: APt69E0U+57rkmoAP2Jfe4ysjuGFaoCbjvwa+jDkla8+oICl54Nbxt2x
	QKqJqSBJf/hFUk3giEkBkgP4IsE1BRsfoTYwAd0=
X-Google-Smtp-Source: AAOMgpfFfvGHepHK4k0tez0luJ6/+bwVKalSvK0dlY4GVswCf+U42dZL2qwDaYVyF+3kuu6jPqsAXr4xkEQLISwXCzM=
X-Received: by 2002:a1f:5785:: with SMTP id
	l127-v6mr5816757vkb.84.1530885235753; 
	Fri, 06 Jul 2018 06:53:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
	<CAGKr=yfs7shznSGNcpGz9vJbwXhHr8XAPNuhafsBgjpFPxkfOQ@mail.gmail.com>
	<CAJTo0LZTbW7RRUt1rA62VxdwitR9Xac5KrBbuSLtdx5reHrdVQ@mail.gmail.com>
	<CAGKr=yc-cZArRiH=reK35FCLvUxRs7Rye8eZKnA4evBy+kDCXA@mail.gmail.com>
	<CAJTo0LYcHNQoZjEZ8D=dqt9-3i7_e8ivNfXxvLt_qAF0QQj-9Q@mail.gmail.com>
In-Reply-To: <CAJTo0LYcHNQoZjEZ8D=dqt9-3i7_e8ivNfXxvLt_qAF0QQj-9Q@mail.gmail.com>
From: Oliver Westermann <owestermann@gmail.com>
Date: Fri, 6 Jul 2018 15:53:44 +0200
Message-ID: <CAGKr=yc1_LOVVufBRdWrx99_3fpm7WvEQZmqwJaCYO+2TnXAEA@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 13:53:57 -0000
Content-Type: multipart/alternative; boundary="000000000000ab4986057054fec0"

--000000000000ab4986057054fec0
Content-Type: text/plain; charset="UTF-8"

Am Fr., 6. Juli 2018 um 15:13 Uhr schrieb Burton, Ross <
ross.burton@intel.com>:

> Move your DEPENDS up, as the inherits are setting up DEPENDS with
> python3-native python3-setuptools-native, and you're overwriting it.
>
> Put the DEPENDS after PYI_PACKAGE but before inherit.
>
> Ross
>

One step further :) It now compiles...and fails. Interestingly it raises an
Exception missing the jpeg library. I found the libjpeg.so and header
files, so i enabled the debug info of setup.py. This reveals some
strange-for-me details:

| [other messages where it searched for libjpeg.h]
| Checking for include file jpeglib.h in /usr/include
| Found jpeglib.h
| Couldn't find library jpeg in
['/data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/lib',
'/usr/local/lib', '/usr/lib', '/lib']

So a find | grep jpeg revealed that the library files for jpeg are placed
in recipe-sysroot/usr/lib/, while zlib places librarys
in recipe-sysroot/usr/lib and recipe-sysroot-native/usr/lib.
Some googling didn't provide an answer, just more confusion :O

Olli

--000000000000ab4986057054fec0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Am Fr., 6. Jul=
i 2018 um 15:13=C2=A0Uhr schrieb Burton, Ross &lt;<a href=3D"mailto:ross.bu=
rton@intel.com">ross.burton@intel.com</a>&gt;:</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
Move your DEPENDS up, as the inherits are setting up DEPENDS with<br>
python3-native python3-setuptools-native, and you&#39;re overwriting it.<br=
>
<br>
Put the DEPENDS after PYI_PACKAGE but before inherit.<br>
<br>
Ross<br></blockquote><div><br></div><div>One step further :) It now compile=
s...and fails. Interestingly it raises an Exception missing the jpeg librar=
y. I found the libjpeg.so and header files, so i enabled the debug info of =
setup.py. This reveals some strange-for-me details:</div><div><br></div><di=
v>| [other messages where it searched for libjpeg.h]</div><div><div>| Check=
ing for include file jpeglib.h in /usr/include</div><div>| Found jpeglib.h<=
/div><div>| Couldn&#39;t find library jpeg in [&#39;/data/workspace/yocto-b=
uild/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe=
-sysroot-native/usr/lib&#39;, &#39;/usr/local/lib&#39;, &#39;/usr/lib&#39;,=
 &#39;/lib&#39;]</div></div><div><br></div><div>So a find | grep jpeg revea=
led that the library files for jpeg are placed in=C2=A0recipe-sysroot/usr/l=
ib/, while zlib places librarys in=C2=A0recipe-sysroot/usr/lib and=C2=A0rec=
ipe-sysroot-native/usr/lib.</div><div>Some googling didn&#39;t provide an a=
nswer, just more confusion :O</div><div><br></div><div>Olli</div><div>=C2=
=A0</div></div></div>

--000000000000ab4986057054fec0--
