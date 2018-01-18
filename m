Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04A13E00E92; Thu, 18 Jan 2018 06:52:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB7CE009E6
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:52:01 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id 196so13824472iti.5
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4NGsD2uqABU8jWlsisWxF0i4bfokGMCJksaMGaYDytc=;
	b=a5/Gyr1Ri4f+6uz0PxnZNQDjPUw2aWzDrfjJZDtvdVcaQ2HakP51zUOIpPNWCOgZg6
	AC/K+QRjH1Ug7W8zVrpl/ERw6BeLEXf8n5pqsKp54NzS55NuDd/XSj09XEd1qEDV1wir
	dKRqXLfv+PKzqrGFxDko/ET9N/4O6d4Yv59P74Y8f06PB1mqMbishPuXVYnwm857A7iu
	VPZTCW0g0jj7b2z3OaeP0ehxn/N9+Pb9UjqLTJB5LU4sAGgpphYPzOnejhSLkflhC//e
	lONWTWYJO1P/1VokzW+Atrw4PhwZCCDb/HSMVOvmEfqRSSIO4ZK8TL8U4g4GU8HpAxHc
	7+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4NGsD2uqABU8jWlsisWxF0i4bfokGMCJksaMGaYDytc=;
	b=KJA6t+GZRnfD5opuVWy+xlYk408D1Ie1wNCUWNDU8mwCEZs5H2TUjkOpyTSJrY89pG
	gwuecghV2xRIKpwJQpKhaw5tRb3QHtGviHh/9YJSB+HS0UMwfYg7fqTGNQKrDxPqQxr+
	j9At3NgVUKc0JuKW4WCjWyNVgBovnwKbkfU7tMw1fBbUMFZSLiX0q9vSOUh3zcJo1FGV
	jiB3VPetCdilZKdIgJwsHJEOvoDj+r54jtkbTg+08vO3fPWABalm7XdGolQDZUkF+HkL
	GdR6f3nYu4oiKYttdXwHPUAShg6kFmFd9Ol0Uvi7P58HvStGPD60hxVmUpNXD8sNi6sG
	Xspg==
X-Gm-Message-State: AKwxytfsrjs44cP/Q8sjH08av3ByZZf6iW3rCnb/thceeCxlNOyyRKT7
	o3ica2fbd8zpjMlr0JgbuX4zsTmQzu5mu7ftcRkUjA==
X-Google-Smtp-Source: ACJfBota+1gQnO3aCZWGXk3Veg4rsw4CU5akhVApSHgXBJoxVxC2zJ8ZuQwlecLOfGZSrvF8FN6HeiA1QCziHGUAOUw=
X-Received: by 10.36.85.206 with SMTP id e197mr20381607itb.124.1516287121325; 
	Thu, 18 Jan 2018 06:52:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.157.202 with HTTP; Thu, 18 Jan 2018 06:51:40 -0800 (PST)
In-Reply-To: <CAOT_U5b3f-S98tpuhOuB6W7R8Cv+J4qph1ObXh+5dgETMh2cNg@mail.gmail.com>
References: <CAOT_U5b3f-S98tpuhOuB6W7R8Cv+J4qph1ObXh+5dgETMh2cNg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Jan 2018 14:51:40 +0000
Message-ID: <CAJTo0Lajne5k2-PzpXzh502f5CsTZ102WtLbs4ExFrkY2Ojjrg@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: do_roots braking after a SRCREV update for non master branch
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
X-List-Received-Date: Thu, 18 Jan 2018 14:52:03 -0000
Content-Type: multipart/alternative; boundary="001a113992423e9b5405630e1b1d"

--001a113992423e9b5405630e1b1d
Content-Type: text/plain; charset="UTF-8"

I'd check (using oe-pkgdata-util and/or buildhistory-diff) that the new
package is building the same files and packages as the old one.  If PN
wasn't being generated, that would explain why the provides isn't working.

Ross

On 18 January 2018 at 14:46, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Hi,
> I've updated my recipe to use a review from a non master branch:
>
> Old version [python3-senichub_git.bb]:
>
>     inherit setuptools3
>
>     PROVIDES += "python3-senic-hub"
>     RPROVIDES_${PN} += "python3-senic-hub"
>
>     S = "${WORKDIR}/git"
>     SRC_URI = "git://github.com/getsenic/senic-hub.git;"
>     SRCREV = "01fd5bd8725add5e73d3cc35a169f0dc837daefa"
>     PV = "git-${SRCPV}"
>
>     RDEPENDS_${PN} = "python3-nuimo python3-lightify"
>
> New version [python3-senichub_git.bb]:
>
>     inherit setuptools3
>
>     PROVIDES += "python3-senic-hub"
>     RPROVIDES_${PN} += "python3-senic-hub"
>
>     S = "${WORKDIR}/git"
>     SRC_URI = "git://github.com/getsenic/senic-hub.git;branch=improve-
> logging;"
>     SRCREV = "ad6c082a8a990291c6128f54ea0c0d185081704e"
>     PV = "git-${SRCPV}"
>
>     RDEPENDS_${PN} = "python3-nuimo python3-lightify"
>
>
> So the only changes is the SRCREV, and a specific
> branch in the SRC_URI.
> The package alone builds successfully.
> But when building the image it fails on the do_rootfs:
>
>     opkg_prepare_url_for_install: Couldn't find anything to satisfy
> 'python3-senic-hub'.
>
> I can't really make the causes of it. There are some legacy
> naming inconsistencies with a dash, but there is an explicit
> PROVIDES and RPROVIDES in both recipes, one fails the
> other passes.
>
> Any ideas?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113992423e9b5405630e1b1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;d check (using oe-pkgdata-util and/or buildhistory-d=
iff) that the new package is building the same files and packages as the ol=
d one.=C2=A0 If PN wasn&#39;t being generated, that would explain why the p=
rovides isn&#39;t working.<div><br></div><div>Ross</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On 18 January 2018 at 14:46, A=
lan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@seni=
c.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hi,<br>
I&#39;ve updated my recipe to use a review from a non master branch:<br>
<br>
Old version [<a href=3D"http://python3-senichub_git.bb" rel=3D"noreferrer" =
target=3D"_blank">python3-senichub_git.bb</a>]:<br>
<br>
=C2=A0 =C2=A0 inherit setuptools3<br>
<br>
=C2=A0 =C2=A0 PROVIDES +=3D &quot;python3-senic-hub&quot;<br>
=C2=A0 =C2=A0 RPROVIDES_${PN} +=3D &quot;python3-senic-hub&quot;<br>
<br>
=C2=A0 =C2=A0 S =3D &quot;${WORKDIR}/git&quot;<br>
=C2=A0 =C2=A0 SRC_URI =3D &quot;git://<a href=3D"http://github.com/getsenic=
/senic-hub.git" rel=3D"noreferrer" target=3D"_blank">github.com/getsenic/<w=
br>senic-hub.git</a>;&quot;<br>
=C2=A0 =C2=A0 SRCREV =3D &quot;<wbr>01fd5bd8725add5e73d3cc35a169f0<wbr>dc83=
7daefa&quot;<br>
=C2=A0 =C2=A0 PV =3D &quot;git-${SRCPV}&quot;<br>
<br>
=C2=A0 =C2=A0 RDEPENDS_${PN} =3D &quot;python3-nuimo python3-lightify&quot;=
<br>
<br>
New version [<a href=3D"http://python3-senichub_git.bb" rel=3D"noreferrer" =
target=3D"_blank">python3-senichub_git.bb</a>]:<br>
<br>
=C2=A0 =C2=A0 inherit setuptools3<br>
<br>
=C2=A0 =C2=A0 PROVIDES +=3D &quot;python3-senic-hub&quot;<br>
=C2=A0 =C2=A0 RPROVIDES_${PN} +=3D &quot;python3-senic-hub&quot;<br>
<br>
=C2=A0 =C2=A0 S =3D &quot;${WORKDIR}/git&quot;<br>
=C2=A0 =C2=A0 SRC_URI =3D &quot;git://<a href=3D"http://github.com/getsenic=
/senic-hub.git;branch=3Dimprove-logging" rel=3D"noreferrer" target=3D"_blan=
k">github.com/getsenic/<wbr>senic-hub.git;branch=3Dimprove-<wbr>logging</a>=
;&quot;<br>
=C2=A0 =C2=A0 SRCREV =3D &quot;<wbr>ad6c082a8a990291c6128f54ea0c0d<wbr>1850=
81704e&quot;<br>
=C2=A0 =C2=A0 PV =3D &quot;git-${SRCPV}&quot;<br>
<br>
=C2=A0 =C2=A0 RDEPENDS_${PN} =3D &quot;python3-nuimo python3-lightify&quot;=
<br>
<br>
<br>
So the only changes is the SRCREV, and a specific<br>
branch in the SRC_URI.<br>
The package alone builds successfully.<br>
But when building the image it fails on the do_rootfs:<br>
<br>
=C2=A0 =C2=A0 opkg_prepare_url_for_install: Couldn&#39;t find anything to s=
atisfy<br>
&#39;python3-senic-hub&#39;.<br>
<br>
I can&#39;t really make the causes of it. There are some legacy<br>
naming inconsistencies with a dash, but there is an explicit<br>
PROVIDES and RPROVIDES in both recipes, one fails the<br>
other passes.<br>
<br>
Any ideas?<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a113992423e9b5405630e1b1d--
