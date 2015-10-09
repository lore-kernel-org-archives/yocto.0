Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5D65E00D29; Fri,  9 Oct 2015 02:16:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03429E00343
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 02:16:04 -0700 (PDT)
Received: by vkfp126 with SMTP id p126so47678984vkf.3
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 02:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7ogGRNhYy/gcx3VyS0VmK80TqiyujOFiOEXSgjUovvQ=;
	b=G+rhBwnsPQwOx+Gh7e2vVoslsH1o4dRVjcOYL/RhyT1NoftLvRATSroRUTXDOIFCRs
	df6/IOupRijc4Epx3DlO7EnyGwksewz5IEIl8s2gHqG9UC7a0SklC3n/TncRM11d6X9Q
	C+xpjGtmiF2sssXB/OK/WMdk7fM1Ev8RUbYvSisOzyM5R9FyNPuv8Uc7nbbXSCno6fTc
	KzL+PCh/gva0JiyC85HOn58kY6OwmJpsXsu+we1H93MEnlTnF7Z2qHvBsSymTC7XdFy9
	/MSUMXiOQC3+ko7lEAAwbH55njKBBYlqzcd2CBJWzj/0Yk2NiozNltXpY+lZWdOWZEfB
	p1+Q==
MIME-Version: 1.0
X-Received: by 10.31.107.26 with SMTP id g26mr8052082vkc.6.1444382163698; Fri,
	09 Oct 2015 02:16:03 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Fri, 9 Oct 2015 02:16:03 -0700 (PDT)
In-Reply-To: <7c6d997df3e4c21753d1bb54c9bd42fe@technux.se>
References: <CALLyC8Sk+k9jJCRByejYnO1WfmOx9849XuRqB3bxG538Gs1pyQ@mail.gmail.com>
	<7c6d997df3e4c21753d1bb54c9bd42fe@technux.se>
Date: Fri, 9 Oct 2015 14:46:03 +0530
Message-ID: <CALLyC8Qu-X9LrhXqdUcLiAdT6DmROO_4DVp5ius0e+TcdV1bVw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: petter@technux.se
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Can any one please tell the what is the exact difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Fri, 09 Oct 2015 09:16:06 -0000
Content-Type: multipart/alternative; boundary=001a1147830cc988ef0521a86dcf

--001a1147830cc988ef0521a86dcf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
 Thanks
 I have one more doubt when RDEPENDS variable depends is packages . Do you
know why RDEPENDS variable in (rootfs-image.bb recipe) which inherit
core-image. why RDEPENDS cant able to install packages in final roofs image
apart from IMAGE_INSTALL .



Thanks and regrads
     Vivek

On Thu, Oct 8, 2015 at 6:19 PM, Petter Mab=C3=A4cker <petter@technux.se> wr=
ote:

> 2015-10-08 06:37 skrev Vivek Per:
>
> Hi,
>      Can any one please tell the what is the exact difference between
> DEPENDS and RDEPENDS . I am not able to get it . How these variables are
> exactly parsed.
>
>
> -regards
> vivek
>
>
>
> Hi,
>
> I guess you already have read through the manual about the variables?
>
>
> http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-RDEPE=
NDS
>
> http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-DEPEN=
DS
>
>
>
> The overall description of the differences are (please someone correct me
> if you find my answer incorrect) that DEPENDS specifics build-time
> dependencies (e.i. other recipe files) so you should be guaranteed that a=
ll
> packages listed in the DEPENDS has been built and installed in the sysroo=
t
> before your new package starts its configure task.
>
> RDEPENDS on the other hand, is a run-time dependency so instead of other
> recipe files RDEPENDS lists packages that should have been installed in
> order to correctly run your package on target.
>
>
> All this is explained more in detail in the manual (see above links). Als=
o
> keep in mind that DEPENDS works with recipes and RDEPENDS with packages
> (which isn't necessary the same). Debug the PACKAGES for a specific
> variable (
> http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-PACKA=
GES)
> in order to get a clue about what packages a recipe will generate.
>
> If you still have a hard to understanding the differences my suggestion i=
s
> that you starts playing around a bit with them. Create a project and add
> some DEPENDS and RDEPENDS to a recipe(s), build the affected packages and
> investigate if they have been built in the expected order. This can for
> example be verified by tracking the build output or by looking through th=
e
> cooker logs tmp/log/cooker/*.
>
> BR Petter
>
>
>
> Petter Mab=C3=A4cker
>
> Technux <petter@technux.se>www.technux.se
>
>

--001a1147830cc988ef0521a86dcf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0Thanks</div><div>=C2=A0I have one more doubt=
 when RDEPENDS variable depends is packages . Do you know why RDEPENDS vari=
able in (<a href=3D"http://rootfs-image.bb">rootfs-image.bb</a> recipe) whi=
ch inherit core-image. why RDEPENDS cant able to install packages in final =
roofs image apart from IMAGE_INSTALL .</div><div>=C2=A0</div><div><br></div=
><div><br></div><div>Thanks and regrads =C2=A0 =C2=A0</div><div>=C2=A0 =C2=
=A0 =C2=A0Vivek=C2=A0</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Oct 8, 2015 at 6:19 PM, Petter Mab=C3=A4cker <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:petter@technux.se" target=3D"_blank">pet=
ter@technux.se</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><u><=
/u>
<div style=3D"font-family:Helvetica,Arial,sans-serif"><div><div class=3D"h5=
">
<p>2015-10-08 06:37 skrev Vivek Per:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left:#1010ff 2px=
 solid;margin-left:5px;width:100%">
<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi,</span>
<div style=3D"font-size:12.8px">=C2=A0 =C2=A0 =C2=A0Can any one please tell=
 the what is the exact difference between DEPENDS and RDEPENDS . I am not a=
ble to get it . How these variables are exactly parsed.</div>
<div style=3D"font-size:12.8px">=C2=A0</div>
<div style=3D"font-size:12.8px">=C2=A0</div>
<div style=3D"font-size:12.8px">-regards</div>
<div style=3D"font-size:12.8px"><span style=3D"color:#888888;font-size:12.8=
px">vivek</span></div>
<div style=3D"font-size:12.8px">
<div><img src=3D"http://./program/blocked.gif" alt=3D""></div>
<div>=C2=A0</div>
<div>=C2=A0</div>
</div>
</div>
</blockquote>
</div></div><div>
<p>Hi,</p>
<p>I guess you already have read through the manual about the variables?</p=
>
<p><a href=3D"http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.ht=
ml#var-RDEPENDS" target=3D"_blank">http://www.yoctoproject.org/docs/1.8/ref=
-manual/ref-manual.html#var-RDEPENDS</a></p>
<p><a href=3D"http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.ht=
ml#var-DEPENDS" target=3D"_blank">http://www.yoctoproject.org/docs/1.8/ref-=
manual/ref-manual.html#var-DEPENDS</a></p>
<p>=C2=A0</p>
<p>The overall description of the differences are (please someone correct m=
e if you find my answer incorrect) that DEPENDS specifics build-time depend=
encies (e.i. other recipe files) so you should be guaranteed that all packa=
ges listed in the DEPENDS has been built and installed in the sysroot befor=
e your new package starts its configure task.</p>
<p>RDEPENDS on the other hand, is a run-time dependency so instead of other=
 recipe files RDEPENDS lists packages that should have been installed in or=
der to correctly run your package on target.</p>
<p><br>All this is explained more in detail in the manual (see above links)=
. Also keep in mind that DEPENDS works with recipes and RDEPENDS with packa=
ges (which isn&#39;t necessary the same). Debug the PACKAGES for a specific=
 variable (<a href=3D"http://www.yoctoproject.org/docs/1.8/ref-manual/ref-m=
anual.html#var-PACKAGES" target=3D"_blank">http://www.yoctoproject.org/docs=
/1.8/ref-manual/ref-manual.html#var-PACKAGES</a>) in order to get a clue ab=
out what packages a recipe will generate.</p>
<p>If you still have a hard to understanding the differences my suggestion =
is that you starts playing around a bit with them. Create a project and add=
 some DEPENDS and RDEPENDS to a recipe(s), build the affected packages and =
investigate if they have been built in the expected order. This can for exa=
mple be verified by tracking the build output or by looking through the coo=
ker logs tmp/log/cooker/*.</p>
<p>BR Petter</p>
<p>=C2=A0</p>
<div>
<pre>Petter Mab=C3=A4cker

Technux &lt;<a href=3D"mailto:petter@technux.se" target=3D"_blank">petter@t=
echnux.se</a>&gt;
<a href=3D"http://www.technux.se" target=3D"_blank">www.technux.se</a></pre=
>
</div>
</div>
</div>
</blockquote></div><br></div>

--001a1147830cc988ef0521a86dcf--
