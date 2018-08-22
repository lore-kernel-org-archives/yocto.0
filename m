Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1188EE00529; Wed, 22 Aug 2018 11:00:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA709E003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:00:32 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id r13-v6so3130735qtr.11
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uhOOjV2DnQLSE2QiEQg9bTDnIYu4MgJhLfXcr/DL74E=;
	b=DoXInrIVuBMfuSnXu3HOmzaRAwQinCdwPFevSHZ8tiwJIN0tLWiC+kfFeUvyh1+Zb7
	fdkkWMOXMTPwQByyzRpl8bvilhwzye2q9GtAwNAANVXcxsEMPC4thEBtfUM/PXwxzqme
	ZayU/1SWhfVHeZ3JtH+gCjV7cgF+ZNt4bYK3KL7OrN7NZb6PAWPwsoWPwbgDEgUfPM39
	uPy4PaL5ENRCXNgM4x/VRXwfjblb6WpRcG7GVI2dOdN91l54vGYlpwLLNBxB5hjoid2O
	PISQxlR0wmETo0AFB0Uln0i3lZDbl7LwQ2sFNaDzcZQBxMaeR5i5xtt+QgIJtUHd9NqY
	yA2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uhOOjV2DnQLSE2QiEQg9bTDnIYu4MgJhLfXcr/DL74E=;
	b=f7HtJCISec9wWWjBQObX8EhPtz05/BoODrNHKqTT5DfaNxBFRbgrKOCrjA6+rLWV8F
	ZJ5bwu1ex5B7Nmg4TRVmjpGKhUBDQml6/DavzAIu0SDw/Te2Jm/O32kgw71X08T+Z6Tk
	jzWJKpworeQLhan5CflHwMTC3yee2V9kR8dooc2XTjqfkoqJk9CoCXq/2VZvfyUPuDlQ
	idfGIjWB0PjjBSzKa+4f4fj6lg0LYoUHl2CuuUu9WGXwUmpP+3R044pg7xN3UY72aY7L
	AbVqPUIAv0axlpo+y3JmGGswjEzGfFyhTzGJoiJWuMr0Y36vbOUs1O3s+9UCqSMwppII
	zR2A==
X-Gm-Message-State: APzg51DEDaaZI6gqT50GZwk9Izya6zryr2ypu2vUrPpkc/TVqcS7wZS6
	hukdFik/1gC2wQeL/FqEP6tAp/M98yMPFLcBRv0=
X-Google-Smtp-Source: ANB0VdY+HgvvhPHcYW3yGBeLLuVN374BKzRk0IIQn55xBuQxzCI3ky+F2Gu0eN82G5Z9odG87zYOa5HkeDfkYGGjhwg=
X-Received: by 2002:a0c:f208:: with SMTP id
	h8-v6mr13363612qvk.55.1534960831800; 
	Wed, 22 Aug 2018 11:00:31 -0700 (PDT)
MIME-Version: 1.0
References: <CALd6x_uaSPoQu6DPi1J3SgfZ9CmMpRsVgJ6u=EposgXUK7CSeA@mail.gmail.com>
In-Reply-To: <CALd6x_uaSPoQu6DPi1J3SgfZ9CmMpRsVgJ6u=EposgXUK7CSeA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2018 11:00:05 -0700
Message-ID: <CAMKF1sqpTXQrxibt9Si0BmQ6-KzXYW8fQypffyKAhEbWWmvAnA@mail.gmail.com>
To: pawan4749@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cloning
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
X-List-Received-Date: Wed, 22 Aug 2018 18:00:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 21, 2018 at 11:54 PM pawanKumar <pawan4749@gmail.com> wrote:
>
> Hi,
>
> I'm new to this clearlinux environment and I want to know how to clone poky in clearlinux and generate image.
>
> Please forward any link regarding cloning and generating yocto image in clearlinux.
>

I don't think we have documented it in supported build distros
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky.conf#n66

or

https://yoctoproject.org/docs/current/ref-manual/ref-manual.html#detailed-supported-distros

however it might not be as difficult, since many of us use other
distros e.g. archlinux, gentoo etc on regular bases as our daily
drivers.

One might have to map the prerequisite packages to whatever clearlinux
calls them and that will do it.
>
> Thanks,
> Pavan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

