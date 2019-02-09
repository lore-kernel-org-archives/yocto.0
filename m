Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 380D8E00CBA; Sat,  9 Feb 2019 04:11:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0060DE00C9F
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2019 04:11:12 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id y184so9246470itc.1
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2019 04:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nVr4UWNyHXnoB8m/ZLmaegieZ+6iaaXXwwy7ugqmBTw=;
	b=wFxrpYy9c8SuaEABDlwGvqe0k7MY1/58OStuk7uGhSEud4dY9xfo5ln+E10Q5zq/x7
	KLerhPNAxaWO6/A5uWO/0wbL1ydixZ7xHBtsE8BqgCaxeCt96ZtdwVI46fdi6pvUGsTg
	kN5t8Bi0niTbMq0FFhVkzlD2Pj0wE9yaf5FglL5WFI0Ag7PoaKUS+c28iQTwvb/+Mkfe
	G/aZXofM+ZBrGtFUIy3XvPi/zDYgzVA+pGcIdkRWu+LiBW+p2rGLKXDMaavN4AhrSQ3o
	Jk61DrbninXOCh517EgLa4X2H8WsDzXQ7Ii5pQLxb4IZTmP0UA16wlJ21uk1pF518wC9
	2vbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nVr4UWNyHXnoB8m/ZLmaegieZ+6iaaXXwwy7ugqmBTw=;
	b=lDlJj7+M1C+2CkxLaFdyKYnhmZ+cfcc1ZUS+hJqp7sygKhlM1Xhm8s+r2YvVZcw/q9
	MKOkAlwxlYxyZPD/rm82SXJOnhBUref3/TokWMyIERAqNkgQBDVnhL6y3J6UKKgMRi7L
	u1aTLfRvEbAuFdBKwYx0LqZv7hH1V2GLU2gv8ltPPjoz3F0vMgWOyIy/Psb90BfF/j0W
	3wsoOzUZDuku9HedmF6F/jLgwIMNURqBFY2Hkqq3NmsmtGGnMeDy2MYawFIeeljDMctT
	W+9AjiDoiHK20dqaCAhgmBII8hiMZaT5YFlIGp3y/ziLClUCVekbYxzD+uUKk4zNH89e
	R8gQ==
X-Gm-Message-State: AHQUAuYjIirF83aWh91bJZQ4IdCF7nVMpWEUqtJzHbQW3IR8GAJLkbAg
	Nig9vfo4A2crr3UtZxjHqZwJt5TUbywSIfIhg3L/mw==
X-Google-Smtp-Source: AHgI3Ibg+xZyALZIX16Qpayd1CUA0TnYUf1frpymtRhMD2ZoORtOpjjIHOJa0ZQ20zxVxtE0mwgFCnB3E3Na1Og169M=
X-Received: by 2002:a24:1d4a:: with SMTP id 71mr1513778itj.62.1549714272233;
	Sat, 09 Feb 2019 04:11:12 -0800 (PST)
MIME-Version: 1.0
References: <4be8ff383c32479b89a46c144bc7d1e8@sakuraus.com>
In-Reply-To: <4be8ff383c32479b89a46c144bc7d1e8@sakuraus.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 9 Feb 2019 12:11:01 +0000
Message-ID: <CAJTo0Lbgpua_LOYqAJTtFQk7jH=QHrooKLsGMcSgRDA+F=DJtA@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe that worked on morty fails on sumo
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
X-List-Received-Date: Sat, 09 Feb 2019 12:11:14 -0000
Content-Type: multipart/alternative; boundary="000000000000b33ec2058174f861"

--000000000000b33ec2058174f861
Content-Type: text/plain; charset="UTF-8"

You're probably using DISTRO=poky, which now disables static libraries.

This is the periodic reminder for the list that the Poky distro is an
example, and does change over time.  If you want control over the distro
then create your own distro.

Ross

On Sat, 9 Feb 2019 at 00:01, Greg Wilson-Lindberg <GWilson@sakuraus.com>
wrote:

>
> I'm working on a boot2qt build of Yocto and the latest release converted
> to sumo. I'm have a recipe for canfestival that we have been using for
> builds with morty that uses several of the packages that are provided by
> the PACKAGES symbol:
>
>
> #original from morty
> #FILES_${PN}-dev = "/usr/lib/libcanfestival*.a
> /usr/include/canfestival/*.h"
> FILES_${PN}-dev = "/usr/lib/libcanfestival*.a"
> #FILES_${PN} = "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
> FILES_${PN} = "/usr/include/canfestival/*.h /usr/lib/libcanfestival*.so"
>
> RDEPENDS_${PN}-dev += "${PN}-staticdev"
>
>
> # new try for sumo
> FILES_${PN}-staticdev = "/usr/lib/libcanfestival*.a "
> FILES_${PN}-dev = "/usr/include/canfestival/*.h"
> #FILES_${PN} = "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"
> #FILES_${PN} = "/usr/include/canfestival/*.h /usr/lib/libcanfestival*.so"
> FILES_${PN} = "/usr/lib/libcanfestival*.so"
>
> RDEPENDS_${PN}-dev += "${PN}-staticdev"
>
> The top version worked on morty, but on sumo I get an error:
>
> Collected errors:
>  * Solver encountered 1 problem(s):
>  * Problem 1/1:
>  *   - nothing provides canfestival-staticdev needed by
> canfestival-dev-3-asc-r01.cortexa7hf-neon-vfpv4
>  *
>
> I tried changing the lines to explicitly define -staticdev files, but I
> still get the same error.
>
> I would have thought that the bitbake.conf definition of PACKAGES would
> take care of the supplier, but I seem to be wrong.
>
> Can someone point me to what I need to do to tell bitbake that the recipe
> provides -staticdev?
>
> Greg Wilson-Lindberg
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b33ec2058174f861
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re probably using DISTRO=3Dpoky, which now disable=
s static libraries.<div><br></div><div>This is the periodic reminder for th=
e list that the Poky distro is an example, and does change over time.=C2=A0=
 If you want control over the distro then create your own distro.</div><div=
><br></div><div>Ross</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Sat, 9 Feb 2019 at 00:01, Greg Wilson-Lindberg=
 &lt;<a href=3D"mailto:GWilson@sakuraus.com">GWilson@sakuraus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb=
(204,204,204);padding-left:1ex"><br>
I&#39;m working on a boot2qt build of Yocto=C2=A0and the latest release=C2=
=A0converted to sumo. I&#39;m have a recipe for canfestival that we have be=
en using for builds with morty that=C2=A0uses several of the packages that =
are provided by the PACKAGES symbol:<br>
<br>
<br>
#original from morty<br>
#FILES_${PN}-dev =3D &quot;/usr/lib/libcanfestival*.a /usr/include/canfesti=
val/*.h&quot;<br>
FILES_${PN}-dev =3D &quot;/usr/lib/libcanfestival*.a&quot;<br>
#FILES_${PN} =3D &quot;/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.=
so&quot;<br>
FILES_${PN} =3D &quot;/usr/include/canfestival/*.h /usr/lib/libcanfestival*=
.so&quot;<br>
<br>
RDEPENDS_${PN}-dev +=3D &quot;${PN}-staticdev&quot; <br>
<br>
<br>
# new try for sumo<br>
FILES_${PN}-staticdev =3D &quot;/usr/lib/libcanfestival*.a &quot;<br>
FILES_${PN}-dev =3D &quot;/usr/include/canfestival/*.h&quot;<br>
#FILES_${PN} =3D &quot;/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.=
so&quot; <br>
#FILES_${PN} =3D &quot;/usr/include/canfestival/*.h /usr/lib/libcanfestival=
*.so&quot; <br>
FILES_${PN} =3D &quot;/usr/lib/libcanfestival*.so&quot;=C2=A0 <br>
<br>
RDEPENDS_${PN}-dev +=3D &quot;${PN}-staticdev&quot; <br>
<br>
The top version worked on morty, but on sumo I get an error:<br>
<br>
Collected errors:<br>
=C2=A0* Solver encountered 1 problem(s):<br>
=C2=A0* Problem 1/1:<br>
=C2=A0*=C2=A0 =C2=A0- nothing provides canfestival-staticdev needed by canf=
estival-dev-3-asc-r01.cortexa7hf-neon-vfpv4<br>
=C2=A0*=C2=A0<br>
<br>
I tried changing the lines to explicitly define -staticdev files, but I sti=
ll get the same error.<br>
=C2=A0<br>
I would have thought that the bitbake.conf definition of PACKAGES would tak=
e care of the supplier, but I seem to be wrong.<br>
<br>
Can someone point me to what I need to do to tell bitbake that the recipe p=
rovides -staticdev?<br>
<br>
Greg Wilson-Lindberg=C2=A0<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000b33ec2058174f861--
