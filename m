Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F39E1E00BFD; Mon,  2 Apr 2018 14:46:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 818EFE00AD8
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 14:46:40 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id z82so5457000ywd.9
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 14:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X0K4RSIXRxgimU7D+Ita4S2L7fED++qZLW6d7DC2+Io=;
	b=eaqjA8/WQMTAXsnH5YcGrSsQJqKeYfrapgn5Ow6oUEInej9py37nt6KicLqtyG/jgp
	sj0b45MPfv2DBjsYP0uix0iDdxRdpj3W/PN5QD8unYxvJVMggh+og2xlvZK9vUkLKImJ
	yuzSl3LzOvjHviLVij0f+C0BdOePGP7wMaqIBrE1Sg7e2KCtzSkfoLNKAy+FY58Buk0d
	w+oSfCSLNT025cPFBhlL58kCit8eV5ip3s6U3UNoxPHXJjTvndFVS5JhTAoWJwd1QJmB
	83IYhAcvm78qAppWBNIP+/5G+BFa+TYznhSUEm0g6mZZPbFjBSs1n2V1Mx252m2MdnGo
	DS9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X0K4RSIXRxgimU7D+Ita4S2L7fED++qZLW6d7DC2+Io=;
	b=Li7aXcfYwtAiWcE1g12Tk09EYgO9utK+71aJ6Cfk8+uJk3mfGxkn2OfgpYkAkJmR50
	MxtucszVJw59HupwLta03yISw0CqEnUlJy8WZGbNi889fX09/wEX/oZ3GWImntQKzBgm
	WL0NfEYdmLug/WnhS7kz75t8nEzF/XC0QzXMm4tDoo1hRJB+kWj2MijxSPYOAbmZ2/+L
	C1+WnZi6J4JZpTUxa8cScI1FLsh8GJq60T/6CWupnYMPj3ItgHrazoWfXf3CXTcsFYSb
	MDOAQF+zng+oIZKX/oG896ETgDlHnnU7K8kYKGFWEyZuUvntT5oj3QXOr6Vf/tgWADwQ
	B43w==
X-Gm-Message-State: AElRT7Hpwpk2FipHqNu50xXXuBwsPNnxUwNL6wc9h+MVyLM/5ks5Bbv+
	KUy2ax0a2E0u4g6xMqCkuXUpMLuGh1mhYGajt4E=
X-Google-Smtp-Source: AIpwx4/yvMplSkWJ83Z3SJQPQ635TM0h2u8Sjdmjgq2c3Ak8BJ8WwGgtoNjp8hzhhOsyOhHF2rjl41BoIMlhlEH4VDU=
X-Received: by 10.129.152.17 with SMTP id p17mr4718893ywg.163.1522705600264;
	Mon, 02 Apr 2018 14:46:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP;
	Mon, 2 Apr 2018 14:46:39 -0700 (PDT)
In-Reply-To: <20180402211218.GA28631@linux-uys3>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
	<20180402211218.GA28631@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Mon, 2 Apr 2018 23:46:39 +0200
Message-ID: <CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Daniel Stone <daniel@fooishbar.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Mon, 02 Apr 2018 21:46:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 2, 2018 at 11:12 PM, Trevor Woerner <twoerner@gmail.com> wrote:
Removed mesa-dev - this is oe specific only.
> Even without the patch, simply adding:
>
>         PACKAGECONFIG_append_pn-mesa = "dri3"
>
I checked again: BOTH meta-raspi-light and meta-raspberrypi do not
enable dri3 by default. Was sure to have checked that but since I am
working on too many issues at the same time I got confused
somewhere... Will send out something like [1] to meta-raspberrypi -
just to make sure this does not happen again. One of the next steps
for me will be migrating back to meta-raspberrypi anyway.
> to my conf/local.conf has glmark2-es2 running, and chromium-x11 is running
> accelerated out-of-the-box (i.e. I don't have to install the egl/gles
> libraries it builds itself).
Cool - have not seen it running without issues for very long time...
>
> I'm re-building my rpi3-64 image to see if things are better there too under
> vc4.
You'll let me know I guess...
>
> I guess the patch is to address some of the other things you were seeing?
No - after enabling dri3 all I tested so far was perfectly fine. But
maybe other graphic drivers are affected.

[1] https://github.com/schnitzeltony/meta-raspi-light/commit/c844b3bb1b4e2c6479c284bbf144dc95a282881a

Cheers

Andreas

