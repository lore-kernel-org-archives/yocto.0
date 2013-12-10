Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562C9E005B1
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 13:18:58 -0800 (PST)
Received: by mail-ve0-f171.google.com with SMTP id pa12so5251699veb.2
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 13:18:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qHKVU0pw+oBufsjWCuge1lBUBDdoHaR4w7PRCGAozhM=;
	b=EQxJ5Zy3XvI8BCvWxWCVU0ZrWK8nt0BzdY2chUqgZGo9Q7hMMjXkSFa1WGeM4Qu1pk
	oTXfAEFtqWg5hiL4JZYW2nTSx27nR9ubiu8gO3fbK1jo8CUY6ZqOReK2KMQSyK3Dhf/V
	ePmC+AZLdHKB0bAhEC+MNgRQuIKREYrwTbS01Yn1Ap7QJPARKOpMzDukWroAAYe1VCZ1
	O+ylyVkrCBwt3dCWUx5EcGHJxN8DWPQP4y85TbAWYS/xXLKtssOnABqqwQB1na2ncouz
	3t9xrxAbsTMvN+vejEHJLwGUScEjg9NYipF9Ohz/1+lWrYNXDxhQDcDi5yMvFc3osAgU
	clSQ==
X-Gm-Message-State: ALoCoQncCqvcx1RO1Uz4sVvGzrWE03UR9Me6L9VKuTxRWE/vuXNloiQJZumjVN3NZ/P6HrS4zO29
X-Received: by 10.58.54.69 with SMTP id h5mr1776223vep.25.1386710337654; Tue,
	10 Dec 2013 13:18:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 10 Dec 2013 13:18:37 -0800 (PST)
In-Reply-To: <CANwz6nwwHW9ja1zXiYjpQdF1A5isxb=3=4eCvk01-3-_t3PP6Q@mail.gmail.com>
References: <CANwz6nwwHW9ja1zXiYjpQdF1A5isxb=3=4eCvk01-3-_t3PP6Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Dec 2013 21:18:37 +0000
Message-ID: <CAJTo0LZU+kU_B4bfwuzZ0tYOfaRs8U00QnpcxodEoJDF9mEGhQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky tree
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
X-List-Received-Date: Tue, 10 Dec 2013 21:18:59 -0000
Content-Type: text/plain; charset=UTF-8

On 10 December 2013 20:38, Edward Vidal <vidal.develone@gmail.com> wrote:
> Hello,
> I have a poky tree that I have used for several builds.
> What is the command to clean out the poky/build/tmp area.
> I am on the dylan branch.  My conf files are configured and my custom-image
> are okay.
> I want to pull meta-oe, meta-broswer, and meta-xiiinx, and poky with a clean
> work area.
> Can I just delete poky/build or poky/build/tmp?

Deleting poky/build/tmp is safe assuming that you've copied out
everything you want to keep (images, etc).  By default sstate-cache is
next to tmp not underneath it, so the first build after wiping tmp
will be reconstructed from sstate instead of needing to recompile
anything.

Ross

