Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B43DE00750; Mon,  9 Mar 2015 12:58:54 -0700 (PDT)
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
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0F5CE003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 12:58:52 -0700 (PDT)
Received: by qcwr17 with SMTP id r17so17572223qcw.2
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 12:58:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4pk0/T4rI0Cl9yi6PcoizIqeP7SU38pFskhp7YopqAw=;
	b=LPMd58uIVcXpB+tspi6Tyio2sYRIA8FzJiSt27YvXH+Ww39z+xdTl6Ka96R+KR8fRp
	eHGkz/59bhAu9+X5rsEclXMhW4AlMk/esyelUKBQ8edY0aGIwAf5fVCakhis8cDgrMcU
	ZKvGqP0pHYb4TiHYIXf5zx1Tw3NVeR48x+ZRnGG9tJWtaba78MD40MbTM+k1Wpx5r0gr
	0NIwSWURKM2FYezgxkx1Hl8Ao3xrvxwZVN5me9ArHD+XnMHDVChg50Q+/4GSuvOYKF9w
	EkuKHUXQPG81ZPyFaClkRwnu9tex92HjcQEm1PJD5PdSEPRtpLcSN5GzSOFAHEowSQzd
	swkw==
X-Gm-Message-State: ALoCoQlpyF81WpTmuqPCEd/Ogzq5XwV+IBjV/hKSX+kcHve5+0FA9XATMDMOQMzSYb4OP5FHM3h4
X-Received: by 10.55.20.143 with SMTP id 15mr59060302qku.36.1425931132026;
	Mon, 09 Mar 2015 12:58:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 9 Mar 2015 12:58:31 -0700 (PDT)
In-Reply-To: <54FDFAFE.7020707@mail.bg>
References: <54FDF2EE.6070509@mail.bg>
	<BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
	<54FDFAFE.7020707@mail.bg>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Mar 2015 19:58:31 +0000
Message-ID: <CAJTo0LY3N=QsDhweBuSU9UEPV0j9YU=O1gaX=Dw0rAtrf0cQJw@mail.gmail.com>
To: Nikolay Dimitrov <picmaster@mail.bg>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 2 images with single Bitbake recipe
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
X-List-Received-Date: Mon, 09 Mar 2015 19:58:54 -0000
Content-Type: multipart/alternative; boundary=001a11400138996aca0510e07618

--001a11400138996aca0510e07618
Content-Type: text/plain; charset=UTF-8

On 9 March 2015 at 19:56, Nikolay Dimitrov <picmaster@mail.bg> wrote:

> bitbake myproduct-combined-image
>
> ...which should create 2 separate images.
>

If typing both is too much bother, have a recipe that just has
DEPENDS=myproduct-image myproduct-initramfs-image and stub out all the
other tasks so it doesn't do anything.

Ross

--001a11400138996aca0510e07618
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 March 2015 at 19:56, Nikolay Dimitrov <span dir=3D"ltr">&lt;<a href=3D=
"mailto:picmaster@mail.bg" target=3D"_blank">picmaster@mail.bg</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":62x" class=3D"a3s" =
style=3D"overflow:hidden">bitbake myproduct-combined-image<br>
<br>
...which should create 2 separate images.<br></div></blockquote><div><br></=
div><div>If typing both is too much bother, have a recipe that just has DEP=
ENDS=3Dmyproduct-image myproduct-initramfs-image and stub out all the other=
 tasks so it doesn&#39;t do anything.</div><div><br></div><div>Ross=C2=A0</=
div></div></div></div>

--001a11400138996aca0510e07618--
