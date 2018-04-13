Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A757DE00BE9; Fri, 13 Apr 2018 09:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1272E005A9
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 09:28:45 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id b39so4547819qkb.5
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 09:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cFI+5VJ8KYlleLAfK4zhAKm17chXE3oZj9tMzMNtGbQ=;
	b=EIgwozf4+6gswCoa4u1jPfxz76sahNUzo6I1kipGZNEjrO9nRp1SZ3LOI1izkL/FeV
	TD3yTQ5pBaw5mm20JD+yq5qYzAjPINYYncvgrX+sal8k4v76DWXGNOlFvBglp6Ik+4sn
	1XaxMm1E/nTpHKZXeQuzs7SFqP+OsfQKaBXs/OZFSOTrlKgI4TNDqm3rBg0vR1Ru8HS6
	Kh9QxMMb6DE89FiKC0NaAUmGSroUcWzyvouhjycidLjUNb2eQPtZt35dv7Usxn7bw9AG
	fEdrLJEwK4YFMn3ewgCbghG0KVqTjyDUDVqPyk2bFGYl3ynby3CQ+orub9HMKIwdh0Jw
	sScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cFI+5VJ8KYlleLAfK4zhAKm17chXE3oZj9tMzMNtGbQ=;
	b=MM6CVDyoK72eA78jnnIzzyg1tCg0NwK4oHZxXOLEVE9pObl1V85TyrPsqxCe0PboEU
	uA6P7c9TsUrJZ11hFyjQzlVXF4DewN3eRl0gFzQhNfcyLAEg/FKIxthIl27cCEaXy+2j
	GqeQM6jPQf5GRDs7uLiORY15ax78jGQwIAqTxB+JkZ+rXKcCkYNh+cX6L7Hv16R2V6Xu
	kBRm++nG9BW5Wh/yeYqbtt9NbPDV9t57yAJnBpOLdF8xlfvc83HWLEKarpRojOAtVBK+
	YxwZi0590C5dL3gM4dgO1UszcdroXXCeWayxscTQ2/ZhuBYmMUCRn5oqxeGwMStBQXV+
	ssrA==
X-Gm-Message-State: ALQs6tB9TMonObUDzvqsUYknzS3EvZLTbU/tNYXrmiiuqIa5aYeAZmGD
	XVY4p+rHv9ltoeuA0Y8+Fa2OAJInPlAIo+Rf7bYl0A==
X-Google-Smtp-Source: AIpwx4+ibKJ6P31sZt/4FaeAuyWOoxAdPyuLzB4f1A0acZ+IUlpeOFaQz4zDJjRz/9jdi1QczclSEjvcmrsW9RLMlLQ=
X-Received: by 10.55.49.193 with SMTP id x184mr5077274qkx.320.1523636924835;
	Fri, 13 Apr 2018 09:28:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Fri, 13 Apr 2018 09:28:44 -0700 (PDT)
In-Reply-To: <CAJTo0LZ=8n9CC=F0zG_fY9QEnNCeWQhkjDXw081Z8ZojqRD-xw@mail.gmail.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<CAJTo0LZ=8n9CC=F0zG_fY9QEnNCeWQhkjDXw081Z8ZojqRD-xw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 13 Apr 2018 18:28:44 +0200
Message-ID: <CAGAf8LyKrnXHKf8129PyPZbgoKR7rRZ6zuWp9TA5rXZ4bWdhqQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Fri, 13 Apr 2018 16:28:47 -0000
Content-Type: multipart/alternative; boundary="001a11471732abeb190569bd5d5e"

--001a11471732abeb190569bd5d5e
Content-Type: text/plain; charset="UTF-8"

Hello Ross,

I have a different idea for poky versioning. Since, who ever does classical
poky, one will have at least three layers there from your reference poky
distro:

-----------------------
Build Configuration:  |
-----------------------
DISTRO = poky
DISTRO_VERSION = 2.4
-----------------------
Layer Revisions:      |
-----------------------

Since you decided long time ago to track poky DISTRO_VERSION assignment
with meta-poky... And meta-poky is not one to be always included in the
layering, correct?

Assuming that, you can implant/embed the following 4 lines:
DISTRO = "poky"
DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
DISTRO_VERSION = "2.4"
DISTRO_CODENAME = "rocko"

in ./meta/conf/distro/defaultsetup.conf in meta layer. You anyway always
clone meta layer from OpenEmbedded, and do your own SHA256 (which is always
different than OE meta original).

As such, the base (meta layer) will ALWAYS contain the DISTRO_VERSION
variable, which is the correct approach, since you will also tag with
DISTRO_VERSION the meta layer (there are different meta layers per
different distro versions, do you agree?).

And... Everyone needs meta layer (the base one), don't you agree as well?

Do not forget. Open Embedded original meta will stay untouched, ready to be
used for other distros (whatever these distros mean).

*If I think deeper, actually Open Embedded meta layer determines (at the
end of the day) DISTRO_CODENAME, doesn't it?* ;-)

Best Regards,
Zoran
_______

On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> If your project also includes meta-poky then poky.conf will contain a
> DISTRO_VERSION assignment.  However,
> https://wiki.yoctoproject.org/wiki/Releases indicates that bitbake
> 1.32 was part of 2.2/morty.
>
> Ross
>
> On 12 April 2018 at 10:44, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
> > I've inherited a Yocto project that I know to be an old version. So one
> of
> > my tasks is to update to the latest version. Before I do this I would
> like
> > to know what version I have. The only information I can find is the
> bitbake
> > version, BB_VERSION        = "1.32.0".
> >
> > Many thanks,
> > Richard.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> If your project also includes meta-poky then poky.conf will contain a
> DISTRO_VERSION assignment.  However,
> https://wiki.yoctoproject.org/wiki/Releases indicates that bitbake
> 1.32 was part of 2.2/morty.
>
> Ross
>
> On 12 April 2018 at 10:44, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
> > I've inherited a Yocto project that I know to be an old version. So one
> of
> > my tasks is to update to the latest version. Before I do this I would
> like
> > to know what version I have. The only information I can find is the
> bitbake
> > version, BB_VERSION        = "1.32.0".
> >
> > Many thanks,
> > Richard.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> If your project also includes meta-poky then poky.conf will contain a
> DISTRO_VERSION assignment.  However,
> https://wiki.yoctoproject.org/wiki/Releases indicates that bitbake
> 1.32 was part of 2.2/morty.
>
> Ross
>
> On 12 April 2018 at 10:44, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
> > I've inherited a Yocto project that I know to be an old version. So one
> of
> > my tasks is to update to the latest version. Before I do this I would
> like
> > to know what version I have. The only information I can find is the
> bitbake
> > version, BB_VERSION        = "1.32.0".
> >
> > Many thanks,
> > Richard.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> If your project also includes meta-poky then poky.conf will contain a
> DISTRO_VERSION assignment.  However,
> https://wiki.yoctoproject.org/wiki/Releases indicates that bitbake
> 1.32 was part of 2.2/morty.
>
> Ross
>
> On 12 April 2018 at 10:44, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
> > I've inherited a Yocto project that I know to be an old version. So one
> of
> > my tasks is to update to the latest version. Before I do this I would
> like
> > to know what version I have. The only information I can find is the
> bitbake
> > version, BB_VERSION        = "1.32.0".
> >
> > Many thanks,
> > Richard.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> If your project also includes meta-poky then poky.conf will contain a
> DISTRO_VERSION assignment.  However,
> https://wiki.yoctoproject.org/wiki/Releases indicates that bitbake
> 1.32 was part of 2.2/morty.
>
> Ross
>
> On 12 April 2018 at 10:44, Richard Collins
> <richard.collins@guidedknowledge.com> wrote:
> > I've inherited a Yocto project that I know to be an old version. So one
> of
> > my tasks is to update to the latest version. Before I do this I would
> like
> > to know what version I have. The only information I can find is the
> bitbake
> > version, BB_VERSION        = "1.32.0".
> >
> > Many thanks,
> > Richard.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11471732abeb190569bd5d5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Ross,<br><br></div>I have a different idea for =
poky versioning. Since, who ever does classical poky, one will have at leas=
t three layers there from your reference poky distro:<div><br>

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial"=
>-----------------------</span><br style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Build Configuration:=C2=A0 |</span><br style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial">---------=
--------------</span><br style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial"><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial">DISTRO =3D poky</span><br style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial">DISTRO_VERSION =3D 2.4</span><br=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial"><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8p=
x;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial">---=
--------------------</span><br style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial">Layer Revisions:=C2=A0 =C2=A0 =C2=A0 |</span><br=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial"><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8p=
x;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial">---=
--------------------</span><div><div class=3D"gmail_extra"><span style=3D"f=
ont-size:12.8px"><br></span></div><div class=3D"gmail_extra"><span style=3D=
"font-size:12.8px">Since you decided long time ago to track poky DISTRO_VER=
SION assignment with meta-poky... And meta-poky is not one to be always inc=
luded in the layering, correct?<br><br></span></div><div class=3D"gmail_ext=
ra"><span style=3D"font-size:12.8px">Assuming that, you can implant/embed t=
he following 4 lines:<br>DISTRO =3D &quot;poky&quot;<br>DISTRO_NAME =3D &qu=
ot;Poky (Yocto Project Reference Distro)&quot;<br>DISTRO_VERSION =3D &quot;=
2.4&quot;<br>DISTRO_CODENAME =3D &quot;rocko&quot;<br><br>in <span style=3D=
"font-size:12.8px">./meta/conf/distro/defaultsetup.conf</span> in meta laye=
r. You anyway always clone meta layer from OpenEmbedded, and do your own SH=
A256 (which is always different than OE meta original).</span></div><div cl=
ass=3D"gmail_extra"><span style=3D"font-size:12.8px"><br></span></div><div =
class=3D"gmail_extra"><span style=3D"font-size:12.8px">As such, the base (m=
eta layer) will ALWAYS contain the DISTRO_VERSION variable, which is the co=
rrect approach, since you will also tag with DISTRO_VERSION the meta layer =
(there are different meta layers per different distro versions, do you agre=
e?).</span></div><div class=3D"gmail_extra"><span style=3D"font-size:12.8px=
"><br></span></div><div class=3D"gmail_extra"><span style=3D"font-size:12.8=
px">And... Everyone needs meta layer (the base one), don&#39;t you agree as=
 well?<br><br></span></div><div class=3D"gmail_extra"><span style=3D"font-s=
ize:12.8px">Do not forget. Open Embedded original meta will stay untouched,=
 ready to be used for other distros (whatever these distros mean).<br><br><=
/span></div><div class=3D"gmail_extra"><span style=3D"font-size:12.8px"><u>=
<i><b>If I think deeper, actually Open Embedded meta layer determines (at t=
he end of the day) DISTRO_CODENAME, doesn&#39;t it?</b></i></u> ;-)<br></sp=
an></div><div class=3D"gmail_extra"><span style=3D"font-size:12.8px"><br></=
span></div><div class=3D"gmail_extra"><span style=3D"font-size:12.8px">Best=
 Regards,</span></div><div class=3D"gmail_extra"><span style=3D"font-size:1=
2.8px">Zoran</span></div><div class=3D"gmail_extra"><span style=3D"font-siz=
e:12.8px">_______<br></span></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">If your project also includes meta-poky then poky.conf w=
ill contain a<br>
DISTRO_VERSION assignment.=C2=A0 However,<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/Releases</a> indi=
cates that bitbake<br>
1.32 was part of 2.2/morty.<br>
<br>
Ross<br>
<br>
On 12 April 2018 at 10:44, Richard Collins<br>
<div class=3D"gmail-m_7440456428478497126m_4779356149108550501m_89602025317=
00254381m_8695293269207161032HOEnZb"><div class=3D"gmail-m_7440456428478497=
126m_4779356149108550501m_8960202531700254381m_8695293269207161032h5">&lt;<=
a href=3D"mailto:richard.collins@guidedknowledge.com" target=3D"_blank">ric=
hard.collins@guidedknowled<wbr>ge.com</a>&gt; wrote:<br>
&gt; I&#39;ve inherited a Yocto project that I know to be an old version. S=
o one of<br>
&gt; my tasks is to update to the latest version. Before I do this I would =
like<br>
&gt; to know what version I have. The only information I can find is the bi=
tbake<br>
&gt; version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;.=
<br>
&gt;<br>
&gt; Many thanks,<br>
&gt; Richard.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"gmail-m_7440456428478497126m_4779356149108550501=
m_8960202531700254381m_8695293269207161032HOEnZb"><font color=3D"#888888">&=
gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Thu, Apr 12, 2018 at 12:25 PM, Burton, Ross <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">If your project also includes meta-poky then poky=
.conf will contain a<br>
DISTRO_VERSION assignment.=C2=A0 However,<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/Releases</a> indi=
cates that bitbake<br>
1.32 was part of 2.2/morty.<br>
<br>
Ross<br>
<br>
On 12 April 2018 at 10:44, Richard Collins<br>
<div class=3D"gmail-m_7440456428478497126m_4779356149108550501m_89602025317=
00254381HOEnZb"><div class=3D"gmail-m_7440456428478497126m_4779356149108550=
501m_8960202531700254381h5">&lt;<a href=3D"mailto:richard.collins@guidedkno=
wledge.com" target=3D"_blank">richard.collins@guidedknowled<wbr>ge.com</a>&=
gt; wrote:<br>
&gt; I&#39;ve inherited a Yocto project that I know to be an old version. S=
o one of<br>
&gt; my tasks is to update to the latest version. Before I do this I would =
like<br>
&gt; to know what version I have. The only information I can find is the bi=
tbake<br>
&gt; version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;.=
<br>
&gt;<br>
&gt; Many thanks,<br>
&gt; Richard.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"gmail-m_7440456428478497126m_4779356149108550501=
m_8960202531700254381HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Apr 12, 2018 at 12:25 PM, Burton, R=
oss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">If your project also includes meta-poky t=
hen poky.conf will contain a<br>
DISTRO_VERSION assignment.=C2=A0 However,<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/Releases</a> indi=
cates that bitbake<br>
1.32 was part of 2.2/morty.<br>
<br>
Ross<br>
<br>
On 12 April 2018 at 10:44, Richard Collins<br>
<div class=3D"gmail-m_7440456428478497126m_4779356149108550501HOEnZb"><div =
class=3D"gmail-m_7440456428478497126m_4779356149108550501h5">&lt;<a href=3D=
"mailto:richard.collins@guidedknowledge.com" target=3D"_blank">richard.coll=
ins@guidedknowled<wbr>ge.com</a>&gt; wrote:<br>
&gt; I&#39;ve inherited a Yocto project that I know to be an old version. S=
o one of<br>
&gt; my tasks is to update to the latest version. Before I do this I would =
like<br>
&gt; to know what version I have. The only information I can find is the bi=
tbake<br>
&gt; version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;.=
<br>
&gt;<br>
&gt; Many thanks,<br>
&gt; Richard.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"gmail-m_7440456428478497126m_4779356149108550501=
HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Apr 12, 2018 at 12:25 PM, Burton, R=
oss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">If your project also includes meta-poky t=
hen poky.conf will contain a<br>
DISTRO_VERSION assignment.=C2=A0 However,<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/Releases</a> indi=
cates that bitbake<br>
1.32 was part of 2.2/morty.<br>
<br>
Ross<br>
<br>
On 12 April 2018 at 10:44, Richard Collins<br>
<div class=3D"gmail-m_7440456428478497126HOEnZb"><div class=3D"gmail-m_7440=
456428478497126h5">&lt;<a href=3D"mailto:richard.collins@guidedknowledge.co=
m" target=3D"_blank">richard.collins@guidedknowled<wbr>ge.com</a>&gt; wrote=
:<br>
&gt; I&#39;ve inherited a Yocto project that I know to be an old version. S=
o one of<br>
&gt; my tasks is to update to the latest version. Before I do this I would =
like<br>
&gt; to know what version I have. The only information I can find is the bi=
tbake<br>
&gt; version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;.=
<br>
&gt;<br>
&gt; Many thanks,<br>
&gt; Richard.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"gmail-m_7440456428478497126HOEnZb"><font color=
=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Apr 12, 2018 at 12:25 PM, Burton, R=
oss <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">If your project also includes meta-poky then poky.conf will =
contain a<br>
DISTRO_VERSION assignment.=C2=A0 However,<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/<wbr>wiki/Releases</a> indi=
cates that bitbake<br>
1.32 was part of 2.2/morty.<br>
<br>
Ross<br>
<br>
On 12 April 2018 at 10:44, Richard Collins<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:richard.colli=
ns@guidedknowledge.com">richard.collins@<wbr>guidedknowledge.com</a>&gt; wr=
ote:<br>
&gt; I&#39;ve inherited a Yocto project that I know to be an old version. S=
o one of<br>
&gt; my tasks is to update to the latest version. Before I do this I would =
like<br>
&gt; to know what version I have. The only information I can find is the bi=
tbake<br>
&gt; version, BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;.=
<br>
&gt;<br>
&gt; Many thanks,<br>
&gt; Richard.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a11471732abeb190569bd5d5e--
