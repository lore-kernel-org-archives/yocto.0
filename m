Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C865E00C44; Sun, 14 Apr 2019 21:19:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D16E8E00BAA
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 21:19:13 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id t28so17659132qte.6
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 21:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ca3MZMJwVDW1X/tXupjiGTc6OWEZufZw8k7cu2jGegs=;
	b=q2+fm7nKIMxT2MQkgtxlXjoI7EnJG7CuyK2JdBEt78s2ul/vnEohor2XFD+4ncGeRz
	Y5/rpYIGMKjsb15JFcAFLlnIUpvcNjp/ycanZ2UIBnz3qQjo0gRgajom2YKiykT4Rj/f
	ETwfJzPXCfec4DsZFN2YgSDtU0TyD4v94z7kbhXWYn1v1wQyKRvRWDXOJKujb6vKclIC
	1rl1lxFpOTeM5KuFjrzFpLyRx/CqH+MKBDSDSMb0QjlVR9igF/bE+/GvaYTREr9SfkiP
	BKQVGVWCJMP3kxhy3U8W17ejDCJ+kXVBYpt9quW99FjHKdrLwx1WG2CyD88IqMp6OdOR
	l2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ca3MZMJwVDW1X/tXupjiGTc6OWEZufZw8k7cu2jGegs=;
	b=hBJox2GUS0qL07wNjWGO6S/nPqQnpao3peBEZJOuIGvlrHN+d5VmAriLOc1rq3kPBZ
	MzADA+fyZoHZH9yQwswzO6s6tJN5ablCJh1V9VjIPwHhVBHpAHvHVYZ3bafc+qcengJe
	Qa887UVFjNGBIlxA5DbBq6GaS4mLancqXKdNV0gEqUvYWAJCVGjnTgDL78Xq74mszuBk
	Z/7QpF3zIi7eCY2mqcIoCrLDRGLkSnXlxTRD9Og1xVPoef0R6ZhQm6PYTLvONNCBN//a
	BjAFIcqkSoPW8WSQn6cltbK8euyCnFJZHsMoeTKeOTXsRnUZ8838uap9wKcN7qoR5gZr
	nFRQ==
X-Gm-Message-State: APjAAAXXnvsAo0UzTrpNhdAUkYrkqth+5zIR02GohRcIpCZM7zBbv7hi
	eA3KL818ahAGWg3oGFs+JhVuRKmgMTOHn8yr3cw=
X-Google-Smtp-Source: APXvYqzWQQga8IrNfWBNiSBK8w3q3nGdOAm8xCDwLyf3XGhHzBAzdiubBzdvc3E+gVSgfNaZD9xVgUVNJ0aPXnD1mE4=
X-Received: by 2002:a0c:d1d0:: with SMTP id k16mr57320606qvh.59.1555301952815; 
	Sun, 14 Apr 2019 21:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <528f2b23-ca35-43a6-3568-9e8de7504198@gmail.com>
In-Reply-To: <528f2b23-ca35-43a6-3568-9e8de7504198@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 15 Apr 2019 06:19:01 +0200
Message-ID: <CAGAf8LxDw1nwgnCGVC8Q33CtPBF9pmKB6MRjzBd19Y5QB4gSjw@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Thud Kernel Configuration not Working
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
X-List-Received-Date: Mon, 15 Apr 2019 04:19:14 -0000
Content-Type: text/plain; charset="UTF-8"

> This is my bbappend called linux-yocto-4.1.8.bbappend:
> # Include kernel configuration fragment
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URL += "file://smp.cfg"

I am wondering... Why so old kernel used (4.1.8)?

Zoran
_______


On Sun, Apr 14, 2019 at 3:54 AM nick <xerofoify@gmail.com> wrote:
>
> Greetings,
> I was trying to build a kernel with these files in a new layer for no smp to be enabled but have no
> idea why it doesn't work. This is after looking at the kernel manual and it's literally the same
> files excluding the disabling of smp as the chosen option.
>
> .cfg for kernel option is called smp.cfg and this the file's content:
> #Disable SMP
> CONFIG_SMP=n
>
> This is my bbappend called linux-yocto-4.1.8.bbappend:
>  # Include kernel configuration fragment
>  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>  SRC_URL += "file://smp.cfg"
>
> If anyone has ideas thanks in advance,
>
> Nick
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

