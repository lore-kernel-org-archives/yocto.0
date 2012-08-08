Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A99E013DB
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 19:36:35 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so792051pbb.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 19:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=TNzo2KRiNZ81TZ3+xo5ymejFJa1KAI+00IVQ1am8594=;
	b=N2KvWzDt+k5GIXQg2DDbWikAm7t6WtlGloDVDjGgMu5siEC0D0jfLhwxWxGzicS0gn
	kIIzoGFeSsvLYa+AJdi2rzJ9ZmKNaxhc0NS2lv6NZdakJRfPJ1H20UNWWPMLcNCdAOkb
	qpUtqlvi0bk6RRE/ZyLBPebSvF5B7jCvJmzIcunvD3s+8qQZ7yc8Zh3y6OONPfw0cUU5
	i42DwudGmvOOONBk15LzxslV7aEshWURerepYQBVr7gKYzBRGsr+WHFkc+Dv23sJNWNI
	h9fcHAN+Rn0VJ51QEsgfR1FsAh2ItfyglCg/8+zJQL5E9Juks9ZDtv7wo423IVykCG2i
	VOfw==
Received: by 10.68.189.104 with SMTP id gh8mr32425155pbc.152.1344393395177;
	Tue, 07 Aug 2012 19:36:35 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id
	gj10sm12343800pbc.18.2012.08.07.19.36.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 07 Aug 2012 19:36:34 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Wed, 8 Aug 2012 06:36:28 +0400
In-Reply-To: <AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
	<CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
	<AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
Message-Id: <E8DAEBDF-739C-4EEF-B0CA-D7A74A9C3ACB@gmail.com>
X-Mailer: Apple Mail (2.1278)
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Aug 2012 02:36:35 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E8AA6C59-D4C3-47AD-88BB-F2B7A68A5CA5"

--Apple-Mail=_E8AA6C59-D4C3-47AD-88BB-F2B7A68A5CA5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I was just going through the recipes-devtools/gcc/gcc-common.inc =
file, and noticed the following snippet:

def get_gcc_multiarch_setting(bb, d):
    target_arch =3D d.getVar('TRANSLATED_TARGET_ARCH', True)
    multiarch_options =3D {
        "i586":    "--enable-targets=3Dall",
        "powerpc": "--enable-targets=3Dpowerpc64",
        "sparc":   "--enable-targets=3Dall",
    }

My target is a 32-bit ppc440 cpu. What is the impact of an incorrectly =
set multiarch_options for powerpc to  powerpc64 on the final build?=20

Elvis Dowson=

--Apple-Mail=_E8AA6C59-D4C3-47AD-88BB-F2B7A68A5CA5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; ">Hi,<div>&nbsp; &nbsp; &nbsp; I =
was just going through the recipes-devtools/gcc/gcc-common.inc file, and =
noticed the following snippet:</div><div><br></div><div><div>def =
get_gcc_multiarch_setting(bb, d):</div><div>&nbsp; &nbsp; target_arch =3D =
d.getVar('TRANSLATED_TARGET_ARCH', True)</div><div>&nbsp; &nbsp; =
multiarch_options =3D {</div><div>&nbsp; &nbsp; &nbsp; &nbsp; "i586": =
&nbsp; &nbsp;"--enable-targets=3Dall",</div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; "powerpc": "--enable-targets=3D<font class=3D"Apple-style-span" =
color=3D"#ff2a1a">powerpc64</font>",</div><div>&nbsp; &nbsp; &nbsp; =
&nbsp; "sparc": &nbsp; "--enable-targets=3Dall",</div><div>&nbsp; &nbsp; =
}</div></div><div><br></div><div>My target is a 32-bit ppc440 cpu. What =
is the impact of an incorrectly set multiarch_options for powerpc to =
&nbsp;powerpc64&nbsp;on the final =
build?&nbsp;</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_E8AA6C59-D4C3-47AD-88BB-F2B7A68A5CA5--
