Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE491E007C1; Mon, 28 Jul 2014 02:43:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6902FE006ED
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 02:43:38 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id z60so8191801qgd.13
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 02:43:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=b/zsqu0AXMNgmcjYD0crb9g+wJYmJI49wGG7hd4nCko=;
	b=UTrYf87MhOsUNTodn69hfI1FgfXuPZVsJVIUA+HNQhylqKUFfR5H8jwLEMmXqTj2FR
	jv1OjS6blJ4R4LS/iVXQJ7DBJXvSjCkaaQC/vA494J/71qnXF3foYpFVyPPzRSwJXoDe
	ExYdvuiMd+b8+5d/YssOyCJWHTb2wLaTvJyfpE6/OAqiiLBW+NfVTrgXv4exWEYsM0iy
	dIhj10Dh3SpWNvGjTFCoKQDpXWjexw3cE5tFOThyy2Y+wlSk9shExwFlhXvt4Y10h4n5
	o5raGxuLKdtM6emrcTFM3rk8YAO4A3ZN5MoGrmHX3dWHfI3No/Wbs5XcYwmCjcQL6GuP
	AXFA==
X-Gm-Message-State: ALoCoQkTfC/GyUJlDf+n6Vo/TCvQwIWVH0MnBiYv9EgppKEhq4PUJ+PFXPI/B4obAO7p7OCEgOEi
X-Received: by 10.140.82.242 with SMTP id h105mr9524160qgd.98.1406540618208;
	Mon, 28 Jul 2014 02:43:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Mon, 28 Jul 2014 02:43:18 -0700 (PDT)
In-Reply-To: <CAHkvJJLac=B6M6_+Uqbso22pEkDeFNbrmNs4u4P-9v6=3P1PGA@mail.gmail.com>
References: <CAHkvJJLac=B6M6_+Uqbso22pEkDeFNbrmNs4u4P-9v6=3P1PGA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 28 Jul 2014 10:43:18 +0100
Message-ID: <CAJTo0LYj==XyNAk5Jjb6TSGB+oV4vSmKjtDtJENxREi3hPE7LA@mail.gmail.com>
To: Hal Martin <hal.martin@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GStreamer from HTTP source
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
X-List-Received-Date: Mon, 28 Jul 2014 09:43:41 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2014 20:38, Hal Martin <hal.martin@gmail.com> wrote:
> gplay doesn't support HTTP streams and gst-launch fails to play the
> stream. The totem recipe in open embedded is really old and doesn't
> seem to be working, so I'm not sure what I can use to play an HTTP (or
> HTSP) stream.
>
> Any suggestions would be greatly appreciated. Apologies if this is a
> repeat question, I searched the list archives and couldn't find
> anything relevant.

This isn't really a Yocto problem but GStreamer - contact the
gstreamer support lists/irc channel.

Ross

