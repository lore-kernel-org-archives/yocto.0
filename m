Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8DFEE0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 09:21:40 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so929197vcb.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 09:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GjevPhNZIAuoMgsmJ1WB75b7aRUaEIvrXSbQxblTD3A=;
	b=rs+PvYlBwvps/DGmKay4TRbz2LZj/bv+6XaKopWbXK+2Cvn1MZn4yyVX/pQL6qbALO
	quU8iPN7hT+uqQtVwp5XU2GEuzsksDOTiOxBfWC280nJIqdwFkBdst5P4Es2Q1m/Lwts
	Zx6SaeBXi8B1iUYg517sOLsiS7YEr6ByERTzk=
MIME-Version: 1.0
Received: by 10.220.38.10 with SMTP id z10mr3666941vcd.48.1326302499747; Wed,
	11 Jan 2012 09:21:39 -0800 (PST)
Received: by 10.52.33.112 with HTTP; Wed, 11 Jan 2012 09:21:39 -0800 (PST)
In-Reply-To: <CAPhnLPD7ivPE7xJSzMui7cRKoCWzEWMcOhjiZpwXrmjxTC6+CA@mail.gmail.com>
References: <CAPhnLPD7ivPE7xJSzMui7cRKoCWzEWMcOhjiZpwXrmjxTC6+CA@mail.gmail.com>
Date: Wed, 11 Jan 2012 12:21:39 -0500
Message-ID: <CANFv2E=2SkrV5MH4ytvL=x3CmU8qCn6ERPEF1LD7y=BK5f1mpw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Cedartrail BSP available.
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
X-List-Received-Date: Wed, 11 Jan 2012 17:21:41 -0000
Content-Type: multipart/alternative; boundary=bcaec54fb9e85cb71704b643ddec

--bcaec54fb9e85cb71704b643ddec
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

What is the purpose of building the provided images with time limited
kernel?

Can I assume that a standard build of the unchanged meta-cedartrail BSP
will use the non-tlk kernel?

Jim A

On Wed, Dec 28, 2011 at 6:02 PM, Flanagan, Elizabeth <
elizabeth.flanagan@intel.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> All,
>
> We are pleased to announce the release of Intel-based board support
> packages built from Yocto 1.1 "Edison" for the Intel=AE Atom=99 Processor
> N2000 and D2000 Series-based Platform (CEDAR TRAIL).
>
> This BSP are available for download at:
>
>
> http://www.yoctoproject.org/download/bsp/intel%C2%AE-atom%E2%84%A2-proces=
sor-n2000-and-d2000-series-based-platform-cedar-trail
>
> Please note that the provided images were built using the meta-tlk
> layer (time limited kernel). Build instructions to build non-tlk
> images are provided in the meta-intel/meta-cedartrail/README for these
> machines.
>
> META-CEDARTRAIL 1.1 RELEASE
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Version: 1.1 "Edison"
> md5sum: 777150ce79d5d1cc916410f7d17741e1
> Location:
> http://www.yoctoproject.org/download/bsp/intel%C2%AE-atom%E2%84%A2-proces=
sor-n2000-and-d2000-series-based-platform-cedar-trail
>
> - --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.10 (GNU/Linux)
>
> iQEcBAEBAgAGBQJO+5kmAAoJEEyK+E/MEkQPpqkH/iqYOrfxPd1fEcTbw3LXY+re
> 1H8zOglldc5yPhkhX2PmqkfI28OJwMOiUc3oooYRGeEpGg59SxQSqSImVwf3nmgn
> wK933o5FC37M+1fIZsySNNf6Maj5IAExKN1Wu1V56Onf/1wq77kJ/NkvPq62ig5n
> lZzKA2C1Red/4NuKKIuTEWj/3e5365XhBkbJHxaRECrIw3fD2bBIj49C3tVAkIUX
> +ijIO56UR/qgHfRulUowtarAfCP/xADOnLnOZ9yvv7JEsaekrMReYZlGqEeF/TL+
> M6v3b/27OwgF2ohCN3Ib7YnaFTR5g9fXwa//YMLuKm6quL+hafgzxJ2OCOxlo08=3D
> =3DeKdg
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec54fb9e85cb71704b643ddec
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div>What is the purpose of building the provided images with time limited =
kernel?=A0 </div>
<div>=A0</div>
<div>Can I assume that a standard build of the unchanged meta-cedartrail BS=
P will use the non-tlk kernel?</div>
<div>=A0</div>
<div>Jim A<br><br></div>
<div class=3D"gmail_quote">On Wed, Dec 28, 2011 at 6:02 PM, Flanagan, Eliza=
beth <span dir=3D"ltr">&lt;<a href=3D"mailto:elizabeth.flanagan@intel.com">=
elizabeth.flanagan@intel.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">-----BEGIN PGP SIGNED MESSAGE-----<br=
>Hash: SHA1<br><br>All,<br><br>We are pleased to announce the release of In=
tel-based board support<br>
packages built from Yocto 1.1 &quot;Edison&quot; for the Intel=AE Atom=99 P=
rocessor<br>N2000 and D2000 Series-based Platform (CEDAR TRAIL).<br><br>Thi=
s BSP are available for download at:<br><br><a href=3D"http://www.yoctoproj=
ect.org/download/bsp/intel%C2%AE-atom%E2%84%A2-processor-n2000-and-d2000-se=
ries-based-platform-cedar-trail" target=3D"_blank">http://www.yoctoproject.=
org/download/bsp/intel%C2%AE-atom%E2%84%A2-processor-n2000-and-d2000-series=
-based-platform-cedar-trail</a><br>
<br>Please note that the provided images were built using the meta-tlk<br>l=
ayer (time limited kernel). Build instructions to build non-tlk<br>images a=
re provided in the meta-intel/meta-cedartrail/README for these<br>machines.=
<br>
<br>META-CEDARTRAIL 1.1 RELEASE<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>Version: 1.1 &quot;Edison&quot;<br>md5sum: 777150c=
e79d5d1cc916410f7d17741e1<br>Location: <a href=3D"http://www.yoctoproject.o=
rg/download/bsp/intel%C2%AE-atom%E2%84%A2-processor-n2000-and-d2000-series-=
based-platform-cedar-trail" target=3D"_blank">http://www.yoctoproject.org/d=
ownload/bsp/intel%C2%AE-atom%E2%84%A2-processor-n2000-and-d2000-series-base=
d-platform-cedar-trail</a><br>
<br>- --<br>Elizabeth Flanagan<br>Yocto Project<br>Build and Release<br><br=
>-----BEGIN PGP SIGNATURE-----<br>Version: GnuPG v1.4.10 (GNU/Linux)<br><br=
>iQEcBAEBAgAGBQJO+5kmAAoJEEyK+E/MEkQPpqkH/iqYOrfxPd1fEcTbw3LXY+re<br>1H8zOg=
lldc5yPhkhX2PmqkfI28OJwMOiUc3oooYRGeEpGg59SxQSqSImVwf3nmgn<br>
wK933o5FC37M+1fIZsySNNf6Maj5IAExKN1Wu1V56Onf/1wq77kJ/NkvPq62ig5n<br>lZzKA2C=
1Red/4NuKKIuTEWj/3e5365XhBkbJHxaRECrIw3fD2bBIj49C3tVAkIUX<br>+ijIO56UR/qgHf=
RulUowtarAfCP/xADOnLnOZ9yvv7JEsaekrMReYZlGqEeF/TL+<br>M6v3b/27OwgF2ohCN3Ib7=
YnaFTR5g9fXwa//YMLuKm6quL+hafgzxJ2OCOxlo08=3D<br>
=3DeKdg<br>-----END PGP SIGNATURE-----<br>_________________________________=
______________<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.=
org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
</blockquote></div><br>

--bcaec54fb9e85cb71704b643ddec--
