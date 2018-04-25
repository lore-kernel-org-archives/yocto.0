Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98A6BE00B57; Wed, 25 Apr 2018 01:49:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 606F9E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:49:05 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id e78-v6so13387765iod.0
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=dteJR+0eyk9JNpLujydNfqnCumqs6eueNHdPYSFdzRQ=;
	b=aumcIiNqXK0cMLE8bKf0AM6TQS7KCsCX3Kg6TogWhdiJ5zXg/mUAZ/UebMpWUoA+xE
	YsHExkpILtsn3/JCASqiXDZSERlUGhQAxSaCStqufRUIbZqfQxI3KihIRldZu1qt3JYm
	COvhFM+GKn2YDuNoUhb85wVsgBKdqgQ24JpxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=dteJR+0eyk9JNpLujydNfqnCumqs6eueNHdPYSFdzRQ=;
	b=GYmAj1/QQLxGOpRobFzj4H145ykrG1PGN65NecqO3p5fQWV3Nf6wyLSvXJHWs6+uX+
	uq12L922Ve+sC34dbDEXwBh1WoSnROTUo5lEMArDhei1hq/XgK/ZLfBfIgUd1RvjVw1P
	yOm5oxvz7VlwWD8qU5aVCn2cESiXf5MSBrGigNbDFTAwEKfOIp987DSahnd05g28Xveh
	6Bay4vI0c3J9KZhDgtqOkVZ+bhWA38+26lqEby++Ty1xVNGKouTgAh/CowXSGyYkg7wu
	WKG6HPCvLWcrmhsWbPnr9mAdPAUgIIq6tb+47tWnTwCOzcHsQpYwqGvhKxVjbnFeMztV
	kzIA==
X-Gm-Message-State: ALQs6tCd9Bh1h+ic/5wNyhPijOod6sWJGJiwS69buYIdCpAbngV++JC6
	O9OXa9qsU+4QZA0G/KYrbbAibC810Uq2wSgLUU/qv4bw
X-Google-Smtp-Source: AB8JxZpVUY3uZmRBXA/bZh/e9mt6u5UxD44bsCVxJg/eNZo4sl16IMD1IH7by7ZsF2/kGCPSOPb/kgC4Xe7JzPPaxGc=
X-Received: by 2002:a6b:2755:: with SMTP id
	n82-v6mr30503625ion.74.1524646144884; 
	Wed, 25 Apr 2018 01:49:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6664:0:0:0:0:0 with HTTP; Wed, 25 Apr 2018 01:49:04
	-0700 (PDT)
In-Reply-To: <CAALXFYxaTYfwDwfVR4dYDTePYyePinxjk-w13OXYn5PL2GNT3g@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
	<CAALXFYxrWHrsJTKApWahyeXmjnAGXUfvc+ffmgfNGhjyvcTwcw@mail.gmail.com>
	<CAJTo0LaMzWdr3c5siBv2CU2p-ZWCcRi06khNmMFgT-0PV0+17w@mail.gmail.com>
	<CAALXFYxaTYfwDwfVR4dYDTePYyePinxjk-w13OXYn5PL2GNT3g@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 25 Apr 2018 10:49:04 +0200
Message-ID: <CAALXFYzajwT1JCORJ2ZMzxjzksm67HK_OVQVgkna=8Eu-=xSsw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Wed, 25 Apr 2018 08:49:08 -0000
Content-Type: multipart/alternative; boundary="000000000000dfd674056aa85757"

--000000000000dfd674056aa85757
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello again forum.

I plan using a PR service on different build scenarios (i.e. development,
production).

I think the right way to proceed is running a different PR server instance
listening on a different port for each scenary. So, a PR server instance
listening on port X for development and another PR server instance
listening on port Y for production.

However, a single shared PR server instance listening on a single unique
port Z could also be used.

Do you think it has sense to have a different PR server for each scenary?
Or a single shared PR sever should work fine for all different scenarios?

Thank you in advance! :-)


2018-04-24 8:45 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> That sounds really convincing, I will give it a chance and come back to
> describe the hole process after all. Thank you for that valuable
> information Mr. Ross
>
>

--000000000000dfd674056aa85757
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello again forum.<br></div><div><br></div><div><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">I plan using a PR service on different build scenarios=
 (<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">i.e. development, production).=C2=A0</span></sp=
an></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><br></spa=
n></span></div><div>I think the right way to proceed is running a different=
 PR server instance listening on a different port for each scenary. So, a P=
R server instance listening on port X for development and another PR server=
 instance listening on port Y for production.=C2=A0</div><div><br></div><di=
v>However, a single shared PR server instance listening on a single unique =
port Z could also be used.</div><div><br></div><div>Do you think it has sen=
se to have a different PR server for each scenary? Or a single shared PR se=
ver should work fine for all different scenarios?</div><div><br></div><div>=
Thank you in advance! :-)</div><div><br></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">2018-04-24 8:45 GMT+02:00 Iv=C3=A1n Castell <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"=
_blank">icastell@nayarsystems.com</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">That sounds really convincing, I will give it a c=
hance and come back to describe the hole process <span style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial;float:none;display:inline">=
after all</span>. Thank you for that valuable information Mr. Ross<span cla=
ss=3D""><div><div class=3D"gmail_extra"><br></div></div></span></div></bloc=
kquote><div><br></div><div><br></div><div><br></div></div>
</div></div>

--000000000000dfd674056aa85757--
