Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E82FE0095C; Sun, 31 May 2015 15:48:32 -0700 (PDT)
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
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC802E00945
	for <yocto@yoctoproject.org>; Sun, 31 May 2015 15:48:24 -0700 (PDT)
Received: by qkhg32 with SMTP id g32so75603456qkh.0
	for <yocto@yoctoproject.org>; Sun, 31 May 2015 15:48:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Z9tei/Z+7HEA+nLss0KZxburzivcF54pQkqy2a5BOYA=;
	b=WNty7ww1CHH9nxyPfMBpe4Hrs9KH1B8gRIzbegFb24DVk0jHLBqC5oSxhJ5djCbP1v
	+zXaMh7QmW2X9Y0kUGIVlzxykWdAZZK6hEXqx0KDSSTS/L9g6MEyhNmZ5t/of/GgqNRN
	Fu9mdUVxBZZHEvJ4hPxhZnIv8QXKzA3eHJnNHfI+EP+So/zJXPYMu2e1Y9X1nmpGPfqA
	jItv8aysrzq7xptyo1jpN6uv1p/wfyNm7/aBTzfDVnRNeGwM7ZGNXxLvHdwBI0bGbJAV
	GGPsYGbt8ZidarWmg4fLP8Pgn49sacLaIM0D794opmCTHFrVJ43Px0BBMceS8DPLHF+/
	uPHA==
X-Gm-Message-State: ALoCoQle/KJqNiEIQpyGqXtrdNssacCY0SbepTF8Y3I5NoHEZTDTLwgaQutusy8RVjqF9yD3Y6KO
X-Received: by 10.55.18.155 with SMTP id 27mr34747367qks.36.1433112503722;
	Sun, 31 May 2015 15:48:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Sun, 31 May 2015 15:48:03 -0700 (PDT)
In-Reply-To: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
References: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 31 May 2015 23:48:03 +0100
Message-ID: <CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build hello_world.c in yocto
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
X-List-Received-Date: Sun, 31 May 2015 22:48:32 -0000
Content-Type: multipart/alternative; boundary=001a11473796b54ddb05176881b1

--001a11473796b54ddb05176881b1
Content-Type: text/plain; charset=UTF-8

On 29 May 2015 at 21:59, Victor Rodriguez <vm.rod25@gmail.com> wrote:

> Question what are the necessary IMAGE_INSTALL_append to build a c
> hello world in an core-image-minimal ?
>

The easy way is to add tools-sdk to IMAGE_FEATURES.  That gives you a
complete toolchain (not just gcc) and more pieces.

Ross

--001a11473796b54ddb05176881b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 May 2015 at 21:59, Victor Rodriguez <span dir=3D"ltr">&lt;<a href=3D"=
mailto:vm.rod25@gmail.com" target=3D"_blank">vm.rod25@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":jn" class=3D"a3s" =
style=3D"overflow:hidden">Question what are the necessary IMAGE_INSTALL_app=
end to build a c<br>
hello world in an core-image-minimal ?<br></div></blockquote></div><br>The =
easy way is to add tools-sdk to IMAGE_FEATURES.=C2=A0 That gives you a comp=
lete toolchain (not just gcc) and more pieces.</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11473796b54ddb05176881b1--
