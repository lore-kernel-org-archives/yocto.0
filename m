Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C458E00752; Wed, 19 Oct 2016 15:10:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7282E006E3
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 15:10:48 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id m5so36364159qtb.3
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 15:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=t0+S/6wTZKNkzQNciJO7pv+1IyaoqIk9k8OmbEx2M5E=;
	b=SV6QIJ29132J+vCybd/SC1042bdVBCOH6oQYkAOeT7CRAxdgPn7C0tXasOqV9kaqYa
	EAAISJ7jXFf5uFtkbOAchmBBhqGclbfWqf61LaES2M+vIskcMewxvTCYL7L5drXdMNrm
	hF8uHE6FCr6CnwBmCDuxYiRfFMS3TmyJGSZdpw1v/Fy5AwQy1ZlH5xVUD2Gz+Ldgxcfh
	8sVZnbzCGfvXsNAy3bENPvJASFGlMIDbzWeaT28n7FZ5SW5mQhDwrXL0j7c/I1Ya5xpa
	Z4D9VEBijR/vqEn8R9xuc9N470E/odbdsgO2KR+1Fbr+GcslAdwY5PrXI3oNNbLrsjtz
	3u3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=t0+S/6wTZKNkzQNciJO7pv+1IyaoqIk9k8OmbEx2M5E=;
	b=YCH2DJpGKhLhFVfY3F9QCwTUB1X2Hp8JPCx5vm/nZEvK5ohMtANr+awaYmTLL8YZQy
	5VCR7/dlAuKLkvjCkO8QF9+NykcMU4rFvnax3Yn16GKxLGAahQ61MgOMNOn50fscAQ5Q
	cz6gb7NsxT+PAbJN0z4Yhi/dXpR/eJZsm/GPsAgBuNr15PaObSAODJQORzVj9v51bIgc
	RszmaAm1jAEOEmGK1TOQ8jLdC6OJk/K+jonhcYxWebNMyMJ8f77f2dr0l3coIv/0sVkk
	zPO5EEd0D/OwS6WQMsA5j4MIHqIC/vEATClu9+pmrrryPxjtk3ir+dM0HjDZirq1/8XL
	UOnA==
X-Gm-Message-State: AA6/9Rka9D4sV8iC6SjiMUhHAelZ5nCtxSK6bijFqM51otOIx0fnU4Z+UyGyfAYZxj8BruxxFC4rcxtIKHGNzoUb
X-Received: by 10.200.52.75 with SMTP id v11mr8113792qtb.137.1476915047705;
	Wed, 19 Oct 2016 15:10:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Wed, 19 Oct 2016 15:10:27 -0700 (PDT)
In-Reply-To: <3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
References: <CALLyC8TfRL68sWhdn1Z7tmOKxpagFfaW4YnQ9FteEKCX_rdCgg@mail.gmail.com>
	<3331a156-1af4-14eb-86ef-5afb4d1e8404@t-online.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Oct 2016 23:10:27 +0100
Message-ID: <CAJTo0LZUvD6MrLLtf4_7uAX9UCutnOAUJeg3aBGubCd4JysTqw@mail.gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: libtomcrypt libtomfastmath recipe
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
X-List-Received-Date: Wed, 19 Oct 2016 22:10:51 -0000
Content-Type: multipart/alternative; boundary=001a11409a9cc8466c053f3f141a

--001a11409a9cc8466c053f3f141a
Content-Type: text/plain; charset=UTF-8

Please considering posting these recipe into meta-oe or similar, tomcrypt
etc comes up every few months.  And posting a recipe to the list implies
you want review, right? :)

On 19 October 2016 at 10:12, Markus Volk <f_l_k@t-online.de> wrote:

> DESCRIPTION = "tomcrypt"
> HOMEPAGE = " http://www.libtom.net" <http://www.libtom.net>
> LICENSE = "DWTFYW"
>
Second worst license known to man.  :(

> LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=71baacc459522324ef3e2b9e052e81
> 80"
>
These URLs are relative to ${S} so just file://LICENSE works.

> SRC_URI = "git://github.com/libtom/libtomcrypt.git;branch=develop \
> "
>
> SRCREV = "${AUTOREV}"
>
In general it's recommended to use a fixed SHA and then override SRVREV if
you need to for testing/CI/whatever.

> PV = "${SRCPV}"
> PR = "1"
>
No need for PR in general.

> S = "${WORKDIR}/git"
>
> inherit autotools-brokensep
>
Boo.  Is upstream fixable or is it beyond help?

> SRC_URI[md5sum] = "d2f152e4dc83ee4cdb1b4f1a4866fe7f"
> SRC_URI[sha256sum] = "d0ff89397f9a5fd1d13b1cbc419d5d
> 426e14473135515d72bfcb58e5babf5032"
>
> No need for SRC_URI if you're using git fetcher.

Ross

--001a11409a9cc8466c053f3f141a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Please considering posting thes=
e recipe into meta-oe or similar, tomcrypt etc comes up every few months.=
=C2=A0 And posting a recipe to the list implies you want review, right? :)<=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 19 Octobe=
r 2016 at 10:12, Markus Volk <span dir=3D"ltr">&lt;<a href=3D"mailto:f_l_k@=
t-online.de" target=3D"_blank">f_l_k@t-online.de</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><p>DESCRIPTION =3D &quot;tomcrypt&quot;<br>
      HOMEPAGE =3D <a class=3D"m_2560613953701911755moz-txt-link-rfc2396E" =
href=3D"http://www.libtom.net" target=3D"_blank">&quot; http://www.libtom.n=
et&quot;</a><br>
      LICENSE =3D &quot;DWTFYW&quot;<br></p></blockquote><div>Second worst =
license known to man. =C2=A0:(<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>
      LIC_FILES_CHKSUM =3D
      <a class=3D"m_2560613953701911755moz-txt-link-rfc2396E">&quot;file://=
${S}/LICENSE;md5=3D<wbr>71baacc459522324ef3e2b9e052e81<wbr>80&quot;</a></p>=
</blockquote><div>These URLs are relative to ${S} so just file://LICENSE wo=
rks.=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><p>SRC_URI =3D &quot;git://<=
a href=3D"http://github.com/libtom/libtomcrypt.git;branch=3Ddevelop" target=
=3D"_blank">github.com/libtom/<wbr>libtomcrypt.git;branch=3Ddevelop</a>
      \<br>
      &quot;<br>
      <br>
      SRCREV =3D &quot;${AUTOREV}&quot;<br></p></blockquote><div>In general=
 it&#39;s recommended to use a fixed SHA and then override SRVREV if you ne=
ed to for testing/CI/whatever.</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>
      PV =3D &quot;${SRCPV}&quot;<br>
      PR =3D &quot;1&quot;</p></blockquote><div>No need for PR in general.=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><p><span class=3D"">S =3D &quot;=
${WORKDIR}/git&quot;<br>
      <br></span>
      inherit autotools-brokensep<br></p></blockquote><div>Boo.=C2=A0 Is up=
stream fixable or is it beyond help?=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><p>
      SRC_URI[md5sum] =3D &quot;<wbr>d2f152e4dc83ee4cdb1b4f1a4866fe<wbr>7f&=
quot;<br>
      SRC_URI[sha256sum] =3D
      &quot;<wbr>d0ff89397f9a5fd1d13b1cbc419d5d<wbr>426e14473135515d72bfcb5=
8e5babf<wbr>5032&quot;</p>
    <p></p></blockquote></div>No need for SRC_URI if you&#39;re using git f=
etcher.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--001a11409a9cc8466c053f3f141a--
