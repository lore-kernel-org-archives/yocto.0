Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C58BBE009BB; Thu, 14 May 2015 07:22:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F171EE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 07:22:50 -0700 (PDT)
Received: by qgdy78 with SMTP id y78so38067289qgd.0
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 07:22:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=r0IdXbLSVCh9rhb1nhsrMqRvAbEWxP+cdkFvfVMJ3iA=;
	b=dV4iA8D1FZUyv72+XsK48pgPD/VHy1trcnl7EnZsWfAJJf/3NU3x4cIvks4BZDawP/
	QWtDhAgSM14cuU2ft8+pzou/a1hbPsgbw7oVlR8O8lXuehvXHVq6QyeK9fQkxSP7AVJF
	gBKoto4s2m66bK0xnvMCRCLypBa/bbQFOoOcTXmtWCciU8B/s9n4AT/vpRAY9l0r5vcd
	DL9KQojBVxSOXi3gu0Thx8fvqTAPqdoDLiDH+z25JuTSNwzn5ShuNv4BHflhgjRs/MIz
	A8w+WskxRIHyKBBbIBVpiMd27tydFs8P0QTaHv2h9BqJAZcNKao+1V9yFzRmwQRLVvbK
	7RLg==
X-Gm-Message-State: ALoCoQmGn/dIKHYWkACjDzR9eeycV2+otlWBDOp+STqg54OgFdHq8Tmvmjc9Vcu8o1PlNzN9c2GK
X-Received: by 10.140.149.147 with SMTP id 141mr6056630qhv.17.1431613369705;
	Thu, 14 May 2015 07:22:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 14 May 2015 07:22:29 -0700 (PDT)
In-Reply-To: <5554ADDE.7030508@mlbassoc.com>
References: <5554ADDE.7030508@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 May 2015 15:22:29 +0100
Message-ID: <CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 May 2015 14:22:52 -0000
Content-Type: multipart/alternative; boundary=001a113768165b7deb05160b76ae

--001a113768165b7deb05160b76ae
Content-Type: text/plain; charset=UTF-8

On 14 May 2015 at 15:14, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to build on the latest Ubuntu (15.04/x86_64), but have
> run into a block in ./configure:
>   No package 'gstreamer-video-1.0' found.
>   No package 'gstreamer-pbutils-1.0' found.
>
> Does anyone know what package(s) I need to install to be able
> to complete the build?
>

gst-play is a glorified wrapper around the gstreamer PlayBin, so gst-launch
will let you replicate its behaviour.

But for you Ubuntu problem, search the package database for eg
gstreamer-video-1.0.pc:

http://packages.ubuntu.com/search?searchon=contents&keywords=gstreamer-video-1.0.pc&mode=exactfilename&suite=trusty&arch=any

libgstreamer-plugins-base1.0-dev is what you're after.

Ross

--001a113768165b7deb05160b76ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 May 2015 at 15:14, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex"><div id=3D":6dw" class=3D"" style=3D"overflow:hidde=
n">I&#39;m trying to build on the latest Ubuntu (15.04/x86_64), but have<br=
>
run into a block in ./configure:<br>
=C2=A0 No package &#39;gstreamer-video-1.0&#39; found.<br>
=C2=A0 No package &#39;gstreamer-pbutils-1.0&#39; found.<br>
<br>
Does anyone know what package(s) I need to install to be able<br>
to complete the build?<br></div></blockquote></div><br>gst-play is a glorif=
ied wrapper around the gstreamer PlayBin, so gst-launch will let you replic=
ate its behaviour.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">But for you Ubuntu problem, search the package database for eg=
 gstreamer-video-1.0.pc:</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra"><a href=3D"http://packages.ubuntu.com/search?searchon=3D=
contents&amp;keywords=3Dgstreamer-video-1.0.pc&amp;mode=3Dexactfilename&amp=
;suite=3Dtrusty&amp;arch=3Dany">http://packages.ubuntu.com/search?searchon=
=3Dcontents&amp;keywords=3Dgstreamer-video-1.0.pc&amp;mode=3Dexactfilename&=
amp;suite=3Dtrusty&amp;arch=3Dany</a></div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">libgstreamer-plugins-base1.0-dev is what yo=
u&#39;re after.</div><div class=3D"gmail_extra"><br></div><div class=3D"gma=
il_extra">Ross</div></div>

--001a113768165b7deb05160b76ae--
