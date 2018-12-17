Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A5D5E00C9D; Mon, 17 Dec 2018 06:00:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBFFBE00C7D
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 06:00:57 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id m22so12738040wml.3
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 06:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wWVYiP3dEFQM1emMnPozTI8a9kpMnb7t9pxyfxzrjpY=;
	b=sf1bmZuKKLYCkdskilVSSr1vp4HlB6CBiLZ9uJ+pW9VK5HL69ZEnggpJR60iC9Sdqr
	XO1nJhF84ZXMnv4lGZXSW3+K0bAJvq56eOu8//ADeIPTQwsVe2lEBAJ/mQ7jlbzEA3PU
	YCFMLexBEJGVdJ5WhiWEJNPcofxJ+AYdVgMGAA99x9b6o03G7ARPo8HR2m3qO+XIk0Zy
	mxnkcfqQg8IL2m/9qQmrP/234hEdXVmVeTm/vssV2SrwzeMiNgOC+Vp4sE0nZ0r1JkEx
	MmBIJBh3yEDXQ32xtNLm7iVXSVqPg0sLqYwOzY3SaKALe9o/QMvmhwdclGP92Ft2U8Bz
	cbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wWVYiP3dEFQM1emMnPozTI8a9kpMnb7t9pxyfxzrjpY=;
	b=jCKh9vZS8JsbJwSCyctQ7dM+gmMkSzPWHYysuggVcpRpoggAwlCJTzoz2BITsUtXo3
	FEp14TkLmyPlleMUq6P5jxD6Zi749UgBY4jzfdjLUkONCw4XMFlyrFAQtMWoF6Y/457C
	lYeB5MN4mPpAYlMJ+hBnGVLggbUFzMHkE/vytiP6kh77JasN8iaXIzY0/L3uUTKO9Zo6
	PfjuJjDcTWxpjAIajacW09ComFdMQRtqDiOFCjxOpm7wabws4yKayFyrt/q70roGSH/Y
	Br8tmeaylZOyzIqDhlxsqRPgMR6QKo9ZLU/k6lzYDhtd4ywhIg0s+Qt3UDTlWKL/wq+h
	01Hg==
X-Gm-Message-State: AA+aEWa9EixKApzjT6fXX1b/fAFhhY7iWjnwzfVuolT3v2JPuUqOjfGI
	tputIKJ6CDcKu5AxrA9P2ATaggfatviKLURihkk=
X-Google-Smtp-Source: AFSGD/VCBdwUyYbhEhdDdDxtAFo4aqIAREJmsWaQqoXgy2khjB/SHyt+jDukhuwZjV7aTqmfK9pYuvL5d0lraN+ah4M=
X-Received: by 2002:a1c:2408:: with SMTP id k8mr11316971wmk.110.1545055256923; 
	Mon, 17 Dec 2018 06:00:56 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
	<d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
	<CAFLxGvysO_g2z0f_50NO4iqcdFRN5YTzHpTbLHp4Va9jACai8w@mail.gmail.com>
	<37849360-f7e6-55a1-3ffe-e67f98f69a09@windriver.com>
	<CAFLxGvzOFw2zyS1+Mo9KseMs+7+t+_Y6y_6VZXgZzDc8QqV_HQ@mail.gmail.com>
	<e9d6b81e-b0f1-ef5d-a6ba-eb2ab14a7785@windriver.com>
In-Reply-To: <e9d6b81e-b0f1-ef5d-a6ba-eb2ab14a7785@windriver.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 17 Dec 2018 15:00:45 +0100
Message-ID: <CAFLxGvy2UsTfhpv5RcTVTUUZLTSKfmtsUkbgcKd+eLzLJ3d4Jg@mail.gmail.com>
To: bruce.ashfield@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 14:00:59 -0000
Content-Type: text/plain; charset="UTF-8"

Bruce,

On Mon, Dec 17, 2018 at 2:54 PM Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> > Yes, it builds with i686-poky-linux. :-(
>
> It's Monday, and I've only had half a coffee .. so bear with me. When
> I see i686, I'd expect that without -m32 it is generating 64bit by
> default .. so there's definitely a -m32 sneaking into the definition of
> CC for the kernel build ?

If I understand the problem correctly, the root of the problem is that yocto
"degrades" to i686.

When I set DEFAULTTUNE to i586 for a 64bit machine I'd expect
TARGET_SYS still being x86_64-poky-linux.
But it is i686-poky-linux.

> Do you have a dump of the kernel build line that I could see ?

Sure, let me trigger a rebuild, currently my yocto is in limbo-state. :)
So might take some time.

-- 
Thanks,
//richard

