Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3D26E00B92; Wed, 20 Feb 2019 08:53:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC2B0E00B5C
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 08:53:54 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id c18so19697903otl.13
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 08:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZLE1NQZgUGtCgCM2FVSiN8iOxfrMVskl1/c2JBKHBc8=;
	b=UE/pPupXrsY3Z8FrHQJObsiNkiyiloYA75rPt6bXFE3N7TAOveICfWeNs/APj7bQOz
	MpvL5pBB07yPQBXJLKbPT1mH0ULEYPTKbtDP6awEjaFrUYbeHu4NSHHPYyHmqnWgkRrt
	fZ5Nx9+yueGE5pqnOYHRP4Zl5URLP7UHYyRxijhW4sIiC1EnOH1ZeXi9DNIEkk/jN9+y
	xuzn002FocjZH7jJEwhFpw3c1h9oRCombqam0NoyVQ61ZkaxUNljlnVOR3D3fpuOyhjj
	rWBnxN/j/kzzqR30ZKZkOz7d/EdSLz0x60ppMCndfQWvd8Vhp1030S80BfnnXwPZxc67
	DPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZLE1NQZgUGtCgCM2FVSiN8iOxfrMVskl1/c2JBKHBc8=;
	b=n19dYeHVpJM0NH1d8K0JULWbEDnFVk/iDWKnb1p5UzG8XuXJ56+Jh7mDzN/gBShbO9
	2QprxJMWkmGDIjaHVyL9rhshGv3XHeclWU6xrjKMAGxip6x00tDEtmpdvK+tWespEZ2z
	yX/xc2sA69u3Y3X6gX4dHLMIFo/yQlnb4SFmcBmqZ/5G6K/bJ0ONvTB0w9zM6RUvxBCt
	Y+rxkgC1hfGf33At8hRMeP1NYqR4NAqdKSaBaxlWxXBV2CYKQO8tjEj2RfN9dR6ftdgf
	65ijb5MRZVx/W+Z3bUXCo2NM09hB6F76JcCv6KowyvHsgM0RUqjIXv/LfsrOOoDg63xt
	Of2A==
X-Gm-Message-State: AHQUAuZPzyeYdLWPahuISxfYoC2LCaVP4MQCygZAm8OpVKDRdsbrACy5
	n/Cg/VXz1vdifN26WCqUNOAqbHSn0Fwbao9OXQg=
X-Google-Smtp-Source: AHgI3Iatx2mzwXtASRQ+YKnEOL7iE14Ol4fnqepn6PRaX9r90u977sv71fJ7PRYT2+rGxrBfHBvk+rsiuEs74tSxL6o=
X-Received: by 2002:a9d:5617:: with SMTP id e23mr22787699oti.193.1550681633992;
	Wed, 20 Feb 2019 08:53:53 -0800 (PST)
MIME-Version: 1.0
References: <279332559.340239.1550504527934@mail.libero.it>
	<CAMKF1sqSdKEnWfar6npeHwqV84tbbdV+_afMA4jJSHTdbXTe+Q@mail.gmail.com>
	<573688103.446697.1550652140576@mail.libero.it>
In-Reply-To: <573688103.446697.1550652140576@mail.libero.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Feb 2019 08:53:43 -0800
Message-ID: <CAMKF1src-cLsYF7=Fhti7Op7RtKFCy0ezGWHj-g9ftpExOTAPA@mail.gmail.com>
To: luciosantinell@libero.it
Cc: yocto@yoctoproject.org
Subject: Re: Add new compiler macro
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
X-List-Received-Date: Wed, 20 Feb 2019 16:53:55 -0000
Content-Type: multipart/alternative; boundary="000000000000f435b9058256331c"

--000000000000f435b9058256331c
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 20, 2019 at 12:42 AM <luciosantinell@libero.it> wrote:

> Hi,
>
> i tried to add CFLAGS += "-MMC_WRITE"
> (i dont know if -DMMC_WRITE was a typo or not and tryed both)
>

-D is right way to pass defines it seems your makefiles are ignoring cflags
so you might have to fix that

>
>
> i dont get any error but in my recipes the code wrapped in
> #ifdef MMC_WRITE
> #endif
>
> is not compiled... i even tried to add a sintax error between the ifdef
> so, if compiler see MMC_WRITE macro, i should get a compiler error but i
> don't.
>
> Im still missing something?
>
> code example :
>
> #ifdef MMC_WRITE
>         dev_info(host->parent , "retune_now MMC !!! \n\r"); asdasdasd
> //asdasdasdasd is a syntax error that should came out
>
> #elif SD_WRITE
>
> Thanks
>
> Il 18 febbraio 2019 alle 16.45 Khem Raj <raj.khem@gmail.com> ha scritto:
>
> On Mon, Feb 18, 2019 at 7:43 AM <luciosantinell@libero.it> wrote:
> >
>
> Hi, i wanted to add a compiler macro (NEW_MACRO) in order to compile all
> the code hidden beetween
>
> #ifdef NEW_MACRO
>
> #endif
> in all my recipes. I think that the right place to do that is in
> bitbake.conf file present under poky/meta/conf but when i try to do:
>
> TARGET_CPPFLAGS += "-MMC_WRITE"
>
> it depends on recipes respecting compiler flags from environment but
> most of them do.
>
> CFLAGS += "-DMMC_WRITE" could do it.
>
> >
>
> I get the error :
> configure: error: cannot compute suffix of object files: cannot compile
>
> How can i send the macro to the compiler in the correct way?
>
> Thanks
>
> --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000f435b9058256331c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Feb 20, 2019 at 12:42 AM &lt;<a href=3D"mailto:luci=
osantinell@libero.it">luciosantinell@libero.it</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><u></u>

   =20
<div><p>Hi, <br><br>i tried to add CFLAGS +=3D &quot;-MMC_WRITE&quot;<br>(i=
 dont know if -DMMC_WRITE was a typo or not and tryed both)=C2=A0</p></div>=
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">-D is right way =
to pass defines it seems your makefiles are ignoring cflags so you might ha=
ve to fix that=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><p><br><br>i =
dont get any error but in my recipes the code wrapped in <br>#ifdef MMC_WRI=
TE<br>#endif<br><br>is not compiled... i even tried to add a sintax error b=
etween the ifdef so, if compiler see MMC_WRITE macro, i should get a compil=
er error but i don&#39;t.=C2=A0<br><br>Im still missing something? <br><br>=
code example : <br><br>#ifdef MMC_WRITE<br>=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
=C2=A0dev_info(host-&gt;parent , &quot;retune_now MMC !!! \n\r&quot;); asda=
sdasd=C2=A0 //asdasdasdasd is a syntax error that should came out<br></p><p=
>#elif SD_WRITE<br></p><p>Thanks</p><blockquote><p>Il 18 febbraio 2019 alle=
 16.45 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt; ha scritto:</p><p>On Mon, Feb 18, 2019 at 7:43 =
AM &lt;<a href=3D"mailto:luciosantinell@libero.it" target=3D"_blank">lucios=
antinell@libero.it</a>&gt; wrote:<br>&gt;</p><blockquote><p>Hi, i wanted to=
 add a compiler macro (NEW_MACRO) in order to compile all the code hidden b=
eetween</p><p>#ifdef NEW_MACRO</p><p>#endif<br>in all my recipes. I think t=
hat the right place to do that is in bitbake.conf file present under poky/m=
eta/conf but when i try to do:</p><p>TARGET_CPPFLAGS +=3D &quot;-MMC_WRITE&=
quot;</p></blockquote><p>it depends on recipes respecting compiler flags fr=
om environment but<br>most of them do.</p><p>CFLAGS +=3D &quot;-DMMC_WRITE&=
quot; could do it.</p><p>&gt;</p><blockquote><p>I get the error :<br>config=
ure: error: cannot compute suffix of object files: cannot compile</p><p>How=
 can i send the macro to the compiler in the correct way?</p><p>Thanks</p><=
p>--</p><p>_______________________________________________<br>yocto mailing=
 list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/=
yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br></p></blockquote></blockquote></div>
 </blockquote></div></div>

--000000000000f435b9058256331c--
