Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 176E8E00984; Mon, 30 Mar 2015 02:35:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A9F7E0097F
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 02:35:38 -0700 (PDT)
Received: by qgf60 with SMTP id 60so164148615qgf.3
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 02:35:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cdoMi9Kr6A5if6/8DwQXbjkMJh0k7+o6/U4sDp4T0n4=;
	b=FnUXyxtJM7xWn8f13J6ZvPAJAOc+NZYnZN1Suc659UYVwPTu+7+UDrdYbxnK0JPHaS
	6vhLAnt/G1ujijZhKup1x7qvfd/dQXkL/k1KJzJqqsnImHsXGNcQ4K32LxkQhIZiY8np
	GIrfU9m123NYCOf4Ut0A2IMgdLB3oGwB3u07och65t/ICGkPKjOXXqQnisBNpuCUR2Kw
	emLiavJoaQAe8I63Ks3YPXMFF9EN48X85NyXMtj7uO2GSo/K76PZW+rcQT2DC6+K+fxc
	n3AXphIhdFoV5njS72msu+BwKRtyU5M8Rx/QBMyz7k7ktFDr5I/XGarxMEz7NamqImv4
	r+pw==
X-Gm-Message-State: ALoCoQlTG91lpDgSZSWCAsdWlC1VvuToE7eexFyIK+H98JHF6nb9vcmNtn0GtLpPPoqBdXpDLqbG
X-Received: by 10.55.31.32 with SMTP id f32mr65755341qkf.41.1427708137707;
	Mon, 30 Mar 2015 02:35:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 30 Mar 2015 02:35:17 -0700 (PDT)
In-Reply-To: <2229665.NuhmzlEpj1@peggleto-mobl.ger.corp.intel.com>
References: <1427506388-12271-1-git-send-email-tracy.graydon@intel.com>
	<2229665.NuhmzlEpj1@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 30 Mar 2015 10:35:17 +0100
Message-ID: <CAJTo0LbKL=H-+OyXiLBvVrT9Sm7UzVvuTv5wd5TEQ=R5h2XJBA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] nightly-weston.conf: Run regular build tests for no-X11 case
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
X-List-Received-Date: Mon, 30 Mar 2015 09:35:44 -0000
Content-Type: multipart/alternative; boundary=001a1147b0dc64303a05127e346d

--001a1147b0dc64303a05127e346d
Content-Type: text/plain; charset=UTF-8

On 28 March 2015 at 15:33, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> When I wrote the bug I was thinking more of systems with no graphics
> at all rather than with Weston replacing X11 - not that we shouldn't be
> testing Weston though I guess.
>

I guess there's value in both.  I for one certainly want to see the non-X11
but still GL-enabled codepaths exerised for the Mesa/GTK+/GStreamer stacks.

Ross

--001a1147b0dc64303a05127e346d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 March 2015 at 15:33, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":78a" class=3D"a3s" style=3D"overflow:hidden">When I wrote the bug I wa=
s thinking more of systems with no graphics<br>
at all rather than with Weston replacing X11 - not that we shouldn&#39;t be=
<br>
testing Weston though I guess.<br></div></blockquote></div><br>I guess ther=
e&#39;s value in both.=C2=A0 I for one certainly want to see the non-X11 bu=
t still GL-enabled codepaths exerised for the Mesa/GTK+/GStreamer stacks.</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--001a1147b0dc64303a05127e346d--
