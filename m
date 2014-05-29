Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A72E00BBA; Wed, 28 May 2014 22:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ig0-f170.google.com (unknown [209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E74CE00B6F
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 22:08:45 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id uy17so3156769igb.5
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 22:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ACqaORm44/RWTJYCfmI351AxQuc9ZWkTx7MiO6/fBgg=;
	b=S26MHoFeFACK1KUpV3UqL8qw7TGnKfwEpLQdnKOPug2zACoSWBz9Sw4Mq8aEy1IREv
	siI1nKw0pWG+mB8WVpHd7HUaONgUvtFCkSYb8o+c8cF82vuWSiq7QFoubxwjAraLcpWK
	SoSOzxktqwgdmWlVz9DEsQTFME5l4yaR8Rb8f7aSaYIvJ2baQchgL64SOxkwyVKy+pTk
	ICKvAalY5kAACKgWDVId4dvNbKetQ4w2u5bi7UskCIdUP7Sw1oosZjWsPi0LWGWy3rvL
	tAmyrcMor8Xk4XHdt3pxR4BLsQbN2GANWL3xysTa3IvDJ7D83/s+Q5LkKzwUL+wdeFX7
	QeVw==
X-Received: by 10.42.152.70 with SMTP id h6mr4564519icw.3.1401340124828; Wed,
	28 May 2014 22:08:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.33 with HTTP; Wed, 28 May 2014 22:08:14 -0700 (PDT)
In-Reply-To: <1401329473-23967-3-git-send-email-joe@deserted.net>
References: <1401329473-23967-1-git-send-email-joe@deserted.net>
	<1401329473-23967-2-git-send-email-joe@deserted.net>
	<1401329473-23967-3-git-send-email-joe@deserted.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 May 2014 22:08:14 -0700
Message-ID: <CAMKF1sq1xkjDkcAXLGOXJ-83X8Ks8FjSNBKbW9fOJ-YK4i5yng@mail.gmail.com>
To: Joe MacDonald <joe@deserted.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Alexandru.Vaduva@enea.com
Subject: Re: [meta-cgl][PATCH 2/2] distro: define a cgl distro type
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
X-List-Received-Date: Thu, 29 May 2014 05:08:51 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 28, 2014 at 7:11 PM, Joe MacDonald <joe@deserted.net> wrote:
> A CGL image is different enough from other images that it can sensibly be
> considered a different DISTRO type.  It's been possible thus far to
> piggy-back on 'poky' but recent changes in the base layer make it a
> reasonable time to create a full distro for CGL.

how is meta-cgl qualified I assume its a feature layer and mow you are
adding a distro policies to it making it a distro layer. May be you
should have two layers underneath meta-cgl now.

>
> Signed-off-by: Joe MacDonald <joe@deserted.net>
> ---
>  conf/distro/poky-cgl.conf |    6 ++++++
>  1 file changed, 6 insertions(+)
>  create mode 100644 conf/distro/poky-cgl.conf
>
> diff --git a/conf/distro/poky-cgl.conf b/conf/distro/poky-cgl.conf
> new file mode 100644
> index 0000000..ccc2b90
> --- /dev/null
> +++ b/conf/distro/poky-cgl.conf
> @@ -0,0 +1,6 @@
> +require conf/distro/poky.conf
> +require conf/distro/poky-lsb.conf
> +
> +DISTRO = "poky-cgl"
> +
> +DISTRO_FEATURES_append = " pam selinux"
> --
> 1.7.9.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

