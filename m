Return-Path: <czesiekbis@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B53E004AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 03:57:58 -0700 (PDT)
Received: by lboi15 with SMTP id i15so2658759lbo.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 03:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=E0yhIQ/CQfdoRfy7nTLav+CA5BRZFB/iu8Uuc1X/H68=;
	b=nZPV7MeVA7egzqBghqfzIa1+ip2G/9ywk1kYybLT0kMzOJ1uL5sr4uINBPSNRVjW9q
	dIUWu8EjqGYMK1W3pBlBUp+gT8yYilAUurdi5nDBYY/aWLoa4HqSclYp5dmHlMDDEA+E
	08lbBKzwRy8t9vco6FmV30IQv3wtAMx8ZZAQ/N0E6M6tH6w5rYDKLRlvCT7QdRdmldHm
	20fn9ybFe2OC7dbU2m3eE/i/rrrSJoYHwJ3QSuAPfjK6BH8MzrIObV0SU4l7lCg/siWv
	E7Sbs3FNfCYWEpy0o+dJOQtCUpLdaedd5xeVqwNVr9JvPi31vhPtTiFqy1ntSXICC+lu
	/oyA==
MIME-Version: 1.0
Received: by 10.112.37.66 with SMTP id w2mr531163lbj.124.1348138672928; Thu,
	20 Sep 2012 03:57:52 -0700 (PDT)
Received: by 10.112.132.167 with HTTP; Thu, 20 Sep 2012 03:57:52 -0700 (PDT)
In-Reply-To: <cover.1348094339.git.kishore.k.bodke@intel.com>
References: <cover.1348094339.git.kishore.k.bodke@intel.com>
Date: Thu, 20 Sep 2012 11:57:52 +0100
Message-ID: <CAPyixAkSGDRXkne0WYsMfS6jD7hMek=O5jkq=w2FgeS9UMzVmg@mail.gmail.com>
From: =?ISO-8859-2?Q?Przemys=B3aw_Czesnowicz?= <czesiekbis@gmail.com>
To: kishore.k.bodke@intel.com
Cc: don.samson@intel.com, przemyslawx.czesnowicz@intel.com,
	yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][meta-intel] Add new Corpus recipes to Crystal Forest BSP.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 10:57:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/9/19  <kishore.k.bodke@intel.com>:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
>
> Hi,
>
> This patch set adds three different types of Corpus files
> to Crystal Forest BSP, which are basically used to test the
> Lossless Compression algorithms.
>
> 1. calgary-corpus
> 2. canterbury-corpus
> 3. silesia-corpus
>
> These have been tested on both Crystal Forest Platforms.
>

Hi

Are those for the sample code of QA driver?
If so  the sample code needs the corpus to be in one file

tar -xf calgary.tar.gz -O > calgary

Also the CrystalForest software package includes the
 calgary and canterbury corpus files, at least in 0.9.0 version

Regards
Przemek

