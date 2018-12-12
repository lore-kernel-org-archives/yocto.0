Return-Path: <niko.tsirakis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60237E009B2; Wed, 12 Dec 2018 09:16:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (niko.tsirakis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D609E008C6
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 09:16:56 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id h15so16211766edb.4
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 09:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LDDlp2Qct4jtN5mDY8L8vXeIj4DeJM10JmCX+wyQW1s=;
	b=WD6A9P3dnxj/0BOw95RLHmIbT4qLA5MrRWC7OQN1LrZqvqczA4A6nKaJADJLCzag12
	lRB2vSJVI4AzId5ChfB/ZUKUShrVdyCGpVH5Gpj5u9GwszBDxflQAzh9VmnrqyNDQv3h
	/2p5YwWgR3Y5Skwi61XSHXFGDRjEFfNat79lLK/BjWEENeoqvB+FD81TcaBMWFagkAp8
	To/bK6idXXca91Ip5OtUwFsoY/xYNyV07fCUQ26bJBkLmm3bEcTJdIrV4pbMkMmYKGQV
	/HWseRqTeGiiDvXXmrHB3Pl3Rzh4PkBhfv3p5UDttQTCayUoTaepjZuyWjbI/puOSuG6
	YfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LDDlp2Qct4jtN5mDY8L8vXeIj4DeJM10JmCX+wyQW1s=;
	b=di5q28PbgDJcfkS5b1LmJ2jJ438on8ARSH2nv1d4FZ6MQke8IWp3te9aShwElejn1T
	bMjyKXPsQHsEze9KnobyqD41HFxD5zrSxDvh5dbRlOHqcOEl+RCr0Iuwm1H/W/zFOGoc
	v0/ShzO4qkbnJpB9ejwFYPa5Tu3q11Y6NZgGcaPV0din/y91b3+3ZBbUgMB9aiY5BROU
	/uii3Us9mRgwq35JsN3pVw451+RCvbwl6vmNUhrCIOS0czPh9G7uxUkoUrL1NAq8M+a4
	7ITldKDA+gKJXvWuTKzCdFACKGStB1aJsWUmTcDf+/U9PqllCSK5rSfDU/B2x+McwoE6
	ZeOg==
X-Gm-Message-State: AA+aEWau0rbLrJB0nW0DAOK84jKPLosqpSV9c47FW0e0DPreAX/qd70m
	7FuJpEiIJgW0+JuqpF1DP9upeAwJ9/mgnNqrqeo=
X-Google-Smtp-Source: AFSGD/VCQSgH2AzwI+iZcGbrF/NWTke3cneBvxNnXMNIemLH4/G4icb0SZhZAEmCEWQlc/yZjgcS4LAjDHw9dSSKHPY=
X-Received: by 2002:a50:852b:: with SMTP id 40mr19308637edr.166.1544635016071; 
	Wed, 12 Dec 2018 09:16:56 -0800 (PST)
MIME-Version: 1.0
References: <CAFqpmVKxkvP5_UVrmyjowCpCYf12ymoLD1ii3uYZ0q8GsJnYzA@mail.gmail.com>
	<CAJTo0LZt+h7cwzZTO9+gqtFhCnfXPKvRZQJF+i8HU=+pbdwtdQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZt+h7cwzZTO9+gqtFhCnfXPKvRZQJF+i8HU=+pbdwtdQ@mail.gmail.com>
From: Nicholas Tsirakis <niko.tsirakis@gmail.com>
Date: Wed, 12 Dec 2018 12:16:44 -0500
Message-ID: <CAFqpmVKKGb1J63Cm_e4Ozhicx21Hn9Gy8WPD8WkN7G-dxkDuVg@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Quick confirmation about multilib
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
X-List-Received-Date: Wed, 12 Dec 2018 17:16:58 -0000
Content-Type: multipart/alternative; boundary="00000000000070cd87057cd65d1e"

--00000000000070cd87057cd65d1e
Content-Type: text/plain; charset="UTF-8"

Sure, thanks for the reply. The image itself should is 64 bit and I want to
add an additional toolchain to my image that can run 32-bit binaries. I am
trying to build a 32-bit glibc that will be part of this toolchain.

Now, when I go to build, there is a new folder that got created in
tmp-glibc for the lib32-* files:

tmp-glibc/work/x86-oemllib32-linux/lib32-*

and upon entering the lib32-glibc folder, I'm seeing this:

tmp-glibc/work/x86-oemllib32-linux/lib32-glibc/2.25-r0/build-x86_64-oemllib32-linux/

I'm just not sure if that "x86_64" in the build folder name is correct. I
may be doing something entirely wrong as well; this is my first time using
multilib. As an FYI, I have the following to my local.conf:
require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "x86"

Any clarification is appreciated.

On Wed, Dec 12, 2018 at 12:04 PM Burton, Ross <ross.burton@intel.com> wrote:

> On Wed, 12 Dec 2018 at 16:59, Nicholas Tsirakis <niko.tsirakis@gmail.com>
> wrote:
> > I'm trying to build a 32-bit toolchain for my 64-bit image using
> multilib and was hoping someone could confirm something for me. I am seeing
> issues when building lib32-glibc, and I can't tell if it's attempting to
> build properly. The resulting build files are created in a folder called
> "x86_64-oemllib32-..." - is this correct? Or should it be "x86-oemllib32"
> being that it's a 32-bit library?
>
> Can you clarify here was should be 32-bit and what should be 64-bit?
>
> Ross
>

--00000000000070cd87057cd65d1e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Su=
re, thanks for the reply. The image itself should is 64 bit and I want to a=
dd an additional toolchain to my image that can run 32-bit binaries. I am t=
rying to build a 32-bit glibc that will be part of this toolchain.</div><di=
v><br> Now, when I go to build, there is a new folder that got created in t=
mp-glibc for the lib32-* files:</div><div><br></div><div>tmp-glibc/work/x86=
-oemllib32-linux/lib32-*<br><br></div><div>and upon entering the lib32-glib=
c folder, I&#39;m seeing this:</div><div><br></div><div>tmp-glibc/work/x86-=
oemllib32-linux/lib32-glibc/2.25-r0/build-x86_64-oemllib32-linux/<br><br></=
div><div>I&#39;m just not sure if that &quot;x86_64&quot; in the build fold=
er name is correct. I may be doing something entirely wrong as well; this i=
s my first time using multilib. As an FYI, I have the following to my local=
.conf:<div>require conf/multilib.conf<br>MULTILIBS =3D &quot;multilib:lib32=
&quot;<br>DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&quot;<br><br><=
/div><div>Any clarification is appreciated.<br></div></div></div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Dec 12, 201=
8 at 12:04 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ros=
s.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Wed, 12 Dec 2018 at 16:59, Nicholas Tsirakis &lt;<a hr=
ef=3D"mailto:niko.tsirakis@gmail.com" target=3D"_blank">niko.tsirakis@gmail=
.com</a>&gt; wrote:<br>
&gt; I&#39;m trying to build a 32-bit toolchain for my 64-bit image using m=
ultilib and was hoping someone could confirm something for me. I am seeing =
issues when building lib32-glibc, and I can&#39;t tell if it&#39;s attempti=
ng to build properly. The resulting build files are created in a folder cal=
led &quot;x86_64-oemllib32-...&quot; - is this correct? Or should it be &qu=
ot;x86-oemllib32&quot; being that it&#39;s a 32-bit library?<br>
<br>
Can you clarify here was should be 32-bit and what should be 64-bit?<br>
<br>
Ross<br>
</blockquote></div>

--00000000000070cd87057cd65d1e--
