Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84950E002AC; Sat, 14 Feb 2015 05:09:25 -0800 (PST)
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
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E92BE00288
	for <yocto@yoctoproject.org>; Sat, 14 Feb 2015 05:09:20 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id q107so17301550qgd.6
	for <yocto@yoctoproject.org>; Sat, 14 Feb 2015 05:09:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mTP15OGQaSWXyMIVQkKvD+M0S6ql/b8F4pin5Xx/eaY=;
	b=hVwbnX/CPLe4YakpawLvdv73Qlp3tYjSVQDHo2k2WzIGiRZe3bABvCta++DxtYnc7q
	kgx6HrHCTcm17UOXhKzb4F7qIB8sVSF7MBqbpikyi7Ze27wZiB54NRTF22r6P9r4sN7e
	ol7PecKulnOLSDFzizkhvkgt8koOkO7TfEo2YfoL6kGGY/a1/LSXtFnPNGsG7Aq1z3An
	0y1ZeqBNkT3tHlOtkHE9P5RlmCT7jtRLIrEyZAORbaTijC1EfD2BNk5xahuP4weLTOfr
	G4BG09rUpVbV1e0UtNygkeJbZ6IASxC5nd0Zzt0WYMmRK1bkR+C3jR3xp81ESfdPTy7R
	ksiw==
X-Gm-Message-State: ALoCoQkqaKghat/VUc4b7IlPEy7EL6tlwtvjO9/L3eNvXticgtodPu78T3ScSiSQjqeAcwolZJM1
X-Received: by 10.140.133.69 with SMTP id 66mr6674483qhf.17.1423919359590;
	Sat, 14 Feb 2015 05:09:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Sat, 14 Feb 2015 05:08:59 -0800 (PST)
In-Reply-To: <1423908404.20217.100.camel@linuxfoundation.org>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
	<CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
	<80920FD0-CA08-45D7-9A41-3971FB2D58D7@gmail.com>
	<CAJTo0LbqTrQzk0KeHDxYnmtZrrFdZD12DWrjA=Y4RtbQzwM0ow@mail.gmail.com>
	<CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
	<CACS+7ZRNm2Y0SJn76imF6DNoEsL2+ppC1zG45iGspOmL0EN0BQ@mail.gmail.com>
	<CAMKF1sqjQm+n5xKfS0utm9B9h_S+RYWrgnGUCboRNCk5XSUmzg@mail.gmail.com>
	<1423908404.20217.100.camel@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 14 Feb 2015 13:08:59 +0000
Message-ID: <CAJTo0La6i2hDqPcZFjvrcPsRReNhirfsbOxD-_udJJDQ7YrKhw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Sat, 14 Feb 2015 13:09:25 -0000
Content-Type: multipart/alternative; boundary=001a1136fdee9e206d050f0c0f12

--001a1136fdee9e206d050f0c0f12
Content-Type: text/plain; charset=UTF-8

Hi,

On 14 February 2015 at 10:06, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Right now, poky-tiny failed due to warning are errors and unused
> symbols. Minnow failed due to SSE instruction issues. Full build logs
> are also available on the autobuilder:
>

Now those SSE errors I thought were fixed - is this more of the same or did
I manage to drop a patch when merging?

Ross

--001a1136fdee9e206d050f0c0f12
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On 14 February 2015 at 10:06, Richard P=
urdie <span dir=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundatio=
n.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div id=3D":q68" class=3D"a3s" sty=
le=3D"overflow:hidden">Right now, poky-tiny failed due to warning are error=
s and unused<br>
symbols. Minnow failed due to SSE instruction issues. Full build logs<br>
are also available on the autobuilder:</div></blockquote></div><br>Now thos=
e SSE errors I thought were fixed - is this more of the same or did I manag=
e to drop a patch when merging?</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a1136fdee9e206d050f0c0f12--
