Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11A60E009DB; Tue,  5 May 2015 03:40:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE5D0E0098D
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 03:40:42 -0700 (PDT)
Received: by qcbgy10 with SMTP id gy10so32491933qcb.3
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 03:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gFU9dhIr+2abNnQ6lXg99knrlMAdPP8uGp6uN92yhyU=;
	b=NJ6PIHEqMaXbUA/vmSH22KJwcRQkT4x8394kpic1vLjRv7S8HOHFZYNuFHs29nLEh7
	ocp2YsCKrYfNTlw69+h8gfnA9JG2hZhVcTwEgyzuBqBRsiA79eI/FKJM8efUGrKwGZt6
	/MVlLdCyT47k5sLy6uwwdThM4D6O3MtzyG5RvOPd36hEVmFQ755HZ+tO0OX1UKX9piHg
	rPqyhU3ZtlPbCiO/NUw8REuqh9UovCKyGYUv8XHx6IiTGuMxezfx9EwPFO2eL/4V7HN3
	cjWs5HXr3hcNvEBY3IIiuZ33/IeEeHnUDNjbnJl5cfPZnM6lVR9KsEE0Mc59/YUcJj07
	6S4Q==
X-Gm-Message-State: ALoCoQlzjGTPp0sVxOJC5eFi+ndV2y9cE+9cYLXbX12jLjLKn4dOpcOHPONVK/bdfHI061eBXuQm
X-Received: by 10.140.216.5 with SMTP id m5mr34471639qhb.52.1430822441918;
	Tue, 05 May 2015 03:40:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 5 May 2015 03:40:21 -0700 (PDT)
In-Reply-To: <CAF_dkJBEt-p6_JOvvO7f28ybgPNGNq28qja+EeP2f1yysqH18A@mail.gmail.com>
References: <CAF_dkJBEt-p6_JOvvO7f28ybgPNGNq28qja+EeP2f1yysqH18A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 May 2015 11:40:21 +0100
Message-ID: <CAJTo0LaSikiMXp9G15QJEG7XebOEKMLkCyk1-=GvphW9wVxONQ@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QEMU support for SD/MMC card
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
X-List-Received-Date: Tue, 05 May 2015 10:40:53 -0000
Content-Type: multipart/alternative; boundary=001a11354e6863294d0515534f9e

--001a11354e6863294d0515534f9e
Content-Type: text/plain; charset=UTF-8

On 3 May 2015 at 22:24, Patrick Doyle <wpdster@gmail.com> wrote:

> Can anybody point me in the direction of running an arm based QEMU
> with a (simulated) SD/MMC card?
>
> From the documentation for QEMU, I see that I can pass a -drive
> parameter to QEMU with an if=sd option, which sounds (reads?) an awful
> lot like I can simulate an SD/MMC card.
>
> But looking through the Yocto supplied runqemu script, (actually,
> runqemu-internal) it appears that only supports -hda or -virtio disks.
>

I've no experience using if=sd, but at the end of the day runqemu is just a
helper script, you can pass the right arguments to qemu directly or patch
the script locally.

Ross

--001a11354e6863294d0515534f9e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 3=
 May 2015 at 22:24, Patrick Doyle <span dir=3D"ltr">&lt;<a href=3D"mailto:w=
pdster@gmail.com" target=3D"_blank">wpdster@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Can anybody point me in the direction of=
 running an arm based QEMU<br>
with a (simulated) SD/MMC card?<br>
<br>
From the documentation for QEMU, I see that I can pass a -drive<br>
parameter to QEMU with an if=3Dsd option, which sounds (reads?) an awful<br=
>
lot like I can simulate an SD/MMC card.<br>
<br>
But looking through the Yocto supplied runqemu script, (actually,<br>
runqemu-internal) it appears that only supports -hda or -virtio disks.<br><=
/blockquote><div><br></div><div>I&#39;ve no experience using if=3Dsd, but a=
t the end of the day runqemu is just a helper script, you can pass the righ=
t arguments to qemu directly or patch the script locally.</div><div><br></d=
iv><div>Ross=C2=A0</div></div><br></div></div>

--001a11354e6863294d0515534f9e--
