Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C719E004E5; Mon,  7 Nov 2016 14:22:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f195.google.com (mail-ua0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D31E00498
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 14:22:54 -0800 (PST)
Received: by mail-ua0-f195.google.com with SMTP id 20so6710766uak.0
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2016 14:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=whGF342DyR3t2HWFOlFnmWQnxYaONk9UkGSjq46G91c=;
	b=Xf1C5swEHhyRfJ76dQyZNvPQAdJYbFL27nt56IjpgS7/Ih7CDbFUX3gKfS9M1Gh0Ek
	N5PK62rI8uwKI7qLpMOZmvxtukccZGoyiTu+txFVCS4V4fPMp0ZK24GSROnFmH5Q3AU9
	+c1q5gY9qLSbOZdN4LuFtizs/gMOOUMfHUcH1jFbmE6NWzt7+Ko+zqe1Z6pnXF6LbBUl
	oG/1d3IYEFy4zQ8baYJ27tNpY4ht/M0370crpTLWtgjcYJt8X72SgV7G9E/8QV76dlJM
	fxEakg/kVKXfNuJqmjnIOm6Cfab2dyvGErzptcjIHZv+uDiVVQAGSKDfFIs9C3ghSe/d
	LXrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=whGF342DyR3t2HWFOlFnmWQnxYaONk9UkGSjq46G91c=;
	b=AaUooOps7VEVghYqZn6KcwnBR14LOw+zRt8CCv8wZOsVQtl3oHQSPXxuI4ZH3ZmUnd
	TYK7Yfd3MM6i+tSwSE1kp1tMgKp0yrtkQgxxVamdiuIGhVMGVDBmUPfbrsV2TqZGIl+C
	BT/TYEIiXnkw55Wur/o4bjtJWUKGpAzsksscSfv2CC5vdEG0rg4BUwFBIH5CPNouXys2
	mRwnNCq9bscbB3DaSGNuui/NIOT4Hty+Cgf3yYoBE8GoigHPVMMzLsk2Ist9k2Qmbd8Z
	8qnz+0Ht7EKydTjFv169UFR7UOPzEQAU5bdBqh563Lv8kkaBR4aKsU9EasUhKF6SOi7v
	WUkQ==
X-Gm-Message-State: ABUngvdyA5kyBydtQ215eNFwVk1AA1Ecr/fv+VHBlduLvv5LkawF8e23hIYQh6xkDfbrYnRmBYOXZHaPpB3zFA==
X-Received: by 10.159.35.208 with SMTP id 74mr6265778uao.33.1478557374298;
	Mon, 07 Nov 2016 14:22:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.67.72 with HTTP; Mon, 7 Nov 2016 14:22:53 -0800 (PST)
In-Reply-To: <43D47051-BE64-4A56-B81C-55199BB744FB@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
	<CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
	<CAJTo0LaPzszzTCuTaPC-KC+bNnFobKsMwAaq6e9bYpHOvHS02Q@mail.gmail.com>
	<43D47051-BE64-4A56-B81C-55199BB744FB@gmail.com>
From: Brian Avery <avery.brian@gmail.com>
Date: Mon, 7 Nov 2016 14:22:53 -0800
Message-ID: <CAKV_0egdSx5BFePgdxaqmkttGb7DPPWOGRgBytLYpXu7BjSf_A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Mon, 07 Nov 2016 22:22:57 -0000
Content-Type: multipart/alternative; boundary=94eb2c03cad0133f190540bd7752

--94eb2c03cad0133f190540bd7752
Content-Type: text/plain; charset=UTF-8

To add more options, there's also a set of CROPS (YP subproject)  Docker
containers aimed at supporting a general build environment for YP, one
aimed at the extensible sdk, and several for toaster depending on the
desired version.

poky/oe:
https://hub.docker.com/r/crops/poky/

extensible-sdk:
https://github.com/crops/extsdk-container

toaster:
https://hub.docker.com/r/crops/toaster/  (last official release)
https://hub.docker.com/r/crops/toaster-krogoth/
https://hub.docker.com/r/crops/toaster-morty/
https://hub.docker.com/r/crops/toaster-master/




There are instructions for using the CROPS containers on Mac & Windows as
well.
https://github.com/crops/docker-win-mac-docs/wiki

BR,
Brian
an intel employee





On Tue, Nov 1, 2016 at 4:35 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Nov 1, 2016, at 4:22 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
>
> On 1 November 2016 at 22:20, Daniel. <danielhilst@gmail.com> wrote:
>
>> Just as a note, I've been using archlinux for about a year and have never
>> faced "distro related problems", except when the gcc6 comes out. Anyway I'm
>> using daisy in my work. I think that making old releases supported by X
>> distro doesn't make any sense...
>>
>
> The supported list of distros is just the list of distros that are known
> to work, and if something breaks then we'll notice and fix it.  If you want
> to use arch and face the periodic problems such as new toolchain meaning
> you can't build gcc-cross, then go for it.
>
>
> Another option perhaps is to use a debian stable container with docker (
> https://hub.docker.com/r/cbrake/oe-build/)
> and you can use your favorite distro for stuff you usually do and at same
> time let OE/YP build on  a known/supported distro e.g.
> Its a bit of mind shift but I am happily using it, while my distro stays
> bleeding edge arch.
>
> e.g. see
>
> http://bec-systems.com/site/1281/using-docker-for-oeyocto-builds
>
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c03cad0133f190540bd7752
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>To add more options, there&#39;s also a set=
 of CROPS (YP subproject) =C2=A0Docker containers aimed at supporting a gen=
eral build environment for YP, one aimed at the extensible sdk, and several=
 for toaster depending on the desired version.<div><br></div><div>poky/oe:<=
/div><div><a href=3D"https://hub.docker.com/r/crops/poky/">https://hub.dock=
er.com/r/crops/poky/</a><br></div><div><br></div><div>extensible-sdk:</div>=
<div><a href=3D"https://github.com/crops/extsdk-container">https://github.c=
om/crops/extsdk-container</a><br></div><div><br></div><div>toaster:</div><d=
iv><a href=3D"https://hub.docker.com/r/crops/toaster/">https://hub.docker.c=
om/r/crops/toaster/</a> =C2=A0(last official release)</div><div><a href=3D"=
https://hub.docker.com/r/crops/toaster-krogoth/">https://hub.docker.com/r/c=
rops/toaster-krogoth/</a><br></div><div><a href=3D"https://hub.docker.com/r=
/crops/toaster-morty/">https://hub.docker.com/r/crops/toaster-morty/</a></d=
iv><div><a href=3D"https://hub.docker.com/r/crops/toaster-master/">https://=
hub.docker.com/r/crops/toaster-master/</a><br></div><div><br></div><div><br=
></div><div><br></div><div><br></div><div>There are instructions for using =
the CROPS containers on Mac &amp; Windows as well.</div><div><a href=3D"htt=
ps://github.com/crops/docker-win-mac-docs/wiki">https://github.com/crops/do=
cker-win-mac-docs/wiki</a><br></div><div><br></div><div>BR,</div><div>Brian=
</div><div>an intel employee</div><div><br></div><div><br></div><div><br></=
div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Tue, Nov 1, 2016 at 4:35 PM, Khem Raj <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap=
:break-word"><br><div><span class=3D""><blockquote type=3D"cite"><div>On No=
v 1, 2016, at 4:22 PM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel=
.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:</div><br class=
=3D"m_-1415027586015102904Apple-interchange-newline"><div><div dir=3D"ltr">=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1 November 201=
6 at 22:20, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gma=
il.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div>Just as a note, I&#39;ve been using archl=
inux for about a year and have never faced &quot;distro related problems&qu=
ot;, except when the gcc6 comes out. Anyway I&#39;m using daisy in my work.=
 I think that making old releases supported by X distro doesn&#39;t make an=
y sense...<br></div></blockquote></div><br></div><div class=3D"gmail_extra"=
>The supported list of distros is just the list of distros that are known t=
o work, and if something breaks then we&#39;ll notice and fix it.=C2=A0 If =
you want to use arch and face the periodic problems such as new toolchain m=
eaning you can&#39;t build gcc-cross, then go for it.=C2=A0</div></div></di=
v></blockquote><div><br></div></span><div>Another option perhaps is to use =
a debian stable container with docker (<a href=3D"https://hub.docker.com/r/=
cbrake/oe-build/" target=3D"_blank">https://hub.docker.com/r/<wbr>cbrake/oe=
-build/</a>)</div><div>and you can use your favorite distro for stuff you u=
sually do and at same time let OE/YP build on =C2=A0a known/supported distr=
o e.g.</div><div>Its a bit of mind shift but I am happily using it, while m=
y distro stays bleeding edge arch.</div><div><br></div><div>e.g. see</div><=
div><br></div><div><a href=3D"http://bec-systems.com/site/1281/using-docker=
-for-oeyocto-builds" target=3D"_blank">http://bec-systems.com/site/<wbr>128=
1/using-docker-for-oeyocto-<wbr>builds</a></div><br><blockquote type=3D"cit=
e"><div><div dir=3D"ltr"><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div><span class=3D"">
-- <br>______________________________<wbr>_________________<br>yocto mailin=
g list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo=
/yocto" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yoct=
o</a><br></span></div></blockquote></div><br></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c03cad0133f190540bd7752--
