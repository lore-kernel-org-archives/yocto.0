Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0254DE007DA; Wed, 13 Jul 2016 12:02:38 -0700 (PDT)
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
	*      [209.85.220.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f193.google.com (mail-qk0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3582AE006D8;
	Wed, 13 Jul 2016 12:02:34 -0700 (PDT)
Received: by mail-qk0-f193.google.com with SMTP id n202so1691796qke.0;
	Wed, 13 Jul 2016 12:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dZTNDjrF7r1eg6Ci/2QGnq036sLMk8egxqlyyLVFJDM=;
	b=rafb8rrpvTSc0WCABYZf6nOv0JuTGsTemivWJAwABW8EtFAGR0CkKYHQE63jbOlf6Q
	6e6Gps8KXff5AQ1LgO8ghbMAg3eoMayX53Y2lXE3QTsnHIOMD3rPs8ybnaWqlxlGA1dh
	au7GJhEZQyuyXu4Ey6F9aXv6lu9CriDD/0YhGB8Fo4+06h8AKBpogpJu8sWj/53efPE5
	saU+40yNLmD4Wj/dVwIbggUeDp9qAKCcDHmmLKjt012XM1k2VXlvENVPprghVGOt2h0c
	dz9XbW8DMjVTnwLNi+NCVbzf7eJM7+blFz+iLpye3Jpt1kwcVF10NZj4PteOk8Hp64/s
	LNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dZTNDjrF7r1eg6Ci/2QGnq036sLMk8egxqlyyLVFJDM=;
	b=ivgkpZgMbqpaSx4pykAf6tfenSstbwXELawa9YnB45Qh1nVKR5uSiooo0fosKVuwEw
	r97ibkaubwmuoiv9HQomf+IDKJLV4LG3lq0jgsFoqtz66DKfJUr8RtTjgLztGPyl0p7d
	4bgIwrhdC5LBFVYaEkYrpPgCkipEE+0VDm5APlqM6qV8jJ9WNSbNYcAZRp/lm7Oll1ln
	+zch6fpsf1bRxFDO4ARktzHeKqbm8lblMFEgId1YeGvpDiklHPGOdIjmcuCP5jLmi/M6
	Cq61HYvKtHXf5OjnghnnL+i+C2rXSIprV5SbCbJ3JGNDIjwPv/bU9Az8fAC0l9L8NLg4
	h9cg==
X-Gm-Message-State: ALyK8tIMt2QIYYl6kbkbMuRUp/KSo/rzbOkOvgAqiwvBR8M3a0GlHMsYqmWhiARjXa+oyvoEh0yGrR/WbJ5OuA==
X-Received: by 10.55.16.232 with SMTP id 101mr12847826qkq.151.1468436554147;
	Wed, 13 Jul 2016 12:02:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Wed, 13 Jul 2016 12:02:04 -0700 (PDT)
In-Reply-To: <CAP3RZojxQ2g-_i+tzw-u3CcUvRXokua8MPkUQadZTRFUZ3ZBWQ@mail.gmail.com>
References: <CAP3RZojxQ2g-_i+tzw-u3CcUvRXokua8MPkUQadZTRFUZ3ZBWQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Jul 2016 12:02:04 -0700
Message-ID: <CAMKF1so=ZNkq3PHDkUV+f3_argw_A_gyGfcOCRcWvtt8GBPpWw@mail.gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to clean externalsrc?
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
X-List-Received-Date: Wed, 13 Jul 2016 19:02:38 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 13, 2016 at 7:53 AM, jags gediya <jags.gediya@gmail.com> wrote:
> I am building external kernel source for imx7 board.
>
> I have done below changes for it, it is working fine while build.
>
> inherit externalsrc
> EXTERNALSRC = /path/to/kernel/
> EXTERNALSRC_BUILD = /path/to/kernel
>
> but when i do clean through bitbake, clean is not happening in externalsrc
> pointed directory. I want clean to be working on externalsrc too. what
> modifications need to be done in yocto?

This is not intention of externalsrc. When you point bitbake to
externalsrc then it expect a prepared and patched
source tree, ideally you should let bitbake manage EXTERNALSRC_BUILD

>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

