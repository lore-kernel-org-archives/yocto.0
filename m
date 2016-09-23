Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74177E00D10; Thu, 22 Sep 2016 18:47:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EEA5E007C2
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 18:47:45 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id u68so20107869uau.0
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 18:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=pIuPWQt4ZI18khHITbORYuyWegZdd3h9Z86NleGXJu0=;
	b=Z2Sj3bkmwK8tYh1iDj5OCcVLCdhGEm9fXEGTYbMWwv1RWXb4iDihCpp28wScg9btTn
	8BNHy6CLuOrUE/ahRgAXL0PnVJRgdAZMb/6VSAX8vJMLcX8ImFVwdbjVJbj7dC5Kcsoa
	+qycOz7QJxJ7mstrejF4F005Jaqf1akCTcE9pVKPNQoUcwO2av7T1120Uf1C54LKEiwR
	KFwORWehPKPKPgbM+udMHalZbA4RNtaAQSIujVfxwdhyBglcM2ByJiGKkzG0JA+bWU30
	sPF4o6ue+KDYpmeqhZt/G6sFciDRritghHQ3fp+NKbfWaHxc0bBtlkPJjtJH3ig3jYpb
	BxlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=pIuPWQt4ZI18khHITbORYuyWegZdd3h9Z86NleGXJu0=;
	b=J+p1RpQnMTElmFmJ+M+SZdPyRatI1RnHCvFT76gB2M4BhYlnnr5EjFES4y4bNdZF9i
	lFZINZeS4WXEWrtGuzG5Sn8JyfQj8hbQ1QoxFPblkWYHJIbqJ5e3pWIi/3hphTalBsB/
	kKHxyDcSZlDPkyG7av2qvu1/uRq1LTxb+h0zRqkl0NxLNwY1SDp595h0aVWgjqs2oQOo
	OUPZ/0GVxyHfYLEQ4/uD3l3Jc3q+PrZd36xDdaQX0vKywAxzqe8Zq99zL9AFyliHj3uH
	Kzamn6ITTKTaTV0/cqbDgsNUQndptgGjZH/awoX0MkAy/YFe4cE6QglOyt0j9zM4WhUc
	+ceQ==
X-Gm-Message-State: AE9vXwP295c76Qx0KT7muQTCY7q7eZHbsz3DOrIeOLqm9KDCXlbSL6WCxebegFuQ+KqoGhzt5cjK1hK3Yl8+WQ==
X-Received: by 10.176.4.81 with SMTP id 75mr2114285uav.142.1474595264599; Thu,
	22 Sep 2016 18:47:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.33 with HTTP; Thu, 22 Sep 2016 18:47:14 -0700 (PDT)
In-Reply-To: <20160922071643.GE27958@graute-opti>
References: <20160916082406.GB27958@graute-opti>
	<CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
	<20160919115820.GC27958@graute-opti>
	<20160922071643.GE27958@graute-opti>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Sep 2016 18:47:14 -0700
Message-ID: <CAMKF1sqRxXEY-z2Jz5=SADE9hxai1_TnDUUMbS+9tcc1Ok5uKg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Andre McCurdy <armccurdy@gmail.com>
Subject: Re: build ntp with openssl support
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
X-List-Received-Date: Fri, 23 Sep 2016 01:47:46 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 22, 2016 at 12:16 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> On 19/09/16, Oliver Graute wrote:
>> On 16/09/16, Andre McCurdy wrote:
>> > On Fri, Sep 16, 2016 at 1:24 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
>> > > Hello,
>> > >
>> > > how can I build ntp with openssl support?
>> > >
>> > > I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.
>> > >
>> > > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>> >
>> > You don't really need this line unless you are adding a file to
>> > SRC_URI or replacing a file already in SRC_URI with your own version.
>> >
>> > > PACKAGECONFIG += "openssl"
>> >
>> > This will enable openssl, but it will also disable all the default
>> > PACKAGECONFIG options (cap, debug and refclocks) which is probably not
>> > what you want. Try this instead:
>> >
>> >   PACKAGECONFIG_append = " openssl"
>> >
>> > Note the space between " and openssl. It's required.
>>
>> ok now I see the right configure script options during the configuration
>> of the ntp build.
>>
>> --with-openssl-libdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
>> --with-openssl-incdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
>> --with-crypto
>>
>> But ntp is still build without openssl support. The configure scripts
>> can't find the relevant openssl stuff.
>>
>> configure:34762: checking for openssl library directory
>> configure:34802: result: no
>> configure:34807: WARNING: libcrypto and libssl not found in any of /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
>> configure:34811: checking for openssl include directory
>> configure:34833: result: /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
>> configure:34877: checking if we will use crypto
>> configure:34879: result: no
>> configure:35109: checking if we want to use OpenSSL's crypto random (if available)
>> configure:35119: result: yes
>>
>> some clue whats wrong here?
>
> in my sysroots/imx6ulevk/usr/lib I have
>
> ls -la libssl*
>
> libssl3.so
> libssl.a
> libssl.so -> libssl.so.1.0.0
> libssl.so.1.0.0
>
> ls -la libcrypt*
>
> libcrypt.a
> libcrypt_pic.a
> libcrypt_pic.map
> libcrypt.so -> ../../lib/libcrypt.so.1
>
>
> but no libcrypto.so. I guess thats the reason why my ntp configure
> script is complaining.
>
> Some ideas how to get libcrypto.so in my /usr/lib folder in the yocto
> sysroot?
>

It seems your openssl is not being compiled correctly. Can you go into
builddir or openssl
and see if libcrypto.so.1.0.0 is built ? if not then you have to do
some digging why its not
configuring to build libcrypto

> some explenation whats the difference between libcrypt.so and libcrypto.so?
>
> Best Regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

