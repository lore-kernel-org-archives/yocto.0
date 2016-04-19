Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDDE1E00E5B; Mon, 18 Apr 2016 18:13:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93428E00D34
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 18:13:34 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id f52so849777qga.3
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 18:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BjxfplMYMX1Wpt+PI6p/tHqR8ULt6IDaGpx5OavR+W4=;
	b=YldSRw6FVgQQ3/JbzZu13cHDcG7FZ39RvttMkKtP90swIBGytb9sHSgxW4bi0JfYKk
	MEsUEfIGjwaJXm1+kVzzqUiQ4QqB7ojm+JVgrkRJlCKf6KFynSWGe9BCD5+ZiREJl9Ny
	b/m+geKzdg5Cd2es9Z/Z9nXknX+ciVGUkl2dnmjJVaRGXqKyrDjJJnKuCRSk8Z+Nt3Yv
	g9+2o/WTQWHwngztD2cCu/R1EgQrxpIxD9KNKAmmNfiNnQq/fhp8VyOEk2q4y9pXgHBo
	sZx2R0pCzaokPeX9DwtErz+Qvi4+zbeNifc0TcOH/71RO3LJqDYudd8CNWGST5G9mVEY
	HJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BjxfplMYMX1Wpt+PI6p/tHqR8ULt6IDaGpx5OavR+W4=;
	b=majIvQuwRqePv9AyIsaLmv8l7cutt+zyVH2n9cSn/Ntb/kOd3JOrovs0SeRraQ+a2Z
	p0+J6ZBVHjaeDl+GMy+xjdzPkhN38OB/jkQJaixyX7wkdIUPhLwI8pWHLjU5hkjrmVCf
	6HG75+W4QnlOKroNFneKRI1VvtY2uCMYSlJUhDLyb60O+Qcf1qg3i4+PwL/DnG2Px8Tz
	itUctzHCwXPcd6O5DR7ZrPMMoUNHxSvnWToO0eL8ngoK4grQZw5C5Bu72bVK+APQYEvp
	/auJg89EfX8GjEv0J0N077caE+YzfBGb961bbcmR6Whr0ptsvda+t3jEGZIR6sqTVRYg
	kU5A==
X-Gm-Message-State: AOPr4FXW/XrPWP627mq8LNMXgrpCroDPy17G8homrNasmzEJ0rVPWFxEg3TmsjNfvuDDZPpBqfHblowzKle9Xw==
X-Received: by 10.140.41.203 with SMTP id z69mr185870qgz.57.1461028414418;
	Mon, 18 Apr 2016 18:13:34 -0700 (PDT)
MIME-Version: 1.0
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
In-Reply-To: <CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Apr 2016 01:13:24 +0000
Message-ID: <CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
To: Dan McGregor <danismostlikely@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Tue, 19 Apr 2016 01:13:38 -0000
Content-Type: multipart/alternative; boundary=001a11c11d72a5f54b0530cc2ff9

--001a11c11d72a5f54b0530cc2ff9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 18, 2016 at 12:48 PM Dan McGregor <danismostlikely@gmail.com>
wrote:

> On 17 April 2016 at 23:15, Khem Raj <raj.khem@gmail.com> wrote:
> > Hello all,
> >
> > I have put together a potential gcc6 upgrade recipe set, and pushed the
> branch to tree here
> >
> >
> > http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc=
-6
> >
> > and also at github fork of mine.
> >
> > https://github.com/kraj/openembedded-core/tree/kraj/master
> >
> > You need to set
> >
> > GCCVERSION =3D =E2=80=9C6.%=E2=80=9D
> >
> > in local.conf to enable it.
> >
> >
> > There are few recipes in OE-Core which still don=E2=80=99t compile e.g.
> >
> > see
> >
> > http://errors.yoctoproject.org/Errors/Build/14782/
> >
> > any help in fixing them or otherwise fixing other layers is appreciated=
.
> >
> > gcc6 is a major release for some info see
> >
> > https://gcc.gnu.org/gcc-6/changes.html
> >
> > and porting guide
> >
> > https://gcc.gnu.org/gcc-6/porting_to.html
> >
> >
>
> I haven't built an image with gcc6 as the compiler yet, but I did
> check out your branch to try building with gcc 6 as the host compiler
> (Fedora 24). I needed a few more fixes, available at
> http://git.openembedded.org/openembedded-core-contrib/log/?h=3Ddankm/gcc-=
6.
> I fixed lzop, pkgconfig, and disabled werror on binutils.
> core-image-minimal appears to be well on its way to building.
>
>
I had fixed lzop locally meanwhile. I cherry-picked the pkgconfig and
binutils fixes into my branch


>
> > Thanks
> >
> > -Khem
> >
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> >
>

--001a11c11d72a5f54b0530cc2ff9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Apr 18, 2016 at 12:48 PM Dan McGregor &lt;<a href=3D"mailto:danismostlike=
ly@gmail.com">danismostlikely@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">On 17 April 2016 at 23:15, Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<=
br>
&gt; Hello all,<br>
&gt;<br>
&gt; I have put together a potential gcc6 upgrade recipe set, and pushed th=
e branch to tree here<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"http://git.openembedded.org/openembedded-core-contrib/log/?=
h=3Dkraj/gcc-6" rel=3D"noreferrer" target=3D"_blank">http://git.openembedde=
d.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-6</a><br>
&gt;<br>
&gt; and also at github fork of mine.<br>
&gt;<br>
&gt; <a href=3D"https://github.com/kraj/openembedded-core/tree/kraj/master"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/kraj/openembedded-=
core/tree/kraj/master</a><br>
&gt;<br>
&gt; You need to set<br>
&gt;<br>
&gt; GCCVERSION =3D =E2=80=9C6.%=E2=80=9D<br>
&gt;<br>
&gt; in local.conf to enable it.<br>
&gt;<br>
&gt;<br>
&gt; There are few recipes in OE-Core which still don=E2=80=99t compile e.g=
.<br>
&gt;<br>
&gt; see<br>
&gt;<br>
&gt; <a href=3D"http://errors.yoctoproject.org/Errors/Build/14782/" rel=3D"=
noreferrer" target=3D"_blank">http://errors.yoctoproject.org/Errors/Build/1=
4782/</a><br>
&gt;<br>
&gt; any help in fixing them or otherwise fixing other layers is appreciate=
d.<br>
&gt;<br>
&gt; gcc6 is a major release for some info see<br>
&gt;<br>
&gt; <a href=3D"https://gcc.gnu.org/gcc-6/changes.html" rel=3D"noreferrer" =
target=3D"_blank">https://gcc.gnu.org/gcc-6/changes.html</a><br>
&gt;<br>
&gt; and porting guide<br>
&gt;<br>
&gt; <a href=3D"https://gcc.gnu.org/gcc-6/porting_to.html" rel=3D"noreferre=
r" target=3D"_blank">https://gcc.gnu.org/gcc-6/porting_to.html</a><br>
&gt;<br>
&gt;<br>
<br>
I haven&#39;t built an image with gcc6 as the compiler yet, but I did<br>
check out your branch to try building with gcc 6 as the host compiler<br>
(Fedora 24). I needed a few more fixes, available at<br>
<a href=3D"http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dd=
ankm/gcc-6" rel=3D"noreferrer" target=3D"_blank">http://git.openembedded.or=
g/openembedded-core-contrib/log/?h=3Ddankm/gcc-6</a>.<br>
I fixed lzop, pkgconfig, and disabled werror on binutils.<br>
core-image-minimal appears to be well on its way to building.<br>
<br></blockquote><div><br></div><div>I had fixed lzop locally meanwhile. I =
cherry-picked the pkgconfig and binutils fixes into my branch</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; Thanks<br>
&gt;<br>
&gt; -Khem<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; Openembedded-core mailing list<br>
&gt; <a href=3D"mailto:Openembedded-core@lists.openembedded.org" target=3D"=
_blank">Openembedded-core@lists.openembedded.org</a><br>
&gt; <a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded=
-core" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/m=
ailman/listinfo/openembedded-core</a><br>
&gt;<br>
</blockquote></div></div>

--001a11c11d72a5f54b0530cc2ff9--
