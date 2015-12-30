Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2413E00903; Wed, 30 Dec 2015 10:40:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA83E00321
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 10:40:24 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id 1so31795961ion.1
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 10:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hDKCmvYI5uVJ3hj5B9YKKu+pRpjoFbJuqVcuhU57M10=;
	b=LPwHebFSC3D+ELo4widkZdMl8+vxkRj1Y10Pk5f6IYB275EVneMLDeRnW6a0w4LYrs
	k6EPHOowWIvB9M1bE99pZcSp68EFb02ImEgtiEWhsDM21ZcUqLlhUOaM1RgYmm/5QE61
	NRxRE14YjT7fyvZgLiN300dBylwTbK5rvKQVAK/rmV1zWBy2DXLrhWCucuV3IDgtRyoY
	b4XeBXSOqKVe6XWw10eIGz6k+6WgWmFhHRRu0Bob+xCIFUCNWNQZNjksZJnZlT9tAcqI
	psB/Li++Nftrf0VHtpcGeKBDtRJMsbA0DtwEczEmDGnDjdHuOCpy/ob/apeU7Z9FKnBn
	dG0Q==
X-Received: by 10.107.34.79 with SMTP id i76mr6565952ioi.195.1451500823802;
	Wed, 30 Dec 2015 10:40:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 30 Dec 2015 10:39:54 -0800 (PST)
In-Reply-To: <CABWL1PnM8O+6T2ME3gQRAygUCkJnRMFgBW7Z8NGkrs4qYtpTbw@mail.gmail.com>
References: <CABWL1PnM8O+6T2ME3gQRAygUCkJnRMFgBW7Z8NGkrs4qYtpTbw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Dec 2015 10:39:54 -0800
Message-ID: <CAMKF1sq6m9BSivc1hkgKmffz06Q_Lni_iDLRqL+SbydiWhMufw@mail.gmail.com>
To: neuber sousa <neuberfran@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NSUPDATE Package in intel edison with yocto version 159
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
X-List-Received-Date: Wed, 30 Dec 2015 18:40:27 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 30, 2015 at 5:01 AM, neuber sousa <neuberfran@gmail.com> wrote:
> I'm trying to to this:
> http://mkaczanowski.com/golang-build-dynamic-dns-service-go/
>
>
> But I have error with NSUPDATE package
>
>
> root@neuberfran:~# opkg install nsupdate
> Unknown package 'nsupdate'.
> Collected errors:
>
> opkg_install_cmd: Cannot install package nsupdate
>
>
> Please help

you are assuming a binary feed based distro where your device is
hooked into online package management like many desktop/server distros
are by default. with Yocto's OE build system, you need to create such
a distro first before using it. Or use some of existing one's like
angstrom distro which provided binary feeds, again they may not have
the packages you need hosted by default.
moreover the recipe ( build rules ) to have this package built using
Yocto/OE insfra might not be pre-existing so you have to start there


>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

