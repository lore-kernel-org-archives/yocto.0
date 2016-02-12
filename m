Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 798E4E00C58; Fri, 12 Feb 2016 02:35:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B907E00C4D
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 02:35:30 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id 9so87632051iom.1
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 02:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YUWkecUkZCJ6+RqE2wDMHjL2rtyv81ryATiprFz6WL8=;
	b=qHb0kaVmCXSd3BfAee7+UR4mQbHe8iQFIbqnk1g/KH+SZRSy3msoLs/cSU4aEo7Suy
	vY8Yd3DAxfJYDx3RoSbGaAiS+Yo+2Gn8DO0L6g9o1RBaAj3kIsD1Ol6hAzZ7CL5uUnH4
	xXRkbUyflo3K9z3L/cVjX3iJM0zA91a1XnCs0+wnaTx1n/a83A4373+IPcPFSff5Dez+
	KKjXWPhC3i9od5t1/JCojvIGkRV7iLRZ87GN9smtOq6hzRaM2qc9GQYjn9WWlUeqQTn8
	Q0nsF4o7+WwwaeVRzoRovbbYTuBhZ2tHPf2F3+CvanyuZJ3bilnxQ5pCasJ0Qi3T+Wii
	wqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YUWkecUkZCJ6+RqE2wDMHjL2rtyv81ryATiprFz6WL8=;
	b=cq3WFG+SiEuA6xQkE0ETfyEErIK2gfuTL1TvZwoUwsUGLCm3ZPKPO+dbpX3hm+C00J
	i7E3yCqfx2y3qdyRdg91/8Cv2R7YvGduXHsVYrxV0reNZ9hgOa0TiIe9Y0n0/WZzUiiT
	3VbcAgT7JqfRb0e2PzQAKRYxM/xwtaGNUtLdUCXSrPO5zC4JbUjES4rhObMz8U9GXvfJ
	TR8LYFNf/3ebA8Oh/pUgzCoK476uDKE0XoTWcsRw/SWCJ9snci6ySkCGMHN+JlY19Jc/
	mto1KE6gRiMWhY9AJesu2CaXZZeHbqEgK+dzG9x2Rv2IbiZa8X+krpUEiQHRL6zB5pA0
	owwA==
X-Gm-Message-State: AG10YOSWaYlML+De1em1+1ZSzI173Lgl0VRZX00yQIH44dLV5wE/rSnGKWXkFvgEvq50d1UddC1Os0mIFq/erLaq
X-Received: by 10.107.3.220 with SMTP id e89mr1961302ioi.99.1455273330301;
	Fri, 12 Feb 2016 02:35:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 12 Feb 2016 02:35:10 -0800 (PST)
In-Reply-To: <BLU168-W106A58D34CE0CD2EFBF941EBA90@phx.gbl>
References: <BLU168-W106A58D34CE0CD2EFBF941EBA90@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Feb 2016 10:35:10 +0000
Message-ID: <CAJTo0Lb5FK7C3FduCRM+zDNCOiHKkNwgPVWBxEVBd2N5gawsAQ@mail.gmail.com>
To: Sridhar Pitchai <sridhar.pitchai@outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: native tool is not installed before it is used
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
X-List-Received-Date: Fri, 12 Feb 2016 10:35:34 -0000
Content-Type: multipart/alternative; boundary=001a113f0e7ce77518052b9039d0

--001a113f0e7ce77518052b9039d0
Content-Type: text/plain; charset=UTF-8

On 12 February 2016 at 06:10, Sridhar Pitchai <sridhar.pitchai@outlook.com>
wrote:

> I have a recipe, where It need protobuf-c-compiler (natvily) to auto
> generate files before it can be compiled. i have added protobuf-c-native in
> the DEPENDS list. but the compilation is failling at do_autogen, compiling
> the proto-c is not installed in staging_bindir_native.
> But if  bitbake protobuf-c-native manually and then bitbake the recipe it
> is working fine.
>

That's because DEPENDS = "foo" actually means do_configure[depends] =
"foo".  This is so that packages can fetch/unpack/patch whilst their build
dependencies are being built.

Instead of adding a new task to run autogen which will run *before*
configure and therefore before your dependencies have been build, simply
do_configure_prepend() if the operations need to happen before cmake runs.

Ross

--001a113f0e7ce77518052b9039d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 February 2016 at 06:10, Sridhar Pitchai <span dir=3D"ltr">&lt;<a href=
=3D"mailto:sridhar.pitchai@outlook.com" target=3D"_blank">sridhar.pitchai@o=
utlook.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I h=
ave a recipe, where It need protobuf-c-compiler (natvily) to auto generate =
files before it can be compiled. i have added protobuf-c-native in the DEPE=
NDS list. but the compilation is failling at do_autogen, compiling the prot=
o-c is not installed in staging_bindir_native.</div><div>But if =C2=A0bitba=
ke protobuf-c-native manually and then bitbake the recipe it is working fin=
e.=C2=A0</div></blockquote></div><br>That&#39;s because DEPENDS =3D &quot;f=
oo&quot; actually means do_configure[depends] =3D &quot;foo&quot;.=C2=A0 Th=
is is so that packages can fetch/unpack/patch whilst their build dependenci=
es are being built.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Instead of adding a new task to run autogen which will run *b=
efore* configure and therefore before your dependencies have been build, si=
mply do_configure_prepend() if the operations need to happen before cmake r=
uns.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a113f0e7ce77518052b9039d0--
