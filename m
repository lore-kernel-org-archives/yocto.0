Return-Path: <samuel.engelmajer@sigfox.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E0E4E009CA; Mon,  8 Jun 2015 00:20:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4054E00293
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 00:20:04 -0700 (PDT)
Received: by qgf75 with SMTP id 75so42925727qgf.1
	for <yocto@yoctoproject.org>; Mon, 08 Jun 2015 00:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigfox.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/A98N6jbzcsXCdz0qUVzJ52FWTXySxdnukDMyRiTv5w=;
	b=Jbq0tGY8pL6LrZ05UiHG+DBl49yTWlg2OsKjMxO3sJskom5Yvu0aOZveABiDpzu8ec
	25I42KKAbMrgaSoys3yxRFtvJyGXPLqGCzqny1+ty1hO6A0paNWU2RoB2xK0ja1K9yOM
	VMVO6P3SuV7mwUHXYr5beUio/JMZtwccSYd+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=/A98N6jbzcsXCdz0qUVzJ52FWTXySxdnukDMyRiTv5w=;
	b=Tb/UhBTGuIVAnFmNZAh5+v+wOm0I9O+dYwepMLm2mbBRPbJ/cYEsI/hp7M6jnIEajm
	wpOdcyCHqHI+05PdTiYd2WO9NOja7I64FWj87SAkSZgJVVWM4OhHBXEwdadpXT2PgPGc
	BlyoCdGSS1OEFvHtc7+CM14yrzohvbE0Myq6WnubTPt1Lxur9Iec1z78uSTUG+4OyYeR
	pLgj2vwM2ONbix8ya3paapkQvc3ZP3U9CKCuTgyudtbcgDyXjEHMGe7acrzvdrgT+YTh
	lB5bH9VqKRrWJUF8GWd7icpyKd8k3Z4OrKpj9gcsAvSFN938uLzFYMwcdyzjL7laoWmQ
	XgNA==
X-Gm-Message-State: ALoCoQkN1oA2hILaUEmnusbWElZRMZki0KkAJfGk6IQBLbRaOlQVxxoXzGo5DR4eJV3EfaMs1dpl
MIME-Version: 1.0
X-Received: by 10.140.195.73 with SMTP id q70mr307359qha.70.1433748002015;
	Mon, 08 Jun 2015 00:20:02 -0700 (PDT)
Received: by 10.96.66.100 with HTTP; Mon, 8 Jun 2015 00:20:01 -0700 (PDT)
In-Reply-To: <557243CA.7000203@gmail.com>
References: <557243CA.7000203@gmail.com>
Date: Mon, 8 Jun 2015 09:20:01 +0200
Message-ID: <CAGrBG9UesLDO5e8dceCwvtaTWTX=DDVdhRSw69kQd6ku+jhK3A@mail.gmail.com>
From: Samuel Engelmajer <samuel.engelmajer@sigfox.com>
To: Darren Breeze <darren.j.breeze@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Recipe question
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
X-List-Received-Date: Mon, 08 Jun 2015 07:20:08 -0000
Content-Type: multipart/alternative; boundary=001a1142688c5ba7a20517fc7819

--001a1142688c5ba7a20517fc7819
Content-Type: text/plain; charset=UTF-8

Hi,

A simple suggestion here out of the blue,
are you sure your recipe is located in a place Yocto can find it ? What is
your recipe name ?

Sam


2015-06-06 2:50 GMT+02:00 Darren Breeze <darren.j.breeze@gmail.com>:

> Hi
>
> First post, I hope this is the correct list..
>
> I am trying to create a simple recipe that takes a tree of a website off a
> local git repository and places it in a directory under /opt in my image.
> It's a small tree of a couple of subdirectories and about 20 files.
>
> the recipe file is :
>
> ---------
>
> DESCRIPTION = "Web Remote"
> SECTION = "utils"
>
> ALTERNATIVE_${PN} = "web-remote"
>
> PROVIDES = "web-remote"
> RPROVIDES_${PN} += "${PN}"
>
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
>
> SRCREV = "${AUTOREV}"
>
> PV="1.0"
> PR = "r0"
>
> SRC_URI = "git://
> 192.168.192.46/mygroup/web_remote.git;protocol=http;branch=master;"
>
> S = "${WORKDIR}/git"
>
> do_install() {
>         install -d ${D}opt/web_remote
>         cp -r ${S}/* ${D}opt/web_remote/.
> }
>
> SRC_URI[md5sum] = "???"
> SRC_URI[sha256sum] = "???"
>
> ----------
>
> but I keep getting this error
>
> "error: Can't install packagegroup-core-boot-1.0-r17@rk3188: no package
> provides web-remote"
>
> Without web-remote included in the build, everything works and I get a
> bootable image, I think I am missing something very obvious but been
> hacking at this too long to see it waving at me from the edge of the forest.
>
> I have set the license to CLOSED, just as I had issues with setting up MIT
> (I will fix this later)
>
> Can someone please point me in the correct direction.
>
> many thanks in advance.
>
> Darren B.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1142688c5ba7a20517fc7819
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>A simple suggestion h=
ere out of the blue,<br></div>are you sure your recipe is located in a plac=
e Yocto can find it ? What is your recipe name ?<br></div><br></div>Sam<br>=
<div><div><div><br></div></div></div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">2015-06-06 2:50 GMT+02:00 Darren Breeze <span dir=
=3D"ltr">&lt;<a href=3D"mailto:darren.j.breeze@gmail.com" target=3D"_blank"=
>darren.j.breeze@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">Hi<br>
<br>
First post, I hope this is the correct list..<br>
<br>
I am trying to create a simple recipe that takes a tree of a website off a =
local git repository and places it in a directory under /opt in my image. I=
t&#39;s a small tree of a couple of subdirectories and about 20 files.<br>
<br>
the recipe file is :<br>
<br>
---------<br>
<br>
DESCRIPTION =3D &quot;Web Remote&quot;<br>
SECTION =3D &quot;utils&quot;<br>
<br>
ALTERNATIVE_${PN} =3D &quot;web-remote&quot;<br>
<br>
PROVIDES =3D &quot;web-remote&quot;<br>
RPROVIDES_${PN} +=3D &quot;${PN}&quot;<br>
<br>
LICENSE =3D &quot;CLOSED&quot;<br>
LIC_FILES_CHKSUM =3D &quot;&quot;<br>
<br>
SRCREV =3D &quot;${AUTOREV}&quot;<br>
<br>
PV=3D&quot;1.0&quot;<br>
PR =3D &quot;r0&quot;<br>
<br>
SRC_URI =3D &quot;git://<a href=3D"http://192.168.192.46/mygroup/web_remote=
.git;protocol=3Dhttp;branch=3Dmaster" target=3D"_blank">192.168.192.46/mygr=
oup/web_remote.git;protocol=3Dhttp;branch=3Dmaster</a>;&quot;<br>
<br>
S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
do_install() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}opt/web_remote<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cp -r ${S}/* ${D}opt/web_remote/.<br>
}<br>
<br>
SRC_URI[md5sum] =3D &quot;???&quot;<br>
SRC_URI[sha256sum] =3D &quot;???&quot;<br>
<br>
----------<br>
<br>
but I keep getting this error<br>
<br>
&quot;error: Can&#39;t install packagegroup-core-boot-1.0-r17@rk3188: no pa=
ckage provides web-remote&quot;<br>
<br>
Without web-remote included in the build, everything works and I get a boot=
able image, I think I am missing something very obvious but been hacking at=
 this too long to see it waving at me from the edge of the forest.<br>
<br>
I have set the license to CLOSED, just as I had issues with setting up MIT =
(I will fix this later)<br>
<br>
Can someone please point me in the correct direction.<br>
<br>
many thanks in advance.<br>
<br>
Darren B.<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1142688c5ba7a20517fc7819--
