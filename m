Return-Path: <czesiekbis@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFA95E00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 13:05:21 -0700 (PDT)
Received: by wgbdt10 with SMTP id dt10so1596779wgb.11
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 13:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=S5vzNZutOE7sZT1gxGV/ZerzUHcZNF2K+9zsSXka57s=;
	b=f58Sj5RKgdLVq7HpT7GLITR654gRimpPxkiAt6tX2jfuaO/w8rhw5GYTD56f74xCqc
	fXx8n8T0Jrzq2GxJ5WFFn4ht8pSsGnLPUs0NzIWZT2/Z39oGgtt/aeaaS6c7RJwfLgl9
	s8bFL+3AHDuFRQDTWeY+JWXbA6zPVQFaDivPWs7HjL3DDpSPWOH0qTNud44b9ojembCC
	G/eTKnXonp19/lAAwu+hc1fioblekIUfKX0jmQkVeULsbpdhUT4bSngsnTDOIp7bntwr
	GzSUpwMJ8eYismExU4K51+AcR1E6rfrfR9PIAvCRTNn1OVXE3qZsyKsUj4bf7s9ke3al
	UyOw==
MIME-Version: 1.0
Received: by 10.180.82.230 with SMTP id l6mr7935463wiy.21.1348171520383; Thu,
	20 Sep 2012 13:05:20 -0700 (PDT)
Received: by 10.216.220.93 with HTTP; Thu, 20 Sep 2012 13:05:19 -0700 (PDT)
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE21C10AEFF@ORSMSX105.amr.corp.intel.com>
References: <cover.1348094339.git.kishore.k.bodke@intel.com>
	<CAPyixAkSGDRXkne0WYsMfS6jD7hMek=O5jkq=w2FgeS9UMzVmg@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE21C10AE7D@ORSMSX105.amr.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE21C10AEFF@ORSMSX105.amr.corp.intel.com>
Date: Thu, 20 Sep 2012 21:05:19 +0100
Message-ID: <CAPyixAk_cT9dkQffaXZv8wP1w8RS0N_HiMm3oMUP=82rpXsYbg@mail.gmail.com>
From: =?ISO-8859-2?Q?Przemys=B3aw_Czesnowicz?= <czesiekbis@gmail.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Cc: "Czesnowicz, PrzemyslawX" <przemyslawx.czesnowicz@intel.com>, "Samson,
	Don" <don.samson@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 20 Sep 2012 20:05:22 -0000
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: quoted-printable

2012/9/20 Bodke, Kishore K <kishore.k.bodke@intel.com>:
>
>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Bodke, Kishore K
>>Sent: Thursday, September 20, 2012 9:21 AM
>>To: Przemyslaw Czesnowicz
>>Cc: Samson, Don; Czesnowicz, PrzemyslawX; yocto@yoctoproject.org
>>Subject: Re: [yocto] [PATCH 0/3][meta-intel] Add new Corpus recipes to
>>Crystal Forest BSP.
>>
>>
>>
>>>-----Original Message-----
>>>From: Przemys=B3aw Czesnowicz [mailto:czesiekbis@gmail.com]
>>>Sent: Thursday, September 20, 2012 3:58 AM
>>>To: Bodke, Kishore K
>>>Cc: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org; Samson, Don;
>>>Czesnowicz, PrzemyslawX
>>>Subject: Re: [yocto] [PATCH 0/3][meta-intel] Add new Corpus recipes to
>>>Crystal Forest BSP.
>>>
>>>2012/9/19  <kishore.k.bodke@intel.com>:
>>>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>>>
>>>> Hi,
>>>>
>>>> This patch set adds three different types of Corpus files
>>>> to Crystal Forest BSP, which are basically used to test the
>>>> Lossless Compression algorithms.
>>>>
>>>> 1. calgary-corpus
>>>> 2. canterbury-corpus
>>>> 3. silesia-corpus
>>>>
>>>> These have been tested on both Crystal Forest Platforms.
>>>>
>>>
>>>Hi
>>>
>>>Are those for the sample code of QA driver?
>>>If so  the sample code needs the corpus to be in one file
>>>
>>>tar -xf calgary.tar.gz -O > calgary
>>>
>>>Also the CrystalForest software package includes the
>>> calgary and canterbury corpus files, at least in 0.9.0 version
>>>
>>
>>Yes. These are for the QuickAssist Driver.
>>All the sample corpus data files will be installed under /lib/firmware, a=
t least
>>with the 0.9.0-144  version QA driver, that I had tested.
>>
>>Instead of having all of files in one package and having one recipe, I ha=
d split
>>them to multiple recipes.
>>
>
> If you are talking about the Calgary and Canterbury files that are part o=
f QAT Software package,
> that are present in the sample_code/performance/compression, then, Yes, t=
hey will stay inside the QAT Software Package.
>
> But these are the external to the QAT package.
>
> Thanks
> Kishore.

Ok, then

Thanks

