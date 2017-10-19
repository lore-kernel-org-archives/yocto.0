Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7EB8E00D41; Thu, 19 Oct 2017 09:03:51 -0700 (PDT)
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
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D94EE00C45
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 09:03:49 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id x7so6899835pfa.1
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 09:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I6Ihy8pn8ARrONUIUPXqbkGe8HyT+11Cw+VDD6Dc5ic=;
	b=POKV7DvNawd9DscsXzX0YlUE6D2d3HBLeTIuzzgMRMCQ0u76pKN4MaCxIAypaN641E
	iPetPb9ht55cfAPPJPnNDNy1Td1o/aUdJxDQPAJTqzAMJ7AdIaDsLfp0VUNVYpRQRpBe
	YwQPxsU/FUV/G4YYt2/UwUIE3M8Qa8SgLG9+VvHYpXsj2qxfZLOoZLy8npC8WxdvQBeC
	YQzwXUtcfxSZYCGf2C7Xuh5I32VrJE0QeTZMvSGpsHG4ObdihOCH4pj1bHrXbd0ud750
	LnAdXM1debeUpEDyDbCfrtbRP/3HGAKVewDEhaAJzCAPcxWzVczuGscQV9OMEu+HVPGn
	XnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I6Ihy8pn8ARrONUIUPXqbkGe8HyT+11Cw+VDD6Dc5ic=;
	b=Mw5R+mSu+08bwS2o667+QYgBymbdg9yeYVoYN/SR+2RepuW/KnpePIuqMI5m/vHlGS
	mVQLuL23IU95XEKo4vXGTFlkB9vrMZ+e+EuHiFT3yJ0rHLLCR2NXZZe3xUQkKMeGu34k
	LmN23YVukNtYAoSHb0twIvVBrCphNhhgZLQ4wTfMNLilAuzTToV6prNicP/WKNXY46Pn
	AqPiTxpvbVRWFH07WCsNSDC+SNDoYkG7VVszKXraA8q2cavTMenKIvIe8qPpjXT3WYvz
	BQtfHJ7fx4iGhcTVd18SGxPY+N9A8HgEgK5FfCt5ETY7GPlY15OmVI9usDUQ10YVcbHw
	7N1w==
X-Gm-Message-State: AMCzsaUzw4orGuddcYztanpctJq4lqDFZjuwhu4K9w1IGKQXM/rrJDKM
	mkfnpVc5vPXwX0Ctv/umHschMxFeaq4oAuSj5Mk=
X-Google-Smtp-Source: ABhQp+QgN6ZGxeIVDDJW2nSUgVdex8I8sT486spZy+Ey4MhSstzJpnrHZ4Bgu1mIxHFLiZs8QjvwxnA4IBzOLSJO7Z0=
X-Received: by 10.84.177.36 with SMTP id w33mr1894588plb.215.1508429029306;
	Thu, 19 Oct 2017 09:03:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Thu, 19 Oct 2017 09:03:17 -0700 (PDT)
In-Reply-To: <HK2PR04MB0995ED6B87A86B870E56094CE6420@HK2PR04MB0995.apcprd04.prod.outlook.com>
References: <HK2PR04MB0995ED6B87A86B870E56094CE6420@HK2PR04MB0995.apcprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Oct 2017 09:03:17 -0700
Message-ID: <CAMKF1srpHbFOM2_56WcRCHzb2nAi6Lvw4RtYZtW2c-vk9n_cig@mail.gmail.com>
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Lib /modules not listed
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
X-List-Received-Date: Thu, 19 Oct 2017 16:03:51 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 18, 2017 at 11:38 PM, Umamahesh Yelchuruvenkata
<umamahesh.y@hcl.com> wrote:
> Hi
> At the target lib/modules is not listing and lsmod is not tainted.
> Any suggestions.

Add kerne-modules to your image may be via IMAGE_INSTALL

>
> Thanks
> UmaMahesh
>
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability
> on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior written
> consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error please
> delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses
> and other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

