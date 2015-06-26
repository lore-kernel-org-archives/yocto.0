Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D6E2E00A76; Fri, 26 Jun 2015 06:17:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03B5E00A53
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 06:17:44 -0700 (PDT)
Received: by qgem68 with SMTP id m68so944474qge.0
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 06:17:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=f5bvPPPNbzdY0MlmCifK/L8JGxK5ikbcjiNDTOVi9OY=;
	b=N0Cvf3pa4FOXRGqY9DiH/1TwjcKkNtuMNLIY3UP37ngzm2Tu1jyILpfzKj8axsaoU6
	i04TgrVPtL4K7g6goJir3Od48GlF8RcAL3wtyu8Bx47kCJGBR9vyef3UChIFy3FN6RBD
	sJJXwMmHdhZ8HJsDAd3vHJ77Z7bNrhHvT7YwbrvMXkqGPqSkZl2EBL4xrO4bpd04coFn
	ItYVFd0cJCMnSk0O/B9JmA8OeqqzWyhJjLRlDo2A2SBKkwOkpenuNPKm4INK10d9MXUR
	/rqaZXp7F+jwzewZ32bvr9+O9USK+dxG9kozYE8yABlWmtphItqPQN4gF4Fzu2uncs5b
	KFDQ==
X-Gm-Message-State: ALoCoQmmEq2AgjnBMnFlcda2gBx9HPei4VnCjC+fCNxLIbANTvql/h6IkfwV2gFEAJQgHUyEhhhq
X-Received: by 10.140.196.129 with SMTP id r123mr2142903qha.93.1435324663731; 
	Fri, 26 Jun 2015 06:17:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 26 Jun 2015 06:17:24 -0700 (PDT)
In-Reply-To: <558C5E43.6010709@linux.intel.com>
References: <558C5E43.6010709@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jun 2015 14:17:24 +0100
Message-ID: <CAJTo0LZ_zE0ZZcAaSRJyN6wN4rKH35oRwUj4bvkH1VOSfTy1uw@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [poky] Automatic Upgrade Helper Announcement
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
X-List-Received-Date: Fri, 26 Jun 2015 13:17:48 -0000
Content-Type: multipart/alternative; boundary=001a11433952b8316a05196b9043

--001a11433952b8316a05196b9043
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 25 June 2015 at 21:02, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.=
com> wrote:

> I'm glad to announce the enabling of Automatic Upgrade Helper (a.k.a.
> AUH), the AUH is a service
> that provides recipe upgrades and will be run on weekly basis.
>

Excellent news, thanks Anibal for working on this!

(one day I'll figure out where i-acute is on my keyboard)

Ross

--001a11433952b8316a05196b9043
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 June 2015 at 21:02, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.limon@=
linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v id=3D":3j1" class=3D"a3s" style=3D"overflow:hidden">I&#39;m glad to annou=
nce the enabling of Automatic Upgrade Helper (a.k.a. AUH), the AUH is a ser=
vice<br>
that provides recipe upgrades and will be run on weekly basis.<br></div></b=
lockquote></div><br>Excellent news, thanks Anibal for working on this!</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(one day I=
&#39;ll figure out where i-acute is on my keyboard)</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11433952b8316a05196b9043--
