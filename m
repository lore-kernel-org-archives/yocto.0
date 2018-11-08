Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D71C9E00AC5; Thu,  8 Nov 2018 00:56:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5712E00A6B
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 00:56:23 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id y15-v6so20301997wru.9
	for <yocto@yoctoproject.org>; Thu, 08 Nov 2018 00:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=TKthbyQf2kIgolBvlzx14DANylJ6+mI9TVOIHVtYakE=;
	b=mKalTQJbCaDhoOsofA72OiYOHLYIpaDqXvnW5fHCmqxShdxpY3IkTYoEaPv4DVsv15
	+5yt137J8Utwo2rGLIsPgExCxxph8hBDWiu9V/ODjMxcZYs3q8unoNKvoCUjLUiQfnDa
	hPdaDH2tHvb2RX1LaK0O3CPxJBMDH9iCl1/Yr6bQfrgq0SpgZ2d/FtyQ8tJYKpDXL2wz
	M21wohD+MG4NDs/GGgiulqDXTh1L3svcUySIVO7MxgGk0GL8hx19V4N+6TNcBr4S/m8b
	TLtp5s2A1Z4L0veqln8I3gnKf2KHh3UCmBAbtq2im95V8VL/4ETNntvgbswP7LJIc6zb
	N5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=TKthbyQf2kIgolBvlzx14DANylJ6+mI9TVOIHVtYakE=;
	b=Ur3IvfSP4uhk8uHR6TRWRTzadiCe3R74/MF/Lb4MIXiVOKSJb6SBTKWE+p7quTq21Z
	t0jyFwDNL/As+dP/Zty96xHmv/eq0WufDbvIsDbkWDDeysk6wC2qX335+YiSHLU8gbmD
	uvWreZCtv1lIRTx8iGpFkR5nQASIQm8Hv9LUszqAI5R7pNzT/N5i2Rb08CAXXLxZsU+y
	p4HlSd/EYmAUFvLNNJn6he463miQtYZ/z14aPkPgk076hYZfcDg0PqlYn7N9+en9N92P
	EcSHGoDCyjAc4RjNn1ADsscqVBFVShRUUQTsuhyP0mK33fsnA4FWWAivTldxGq7wdStF
	v7AQ==
X-Gm-Message-State: AGRZ1gJN8x8P3nJ9WDLiK5GrGQF5j0aiwDXRH2pA4UtwIXR2ngNsBjsG
	rO/aeArKg1izOIphsWGcnwYO5Z+5qTjR4HsTm7Y9nHfJ
X-Google-Smtp-Source: AJdET5cMtT1TEpW5+rWy3hkFJLSoA04ihiuHjRk/Y8+MvvETw/EDBBX3na7wLKfg2IHO44qnN9imdcV+2dZmWBU/3qg=
X-Received: by 2002:adf:e70d:: with SMTP id
	c13-v6mr3204215wrm.50.1541667382562; 
	Thu, 08 Nov 2018 00:56:22 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
In-Reply-To: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
From: Markus W <markus4dev@gmail.com>
Date: Thu, 8 Nov 2018 09:56:23 +0100
Message-ID: <CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Set linux capabilities on binary on a recipe in meta-oe layer
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
X-List-Received-Date: Thu, 08 Nov 2018 08:56:24 -0000
Content-Type: multipart/alternative; boundary="000000000000b312c8057a2368c2"

--000000000000b312c8057a2368c2
Content-Type: text/plain; charset="UTF-8"

I have tested to set capabilities on the node binary within a custom recipe
(custom layer) but that failed.

pkg_postinst_${PN} () {
    setcap cap_net_raw+eip $D${bindir}/node
}
PACKAGE_WRITE_DEPS = "libcap-native"
RDEPENDS_${PN} = "libcap"

The error message:

ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: [log_check]
core-image-full-cmdline: found 1 error message in the logfile:
[log_check] Failed to set capabilities on file
`/home/ubuntu/yocto-sumo/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/rootfs/usr/bin/node'
(No such file or directory)

When I check the node binary is there in the rootfs directory. It seems
that when the the pkg_postinst function is executed the node binary is not
there.

What am I missing? Any answer is much appreciated!

Regards,
Markus

On Wed, 7 Nov 2018 at 11:32, Markus W <markus4dev@gmail.com> wrote:

> Hi!
>
> Background:
> In my raspberry project I am developing a nodejs app that needs access to
> bluetooth/ble device. I want to run the node application as non root user
> for security reasons. In order to get access from within the app, the node
> binary need to have the following capability cap_net_raw+eip set. I am
> using the nodejs recipe from meta-oe and added it in my local.conf:
>
> IMAGE_INSTALL_append = " nodejs i2c-tools bluez5 kernel-image
> kernel-devicetree"
>
> Question:
> Where should I apply the following command? setcap cap_net_raw+eip
> /usr/bin/node
>
> What are my options? Can I create a recipe in a different package that
> will apply the above command on the meta-oe package for the nodejs recipe?
>
> I have been following this thread (
> https://lists.yoctoproject.org/pipermail/yocto/2016-June/030811.html),
> but the node binaries and my node-app are in different layers and packages.
>
> Any advice how to do this is much appreciated?
>
> Regards,
> Markus
>

--000000000000b312c8057a2368c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I have tested to set cap=
abilities on the node binary within a custom recipe (custom layer) but that=
 failed.<div><br></div><div><div>pkg_postinst_${PN} () {</div><div>=C2=A0 =
=C2=A0 setcap cap_net_raw+eip $D${bindir}/node</div><div>}</div><div>PACKAG=
E_WRITE_DEPS =3D &quot;libcap-native&quot;</div><div>RDEPENDS_${PN} =3D &qu=
ot;libcap&quot;</div><div><br></div><div>The error message:</div><div><br><=
/div><div><div>ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: [log_check]=
 core-image-full-cmdline: found 1 error message in the logfile:</div><div>[=
log_check] Failed to set capabilities on file `/home/ubuntu/yocto-sumo/buil=
d/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-full-cmdline/1.0-r0/r=
ootfs/usr/bin/node&#39; (No such file or directory)</div></div><div><br></d=
iv><div>When I check the node binary is there in the rootfs directory. It s=
eems that when the the pkg_postinst function is executed the node binary is=
 not there.=C2=A0</div><div><br></div><div>What am I missing? Any answer is=
 much appreciated!</div><div><br></div><div>Regards,</div><div>Markus=C2=A0=
=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, 7 =
Nov 2018 at 11:32, Markus W &lt;<a href=3D"mailto:markus4dev@gmail.com">mar=
kus4dev@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div dir=3D"ltr"><br></div><div>Ba=
ckground:</div><div>In my raspberry project I am developing a nodejs app th=
at needs access to bluetooth/ble device. I want to run the node application=
 as non root user for security reasons. In order to get access from within =
the app, the node binary need to have the following capability=C2=A0cap_net=
_raw+eip set. I am using the nodejs recipe from meta-oe and added it in my =
local.conf:</div><div><br></div><div>IMAGE_INSTALL_append =3D &quot;=C2=A0n=
odejs=C2=A0i2c-tools bluez5 kernel-image kernel-devicetree&quot;</div><div =
dir=3D"ltr"><br></div><div>Question:</div><div>Where should I apply the fol=
lowing command?=C2=A0setcap cap_net_raw+eip /usr/bin/node</div><div><br></d=
iv><div>What are my options? Can I create a recipe in a different package t=
hat will apply the above command on the meta-oe package for the nodejs reci=
pe?</div><div><br></div><div>I have been following this thread (<a href=3D"=
https://lists.yoctoproject.org/pipermail/yocto/2016-June/030811.html" targe=
t=3D"_blank">https://lists.yoctoproject.org/pipermail/yocto/2016-June/03081=
1.html</a>), but the node binaries and my node-app are in different layers =
and packages.</div><div><br></div><div>Any advice how to do this is much ap=
preciated?</div><div><br></div><div>Regards,</div><div>Markus</div></div></=
div></div></div></div>
</blockquote></div></div></div></div></div></div>

--000000000000b312c8057a2368c2--
