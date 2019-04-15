Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68B68E00D08; Mon, 15 Apr 2019 07:43:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.43 listed in list.dnswl.org]
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08E83E00CBC
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 07:43:25 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id t15so5585417uao.5
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 07:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=nNkFPJjkYop/yiAcjt9hW/oP/Z09AP3snx2Pun+FpeI=;
	b=fd5WOmJd60MDFudmk5wGREciJ6a5bpjTZUldCzjuRHNYY+ZsetMNdFPTDSJEMIwWMq
	UTJzEpHp4UYztC9MFmYy/0llUxVru1O41AHwaZwxXXwsFWxJK1oBVh6D/ub8EiTEcBdr
	krYegqbNBopBYDQsaNfY+uS2rikxTX3n/mheSNETO39H1k/nNTPzWH/3PMkTakiIZkd5
	WasfVghG0axc5PN8Nah7mwa9dCrhV0VLQuIcpSrTAmZD22N1exm6Qc0UOkorsOV+oTSL
	mzpw3YRkOy4N7xQG119nTJFJeevMyF8rQUzp6MQcU5yinUctY9W0gMy3cGJeqtyhnR0Y
	Gb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=nNkFPJjkYop/yiAcjt9hW/oP/Z09AP3snx2Pun+FpeI=;
	b=Xw4dOsC+6/qh75rhnT9ciXcRx9VWiYhxiozxhUUCBrOEfS0E2WK1ItbK5frNe/okpL
	Sd3YrcQIf8S7BObbWHJRpinKh89gdQdrGKSBZomc+dXCWkFT3vCrp76uh99h2icBhafc
	SQOMefUjDvFMoWj5jAYEpnDaBrKYb/n/C8Y0aiFPZiZMqOFlNrmr3JOHTgzY0NFrf5pq
	/MJiXOLLluRcOqHtYFJBPpgeLgTze6bQWEufDehvXYoPGPg+mrhVKUiiIB0jfBSjwZSq
	6KAAuYpG7c3sFznu7xhTdpriN1FTEh9x5jlMDVpaaujLOBXm271zE9z67F+pDODACWAd
	5DkQ==
X-Gm-Message-State: APjAAAXvByqqNlOUMgc0pIWDGmwABz+XUcXa1jStYa6sFtfSOBuDzyhc
	Us5OiXNE84ktTd1s9+XY4RlaJRvxkMntkQe68sZQjA==
X-Google-Smtp-Source: APXvYqzsg/RXSsy0n/YDw/QNcG56SfRlRtbdSulH35Rml9LFAFGpDEJG1juAdBoI05gxEnLa+VHEffIEUZlBu/sidUU=
X-Received: by 2002:a9f:3c01:: with SMTP id u1mr39527389uah.19.1555339405117; 
	Mon, 15 Apr 2019 07:43:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Mon, 15 Apr 2019 07:43:24
	-0700 (PDT)
In-Reply-To: <ddddfc4db6df73aa86ea934140c6795d1d912c0e.camel@linuxfoundation.org>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<cdeb499d193a545fd52d93a2ebe2b998e9421b20.camel@linuxfoundation.org>
	<CADB9fJHhPie5Efxs3g_+HyjBtwK7n6Nu_=Gx9CMCjc9_0pK4OQ@mail.gmail.com>
	<ddddfc4db6df73aa86ea934140c6795d1d912c0e.camel@linuxfoundation.org>
From: Eric Grunt <gruntblue@gmail.com>
Date: Mon, 15 Apr 2019 21:43:24 +0700
Message-ID: <CADB9fJFY+MJsRPYgWzDxqH6LoxrDY9KVEbn92PrJ_KvXY=LPBg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Mon, 15 Apr 2019 14:43:26 -0000
Content-Type: text/plain; charset="UTF-8"

> Notice how the function names for squashfs are:
>
> do_image_squashfs_xz
>
> not
>
> do_image_squashfs-xz
>
> This is because shell functions/variables can't have "-" in their name.
> You need to change to us IMAGE_CMD_squashfs_xz_ubi.

I tried to basically change all "-" in the fs and variable names into "_",
but this didn't change the behaviour.
What I do not understand:
The filesystem type squashfs-xz (included in poky) uses "-",
among others also for the IMAGE_CMD name ("IMAGE_CMD_squashfs-xz").
Only the dependencies to squashfs tools are using "_":
do_image_squashfs_xz[depends] += "squashfs-tools-native:do_populate_sysroot"

In the case of squashfs_xz_ubi the IMAGE_TYPEDEP_ dependency
to sqashfs-xz is ignored.
(experimentally trying to change that dependency to squashfs
(a name without "-")  does not help)

