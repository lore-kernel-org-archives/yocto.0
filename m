Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 689CFE00D8B; Wed, 25 Sep 2019 00:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFA61E00D89
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:24:31 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id u22so4394481qkk.11
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XfhzUizPYxgQDaGSU2RYqJdDVZ2UMSxN/a5LZKOz8+0=;
	b=GFIy1nMt2pemIny774FVo/OmcHFV4avnm4+Kldm2Cdr0idgsp/6TIO1+nZskx3oZwS
	RZgmO82ZHq9pZdNJfhH5Z9z7ob3fhT/3MnOsHySWrRrDlB9vqQLmpBIoNUdKEnhP8pKe
	Qr1At4xdbZjfEnPMiDS7ijTDN5Kn8LzyLl6jEeJjIDvTDTBH6j62aqiTcygAoK2ljUjv
	EVQwIiSKu0JrdBXe5qUMKmSaNit64Ba4l8Zn53auGcqb4cJHgp56vT8IiaI6xRbQNwBf
	El8fArCHIN0VgKmqM25WSOQTnk4f7EjIIAUILvrrSMtLNjh/CnHINba+LsB9RiEm1Yhd
	HSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XfhzUizPYxgQDaGSU2RYqJdDVZ2UMSxN/a5LZKOz8+0=;
	b=nk6IuyRkVsFs9FxANicn8DSOIpOny39fHizs59PL+f0DXRfEYsBTLrfxbh9ET1skRq
	BqkVAKaVMX+BsxV6CHS8hypdjSngYx3delAMT3XpGVqKi76JFiqtBceDIjwPeObwPUlx
	/gGDSejEcvQl2H40OQEeV/oSO3v61Ukn53PO8saJJfUYbEudEaS5erCcV4lKurNJKSI1
	ctLu8duBynISqqF6eNYMgF7HO12j3gjlObfZXH/dBINmxICU6Y7lizPMxrrR0spRiytl
	DWNsptJwJJCia+bY9fPiAhmAYgw/Yx1wCQcJ7mFRjivXNbmTJUk09Ppc2UKB0iU8+7H2
	yaNQ==
X-Gm-Message-State: APjAAAVnbsoRH95xLMP5bfVG4Ore2I7RGPuMFmfsx7fPmTF26R4rJ0/C
	tJC7uA2BC7JFdVrWJmWWrI96CQp8fFFqk7NABQ==
X-Google-Smtp-Source: APXvYqx75NhL9QN3POy6/4B79NiYA7v76+6UNVyGBHSIBLevHM/UInR3LWQk9KqHwvcuwRYct76dX83TJDKADCfisRQ=
X-Received: by 2002:a37:9203:: with SMTP id u3mr1993253qkd.304.1569396271040; 
	Wed, 25 Sep 2019 00:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv-74abWOFa-99ad_o5J35_az46AUbYuLpESmCUjdyU12g@mail.gmail.com>
	<CAD5=o+oWFH5d2+qBkzxUQxXnHH0fRht1OO-FRhemcR-yUDuLXw@mail.gmail.com>
In-Reply-To: <CAD5=o+oWFH5d2+qBkzxUQxXnHH0fRht1OO-FRhemcR-yUDuLXw@mail.gmail.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Wed, 25 Sep 2019 10:24:20 +0300
Message-ID: <CA+FhBv-gOorHY4+nkUmKPupda7HKmE1oa5MfgPmjaww=xGmZWg@mail.gmail.com>
To: Jussi Kukkonen <jku@goto.fi>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES 'python3-dev'
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
X-List-Received-Date: Wed, 25 Sep 2019 07:24:32 -0000
Content-Type: multipart/alternative; boundary="0000000000003f4e1005935b8b2d"

--0000000000003f4e1005935b8b2d
Content-Type: text/plain; charset="UTF-8"

Kiitos Jussi!

That solved it.

I had DEPENDS += "python3-dev" and RDEPENDS += "libpython3"

now

I have DEPENDS += "python3" and RDEPENDS += "libpython3"

I'll check if libpython3 is implicit when the image builds.

Cheers,
-Damien

On Wed, Sep 25, 2019 at 10:00 AM Jussi Kukkonen <jku@goto.fi> wrote:

>
>
> On Wed, 25 Sep 2019 at 09:16, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
>
>> > On 24/09/2019 10:36, Damien LEFEVRE wrote:
>> > > Hi,
>> > >
>> > > Migrating from poky:pyro to poky:warrior.
>> > >
>> > > It looks like the python3-dev package is generated from
>> > > python3-manifest.json:
>> > >
>> > >  ? ? "dev": {
>> > >  ? ? ? ? "cached": [],
>> > >  ? ? ? ? "files": [
>> > >  ? ? ? ? ? ? "${base_libdir}/*.a",
>> > >  ? ? ? ? ? ? "${base_libdir}/*.o",
>> > >  ? ? ? ? ? ? "${bindir}/python*-config",
>> > >  ? ? ? ? ? ? "${datadir}/aclocal",
>> > >  ? ? ? ? ? ? "${datadir}/pkgconfig",
>> > >  ? ? ? ? ? ? "${includedir}",
>> > >  ? ? ? ? ? ? "${libdir}/*.a",
>> > >  ? ? ? ? ? ? "${libdir}/*.la",
>> > >  ? ? ? ? ? ? "${libdir}/*.o",
>> > >  ? ? ? ? ? ? "${libdir}/lib*${SOLIBSDEV}",
>> > >  ? ? ? ? ? ? "${libdir}/pkgconfig"
>> > >  ? ? ? ? ],
>> > >  ? ? ? ? "rdepends": [
>> > >  ? ? ? ? ? ? "core"
>> > >  ? ? ? ? ],
>> > >  ? ? ? ? "summary": "Python development package"
>> > >  ? ? },
>> > >
>> > > and this is used in python3_3.7.2.bb <http://python3_3.7.2.bb>.
>> > >
>> > > Still I get this error: Nothing PROVIDES 'python3-dev'
>> >
>> > Are you trying to 'bitbake python3-dev'?  You bitbake a recipe, not a
>> > package, so 'bitbake python3'.
>> >
>> > Ross
>>
>> Hi Ross,
>>
>> The issue is with the python3 recipe. It declares RDEPENDS_python3-dev,
>> not DEPENDS_python3-dev.
>>
>
>> I'm using the Python C API. So I need headers and so lib files at build
>> time but only so lib at runtime.
>>
>
> DEPENDing on python3 should give you the former (headers etc in sysroot at
> build time) and RDEPENDing on the correct package (maybe libpython3?)
> should give you the latter -- but RDEPENDS should be automatic if your app
> links to the library.
>
> Is this not working?
>
>
>
>>
>> I can add python3-dev to my recipe's RDEPENDS list, but bitbake
>> rightfully complains about installing -dev files to the image.
>>
>> I'll check today how to fix that.
>>
>> -Damien
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--0000000000003f4e1005935b8b2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Kiitos Jussi!<div><br></div><div>That solved it.=C2=A0</di=
v><div><br></div><div>I had DEPENDS +=3D &quot;python3-dev&quot; and RDEPEN=
DS=C2=A0+=3D &quot;libpython3&quot;</div><div><br></div><div>now</div><div>=
<br></div><div>I have DEPENDS +=3D &quot;python3&quot; and RDEPENDS=C2=A0+=
=3D &quot;libpython3&quot;<br></div><div><br></div><div>I&#39;ll check if=
=C2=A0libpython3 is implicit when the image builds.</div><div><br></div><di=
v>Cheers,</div><div>-Damien</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 25, 2019 at 10:00 AM Jussi Kuk=
konen &lt;<a href=3D"mailto:jku@goto.fi">jku@goto.fi</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, 25 Sep 2019 at 09:16, Damien LEFEVRE &lt;<a href=3D=
"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">&gt; On 24/09/2019 10:36, Damien LEFEVRE wrote:<br>&gt; &gt; Hi,<=
br>&gt; &gt;=C2=A0<br>&gt; &gt; Migrating from poky:pyro to poky:warrior.<b=
r>&gt; &gt;=C2=A0<br>&gt; &gt; It looks like the python3-dev package is gen=
erated from=C2=A0<br>&gt; &gt; python3-manifest.json:<br>&gt; &gt;=C2=A0<br=
>&gt; &gt;=C2=A0 ? ? &quot;dev&quot;: {<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;ca=
ched&quot;: [],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;files&quot;: [<br>&gt; &gt=
;=C2=A0 ? ? ? ? ? ? &quot;${base_libdir}/*.a&quot;,<br>&gt; &gt;=C2=A0 ? ? =
? ? ? ? &quot;${base_libdir}/*.o&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quo=
t;${bindir}/python*-config&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${da=
tadir}/aclocal&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${datadir}/pkgco=
nfig&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${includedir}&quot;,<br>&g=
t; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/*.a&quot;,<br>&gt; &gt;=C2=A0 ? ?=
 ? ? ? ? &quot;${libdir}/*.la&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;$=
{libdir}/*.o&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/lib*${SO=
LIBSDEV}&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/pkgconfig&qu=
ot;<br>&gt; &gt;=C2=A0 ? ? ? ? ],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;rdepends=
&quot;: [<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;core&quot;<br>&gt; &gt;=C2=
=A0 ? ? ? ? ],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;summary&quot;: &quot;Python=
 development package&quot;<br>&gt; &gt;=C2=A0 ? ? },<br>&gt; &gt;=C2=A0<br>=
&gt; &gt; and this is used in=C2=A0<a href=3D"http://python3_3.7.2.bb/" rel=
=3D"noreferrer" target=3D"_blank">python3_3.7.2.bb</a>=C2=A0&lt;<a href=3D"=
http://python3_3.7.2.bb/" rel=3D"noreferrer" target=3D"_blank">http://pytho=
n3_3.7.2.bb</a>&gt;.<br>&gt; &gt;=C2=A0<br>&gt; &gt; Still I get this error=
: Nothing PROVIDES &#39;python3-dev&#39;<br>&gt;=C2=A0<br>&gt; Are you tryi=
ng to &#39;bitbake python3-dev&#39;?=C2=A0 You bitbake a recipe, not a=C2=
=A0<br>&gt; package, so &#39;bitbake python3&#39;.<br>&gt;=C2=A0<br>&gt; Ro=
ss<br><div><br></div><div>Hi Ross,</div><div><br></div><div>The issue is wi=
th the python3 recipe. It declares RDEPENDS_python3-dev, not DEPENDS_python=
3-dev.</div></div></blockquote><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div><br></div><div>I&#39;m using the Python C API. =
So I need headers and so lib files at build time but only so lib at runtime=
.=C2=A0</div></div></blockquote><div><br></div><div>DEPENDing on python3 sh=
ould give you the former (headers etc in sysroot at build time) and RDEPEND=
ing on the correct package (maybe libpython3?) should give you the latter -=
- but RDEPENDS should be automatic if your app links to the library.</div><=
div><br></div><div>Is this not working?</div><div><br></div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><=
br></div><div>I can add python3-dev to my recipe&#39;s RDEPENDS list, but b=
itbake rightfully complains about installing -dev files to the image.</div>=
<div><br></div><div>I&#39;ll check today how to fix that.</div><div><br></d=
iv><div>-Damien</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</blockquote></div>

--0000000000003f4e1005935b8b2d--
