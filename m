Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22AC5E0049B; Mon, 20 Jun 2016 09:36:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCCF9E003D9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:35:57 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id b136so24734716qkg.2
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 09:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qUUKet/HNW0lohM9I/5v6JPCK3msJyljju8eMJFRdOM=;
	b=XVna2UIFLiwLoTEVBJ0stO/P4klJTYosWZySbDVjQO/u4nRaQW9aISDyXwnm0+Abph
	aJdkSEfb8tsf3sZOHcyPJ5tXkG/J28cX5HvY/RGR0Uv+hwNaSrYQUfkVeNEZlT8LJ8cU
	yvVRdAKAneeDt/KtKBzVHEWlT+a21h31BmHOcdSBzsy6gdbENnZ9ygqgyxxWDBqBk7+h
	Kcjz7lKybzUBUajGme877artPHBbH++q9gQ/aZ8N3pDWLmIDNOz5p2e0yrccRTIuS7h3
	fYVCW+vE4YeBZBOpNBJwPgs/Z25Aj1T+5DayBM+o/kV0mH90af1Yus/Ynfp2kBa2IzE/
	HUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qUUKet/HNW0lohM9I/5v6JPCK3msJyljju8eMJFRdOM=;
	b=YaGqd2utUblvrfEtf0E31y6BbMkMtJOaiUX0LWKQZCdne9Vj8qJNXel/whqDU+Guf/
	FGmW9FA1rxbici1EK/01GiBHgdI7Mb69ok/bLGr9LH8pOPkQzhji9pqoAAUoj+fgAEIl
	Fcr+TTNul9uLz2B4mkREF5SERi0xN0H7jwMGNIbNPM2rYb6OpFGoT+wzZmJV2uQmuTke
	7+uBLyi/Zz6p5VK4yqrFrcOrYERjn9TkpFLEDaffEEeOkWrtVGNJpxi7EjEu4GpfajzU
	qIMy8reFBANxufIzHccz5JToJ/TxG8Z1sj+LRBgg9HDtd4sRv+LEYl+X/sbUfGnnGG69
	7LFA==
X-Gm-Message-State: ALyK8tJcczY56a1GFlYj67q9sfjAFn7IIKftmQBfKdIeOfK6tdIQ1vCPKQCrqojaE79PZKt2Csh8Bxrpjl0ImA==
X-Received: by 10.200.51.76 with SMTP id u12mr23657856qta.55.1466440556577;
	Mon, 20 Jun 2016 09:35:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Mon, 20 Jun 2016 09:35:27 -0700 (PDT)
In-Reply-To: <1466439840847.257@seescan.com>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
	<19818178.f818cBogRg@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600703@RCHEXMBP1.fnc.net.local>
	<CAMKF1sr5ej_Ot0XN8VgZMAGeexCMoEpeYi7+z2SqzffbzYu0oA@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA60071C@RCHEXMBP1.fnc.net.local>
	<1466439840847.257@seescan.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Jun 2016 09:35:27 -0700
Message-ID: <CAMKF1soLe=cA2NXJcq0Aa2-wjhrUA-4_nYrar1mYM_jHknEW0A@mail.gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ubuntu xenial support
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
X-List-Received-Date: Mon, 20 Jun 2016 16:36:04 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 20, 2016 at 9:24 AM, Fred Ollinger
<Fred.Ollinger@seescan.com> wrote:
> Anyone using Ubuntu Xenial release yet?
>
> Any tricks to get it working?

master OE just works fine on 16.04 here

>
> Frederick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

