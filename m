Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4BB8E003C1; Tue, 28 Mar 2017 09:34:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E3D8E0030B
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 09:34:16 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id x35so68772640qtc.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 09:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9EBunyl/A6w43p58Oe+On1fNeblNQSo9JBVwUCSySY4=;
	b=eJj2DBA+TEj+sI4bnxb7rJbKQMQukJVHMIa/u3DMJxeIxs7Q4f3D6E+o+/8QcbgQHl
	3eB1C0J8LhCXcEGvZtLNHOw+CceustU+Ts4iPT7SuyBON0qmkOL67D+nkDY3fiWezOlE
	QCqf4CXjdHUwRaP6O1mNr/omeyL3BozqJ0UaXQSzWiU3onVmEtQALzuC5MbIEtBsRpDv
	SVW4R+jZUzVbSTqJJGgZmcgnAaWtgjLFjMsMNKzo3Dcg6PVby3V8eLxX68dyYr6yf1Ws
	yi5S7P0soMc+zpVKt3aO6fBI5gUvWpFWPNUpl3nTNQUmcdEy2Ad4ovmzSBSueFwpGbrG
	Vl6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9EBunyl/A6w43p58Oe+On1fNeblNQSo9JBVwUCSySY4=;
	b=Nw2WArvo0j3rLtOuDTGkidbkgFTc+etZcKBDsSSwxspkj0h591lJtIE+RBEtvaezhe
	X3508FxczJRf1C42x20JNQ4FvKRdR9Me9+KEDaP3Vo/+9T3ua156E/JqEz8AMzwWPfg2
	MbgGj9bC+7D2FElJTl9BZ/etm21xD3BgYN1huoUHzNAzvMmQFEwW03u4YmFjcDFBZD5B
	bNWNWtuG0sTWG8cNj60SjsdQ+k2Okcy209e+Qa/yrI+Fy1gq785B7UEMcv88DRPgCxzI
	j5GFk6r/zpJiBQL6sNejjC4EkjfZ04e0lE5BNxLGa3hu0XPedXPsjRMrwSFvWxDwfCbK
	hZQg==
X-Gm-Message-State: AFeK/H202vb8dIxUNM6DKsSnIfskB5SeawGZ/ndQ5o4uJZrQnEd5WAJPSyGvXjlm1nn7OkpMKjLuWhdopREQiHAV
X-Received: by 10.237.34.250 with SMTP id q55mr27639509qtc.144.1490718856348; 
	Tue, 28 Mar 2017 09:34:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 28 Mar 2017 09:33:55 -0700 (PDT)
In-Reply-To: <CA+S4H=Rt-2=gPhvZdu-oKsV7eyASvku4m+0whF8sm1fuJM3+iw@mail.gmail.com>
References: <CA+S4H=RD_i3vLVHBm0dQvVBJsqexvhuL6J8D3NDF0V45awCHow@mail.gmail.com>
	<CAMKF1sq--WQCrPpaJ_h9c9KENxtb6o=73X5YETsgn4tQNAMdiQ@mail.gmail.com>
	<CA+S4H=THx-EsuJ=GU=CHLsY-GEmvsMTj69ysNnHSVa+mrf83Og@mail.gmail.com>
	<CAMKF1srq5_2=9=DWd0H0RA201qcDJ+Hf4+etRmyB4-a6jjZZ6A@mail.gmail.com>
	<CA+S4H=QH2+iBuzcE9Bfnx0PZSbqj=LGpbZPQq4Op05FpEKWXHA@mail.gmail.com>
	<CA+S4H=QAE1Skn3wORV20atroWNa-FzOmrGvGo-ZffB3EtLa-Kg@mail.gmail.com>
	<CA+S4H=Rt-2=gPhvZdu-oKsV7eyASvku4m+0whF8sm1fuJM3+iw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Mar 2017 17:33:55 +0100
Message-ID: <CAJTo0Lbwtbc_grYBEuE=m32LfSYTN7NVYNSfj7nfJ83Wc0_R5g@mail.gmail.com>
To: Vadalasetti Sivanageswararao <vsivanagulu@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to enable c++11 support in yocto
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
X-List-Received-Date: Tue, 28 Mar 2017 16:34:20 -0000
Content-Type: multipart/alternative; boundary=001a113eea5ae50c60054bcd07f8

--001a113eea5ae50c60054bcd07f8
Content-Type: text/plain; charset=UTF-8

On 27 March 2017 at 05:58, Vadalasetti Sivanageswararao <
vsivanagulu@gmail.com> wrote:

> cc1plus: warning: include location "/usr/local/include" is unsafe for
> cross-compilation [-Wpoison-system-directories]
>

Your build is referring to host files so this is likely the problem.  This
is a bug in your sources, or recipe.

Ross

--001a113eea5ae50c60054bcd07f8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 March 2017 at 05:58, Vadalasetti Sivanageswararao <span dir=3D"ltr">&=
lt;<a href=3D"mailto:vsivanagulu@gmail.com" target=3D"_blank">vsivanagulu@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>cc1=
plus: warning: include location &quot;/usr/local/include&quot; is unsafe fo=
r cross-compilation [-Wpoison-system-directories]</div><div></div></blockqu=
ote></div><br>Your build is referring to host files so this is likely the p=
roblem.=C2=A0 This is a bug in your sources, or recipe.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113eea5ae50c60054bcd07f8--
