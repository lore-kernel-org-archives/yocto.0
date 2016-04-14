Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E7B6E00D69; Thu, 14 Apr 2016 03:19:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF16E00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:19:13 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id a140so21471707wma.2
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=eexqBOtcy9AnR5RWNmWtVavAGoFoOaLINm/sWiMWVlk=;
	b=e40ilyh1LcVaFawvsKpsXsLPbQZmkFoLozNK7uKgPs7gkAG4SL25zt5tl4D0XPAP1R
	bOBtuszajb4PGASG3gvbPpvfVIlvUN6S9ZiDy93zFzvZklW2ACE3YOsJvJwvKFKEMrTz
	l8OO4MnH5rGBDmF6LQm44u7nVhl8PWBcI28BkK087CuUwh5kKXS5iWaDaqUMmGGVDNNW
	sazi0zwOYg+Tu+YD6MZCgFNVIhYhPnU8lFNK4kAsrvNypgQQXvH0+GF+2yW/Y7W1euIk
	l2Bn8pQv8/QCnhogBUL2CaD0ZtGCPEvRFqCdqcRM0hIRMLL8dUfxqS7KkK6xlfCNAiOp
	vkbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=eexqBOtcy9AnR5RWNmWtVavAGoFoOaLINm/sWiMWVlk=;
	b=Dd+7lFYJSEi8zJnzOiz8bRo5cyQSI/FAEBdynXks+TcUoFPQ2KoOTQh0hiwTVpgrgG
	KC0eydTwVTBPON7/Hzp0wxFiX0tIV/K8ZHdI0/Ozy2hOLFtSrcsnfLqM40g2QJMBvTZo
	DK8mxJSVqRI2qRar600dViiYzcT+qdJyvFKj41t+KQ++BAI3iGUsFqGUXozGrtwFgnHv
	v8b21dWbO9MU1vHIdOlN5svIuu0OmBQBVglOik+XFEuOZVMsKW1ZohMuEEQ0oIrSgiie
	C30irKGPLAorzyr+iPUaev9RNtsvTr+7oLzohZslR8yEUJujTC95+JIVx0iXwJap17us
	r8lQ==
X-Gm-Message-State: AOPr4FUGA0AV2QsqJov0oABOBRb0YBmDOzGzkt9prbCoGv4Ea7qAIt9VDWCM376aea2i4Nzqa/+Ow1JjDLKJlg==
MIME-Version: 1.0
X-Received: by 10.28.60.134 with SMTP id j128mr16021842wma.71.1460629152698;
	Thu, 14 Apr 2016 03:19:12 -0700 (PDT)
Received: by 10.28.183.5 with HTTP; Thu, 14 Apr 2016 03:19:12 -0700 (PDT)
In-Reply-To: <CAGm1_ku6qF3f=QtkdhCsOtf2q1S-ceLLGGFn76+9=158wjP-qQ@mail.gmail.com>
References: <CAGm1_ku6qF3f=QtkdhCsOtf2q1S-ceLLGGFn76+9=158wjP-qQ@mail.gmail.com>
Date: Thu, 14 Apr 2016 12:19:12 +0200
Message-ID: <CAAfyv37XwvUv6Avy72E=fNi3hkRW6xonoowBTwbxvt17ERV9AQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Running an own script after kernel compilation
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
X-List-Received-Date: Thu, 14 Apr 2016 10:19:18 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Thu, Apr 14, 2016 at 12:12 PM, Yegor Yefremov
<yegorslists@googlemail.com> wrote:
> I have my own ITS file, that is required to create a FIT image. ITS
> file has a special configuration, that cannot be automatically created
> using Yocto's recipes. So I need a way to invoke my own script. How
> can I do it?
depends which yocto version you are using but you can use (reuse)
kernel-fitimage.bbclass present in jethro.
which will generate its file from kernel + dts you will define + with
that its will build FIT image. But not sure if it's really what you
need.
>
> Thanks.
>
> Yegor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

