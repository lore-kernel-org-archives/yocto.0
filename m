Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 295DFE00A28; Wed, 22 Jul 2015 06:26:52 -0700 (PDT)
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
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DADFEE009DF
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 06:26:45 -0700 (PDT)
Received: by qged69 with SMTP id d69so73136179qge.0
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 06:26:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=J+arZgdx0igxtGYr4tyD59YZNgm+bnrz7VmCDiqSui8=;
	b=JGFoLDkUvTpUJWjSrbE6ScQR27003Uv8MdVuqfrdz+W6FXOPMF5pdbL2t6lB7gia5X
	wnfHVo2iyaBKw9S2JN5b9dekJn3idaPLu804PKvGe98XZ0okmGooWcRlk7MYed1JxfhV
	pg6JYUnCB2lVUVIo/iNphy/3067O0LHaPFYRn3fN1HRzUbaZWfNP7jtpalMq8g9ReFJB
	10xeHA7IpfnwO6ZTjhuFWaCvIny09xFrmJ7PoXTGBSE1Os9qxKeyvw3yiwkTtdhLtyag
	S/O8d/T8Xg7g31jmVkfvVHrgP4TvQmzvXRJg75ZVmzdWO4rbJ59BPVWE1oldwjCtO18a
	RXSQ==
X-Gm-Message-State: ALoCoQlz/7Prk7TcxuKmqkJS/jAyaoGHXRBilHGmA+5tnLtU8GZQoCldHPRzbmmXZL7Sssbkvjan
X-Received: by 10.140.231.19 with SMTP id b19mr3626228qhc.22.1437571605191;
	Wed, 22 Jul 2015 06:26:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Wed, 22 Jul 2015 06:26:25 -0700 (PDT)
In-Reply-To: <CAF3SDA4myioYp5a1b4iouOzTeww-na8XMR7-i8-EQ5Tw7+RLWg@mail.gmail.com>
References: <CAF3SDA4myioYp5a1b4iouOzTeww-na8XMR7-i8-EQ5Tw7+RLWg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jul 2015 14:26:25 +0100
Message-ID: <CAJTo0LaDY0SmXhgSAWyCwnWoiZjLdXf5e4VXdWFznYQ6O2bW_g@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Wireless connection wizard.
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
X-List-Received-Date: Wed, 22 Jul 2015 13:26:52 -0000
Content-Type: multipart/alternative; boundary=001a11c12f00dde9b4051b76b8ba

--001a11c12f00dde9b4051b76b8ba
Content-Type: text/plain; charset=UTF-8

On 22 July 2015 at 14:07, Daniel. <danielhilst@gmail.com> wrote:

> I want to know if is there any wifi connection/configuration wizard
> (GUI) available on Yocto. I'm using Dizzy release. I got wireless
> working with wpa_supplicant configuration using an TPLINK TL-WN722N
> but now I need to easy configuration for end user. On desktop I use
> wicd, but I can't find any recipe for it. Any suggestion?
>

core-image-sato uses connman-gnome to add a UI around ConnMan, which you
may be able to use.

Ross

--001a11c12f00dde9b4051b76b8ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 July 2015 at 14:07, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:d=
anielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":zy" class=3D"a3s" st=
yle=3D"overflow:hidden">I want to know if is there any wifi connection/conf=
iguration wizard<br>
(GUI) available on Yocto. I&#39;m using Dizzy release. I got wireless<br>
working with wpa_supplicant configuration using an TPLINK TL-WN722N<br>
but now I need to easy configuration for end user. On desktop I use<br>
wicd, but I can&#39;t find any recipe for it. Any suggestion?</div></blockq=
uote></div><br>core-image-sato uses connman-gnome to add a UI around ConnMa=
n, which you may be able to use.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a11c12f00dde9b4051b76b8ba--
