Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1462E00510; Fri, 27 Jan 2017 17:44:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2EABE004A0
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 17:44:12 -0800 (PST)
Received: by mail-qt0-f193.google.com with SMTP id s58so8521718qtc.2
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 17:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=g0+W9BaQfau/kaJ6YWrxBmC1vMkkHRiQRPclfduLAqg=;
	b=Z8PHT4qVI/W8dRif65lpEw5iuq6RleHY6Y6GOvcn/1zIC4z3zTAc6Sq4tHSwtEjnkG
	eemv0DmgDJjUme+X8Lt5ne3Hfo+KjOGDQ+FfiQJbae40+UQQmrjSIruw1UaCbNcgf0zo
	StXXg26kUGsKYjMP8MjqBCA9J4atulLoZpSP4suM6Ej+SwSXCZqrVxjD5zJk2Ql+NhMf
	R1ZW4uoW0KHVh4+t64eeqJVO4hOI52izGGA/9BotAWReI0ug40b8CAb2tVVp1z9KjRX1
	btPGI+3rcUSyT4zcoV6KgeVJgW+hbVjHNAzdEGweTzQC3vSYKCGdXdhZodV4z8Y8m6ys
	4Ofw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=g0+W9BaQfau/kaJ6YWrxBmC1vMkkHRiQRPclfduLAqg=;
	b=N83VND/lAfkGV1yKclrZbIgjGbcMAvzhmi+r2nrrSVLbHLcQ9ADQ6bnmK205//zLKM
	M5PIv4A1RQRXEBSEKQhsfu4OeoGlWhYVoS9AmJWMlfZ0BBOOWxOact+YGEXDOMcoB8U8
	GHogRFv2ot8dWIUL4U3iG87+eMOUUQRQpzmNuZ2C3nUy8wGeRuVmW3hvj480vZz9kag2
	ZRwX2q3ZvO5mlljcm/gixAWAOorJNODA6UGHXkh6y2za4+3jFMQ6bDCkqBCaQJxOx1yX
	IipblcT2n3fe74enR27qfwhobTjtRDAvdTCeSnOGdDl9aXn/S9iuHyrDBhg4VcA07s1D
	ZFbA==
X-Gm-Message-State: AIkVDXKIs/JkG3Jtvcv6mR+ysDbFOp3/9CpWktWEVstQgRJ0LhwCyQDI/xAwDCA5VWl/z9C7y3/16T41AL1cJg==
X-Received: by 10.200.57.9 with SMTP id s9mr10690620qtb.125.1485567851873;
	Fri, 27 Jan 2017 17:44:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Fri, 27 Jan 2017 17:44:11 -0800 (PST)
In-Reply-To: <CABgxDoLt2RbidD-3L93UkjLuaXn_eoB08=HqLaHsD9=8nLpqmQ@mail.gmail.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-5-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDoLt2RbidD-3L93UkjLuaXn_eoB08=HqLaHsD9=8nLpqmQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 27 Jan 2017 20:44:11 -0500
Message-ID: <CAHUNapRxFr0kj_ZGv7GW10WySyOgU3g7Zr5B+1UTjULCxtd=cw@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 4/7] recipes-graphics: Add support for mali-userspace
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
X-List-Received-Date: Sat, 28 Jan 2017 01:44:15 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 27, 2017 at 9:41 AM, Romain Perier <romain.perier@gmail.com> wrote:
> Hi all,
>
> Correct me if I am wrong, but these are generic mali userpace binaries ?
> meta-rockchip is a bsp meta layer, it should only contains files and recipes
> to make rockchip board working or things specific to the rockchip board. For
> me these recipes are completly generic and might be re-used for another
> platform with another SoC.
>
> I don't want this in meta-rockchip. There is no a layer called meta-mali or
> something ?
>
> @Trevor: Feel free to comment, the point of view of the second maintainer is
> always welcome

:-)


I was just about to point out that there is no meta-mali, and that
most BSP layers do include their own recipes for mali (meta-sunxi,
meta-96boards, meta-xilinx) but, googling around, there is in fact a
meta-mali provided my ARM itself:
https://github.com/ARM-software/meta-mali . So I guess we could go
either way. Although I haven't looked at what's specifically provided
in meta-mali to know if it would be useful or not.

