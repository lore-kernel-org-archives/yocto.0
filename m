Return-Path: <vidal.develone@gmail.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21DE3E01519
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 16:07:33 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e12so2588189vbg.3
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 16:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=RCKnmGFW/sTMdyG1gFhKQD2HXUINAg/4LXFyJD/IB/8=;
	b=RC+PJm2sVS5AI/sCU7gvG3dIGE6bWhPg87Eqd+RIrAWi8upl4aE4uZ8ZHC30osVgXE
	TdCFU8pzpYySTGS41d1M+8Pwkwfri2XbWRHicWwI0ujapa4huU8yWxLirgkplRZ2iYrz
	63h77dujqcZITHSCa+Ox6UIGi6TR0NayO1DNfY27nSZ6Yc2YyLPNUlrAiAsOasXWUaxr
	rGLfbsmpaYtGdG2CPg87jCttKY5EO6r265xebMAymqXWdiapNIAziotp5R1bPyNLvtrM
	4crO9sqCK0RgI+4B/3lzlcK393sMZYeJyWmf8+1eyBGM5tGEyazMME1SyTaC9cxtbyth
	3gmg==
MIME-Version: 1.0
X-Received: by 10.220.154.14 with SMTP id m14mr9661487vcw.21.1365203252401;
	Fri, 05 Apr 2013 16:07:32 -0700 (PDT)
Received: by 10.52.159.163 with HTTP; Fri, 5 Apr 2013 16:07:32 -0700 (PDT)
In-Reply-To: <EC024295-DFE9-4D1A-9EE5-DD7A02EACB5D@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
	<CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
	<6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
	<CANwz6nxDTHJzbctFwKE9o8PDDwsz8SxsSSOiRNaDdc8abN77hw@mail.gmail.com>
	<EC024295-DFE9-4D1A-9EE5-DD7A02EACB5D@gmail.com>
Date: Fri, 5 Apr 2013 17:07:32 -0600
Message-ID: <CANwz6nyFgN_e_JfSKKm-8_teQkvETkFAsBxpo3HS5nUFeyfp4A@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 05 Apr 2013 23:07:33 -0000
Content-Type: multipart/alternative; boundary=f46d043d64afe7df6004d9a52690

--f46d043d64afe7df6004d9a52690
Content-Type: text/plain; charset=ISO-8859-1

I went back to fortran but also changed FORTRAN ?= fortran
14,15c14,15
< FORTRAN ?= ",fortran"
< LANGUAGES ?= "c,c++,fortran${JAVA}"
---
> FORTRAN ?= ",f77"
> LANGUAGES ?= "c,c++${FORTRAN}${JAVA}"


On Fri, Apr 5, 2013 at 5:00 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Apr 5, 2013, at 3:35 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
>
> I believe that the error was in gcc-configure-common.inc it should of been
> f95 not fortran. I am do a clean build  now for beagleboard and beaglebone.
>
>
> No, f95 is old and deprecated 'fortran' is right
>

--f46d043d64afe7df6004d9a52690
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I went back to fortran but also changed FORTRAN ?=3D fortr=
an<br>14,15c14,15<br>&lt; FORTRAN ?=3D &quot;,fortran&quot;<br>&lt; LANGUAG=
ES ?=3D &quot;c,c++,fortran${JAVA}&quot;<br>---<br>&gt; FORTRAN ?=3D &quot;=
,f77&quot;<br>
&gt; LANGUAGES ?=3D &quot;c,c++${FORTRAN}${JAVA}&quot;<br></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at =
5:00 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><div cla=
ss=3D"im"><br><div><div>On Apr 5, 2013, at 3:35 PM, Edward Vidal &lt;<a hre=
f=3D"mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmai=
l.com</a>&gt; wrote:</div>
<br><blockquote type=3D"cite"><span style=3D"font-family:Helvetica;font-siz=
e:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-sp=
acing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;display:inline!importa=
nt;float:none">I believe that the error was in gcc-configure-common.inc it =
should of been f95 not fortran. I am do a clean build=A0 now for beagleboar=
d and beaglebone.</span><br style=3D"font-family:Helvetica;font-size:medium=
;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:no=
rmal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px">
</blockquote></div><br></div><div>No, f95 is old and deprecated &#39;fortra=
n&#39; is right</div></div></blockquote></div><br></div>

--f46d043d64afe7df6004d9a52690--
