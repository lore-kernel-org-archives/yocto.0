Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09934E011D0
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 06:21:23 -0700 (PDT)
Received: from mail-ie0-f176.google.com ([209.85.223.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 03 Oct 2012 06:21:04 -0700
Received: by ieak11 with SMTP id k11so20722273iea.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 06:21:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=lvEc1L8/BmqP01yvNAN49dHUR5BphxMJekC+mt/3k7o=;
	b=krFVbrytEq+28VKZqDlq027fk4wG03Yyft32tqSjPnRvy6XGn5lqg/pz/+Z2uZBSNS
	COW/e23n8Owc07dOU8AeQFerq1RTdbVCcvti8TFH4sQbDY+PCy9BBLeiKoJfUziAjRw0
	SQZNUL0ke0+BMYmFUXVfBZh9g0rGIlCK7bd7nouvKEjME7bsHMA4dQYuD11jgEoQ79yd
	VrnaRr2kVv+gWAv1U2eePShaIr+giqoel2Ur6fH924g2Al9ol4Wy2Ty+oabmOmbfFPLQ
	9B2MydAcilAPX5LyqLxd/5zz0lZ1c/8jIY4tEHTz4KpBNg8xbUVe9Pckywv4ZHYtrCS/
	AcXw==
Received: by 10.50.104.201 with SMTP id gg9mr1678942igb.67.1349270481891; Wed,
	03 Oct 2012 06:21:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Wed, 3 Oct 2012 06:21:00 -0700 (PDT)
In-Reply-To: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
References: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Oct 2012 14:21:00 +0100
Message-ID: <CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQnqcQCxJ2LvTcYGbWXQm9jPBjwyxGNt+p1OBIQUayEZ6lOwbpQR3fIfNGNRORRUqrFhdW0L
Cc: yocto@yoctoproject.org
Subject: Re: Correct procedure for rebuilding after a git pull
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 13:21:23 -0000
Content-Type: text/plain; charset=UTF-8

On 3 October 2012 14:05, James Abernathy <jfabernathy@gmail.com> wrote:
> Now I see a bunch of patches pushed to Denzil branch and I want to test
> them.  My build directory is untouched since the successful build before.
> What do I do to rebuild my project to include the latest patches.  I've
> tried things like "bitbake -c cleansstate core-image-cdv-media" before the
> new "bitbake core-image-cdv-media" and I've tried just rebaking by itself.
> Something always fails.  I've learned that to really test I have to
> completely delete my build directory saving only my local.conf and
> bblayer.conf.

Just git pull ; bitbake should work -- all of the packages that
changed will rebuild without any problems.

That's the theory, and everyone who works against oe-core/poky master
does this ever day (including me).

Can you give an example of something that fails?

Ross

