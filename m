Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C74E1E003D2; Tue,  1 Jul 2014 13:34:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C5CDE00289
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 13:34:16 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id c1so5871733igq.10
	for <yocto@yoctoproject.org>; Tue, 01 Jul 2014 13:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=U/B8WtZAv5QcTPPCIrCmuVm4QMMCqK1HDAyqSQTriP4=;
	b=c1xJBlATSR41yyKUab4yVehhyNPSEW9ES/03xACN6QbJ2SR9uBATO5I7IE6GBL5ECP
	+5abUywFHR86nEctRyYgMWe4bm7aQSLN6pL8y2wVBcWGurudXqFuUlXwZFHSfPesZvzU
	7oyv1TfdKVqaySHN6T1fnT+Yc+OXstM8+BVeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=U/B8WtZAv5QcTPPCIrCmuVm4QMMCqK1HDAyqSQTriP4=;
	b=jjBBhBgmIPIfxNk/ilCTyJ0JRdVPSvOK7DAxUpIloEIHXmJJBtRCBWEWoKBGaodCsn
	X+ZIqGbm2GONGkfnWiWtDRS6imPRfNVTtukNRga4usqrBx5SQCY1O6NKRnkljMTg5PMG
	t7cBPu01ivZUeoL0+SpFuYDwEDc9pSvthSqBbNfG2NrTD0UniOIYAA0XbpYx2bRcysk4
	e73vTWy61qWrH5bK13DU+rJkLzYRO0yGwOUNGHTbULb6Ypwtdm4bNSYOEa9EkYfaf4/J
	AQnOmOZhU3/yQ3uC1aCPG2DWnCbK4ehmrMfqh79PJzw1KBupPMPLW1qD2f7FvQcj/cZ2
	WkzQ==
X-Gm-Message-State: ALoCoQle20UseRqj82Fi6x8GD8oY3sHW6WH326vNV6w1qBgEGmD6f6HDcb778p3plX3x8hLf3UnG
MIME-Version: 1.0
X-Received: by 10.50.43.167 with SMTP id x7mr44384385igl.36.1404246855948;
	Tue, 01 Jul 2014 13:34:15 -0700 (PDT)
Received: by 10.50.108.196 with HTTP; Tue, 1 Jul 2014 13:34:15 -0700 (PDT)
In-Reply-To: <53B2EA69.5000903@mobserve.de>
References: <53B2EA69.5000903@mobserve.de>
Date: Tue, 1 Jul 2014 13:34:15 -0700
Message-ID: <CA+gsK-qs=2OO2o_Ubyv=7T4h_FzxnPvKJ77yPGohE33FLrFCfQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Stefan Hofmann <stefan.hofmann@mobserve.de>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Understanding "Package groups"
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
X-List-Received-Date: Tue, 01 Jul 2014 20:34:19 -0000
Content-Type: multipart/alternative; boundary=089e011602b20744d404fd27b3b3

--089e011602b20744d404fd27b3b3
Content-Type: text/plain; charset=UTF-8

Hi Stefan,

You probably have found the explanation on package groups in the reference
manual [1].

Package groups are recipes with the sole purpose to create dependencies to
simplify image creation. A package group recipe bundles multiple packages
together and then instead of having to explicitly specify each package in
the IMAGE_INSTALL variable you can simply specify the package group name.

Package group recipes look like this (from the manual):

DESCRIPTION = "My Custom Package Groups"

     inherit packagegroup

     PACKAGES = "\
         packagegroup-custom-apps \
         packagegroup-custom-tools \
         "

     RDEPENDS_packagegroup-custom-apps = "\
         dropbear \
         portmap \
         psplash"

     RDEPENDS_packagegroup-custom-tools = "\
         oprofile \
         oprofileui-server \
         lttng-control \
         lttng-viewer"

     RRECOMMENDS_packagegroup-custom-tools = "\
         kernel-module-oprofile"



Like any recipe they have a description. They inherit the
packagegroup.bbclass. A package group recipe can define multiple package
groups in the PACKAGES variable. For each package group listed in PACKAGES
you will then need to specify the packages that actually go into them with
conditional RDEPENDS_<packagegroupname> variables.

Package groups are only relevant for the YP build system. They do not
create package grouping for the package manager that you are using for your
target. However, if you select a package group from HOB then all of the
packages specified in that group should be installed in your target's
rootfs by YP.

Rudi



[1]
http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#usingpoky-extend-customimage-customtasks


On Tue, Jul 1, 2014 at 10:05 AM, Stefan Hofmann <stefan.hofmann@mobserve.de>
wrote:

> Hi,
>
> I made my first steps with yocto and everything worked fine so far. But
> now I am struggling with "package groups". What I basically want, is a
> image for a base system, which allows me to install additional packages
> over the air with opkg. In my imagination package groups are something like
> preselected packages, which need to be installed at once similar like it is
> handled in Debian for X11-support for example. Is this right ? I have built
> core-image-base for testing purposes and tried to figure out the
> dependencies by using the Hob tool. It says that bash will be installed and
> the group "base/shell" is responsible for that. However it is not
> installed, only ash and I cannot find a package group
> "package-group-base-shell" in the receipes. It does however exist in the
> work directory. So now I am somewhat confused.
>
> Regards,
> Stefan
>
> --
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e011602b20744d404fd27b3b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stefan,<div><br></div><div>You probably have found the =
explanation on package groups in the reference manual [1].</div><div><br></=
div><div>Package groups are recipes with the sole purpose to create depende=
ncies to simplify image creation. A package group recipe bundles multiple p=
ackages together and then instead of having to explicitly specify each pack=
age in the IMAGE_INSTALL variable you can simply specify the package group =
name.</div>
<div><br></div><div>Package group recipes look like this (from the manual):=
</div><div><br></div><div><pre class=3D"" style=3D"overflow:auto;color:rgb(=
51,51,51)">DESCRIPTION =3D &quot;My Custom Package Groups&quot;

     inherit packagegroup

     PACKAGES =3D &quot;\
         packagegroup-custom-apps \
         packagegroup-custom-tools \
         &quot;

     RDEPENDS_packagegroup-custom-apps =3D &quot;\
         dropbear \
         portmap \
         psplash&quot;

     RDEPENDS_packagegroup-custom-tools =3D &quot;\
         oprofile \
         oprofileui-server \
         lttng-control \
         lttng-viewer&quot;

     RRECOMMENDS_packagegroup-custom-tools =3D &quot;\
         kernel-module-oprofile&quot;
</pre></div><div><br></div><div><br></div><div>Like any recipe they have a =
description. They inherit the packagegroup.bbclass. A package group recipe =
can define multiple package groups in the PACKAGES variable. For each packa=
ge group listed in PACKAGES you will then need to specify the packages that=
 actually go into them with conditional RDEPENDS_&lt;packagegroupname&gt; v=
ariables.</div>
<div><br></div><div>Package groups are only relevant for the YP build syste=
m. They do not create package grouping for the package manager that you are=
 using for your target. However, if you select a package group from HOB the=
n all of the packages specified in that group should be installed in your t=
arget&#39;s rootfs by YP.</div>
<div><br></div><div>Rudi</div><div><br></div><div><br></div><div><br></div>=
<div>[1]=C2=A0<a href=3D"http://www.yoctoproject.org/docs/1.6/dev-manual/de=
v-manual.html#usingpoky-extend-customimage-customtasks">http://www.yoctopro=
ject.org/docs/1.6/dev-manual/dev-manual.html#usingpoky-extend-customimage-c=
ustomtasks</a><br>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Jul 1=
, 2014 at 10:05 AM, Stefan Hofmann <span dir=3D"ltr">&lt;<a href=3D"mailto:=
stefan.hofmann@mobserve.de" target=3D"_blank">stefan.hofmann@mobserve.de</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Hi,<br>
<br>
I made my first steps with yocto and everything worked fine so far. But now=
 I am struggling with &quot;package groups&quot;. What I basically want, is=
 a image for a base system, which allows me to install additional packages =
over the air with opkg. In my imagination package groups are something like=
 preselected packages, which need to be installed at once similar like it i=
s handled in Debian for X11-support for example. Is this right ? I have bui=
lt core-image-base for testing purposes and tried to figure out the depende=
ncies by using the Hob tool. It says that bash will be installed and the gr=
oup &quot;base/shell&quot; is responsible for that. However it is not insta=
lled, only ash and I cannot find a package group &quot;package-group-base-s=
hell&quot; in the receipes. It does however exist in the work directory. So=
 now I am somewhat confused.<br>

<br>
Regards,<br>
Stefan<span class=3D""><font color=3D"#888888"><br>
<br>
-- <br>
<br>
<br>
</font></span><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div><br>
</div></div></div>

--089e011602b20744d404fd27b3b3--
