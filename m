Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 759FFE008DD; Tue, 27 Jan 2015 04:33:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3546BE008BC
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:32:51 -0800 (PST)
Received: by mail-qc0-f170.google.com with SMTP id p6so11643939qcv.1
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:32:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Bp9O/Cq0vY8UgFssqJQwTpIAVQKKvYMqnfurKxdPKN4=;
	b=agnSCucNpvEf+ROJzSBxT5fAHnO3QRIvnSgIQaAI/5JW3lABWiXLy/zlQ7sPDsth3T
	mjWmuHa99Cdm/Az0zePq42xU3KSPJ11qfch4VPZXrZBaJMKknWJOzJ65tHfWam3Xo/xl
	qqr3Fy1qH3nMkNix7xW8U6PyBCZKIuaNP8GyQBrzN+fd9GifnUccmB0vY/mrDuqUVMsj
	X1z2tHTbUVFBCB0+ZG/zWifE5DJb2AD+Gm9WDJ3LJV5OvJatosmwrn0sozysnUXrBugM
	cBk/YkNSFkFTG1jX7jLMNXGuRTJ3XCfBLouscRgt5WK+VII9SIONmokJTCzOdbbabS0R
	F3YA==
X-Gm-Message-State: ALoCoQlBTJXRASdd1ymnw3ueZzlh/9xnLsdCECz99Cpw1XIDoPuTRrS8GtTRoFQ4B7jZaxJmo31B
X-Received: by 10.140.39.179 with SMTP id v48mr1366606qgv.77.1422361970562;
	Tue, 27 Jan 2015 04:32:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 27 Jan 2015 04:32:30 -0800 (PST)
In-Reply-To: <23F077AC-43FF-472B-B9D0-A30785E7557A@gmail.com>
References: <23F077AC-43FF-472B-B9D0-A30785E7557A@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 27 Jan 2015 12:32:30 +0000
Message-ID: <CAJTo0LbHT2Pksxog-aaHravsy9sqyK1pdqz+rhsDWUGkX_7FTQ@mail.gmail.com>
To: Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Google Chrome recipe and systemd => how to satisfy runtime requirement for libudev.so.0?
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
X-List-Received-Date: Tue, 27 Jan 2015 12:33:02 -0000
Content-Type: multipart/alternative; boundary=001a11c131f6ff9e79050da173df

--001a11c131f6ff9e79050da173df
Content-Type: text/plain; charset=UTF-8

On 27 January 2015 at 11:46, Timo Pulkkinen <timo.j.pulkkinen@gmail.com>
wrote:

> i'm trying to create a recipe for Google Chrome for my first Yocto project
> for Intel NUC (based on the Chrome rpm package). The recipe seems to build
> ok, and I was able to
> build a working system using sysvinit, but when I enabled systemd the
> image build stops during do_rootfs when requirement for libudev.so.0 is not
> satisfied.
>
> error: Can't install google-chrome-40.0.2214.91+1-r0@x86_64: no package
> provides libudev.so.0()(64bit)
>

My guess is that you didn't wipe away your tmp when changing
DISTRO_FEATURES, which leads to the sysroot and package deploy directories
having both udev and systemd in.

Try deleting your tmp/ directory (sstate-cache will be used to rebuild
everything quickly) and then cleaning Chrome (bitbake -ccleansstate
google-chrome) before building the image again.

Ross

--001a11c131f6ff9e79050da173df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 January 2015 at 11:46, Timo Pulkkinen <span dir=3D"ltr">&lt;<a href=
=3D"mailto:timo.j.pulkkinen@gmail.com" target=3D"_blank">timo.j.pulkkinen@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":1jk" class=3D"a3s" style=3D"overflow:hidden">i&#39;m trying to create =
a recipe for Google Chrome for my first Yocto project for Intel NUC (based =
on the Chrome rpm package). The recipe seems to build ok, and I was able to=
<br>
build a working system using sysvinit, but when I enabled systemd the image=
 build stops during do_rootfs when requirement for libudev.so.0 is not sati=
sfied.<br>
<br>
error: Can&#39;t install google-chrome-40.0.2214.91+1-r0@x86_64: no package=
 provides libudev.so.0()(64bit)</div></blockquote><div><br></div><div>My gu=
ess is that you didn&#39;t wipe away your tmp when changing DISTRO_FEATURES=
, which leads to the sysroot and package deploy directories having both ude=
v and systemd in.</div><div><br></div><div>Try deleting your tmp/ directory=
 (sstate-cache will be used to rebuild everything quickly) and then cleanin=
g Chrome (bitbake -ccleansstate google-chrome) before building the image ag=
ain.</div><div><br></div><div>Ross</div></div></div></div>

--001a11c131f6ff9e79050da173df--
