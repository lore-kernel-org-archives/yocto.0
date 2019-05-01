Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96121E00D12; Wed,  1 May 2019 16:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F34F7E00CDF
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 16:06:41 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id m14so379494ion.13
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 16:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=91l50vGF7jSWzEpBZQCl7DX8l6NTB1xgYE5l9wkU3OQ=;
	b=FS2eLPkP+fnPYOPs+gILO1P2EJveWdNJ7gSIrpEQ8SDLgmDvwiGjJqJ8iIgaCGJxE9
	CBcsFdbw6o/YLB2Fu7xYPx7dpIoRypyC4N760JnHc9yRZcpKu8VgL2rr0a87b+5I4kIe
	7MY7tzdMUJKf0hrikuxbSqV8IvgmZEbIZNpfO0TfhBxeCAO2a2S3Qk2ZGW5SlaQrGp5b
	LNvdrv+PwsiZs/uH87nlb1799/adcky3eQtcjdfFwH83e3PmQP79Re5mmspoBhzUVZJ8
	7XtI7RnUz0YS2qA50gCZKJ5kvfO8KdZg58wkiwJ6IDgXs8Zs7kN/ENFxd+YAlF80LurH
	/MTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=91l50vGF7jSWzEpBZQCl7DX8l6NTB1xgYE5l9wkU3OQ=;
	b=jXSYrJnnJrFaSM7rsvFfRKVpKZDzMGgXHwDRTbtWmRjxZDmr6OThTmzMx7daUpdku5
	NZgeeixQ8Ac2iCDQXfxQNC61GOklJmjIro07VBYZYAdr8JRE5rAeYA5hKtakTVyZHykR
	663gj6bJV/IpRLLvn0v//HXli4R/9hGADrG3IqrFrE4R/o83udqcchNjieW3YWz8zpI8
	Zch+RGr723olJ4m7rw772/i/J2iToWIH+FBE5yxcFKT5HGYe8B7Z1L83H8XqqDoLiIQz
	moV6MTNlMjt98bCZJVULwFBunh4dnCBaj1vgQ+ocu4TGNm/WbBupiYKh7lwS1L7Zg99J
	1Xvg==
X-Gm-Message-State: APjAAAU732wrT8PzeMAbMbSk767nYsbgG/GF3IF15usfBB2BP++39PCl
	Q4maVo26tGfSjdc323vm3vnUjvNVFMqYX1WHK63kSA==
X-Google-Smtp-Source: APXvYqxe874UlFGFxxp4hoSH9SojAGGV9tRRGNofbYjU64H1pgpDp/QQPRpu1wXNXSdfsQzmL8tQ6y/F8J8JfSpn+Qw=
X-Received: by 2002:a6b:8e05:: with SMTP id q5mr296714iod.270.1556752001438;
	Wed, 01 May 2019 16:06:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
	<3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
	<CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
	<CALbNGRQ2aAazVL9bV6NqxE5pdUKMU4jUFGsDt_NvEx_qXPs1_g@mail.gmail.com>
	<CAA=hcWRc5aaXvUDZ+Fc9uB+gjFdpVPK-aP2Gd4wNmKj=r1Yuqw@mail.gmail.com>
In-Reply-To: <CAA=hcWRc5aaXvUDZ+Fc9uB+gjFdpVPK-aP2Gd4wNmKj=r1Yuqw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 May 2019 00:06:30 +0100
Message-ID: <CAJTo0LZgbyY_d6nw+DmBLatoL+fMPDHhEBCKptXqnsZCbRB-=A@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Could not find glib.h
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
X-List-Received-Date: Wed, 01 May 2019 23:06:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 May 2019 at 23:33, JH <jupiter.hce@gmail.com> wrote:
> It was my program, it has been compiled for weeks without any issues
> until I added an #include <glib.h>, despite the glib-2.0 was defined
> in the recipe, the do_compile() stopped at following errors, I can see
> glib-2.0 was built in build and image directory, I can see glib.h was
> in build and image directory, is it a basic principle if a package
> library was defined in DEPENDS, the bitback should automatically find
> the header files and library links? Why it still complained no such
> file?

Because that's not how glib works.

https://developer.gnome.org/glib/stable/glib-compiling.html

Ross

