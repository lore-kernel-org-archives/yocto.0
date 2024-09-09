Return-Path: <radoslav.pesek@microstep-mis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84062ECE57A
	for <webhook@archiver.kernel.org>; Mon,  9 Sep 2024 14:24:14 +0000 (UTC)
Subject: Re: [yocto] esdk devtool finish workflow
To: "Adrian Freihofer" <adrian.freihofer@gmail.com>, yocto@lists.yoctoproject.org
From: "Radoslav Pesek" <radoslav.pesek@microstep-mis.com>
X-Originating-Location: Bratislava, SK (188.167.255.144)
X-Originating-Platform: Windows Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Sep 2024 07:24:04 -0700
References: <67a6de78ca24ef67f18cba5ea26678651aaad44e.camel@gmail.com>
In-Reply-To: <67a6de78ca24ef67f18cba5ea26678651aaad44e.camel@gmail.com>
Message-ID: <15381.1725891844505815590@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xYLweZgMuV5tQnFnoJmr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Sep 2024 14:24:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63803

--xYLweZgMuV5tQnFnoJmr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex, Adrian,

thanks for the explanation. I checked the slides, watched the video and tri=
ed this workflow (partially - didn't try deploy-target and finish), and it =
seems to work, but still have some questions:
* Alex, you write above: Classic esdk bundles will almost certainly not be =
developed further. - so am i getting this right, that there isn't gonna be =
a way to generate e/sdk installer in the future (and there will be only thi=
s workflow available)?
* Adrian, you write above: The second thing you need is a shared sstate-cac=
he. This feature is now available officially in Yocto. - do you mean by thi=
s publishing it via web server? So if have it published and it works for st=
andalone esdk, will it also work for this new devtool workflow under normal=
 yocto build environment? Do i need to do anything specific or will it work=
 out of the box when someone else creates their own yocto build enironment?
* in the presentation you talk about cmake and meson; what's the state of s=
upport for building recipes using other ways - for example makefiles and py=
thon packages (i tried to devtool modify and build a python app and it seem=
s to work)
* are there any plans to support other IDEs - specifically Eclipse? Or is i=
t difficult to add support for them on our own? Or, If i understood correct=
ly - if we use --ide=3Dnone, it means devtool just creates some scripts for=
 building/debugging and then we basically can use any IDE, right?
* what's the state of this new devtool workflow at the moment - do you have=
 any idea when it's gonna be officially released?

Thanks a lot for your time :)

--xYLweZgMuV5tQnFnoJmr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Alex, Adrian,</div>
<div>&nbsp;</div>
<div>thanks for the explanation. I checked the slides, watched the video an=
d tried this workflow (partially - didn't try deploy-target and finish), an=
d it seems to work, but still have some questions:</div>
<div>* Alex, you write above: Classic esdk bundles will almost certainly no=
t be developed further. - so am i getting this right, that there isn't gonn=
a be a way to generate e/sdk installer in the future (and there will be onl=
y this workflow available)?</div>
<div>* Adrian, you write above: The second thing you need is a shared sstat=
e-cache. This feature is now available officially in Yocto. - do you mean b=
y this publishing it via web server? So if have it published and it works f=
or standalone esdk, will it also work for this new devtool workflow under n=
ormal yocto build environment? Do i need to do anything specific or will it=
 work out of the box when someone else creates their own yocto build eniron=
ment?</div>
<div>* in the presentation you talk about cmake and meson; what's the state=
 of support for building recipes using other ways - for example makefiles a=
nd python packages (i tried to devtool modify and build a python app and it=
 seems to work)</div>
<div>* are there any plans to support other IDEs - specifically Eclipse? Or=
 is it difficult to add support for them on our own? Or, If i understood co=
rrectly - if we use --ide=3Dnone, it means devtool just creates some script=
s for building/debugging and then we basically can use any IDE, right?</div=
>
<div>* what's the state of this new devtool workflow at the moment - do you=
 have any idea when it's gonna be officially released?</div>
<div>&nbsp;</div>
<div>Thanks a lot for your time :)</div>
<div>&nbsp;</div>

--xYLweZgMuV5tQnFnoJmr--

