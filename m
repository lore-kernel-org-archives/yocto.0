Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C102E00A10; Fri,  9 Nov 2018 06:48:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE10E00971
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:48:41 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id t22-v6so1798515lji.7
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 06:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WmA5jnD+VjGfsohtvakIH20D6eG1NDE5I4UhbaNNqCI=;
	b=DnGjfJ9d6t/4mLhgRssFyzJ1X37/jnBs8DMMiFLmHIiWQHOxsgXhPFqh8cyIY4rmPA
	ltXaviyps9WoZyca9q15GcOr7CXB4ibD2G2Q3wiAgUOv/HW8D/Pl7rnfGSYmWhYy90B0
	BmCnyuWPcN0OwcSBB/8R00vE1M8xt2/zhKCousXXZIlDJ/QYqxsA8fInKwF3vENUKSDw
	FqQeAKzYRc1kIX/aL5ZdndKYiNmmp2Nu2NOY1FwR0LexMchM5f4gllvYlzkBeVvIPFax
	yfu6vpODnaTTSmD1SUe4tYT+HiM4r/cWivI9rYDbmGxAHwUgpT8vVJIXFocMh2pfl4jq
	Lr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WmA5jnD+VjGfsohtvakIH20D6eG1NDE5I4UhbaNNqCI=;
	b=osRGgnDjO3ex3mGcUSFcC0OIu1T2MuwlCj9zXZAiFwVUj1UbH/K21OuArYFDNbW4Tc
	/cRcsO7YGP/ECtTR+mbmphbnq9wkWp0H7MyW7BKnhyFggKsmCcnJ9FYluubSDeez1M8V
	NWqj16C4v62z1eFfVLKWx9uFKScBRvRfacZ1xFHJKL6MNIgUKy47XfiTZkERdXy5PoyW
	19Xpw2kAobIdsngrq4s+7g7plInp27bMqVcGwlJKXtQO6r3oAz6Fs6AZtRQTlc36r9lm
	s1xRrYvr5FJVB1U8JT1JPxkq+2r55MEwtXCg091EChLUF+Ju+2ZrcX8Uq84i21sczxyE
	t8Kw==
X-Gm-Message-State: AGRZ1gLrB/3vwWy91jpO9ahSqeC51PVSu50yGPtvZ+5DMWneG9pd7vIf
	aimdVe7aKjN9TUPWtJk9zV3/7ISxXByt3Te293I=
X-Google-Smtp-Source: AJdET5fPZNGF6SSfV0UgCcrvdsDeIwfXTtOx57s6+JV3KLdaS8/uX063XChPkIbE44tgEyEB7FQa5YQE1i5dUqro2cQ=
X-Received: by 2002:a2e:9107:: with SMTP id m7-v6mr5856498ljg.23.1541774920008;
	Fri, 09 Nov 2018 06:48:40 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzFR3oRx4JOzW3hxJdRmQW_jXZWP4G8sYWfD_+O96xfw_g@mail.gmail.com>
	<CAJTo0LY1F2fKx3gcsTEY56n2BEUAkoM73nhpSkMt_rzhQKXqMw@mail.gmail.com>
In-Reply-To: <CAJTo0LY1F2fKx3gcsTEY56n2BEUAkoM73nhpSkMt_rzhQKXqMw@mail.gmail.com>
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Fri, 9 Nov 2018 14:48:28 +0000
Message-ID: <CABj1EzH57_FAWJGQdOeqNf3FwOOJxAafxx+=T4ANmUGA-b75LA@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: non-existent task do_package_write_ipk
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
X-List-Received-Date: Fri, 09 Nov 2018 14:48:42 -0000
Content-Type: multipart/alternative; boundary="0000000000006e49ab057a3c721f"

--0000000000006e49ab057a3c721f
Content-Type: text/plain; charset="UTF-8"

Hi Ross,
Thank you for your help. My build is using a layer which is generating a
file in a ROOTFS_POSTPROCESS_COMMAND command. I would like to modify this
file as part of the yocto build, but I'd prefer not to modify/fork this
layer as it is from a vender.

I'm creating my own layer, which will modify the file created in the vender
layer's ROOTFS_POSTPROCESS_COMMAND command. If I use pkg_postinst, then the
file will not have been created when pkg_postinst is called, because (as
far as i understand) the ROOTFS_POSTPROCESS_COMMAND commands will only be
executed after all packages have been installed on the root filesystem
image.

Any suggestions on how to proceed?

Regards,
Donal

On Fri, 9 Nov 2018 at 12:13, Burton, Ross <ross.burton@intel.com> wrote:
>
> A recipe that ship files and generates packages can't also inherit
> core-image because it can't both be a package and an image.  If you
> want this package to run something when it is installed, write a
> post-install function (pkg_postinst).
>
> Ross

--0000000000006e49ab057a3c721f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<br>Thank you for your help. My build is using a l=
ayer which is generating a file in a ROOTFS_POSTPROCESS_COMMAND command. I =
would like to modify this file as part of the yocto build, but I&#39;d pref=
er not to modify/fork this layer as it is from a vender.<div><br></div><div=
>I&#39;m creating my own layer, which will modify the file created in the v=
ender layer&#39;s ROOTFS_POSTPROCESS_COMMAND command. If I use pkg_postinst=
, then the file will not have been created when pkg_postinst is called, bec=
ause (as far as i understand) the ROOTFS_POSTPROCESS_COMMAND commands will =
only be executed after all packages have been installed on the root filesys=
tem image.</div><div><br></div><div>Any suggestions on how to proceed?</div=
><div><br></div><div>Regards,</div><div>Donal</div><div><br></div><div>On F=
ri, 9 Nov 2018 at 12:13, Burton, Ross &lt;<a href=3D"mailto:ross.burton@int=
el.com">ross.burton@intel.com</a>&gt; wrote:<br>&gt;<br>&gt; A recipe that =
ship files and generates packages can&#39;t also inherit<br>&gt; core-image=
 because it can&#39;t both be a package and an image.=C2=A0 If you<br>&gt; =
want this package to run something when it is installed, write a<br>&gt; po=
st-install function (pkg_postinst).<br>&gt;<br>&gt; Ross</div></div>

--0000000000006e49ab057a3c721f--
