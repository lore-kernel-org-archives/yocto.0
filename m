Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0B09E002AC; Fri, 13 Feb 2015 23:53:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE902E00288
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 23:53:42 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id c9so5870412qcz.5
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 23:53:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=N4mkZUifiLaefQIlK7kBjwXvDSJ8y4L9cQlTKRJ2430=;
	b=EcapvYdkDdFOu2LTYmotK0uv7+tXZSbh53IHkMMEzJlD1QIsEJYlSJUFD+/z36aKun
	O8cyUAAb57IwUKTZg3/Q03SlTR0atj+2d2NtVlnD4WHVMBG5j/eA1FYBUwJWrf/NeesU
	5O+XKL2xNwnWJkOvbKpBq62MFAdjizrPNGXQeqzz2fqW+eUvIr2roF7fCwt0BOAgFSrG
	UYb4Ght9VjBVRU8MzOQu3QROjhYAHB2tGhYdrYvxfZFzCA5g/kKyu1VMVa5bxUlUXcqB
	eHO3urtQuJzc6uA/HZudh5dyHK0lBiUlVYQT4cg0Uv5dJlz/jQbOXtx+vQwGBhg3286a
	6yeQ==
X-Gm-Message-State: ALoCoQk8/9xiRMZIwiC2iZkzCFp7VBezMo10F2TrMyFgmz6cTRZhrAMeit5lgTBuUJF4J/Vthz8K
X-Received: by 10.140.133.69 with SMTP id 66mr4249090qhf.17.1423900422440;
	Fri, 13 Feb 2015 23:53:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Fri, 13 Feb 2015 23:53:22 -0800 (PST)
In-Reply-To: <CAMKF1sqjQm+n5xKfS0utm9B9h_S+RYWrgnGUCboRNCk5XSUmzg@mail.gmail.com>
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
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 14 Feb 2015 07:53:22 +0000
Message-ID: <CAJTo0LZDh+nk6_JBbE7HEzqa8YVtorBXPvXMw+ne_fVekSbymg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Dan McGregor <danismostlikely@gmail.com>,
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
X-List-Received-Date: Sat, 14 Feb 2015 07:53:47 -0000
Content-Type: multipart/alternative; boundary=001a1136fdeee02452050f07a697

--001a1136fdeee02452050f07a697
Content-Type: text/plain; charset=UTF-8

Hi Khem,

On 12 February 2015 at 07:35, Khem Raj <raj.khem@gmail.com> wrote:

> I have refreshed the branch to include the patch which moves the src
> uri to use the newly released glibc 2.21 branch
> and please run it via autobuilder ( top 5 commits )
>

I did a preliminary test on my local build machines (core-image-sato-sdk on
all arches), and valgrind fails with "unsupported version 2.21, Valgrind
requires glibc 2.2 - 2.19".

Ross

--001a1136fdeee02452050f07a697
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Khem,</div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 12 February 2015 at 07:35, Khem=
 Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"=
_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div id=3D":p57" class=3D"a3s" style=3D"overflow:hidden">I have ref=
reshed the branch to include the patch which moves the src<br>
uri to use the newly released <span class=3D"il">glibc</span> 2.21 branch<b=
r>
and please run it via autobuilder ( top 5 commits )</div></blockquote></div=
><br>I did a preliminary test on my local build machines (core-image-sato-s=
dk on all arches), and valgrind fails with &quot;unsupported version 2.21, =
Valgrind requires glibc 2.2 - 2.19&quot;.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1136fdeee02452050f07a697--
