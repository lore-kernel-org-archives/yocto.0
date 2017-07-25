Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78819E00BC0; Tue, 25 Jul 2017 07:21:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D5A7E00B76
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 07:21:06 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id h199so51957011ith.1
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 07:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gXogqogpKl369zsNOlPkvz5NZBnXpiVvPS1R9QXlDiA=;
	b=LZ6sQNN7s1E43Dbtz/b0I7AguoeVp9mfrQX/Hr6x3PHJsvkboqjGjDJPF6K81s3JGI
	0IL1Xdan5WlcTdtnm28SwfN3p7Ua/tesKOH8vSWwfn+P6hQu34sDifqmSDO/Tne/2ZDv
	uexxLNVNa8O4zi7SpJSEx9iEMd5c+m9XX830PBgaY6n3PXky7vTosulvPNI+S2HS9uwK
	JkoRUL6nMrTwDrriFKocGt+CnscVS5GognFeTh6hDPNh8pHlRV+F9GoetmHmH71s2YWJ
	V15LPCFV7pukSF0ebKnYCGRS6OX1pKeTlO7zS17WxaEPFp0SkCSHAyNNstMkPmFO7x41
	WoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gXogqogpKl369zsNOlPkvz5NZBnXpiVvPS1R9QXlDiA=;
	b=Ry+oHi5V/b4717yjlmqoTqJKTMD1AIIL0h/vtxf4Nan23VrwuYyd3bZplG2ZVc1XSN
	/iZTvovOIH+vkolz7sd2WzLOkAcZrPMlpmzu48haJa2GwA5my3Fbkj0SM5qzqeadhyEI
	r9rG2zM8eOyuxW04h9Sx0lajvisQ2YRP+jOHg0UhasUU87CiXmcrNVQHmkrUJWUth16c
	rTxZo5KMp94TfrH+LTgC3rDU1Jkce8wDwuc/MYyZ0E8/NsvMA+iGZoMWWM2yMutAO32d
	H+J+hpPMEcVcFSec9AQsrFmFIOvOPJ/H1dUwCCJO6P4ZNXmNJFUsgMQN0tImhX2FL5Of
	Iufw==
X-Gm-Message-State: AIVw112MdSK/odoQQDrW3+YilqRqq3KLNqEq4I7QBFXJrqIbQi4VBoLP
	jDdnH3mZOwDFfd2GDh2FSoSDZd2EZRv9
X-Received: by 10.36.201.198 with SMTP id h189mr10827024itg.113.1500992465752; 
	Tue, 25 Jul 2017 07:21:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Tue, 25 Jul 2017 07:20:45 -0700 (PDT)
In-Reply-To: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
References: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Jul 2017 15:20:45 +0100
Message-ID: <CAJTo0LZDPfqeZhpg1uZ+s5tis_rPj-MN6D1jFc76aUA02LmSZQ@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems with 'configure' on own recipe [after moving to morty]
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
X-List-Received-Date: Tue, 25 Jul 2017 14:21:08 -0000
Content-Type: multipart/alternative; boundary="94eb2c089360bb73a90555250ada"

--94eb2c089360bb73a90555250ada
Content-Type: text/plain; charset="UTF-8"

On 25 July 2017 at 15:08, <colin.helliwell@ln-systems.com> wrote:

> This is gonna be a bit of a hard one to describe concisely, but hoping
> someone can advise me on solving it....
> I have a recipe of my own for an app (NetworkManager) which fetches the
> source from its git repo. This recipe works on krogoth, but is throwing up
> configure errors on morty.
>

For a start, why not use the recipe from meta-oe?


> The recipe has a
> do_configure_prepend() {
>     ( cd ${S} ; NOCONFIGURE=yes ./autogen.sh )
> }
>   - I seemed to need this because the git source has no ABOUT-NLS; not sure
> if that's the correct fix, but 'it seemed to work' before.
>

If the only thing that is missing is an ABOUT-NLS file (sounds like
something gettext should have installed?) then I'd just have a prepend that
touches that file, and let autotools.bbclass invoke autoreconf for you.


> I'm also getting a lot of:
> | NOTE: Skipping setscene dependency
> virtual:native:/home/colin/100051-trunk/fsl-community-
> bsp/sources/poky/meta/
> recipes-devtools/pseudo/pseudo_1.8.1.bb:do_populate_sysroot for m4 macro
> copying
>
>   - not sure if this is relevant/important
>
> Freely admit I'm no autotools expert, so any suggestions welcome! Thanks
>

That's just verbose logging from the recipe-specific-sysroot code, you can
ignore it.

Ross

--94eb2c089360bb73a90555250ada
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 25 July 2017 at 15:08,  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:colin.helliwell@ln-systems.com" target=3D"_blank">colin.helliwel=
l@ln-systems.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">This is gonna be a bit =
of a hard one to describe concisely, but hoping<br>
someone can advise me on solving it....<br>
I have a recipe of my own for an app (NetworkManager) which fetches the<br>
source from its git repo. This recipe works on krogoth, but is throwing up<=
br>
configure errors on morty.<br></blockquote><div><br></div><div>For a start,=
 why not use the recipe from meta-oe?</div><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
The recipe has a<br>
do_configure_prepend() {<br>
=C2=A0 =C2=A0 ( cd ${S} ; NOCONFIGURE=3Dyes ./autogen.sh )<br>
}<br>
=C2=A0 - I seemed to need this because the git source has no ABOUT-NLS; not=
 sure<br>
if that&#39;s the correct fix, but &#39;it seemed to work&#39; before.<br><=
/blockquote><div><br></div><div>If the only thing that is missing is an ABO=
UT-NLS file (sounds like something gettext should have installed?) then I&#=
39;d just have a prepend that touches that file, and let autotools.bbclass =
invoke autoreconf for you.</div><div>=C2=A0<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">I&#39;m also getting a lot of:<br>
| NOTE: Skipping setscene dependency<br>
virtual:native:/home/colin/<wbr>100051-trunk/fsl-community-<wbr>bsp/sources=
/poky/meta/<br>
recipes-devtools/pseudo/<wbr>pseudo_1.8.1.bb:do_populate_<wbr>sysroot for m=
4 macro<br>
copying<br>
<br>
=C2=A0 - not sure if this is relevant/important<br>
<br>
Freely admit I&#39;m no autotools expert, so any suggestions welcome! Thank=
s<br></blockquote><div><br></div><div>That&#39;s just verbose logging from =
the recipe-specific-sysroot code, you can ignore it.</div><div><br></div><d=
iv>Ross=C2=A0</div></div></div></div>

--94eb2c089360bb73a90555250ada--
