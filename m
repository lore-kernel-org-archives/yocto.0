Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFA35E009BB; Thu, 14 May 2015 07:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6351FE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 07:40:12 -0700 (PDT)
Received: by qgfi89 with SMTP id i89so38382878qgf.1
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 07:40:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=84i/G8m/ke1bkrgpv79KRXB6t5me23Bm4STnbaoCG7A=;
	b=miEAwFj9HJqcnRJOg3dVfno8weVKOg+gxZn+08F/lbbx4jZlcKq7fX8eaFDykhvpig
	48v1c3Yv4Cz9zGN/F2SdemLH1WfIypgf/2akmx2Xmtt3SnxRh2FrQJifzJ31j1FeEHWo
	wUXenKz5qbJ/9FiooXCvJopeXpZR3aAleFxz1vwN93XBzL97MT5uhVY1uEdvQmdq+u4e
	9XVvuUTnM5+nnNgHYjcRfqievcIapzK4odD1Xbq75uJsKY0RaV4LUzE5ftHNkbE/lwk+
	B2OWdQ1syOEABXONuBJfcaClZK559yy3GpQw2FtSUvb4FQy6CFC4qU18+jgRZoxH6cw2
	OEig==
X-Gm-Message-State: ALoCoQn226AufgD2Y4H+djuCun0XcJybf0nhkXDDuRFcnai7syPNmeBZXI+mN8R21VqWXDtwHwYj
X-Received: by 10.55.50.20 with SMTP id y20mr9660056qky.58.1431614411591; Thu,
	14 May 2015 07:40:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 14 May 2015 07:39:51 -0700 (PDT)
In-Reply-To: <5554B152.8030401@mlbassoc.com>
References: <5554ADDE.7030508@mlbassoc.com>
	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
	<5554B152.8030401@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 May 2015 15:39:51 +0100
Message-ID: <CAJTo0Lai_StnhatYDa8tZvjt8jKs-EGnYgX7KvPwCOzk-1D6kQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 14:40:14 -0000
Content-Type: multipart/alternative; boundary=001a11471392756d9b05160bb498

--001a11471392756d9b05160bb498
Content-Type: text/plain; charset=UTF-8

On 14 May 2015 at 15:29, Gary Thomas <gary@mlbassoc.com> wrote:

> As I figured.  Is there a way to get the pipeline out of gtk-play so I
> know how it's launching the bits?
>

Read the source, but it really is just the playbin:

https://github.com/sdroege/gst-player/blob/master/lib/gst/player/gstplayer.c#L2028

If you want to know what elements get dynamically created then I believe
turning on debug (see the packageconfig) will let you write out dot files
for each stage of the pipeline.

Ross

--001a11471392756d9b05160bb498
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 May 2015 at 15:29, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex"><div id=3D":7ew" class=3D"" style=3D"overflow:hidde=
n">As I figured.=C2=A0 Is there a way to get the pipeline out of gtk-play s=
o I<br>
know how it&#39;s launching the bits?<span class=3D""><br></span></div></bl=
ockquote></div><br>Read the source, but it really is just the playbin:</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D=
"https://github.com/sdroege/gst-player/blob/master/lib/gst/player/gstplayer=
.c#L2028">https://github.com/sdroege/gst-player/blob/master/lib/gst/player/=
gstplayer.c#L2028</a><br></div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">If you want to know what elements get dynamically creat=
ed then I believe turning on debug (see the packageconfig) will let you wri=
te out dot files for each stage of the pipeline.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11471392756d9b05160bb498--
