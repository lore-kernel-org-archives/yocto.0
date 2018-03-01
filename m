Return-Path: <tiffang@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8726E00DD7; Wed, 28 Feb 2018 19:29:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tiffang[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B504E00DD1
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 19:29:12 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id p78so5583364iod.13
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 19:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=EGNCRt/BD0Rcx20mLFkwkK758VxbyZYIzpCoCEWfhyY=;
	b=f38HZISlEcq/FzoewN06o5gdi/NrTOSLyXp+RWPnDDO7P8FYfAV+EZQt0jBBTDJ9++
	tgaJ/oeOhg38uZLkYdWCo6VmeyIdXPwVb5/QY13OVFoKxAqOmvEtzKtonOB2KtuyYsK0
	35Tkcx3zbMUYscaVtJF3ASrP+XM5HBRqHXIjxNxVnMSeeBuhXx8K5gl6VJgcsVjR7diH
	Y8anq2ogZJPi7wV2Nfjvn3QHe00DI35B1ZM2xtaqtC0GQ1E/tIaAoj8GymN+rvtd4TTZ
	vF/X/0WiHyckWuaBLWgoZFf4tTrWbmCugeWdAJ0WpxzghhDIeEh4pyVaqvA8jUXaP2yA
	362w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EGNCRt/BD0Rcx20mLFkwkK758VxbyZYIzpCoCEWfhyY=;
	b=N9G2fTHJZSjm+XVGRtLhu3vvaf9SHlTdAjPyu7PmOOCeCNIfhBSoPgCDovi/pWuHuU
	uYoLNPjBmPdX2X5tckaUs/r1aMSiNybCz3laEHlRVMsFGTfSD2YfGSyVZ61nv0Suc/v5
	0rUg/zQZWXSdkwpy/DAyaWVLK40HCl/eZmVg4vcNyVKlMiNmsJlxdtGHfreUoYG9ZG0K
	QD4b6XR1/8hVO1A7P6RNf2gYlVROMK1yX8PAloaSrVPI+mFk1TFd+fH4aKsABGC+1CSu
	1vJB5Du0j78e5qurtmVvTtnK3GDKVam7PyuIwtgx6uj/J60KaWbLUUe1PlC09kk6zQ9I
	QMrA==
X-Gm-Message-State: AElRT7FMBTPhiBsCi45o3hQakSqhdkyoG01trHsDryT1k3129dzLFxf6
	wx+o9EYZUutvDohaEa7XwkgJNMnTci/546b6Mubd
X-Google-Smtp-Source: AG47ELvm83WaIl5qKrrlsgaozIdD8NJLiQlenPy6DFLpwWFalPzrwKWp3FRl6jHUGxYK2boUMBqmm+g/HPRD0cfmXrM=
X-Received: by 10.107.114.21 with SMTP id n21mr400990ioc.294.1519874951322;
	Wed, 28 Feb 2018 19:29:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.170.199 with HTTP; Wed, 28 Feb 2018 19:29:10 -0800 (PST)
From: ikjn <tiffang@gmail.com>
Date: Thu, 1 Mar 2018 12:29:10 +0900
Message-ID: <CAO80zYsA9mE-CNFOYo9qivpOJEkag1sEm+Xcoawe5_3bpDJHuw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 05 Mar 2018 08:08:54 -0800
Subject: RREPLACE is not applied do_package_qa() ?
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
X-List-Received-Date: Thu, 01 Mar 2018 03:29:13 -0000
Content-Type: multipart/alternative; boundary="089e0825d3f893a14f0566517658"

--089e0825d3f893a14f0566517658
Content-Type: text/plain; charset="UTF-8"

Hi.

I'm building mali userspace libraries using meta-mali layer + rocko
but I got errors like these:

ERROR: cogl-1.0-1.22.2-r0 do_package_qa: QA Issue:
/usr/lib/libcogl-pango.so.20.4.2 contained in package libcogl-pango
requires libwayland-egl.so, but no providers found in
RDEPENDS_libcogl-pango? [file-rdeps]

Current recipes are:

* mesa.bb
PACKAGES = "... libwayland-egl"
FILES_libwayland_egl = "libwaland-egl.so"

* mali.bb
do_install() { copy libmali.so to libdir; create a soft
link(libwayland-egl.so --> libmali.so) }
PACKAGES = "mali"
FILES_mali = "${libdir}/*.so"
RREPLACE_mali = "... libwayland-egl"

* cogl.bb
RDEPENDS_libcogl-pango = "libwayland-egl"

In this structure, mali specify RREPLACE = libwayland-egl, so I guessed
package 'libwayland-egl' dependency is replaced by package 'mali' like this:

cogl RDEPENDS--> libwayland-egl
  ~~> mesa RPROVIDES libwayland-egl
  ~~> RREPLACE_mali libwayland-egl

But with bitbake -v -c build cogl-1.0 shows that libwayland-egl package
provides no FILERPROVIDES_xxx on here.

Am I wrong about RREPLACE chain?
or the problem comes from something else?
I'm a newbie on yocto and very confused, please help me!

Thanks.

--089e0825d3f893a14f0566517658
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi.<div><br><div>I&#39;m building mali userspace libraries=
 using meta-mali layer + rocko</div><div>but I got errors like these:</div>=
<div><br></div><div>ERROR: cogl-1.0-1.22.2-r0 do_package_qa: QA Issue: /usr=
/lib/libcogl-pango.so.20.4.2 contained in package libcogl-pango requires li=
bwayland-egl.so, but no providers found in RDEPENDS_libcogl-pango? [file-rd=
eps]</div><div><br></div><div>Current recipes are:</div><div><br></div><div=
>* <a href=3D"http://mesa.bb">mesa.bb</a></div><div>PACKAGES =3D &quot;... =
libwayland-egl&quot;</div><div>FILES_libwayland_egl =3D &quot;libwaland-egl=
.so&quot;</div><div><br></div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">*<span>=C2=A0<=
/span></span><a href=3D"http://mali.bb">mali.bb</a></div><div>do_install() =
{ copy libmali.so to libdir; create a soft link(libwayland-egl.so --&gt; li=
bmali.so) }</div><div>PACKAGES =3D &quot;mali&quot;</div><div>FILES_mali =
=3D &quot;${libdir}/*.so&quot;</div><div>RREPLACE_mali =3D &quot;... libway=
land-egl&quot;</div><div><br></div><div><span style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">*<span>=
=C2=A0</span></span><a href=3D"http://cogl.bb">cogl.bb</a></div><div>RDEPEN=
DS_libcogl-pango =3D &quot;libwayland-egl&quot;</div><div><br></div><div><d=
iv style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial">In =
this structure, mali specify RREPLACE =3D libwayland-egl, so I guessed pack=
age &#39;libwayland-egl&#39; dependency is replaced by package &#39;mali&#3=
9; like this:</div></div><div style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial"><br></div><div>cogl RDEPENDS--&gt; libwayland-egl</=
div><div>=C2=A0 ~~&gt; mesa RPROVIDES libwayland-egl</div><div>=C2=A0 ~~&gt=
; RREPLACE_mali libwayland-egl</div><div><br></div><div>But with bitbake -v=
 -c build cogl-1.0 shows that libwayland-egl package provides no FILERPROVI=
DES_xxx on here.</div><div><br></div><div>Am I wrong about RREPLACE chain?<=
/div><div>or the problem comes from something else?</div><div>I&#39;m a new=
bie on yocto and very confused, please help me!</div><div><br></div><div>Th=
anks.</div><div><br></div></div></div>

--089e0825d3f893a14f0566517658--
