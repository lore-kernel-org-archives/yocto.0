Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C2A2E00956; Thu, 21 May 2015 03:43:19 -0700 (PDT)
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
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D364E004F6
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 03:43:16 -0700 (PDT)
Received: by qkx62 with SMTP id 62so3134452qkx.3
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 03:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=isqqHbMhXLIxlHGPpFZNK1quBnft2cW+YSP8pQWe3QQ=;
	b=ZReu//o1FzqhnYwub8Uj+iqJYhkK5dddVReUOnTtMnTH8zP8R/aUaWIS6075MnxD8V
	eE7B6jpPXjgFBQ1FiNpdgfutRZmSL24JEvaR37AhgE5Yzy8FNIMwabAy8OhcKKCSD+1p
	9QUmzGD2wT7dHhEss0Mf0XDSmT+U7yQY9ve1y4fI4YM0cjaS+tEiGNS4is9O4nCuIPxR
	3ydY2CUFudzqVGT1bcjzVrSsmIgILj7SWg15paVfx99BumUsX27zOtZ1RCNx8VjdmHYR
	C7wL97lKpEW3R/bbiPJpJwzetdoJHeFs9ZVOpx8TIusWDepgr5uOrR60K4r1+4/mEOJw
	kzBQ==
X-Gm-Message-State: ALoCoQku0HWm4MKuregQBhuAxccoGvj1lTpwBstDnfNJ6VRpTORulJkIASDcnLk3Q1K7NaOn+z8e
X-Received: by 10.140.89.104 with SMTP id u95mr2574109qgd.15.1432204995814;
	Thu, 21 May 2015 03:43:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 21 May 2015 03:42:55 -0700 (PDT)
In-Reply-To: <CAJTo0LbHVrLM=Wt++3ue-VQ3KFB42tGaJUwFRW_UHfBDXuqc_w@mail.gmail.com>
References: <CAJTo0LbHVrLM=Wt++3ue-VQ3KFB42tGaJUwFRW_UHfBDXuqc_w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 May 2015 11:42:55 +0100
Message-ID: <CAJTo0Lbwf9KYYTxtAJCNbQ9=YU-PdBoYShg32ThL_GgkoGMobg@mail.gmail.com>
To: OE-core <openembedded-core@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Moving GStreamer 0.10 to meta-multimedia
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
X-List-Received-Date: Thu, 21 May 2015 10:43:19 -0000
Content-Type: multipart/alternative; boundary=001a11c135f6057e3505169536e6

--001a11c135f6057e3505169536e6
Content-Type: text/plain; charset=UTF-8

On 28 April 2015 at 20:54, Burton, Ross <ross.burton@intel.com> wrote:

> This is basically a heads-up that we're working on moving GStreamer 0.10
> out of oe-core[1] and into meta-multimedia, where anyone who still needs
> 0.10 can use and maintain them.
>

FYI, they've now been removed from oe-core.

Ross

--001a11c135f6057e3505169536e6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 April 2015 at 20:54, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div>This is basically a h=
eads-up that we&#39;re working on moving <span class=3D"il">GStreamer</span=
> 0.10 out of oe-core[1] and into meta-multimedia, where anyone who still n=
eeds 0.10 can use and maintain them.</div><div></div></blockquote></div><br=
>FYI, they&#39;ve now been removed from oe-core.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c135f6057e3505169536e6--
