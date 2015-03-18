Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A05F1E00828; Wed, 18 Mar 2015 16:35:38 -0700 (PDT)
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
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33BEFE0034E
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 16:35:36 -0700 (PDT)
Received: by iecvj10 with SMTP id vj10so53109071iec.0
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 16:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=MJm1TvrI/+Vb+IX2UPnnlbC3G3otd2RgymlP6ZrBIZk=;
	b=LZ7IPl8Qa/tXiI5GXTYDLkWJYY6l4h1tQXqhGqDBr585TS3cV8YXMX9k2zip5VR/j0
	5agq4uwQryaanGu4GyC+N6jgQUlyy6XroTTfqNtJn/ylFb+hVfAKBA9uxJG/CGLyi+8o
	chVE69oIo31cx+MySplQRNUlXDPqzzviPf2rDSXiQqynPc29ixMg8lc/87aodjNva0PK
	bQGoPSWXVSf4c9TMVcSaPU5ErA7jcH7srHrmcNdsvl4rYw2qPNqnmcPFYhLMcNOvUsVF
	Ckphv3Nl62fYZXQHRF0sEIZL3c8IBMKKPjXRPvtGR7bIQE1K7+EC6v0WdDvWTUWj2Qkk
	U6Ng==
X-Received: by 10.107.6.212 with SMTP id f81mr129951067ioi.37.1426721735875;
	Wed, 18 Mar 2015 16:35:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Wed, 18 Mar 2015 16:35:05 -0700 (PDT)
In-Reply-To: <CAALGJZaXn=ohTynN0sk_Qz8GPahX44AmdPgQ4=xqSmU8kpM0fg@mail.gmail.com>
References: <CAALGJZaXn=ohTynN0sk_Qz8GPahX44AmdPgQ4=xqSmU8kpM0fg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 Mar 2015 16:35:05 -0700
Message-ID: <CAMKF1srCKEL8s_xb8FD8g21ZwQPNRYZeWxvV7GNLrZWMKG==9Q@mail.gmail.com>
To: Christian Ege <k4230r6@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to support arm-none-eabi toolchain for u-boot on Amlogic
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
X-List-Received-Date: Wed, 18 Mar 2015 23:35:38 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 18, 2015 at 12:55 PM, Christian Ege <k4230r6@gmail.com> wrote:
> Hello,
>
> it looks like that Amlogic based devices like the ODROID-C1 [1]
> requires their u-boot compiled with an arm-none-eabi toolchain. The
> rest kernel and rootfs is compiled with standard arm eabi toolchain. I
> am wondering how to support this in yocto/openembedded.

are there any specific reasons for doing that ?
can it be done by passing -ffreestanding option via CFLAGS
afterall uboot is a baremetal/standalone app.

