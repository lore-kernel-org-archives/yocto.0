Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5267E013D6
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 03:59:51 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id c13so338779vea.10
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 03:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=kNIDKiYEzbknfm0YS/hOjRO+X8LjcVDomtq/LEugCqE=;
	b=PBe24U0U4uchir8kDgB8YDZlLrb5iIoD2qpZGIomxK3uV/CSpHIx82sgKSMHpLdRyF
	yO+x1GsmeRaIAq3Xv0tgAGw7ulMcSAZ9yhtSmRmik6cT3oX2z8xySHc+3h5oKqA404wu
	q46CXeaa34E68gfxOiuvYtkpiGFueBoRkgQFE/E+PEB+pqn4founesNnzqravkWPbC/V
	arczahXcunu1lQqJozIgJv81GysoWjDBnbAJs1gzdYJD0vaRppQYT6l7rzcj9lcLMyab
	8rsEE6jYCEJWmtDxfBClpomSw8WGo75rLo9+pMYw5mQk/g5ZtrieY3B9sm+YmfwcXeGH
	tfVQ==
X-Received: by 10.58.215.15 with SMTP id oe15mr159340vec.25.1377255590569;
	Fri, 23 Aug 2013 03:59:50 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 23 Aug 2013 03:59:10 -0700 (PDT)
In-Reply-To: <1377018158-2983-7-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-7-git-send-email-andrei@gherzan.ro>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 23 Aug 2013 11:59:10 +0100
X-Google-Sender-Auth: QSNL1eQI7eCAgcDCG4-mgmJBFeQ
Message-ID: <CANyK_8fT9cf__rs36niVD5mkhXySbioVT16653Zr0tQvwJkh3w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 07/11] mesa: Use libgl from mesa for raspberrypi
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
X-List-Received-Date: Fri, 23 Aug 2013 10:59:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> +python __anonymous () {
> +    import re
> +
> +    # Remove egl and gles2 configure options
> +    extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
> +    take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
> +    put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
> +    pattern = re.compile("--with-egl-platforms")
> +    new_extra_oeconf = []
> +    for i in extra_oeconf:
> +        if i not in take_out and not pattern.match(i):
> +            new_extra_oeconf.append(i)
> +    for i in put_in:
> +        new_extra_oeconf.append(i)
> +    d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
> +
> +    # Remove egl and gles2 from provides
> +    provides = d.getVar('PROVIDES', True).split()
> +    take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
> +    new_provides = []
> +    for i in provides:
> +        if i not in take_out:
> +            new_provides.append(i)
> +    d.setVar('PROVIDES', ' '.join(new_provides))
> +
> +    # We are now machine specific
> +    d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
> +}

This really needs to check whether MACHINE="raspberrypi" before
changing anything. I keep the same stack of layers and just change
MACHINE when building for raspberrypi and beagleboard.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

