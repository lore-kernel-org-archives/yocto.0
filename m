Return-Path: <vishwavtu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A74FE00C6D; Thu, 20 Dec 2018 05:40:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vishwavtu[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C44AE0097C
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 05:40:41 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id x23so1867064oix.3
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 05:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=F34z6wC3d3aKag9sFopVZN4fgcSJUacprPGa1tyb1qY=;
	b=Ymt3mkfW35YaP3W5U2cTHdhZWBKW1T4KhBFa0bnTlrNA2K1mv7fNwKpkKU795/F8aP
	9fCH0GvDiPP45nJXJ63yABygonQ1pinI02BJdIIyQIqmuT93QJPpsvmu6SmA4Zs1PgkH
	pfcYltrhVU8FTi60A980XazXvhCgabu0CZpNmaW4d0uY313LLpE/sfEpkQ2QShQwElTG
	Zmh4ZdyG8vFGbv+7v3qC2JZEAv5AxHVw1/F/dIwb7KdJUtQrYKXmMi1LTC1gZQtTRiQW
	UDNJsPDJhvymL1CNBBM1PEDrU2Ex9ZDjim8UUfmkAkVlgwqVL7ED0L4GYUVP0gY0ZPGb
	rFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=F34z6wC3d3aKag9sFopVZN4fgcSJUacprPGa1tyb1qY=;
	b=ENu7CPkKv57q4W460NpEfgS03we3y2cncsg/LdDbUKynfbjoiga6gQakkHuhzrWYfO
	1farFpNX0e0tyBWk4uIkVWSi9VsEimWtThuDw2mkC1BGR/EWgFdyWYX73qk6O8th6CUs
	D6V1DYO+uyAXQyMCy3v41/d7CRP0u+hSYIJDNShWNxPSgVSzTyde5+EQxhnw6h7/za93
	3eH4uBN4NVBK51Q5DSt3quaOteHVVs+coDk9SP41PNoepYPGw8pqKKZ2jE8kSMx0opTk
	We0autKUzvhgrfy7QdWgPcRzcgYgc2VEfmPFzJxX3MgTm2tq6/um+YwHn/K2Jiwt4WnJ
	qtrA==
X-Gm-Message-State: AA+aEWYOplXbPQcd6I5i/uOR0c3M8zrHAnzrHwlr8wX1cRQOUD/5hqh3
	/8bfdQomfPbHi3ohy4MfIodFSlpzeV8hODBxRtk=
X-Google-Smtp-Source: AFSGD/W503MEohL74u4ijU9mFrmAUECQPgl9X9YjpHl8dJYyByvBq/nSgQySESKrbynGdHXeTbb7dJ0zxXdkuiZs6mo=
X-Received: by 2002:aca:5d84:: with SMTP id r126mr2520704oib.227.1545313240748;
	Thu, 20 Dec 2018 05:40:40 -0800 (PST)
MIME-Version: 1.0
References: <3EAB3564-9C9E-46CC-9CD4-4971AD2CA1D9@gmail.com>
	<CAJTo0LYky_=zn6rcJhi4udOE3so2zxGYaEGRhtqaY7N_7rta3Q@mail.gmail.com>
	<CALQBcOfhSwreZF4JsuEwEM_ovTdEv5mZ87qfSZ6yZ_e-kLENkA@mail.gmail.com>
	<CAJTo0LZrNu1jRuFWS6AL+v4jg+g2Pnofrs3oe07Qju8nGZriTQ@mail.gmail.com>
	<CALQBcOfXdDGMXv+CFUgS_mNekbq+O5szyBp0rNwTBMyQr0qnEg@mail.gmail.com>
	<CANNYZj-e+OQtjXAPC=1MFT5AoV9ad6sF1d4uuHTRc=OCzek=Xg@mail.gmail.com>
In-Reply-To: <CANNYZj-e+OQtjXAPC=1MFT5AoV9ad6sF1d4uuHTRc=OCzek=Xg@mail.gmail.com>
From: Vishwanath Chandapur <vishwavtu@gmail.com>
Date: Thu, 20 Dec 2018 19:10:29 +0530
Message-ID: <CALQBcOeA1v-7wgPEEUx8vvdeEo_qSczd=bPHmD2HYxf9E7M=3Q@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-security] Open ssl version
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
X-List-Received-Date: Thu, 20 Dec 2018 13:40:43 -0000
Content-Type: multipart/alternative; boundary="000000000000c8167a057d74464e"

--000000000000c8167a057d74464e
Content-Type: text/plain; charset="UTF-8"

I think issues is below part is missing in openssl_1.1.0i.bb file.

FILES_libcrypto = "${libdir}/libcrypto${SOLIBS}"

FILES_libssl = "${libdir}/libssl${SOLIBS}"

FILES_openssl-conf = "${sysconfdir}/ssl/openssl.cnf"

With Regards
Vishwa
On Thu, Dec 20, 2018 at 3:56 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> It's likely that you ask bitbake to build something that has a hard
> dependency on openssl 1.0. Most probably openssh.
>
> Alex
>
> On Thu, 20 Dec 2018 at 05:30, Vishwanath Chandapur <vishwavtu@gmail.com>
> wrote:
> >
> > Hi Team,
> >
> > I have set opnessl version in sumo but getting below errors.
> >
> >
> > PREFERRED_VERSION_openssl = "1.1.0i"
> >
> >
> > Logs:
> >
> > NOTE: Resolving any missing task queue dependencies
> >
> > NOTE: preferred version 1.1.0i of openssl not available (for item libssl)
> > NOTE: versions of openssl available: 1.0.2p
> > NOTE: preferred version 1.1.0i of openssl not available (for item
> openssl10)
> > NOTE: versions of openssl available: 1.0.2p
> > NOTE: preferred version 1.1.0i of openssl not available (for item
> openssl-conf)
> > NOTE: versions of openssl available: 1.0.2p
> >
> >
> > ERROR: Multiple versions of openssl are due to be built
> (/home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivity/openssl/
> openssl_1.0.2p.bb
> /home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivity/openssl/
> openssl_1.1.0i.bb). Only one version of a given PN should be built in any
> given build. You likely need to set PREFERRED_VERSION_openssl to select the
> correct version or don't depend on multiple versions.
> >
> >
> > With Regards
> > Vishwa
> >
> > On Fri, Dec 14, 2018 at 5:31 PM Burton, Ross <ross.burton@intel.com>
> wrote:
> >>
> >> How did you set it?
> >>
> >> Also this isn't relevant to yocto-security, please move to yocto@.
> >>
> >> Ross
> >> On Fri, 14 Dec 2018 at 11:53, Vishwanath Chandapur <vishwavtu@gmail.com>
> wrote:
> >> >
> >> > Hi Ross,
> >> >
> >> > I tried to enable by using PREFERRED_VERSION.
> >> >
> >> > But getting these errors .
> >> > >>>>>>>>>>>>>>>>>>>>>>>>>>>>
> >> > NOTE: Resolving any missing task queue dependencies
> >> > NOTE: preferred version 1.0.% of openssl not available (for item
> openssl)
> >> > NOTE: versions of openssl available: 1.1.0i
> >> > NOTE: preferred version 1.0.% of openssl-native not available (for
> item openssl-native)
> >> > NOTE: versions of openssl-native available: 1.1.0i
> >> > NOTE: preferred version 1.0.% of nativesdk-openssl not available (for
> item nativesdk-openssl)
> >> > NOTE: versions of nativesdk-openssl available: 1.1.0i
> >> > NOTE: preferred version 1.0.% of openssl not available (for item
> openssl-dev)
> >> > NOTE: versions of openssl available: 1.1.0i
> >> > NOTE: preferred version 1.0.% of nativesdk-openssl not available (for
> item nativesdk-openssl-dev)
> >> > NOTE: versions of nativesdk-openssl available: 1.1.0i
> >> > ERROR: Nothing RPROVIDES 'libssl
> >> > >>>>>>>>>>>>>>>>>>>>>>>>>>>
> >> >
> >> > With Regards
> >> > Vishwa
> >> >
> >> >
> >> > On Thu, 13 Dec 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >> >>
> >> >> Yes, Sumo has OpenSSL 1.1 but it isn't enabled by default because at
> >> >> the time of release some important pieces of software had not yet
> >> >> migrated.
> >> >>
> >> >> You can switch by using PREFERRED_VERSION.
> >> >>
> >> >> Ross
> >> >> On Thu, 13 Dec 2018 at 12:13, Vishwanath Chandapur <
> vishwavtu@gmail.com> wrote:
> >> >> >
> >> >> > Hi Team,
> >> >> >
> >> >> > Currently we are migrating to poly sumo version .
> >> >> > But we have requirement to use 1.1.0 but poky is still supporting
> 1.0.2
> >> >> >
> >> >> > I would like know if latest OpenSSL available for future release .
> >> >> >
> >> >> > With Regard
> >> >> > Vishwa
> >> >> > _______________________________________________
> >> >> > yocto-security mailing list
> >> >> > yocto-security@yoctoproject.org
> >> >> > https://lists.yoctoproject.org/listinfo/yocto-security
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c8167a057d74464e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I think issues is below part is missing i=
n <a href=3D"http://openssl_1.1.0i.bb">openssl_1.1.0i.bb</a> file.<br><br>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:no=
rmal;font-family:Monaco;color:rgb(245,245,245);background-color:rgb(0,0,0)"=
><span class=3D"gmail-s1" style=3D"font-variant-ligatures:no-common-ligatur=
es">FILES_libcrypto =3D &quot;${libdir}/libcrypto${SOLIBS}&quot;</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:no=
rmal;font-family:Monaco;color:rgb(245,245,245);background-color:rgb(0,0,0)"=
><span class=3D"gmail-s1" style=3D"font-variant-ligatures:no-common-ligatur=
es">FILES_libssl =3D &quot;${libdir}/libssl${SOLIBS}&quot;</span></p>
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:14px;line-height:no=
rmal;font-family:Monaco;color:rgb(245,245,245);background-color:rgb(0,0,0)"=
><span class=3D"gmail-s1" style=3D"font-variant-ligatures:no-common-ligatur=
es">FILES_openssl-conf =3D &quot;${sysconfdir}/ssl/openssl.cnf&quot;</span>=
</p></div><div><br></div>With Regards<div>Vishwa<br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">On Thu, Dec 20, 2018 at 3:56 PM Alexander Kanavin &lt;=
<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">It&#39;s li=
kely that you ask bitbake to build something that has a hard<br>
dependency on openssl 1.0. Most probably openssh.<br>
<br>
Alex<br>
<br>
On Thu, 20 Dec 2018 at 05:30, Vishwanath Chandapur &lt;<a href=3D"mailto:vi=
shwavtu@gmail.com" target=3D"_blank">vishwavtu@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Team,<br>
&gt;<br>
&gt; I have set opnessl version in sumo but getting below errors.<br>
&gt;<br>
&gt;<br>
&gt; PREFERRED_VERSION_openssl =3D &quot;1.1.0i&quot;<br>
&gt;<br>
&gt;<br>
&gt; Logs:<br>
&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;<br>
&gt; NOTE: preferred version 1.1.0i of openssl not available (for item libs=
sl)<br>
&gt; NOTE: versions of openssl available: 1.0.2p<br>
&gt; NOTE: preferred version 1.1.0i of openssl not available (for item open=
ssl10)<br>
&gt; NOTE: versions of openssl available: 1.0.2p<br>
&gt; NOTE: preferred version 1.1.0i of openssl not available (for item open=
ssl-conf)<br>
&gt; NOTE: versions of openssl available: 1.0.2p<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Multiple versions of openssl are due to be built (/home/ubuntu/=
workspace/yocto/sources/poky/meta/recipes-connectivity/openssl/<a href=3D"h=
ttp://openssl_1.0.2p.bb" rel=3D"noreferrer" target=3D"_blank">openssl_1.0.2=
p.bb</a> /home/ubuntu/workspace/yocto/sources/poky/meta/recipes-connectivit=
y/openssl/<a href=3D"http://openssl_1.1.0i.bb" rel=3D"noreferrer" target=3D=
"_blank">openssl_1.1.0i.bb</a>). Only one version of a given PN should be b=
uilt in any given build. You likely need to set PREFERRED_VERSION_openssl t=
o select the correct version or don&#39;t depend on multiple versions.<br>
&gt;<br>
&gt;<br>
&gt; With Regards<br>
&gt; Vishwa<br>
&gt;<br>
&gt; On Fri, Dec 14, 2018 at 5:31 PM Burton, Ross &lt;<a href=3D"mailto:ros=
s.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<=
br>
&gt;&gt;<br>
&gt;&gt; How did you set it?<br>
&gt;&gt;<br>
&gt;&gt; Also this isn&#39;t relevant to yocto-security, please move to yoc=
to@.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt; On Fri, 14 Dec 2018 at 11:53, Vishwanath Chandapur &lt;<a href=3D"=
mailto:vishwavtu@gmail.com" target=3D"_blank">vishwavtu@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Ross,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I tried to enable by using PREFERRED_VERSION.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; But getting these errors .<br>
&gt;&gt; &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&=
gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt; &gt; NOTE: preferred version 1.0.% of openssl not available (for i=
tem openssl)<br>
&gt;&gt; &gt; NOTE: versions of openssl available: 1.1.0i<br>
&gt;&gt; &gt; NOTE: preferred version 1.0.% of openssl-native not available=
 (for item openssl-native)<br>
&gt;&gt; &gt; NOTE: versions of openssl-native available: 1.1.0i<br>
&gt;&gt; &gt; NOTE: preferred version 1.0.% of nativesdk-openssl not availa=
ble (for item nativesdk-openssl)<br>
&gt;&gt; &gt; NOTE: versions of nativesdk-openssl available: 1.1.0i<br>
&gt;&gt; &gt; NOTE: preferred version 1.0.% of openssl not available (for i=
tem openssl-dev)<br>
&gt;&gt; &gt; NOTE: versions of openssl available: 1.1.0i<br>
&gt;&gt; &gt; NOTE: preferred version 1.0.% of nativesdk-openssl not availa=
ble (for item nativesdk-openssl-dev)<br>
&gt;&gt; &gt; NOTE: versions of nativesdk-openssl available: 1.1.0i<br>
&gt;&gt; &gt; ERROR: Nothing RPROVIDES &#39;libssl<br>
&gt;&gt; &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&=
gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; With Regards<br>
&gt;&gt; &gt; Vishwa<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Thu, 13 Dec 2018 at 5:57 PM, Burton, Ross &lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Yes, Sumo has OpenSSL 1.1 but it isn&#39;t enabled by def=
ault because at<br>
&gt;&gt; &gt;&gt; the time of release some important pieces of software had=
 not yet<br>
&gt;&gt; &gt;&gt; migrated.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; You can switch by using PREFERRED_VERSION.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Ross<br>
&gt;&gt; &gt;&gt; On Thu, 13 Dec 2018 at 12:13, Vishwanath Chandapur &lt;<a=
 href=3D"mailto:vishwavtu@gmail.com" target=3D"_blank">vishwavtu@gmail.com<=
/a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Hi Team,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Currently we are migrating to poly sumo version .<br=
>
&gt;&gt; &gt;&gt; &gt; But we have requirement to use 1.1.0 but poky is sti=
ll supporting 1.0.2<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I would like know if latest OpenSSL available for fu=
ture release .<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; With Regard<br>
&gt;&gt; &gt;&gt; &gt; Vishwa<br>
&gt;&gt; &gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; &gt; yocto-security mailing list<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:yocto-security@yoctoproject.org" t=
arget=3D"_blank">yocto-security@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo-security" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/listinfo/yocto-security</a><br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div></div></div>

--000000000000c8167a057d74464e--
