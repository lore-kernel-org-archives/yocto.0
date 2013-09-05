Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C9BE01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 01:05:38 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id pa12so927136veb.2
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 01:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=cH1PYJvO5xVI+fv5fagKhHAibSXVIU/LIgdTZdPsZyo=;
	b=JKDvls2rSDcVxEwT7QWz4+hzLOAcMCKI/pOAifHC2PT75zzizx3Qic+M3xmVtYd8ZZ
	2TT/Eg4qwUWCesfz/CqUpI/cka4q+aiA3dfX4EeVsbPEp22dO7cyDRi4eb9ETivZeYNK
	Lk9F1y13onXEiV2171ya1DGezbkMnKY+3TCzLzgpYsOyFTFwRVcMxe1bnzkFHX+Yaur/
	18pAWUx63/dXrdaWxt7snxCF2TcDK0nxiaJPpqHuUyUR3UtAyP4CySiNTaxSV2WGDmIT
	8lNxatXWQ80B1U8HBJQNU3/kBQDnyiL2LSwsmdGfgs4VJrKBKrTh1wxWJd4MNOg6WQVZ
	FKuQ==
X-Received: by 10.221.44.136 with SMTP id ug8mr1080721vcb.13.1378368337642;
	Thu, 05 Sep 2013 01:05:37 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Thu, 5 Sep 2013 01:04:56 -0700 (PDT)
In-Reply-To: <522838E7.1060007@vtkloud.com>
References: <5227629A.5090505@vtkloud.com> <52276400.6070307@mlbassoc.com>
	<522830FF.6090100@vtkloud.com>
	<CANyK_8fN2_OYy6nRvud7udkS0Sp+gqWkaO7xHvJ9X5mZJ-ZC5Q@mail.gmail.com>
	<522838E7.1060007@vtkloud.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 5 Sep 2013 09:04:56 +0100
X-Google-Sender-Auth: wyuyWSjx76CrFWddS10RZ0F17vs
Message-ID: <CANyK_8f0bwoB8sd6PdN4ZV=bZtw6E-6AqQAQnMB9j7QgAypmtA@mail.gmail.com>
To: JC <jc@vtkloud.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 08:05:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 5 September 2013 08:55, JC <jc@vtkloud.com> wrote:
>
> As a reference, following this link
> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7 I got successful
> (well the image is not yet finished but I hadn't that specific parsing
> error)
>
> I followed the exact README steps in a fresh directory for the checkout, so
> I am on the trunk for poky & meta-raspberrypi...
>

The log you've attached shows paths for poky as well as
openembedded-core. Poky is basically a combination of
openembedded-core, meta-yocto and bitbake so you don't want to add
openembedded-core again. Could you post your full bblayers.conf?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

