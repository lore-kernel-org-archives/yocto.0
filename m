Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8668E01412
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 04:30:22 -0700 (PDT)
Received: by mail-vb0-f53.google.com with SMTP id i3so3840911vbh.26
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 04:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=waiIDFfq5G/b3nebjNVd2fwpqS4B9eIXJbTJDTFwQVw=;
	b=TffwSvTpoaDiYUz2TmS7ITNjbUHp2ZA4rTsKQx82WUCkIhL9ixII80VJ2zABEDz3NY
	LKPklnZ7GzXRTZhcGLYDd7g2yiBlUJ/DdfKS6gXYV24IURPsEwstiL6GHOzCKNbgf8P9
	E8nsWasNeM6S31ysFLW9qgqNczSJV8orDikYhk8xP1uXrgrM/bLiREoiEDwHkpdGz6xH
	cSttdw462zIqZ5dfwVokn6GQdOZsPFmUlC7s889+xgbn6LVT+0fvCPJJV9HYc1yX0+Sw
	HkSGZew04a/UJaD6a4P7fRkxEzIdDyihnuPNB15g/YIafFwG5cer0eaWGu7gnlmNBHKD
	B0gg==
X-Received: by 10.59.8.232 with SMTP id dn8mr24942831ved.8.1377689421737; Wed,
	28 Aug 2013 04:30:21 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Wed, 28 Aug 2013 04:29:41 -0700 (PDT)
In-Reply-To: <521DD72D.2020102@mlbassoc.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD>
	<521DD72D.2020102@mlbassoc.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 28 Aug 2013 12:29:41 +0100
X-Google-Sender-Auth: jT6Xpih5UQhiFyLfPCkCBecMWcg
Message-ID: <CANyK_8fvRsBtHxbH_=mdWvA5MMZH+pkkn6Yd7LWdWpy-T5d24Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	"Paul D. DeRocco" <pderocco@ix.netcom.com>
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 28 Aug 2013 11:30:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 28 August 2013 11:55, Gary Thomas <gary@mlbassoc.com> wrote:
>
> Not quite - you build the packages (recipes) on your build host, but manage
> them directly on your target hardware.  Of course, this assumes that your
> build host and target hardware are network connected.
>

I threw together a minimal Raspberry Pi system image for a hobbyist
group I run and do exactly this. I wrote a recipe to create the
required feed config, it may be a useful template for others:

https://bitbucket.org/homebrewtech/meta-mmmpi/src/master/recipes-core/mmmpi-feed/mmmpi-feed.bb

You probably need to change the distro name, list of architectures and
the URLs, but the structure is fine.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

