Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51E25E004AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 09:21:28 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 20 Sep 2012 09:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,454,1344236400"; d="scan'208";a="147221312"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Sep 2012 09:21:27 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 20 Sep 2012 09:21:26 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.116]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.213]) with mapi id
	14.01.0355.002; Thu, 20 Sep 2012 09:21:26 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Przemyslaw Czesnowicz <czesiekbis@gmail.com>
Thread-Topic: [yocto] [PATCH 0/3][meta-intel] Add new Corpus recipes to
	Crystal Forest BSP.
Thread-Index: AQHNlx7YUyN8bQTqQUKSmAB/oZZTCJeTaBAg
Date: Thu, 20 Sep 2012 16:21:26 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE21C10AE7D@ORSMSX105.amr.corp.intel.com>
References: <cover.1348094339.git.kishore.k.bodke@intel.com>
	<CAPyixAkSGDRXkne0WYsMfS6jD7hMek=O5jkq=w2FgeS9UMzVmg@mail.gmail.com>
In-Reply-To: <CAPyixAkSGDRXkne0WYsMfS6jD7hMek=O5jkq=w2FgeS9UMzVmg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Samson, Don" <don.samson@intel.com>, "Czesnowicz,
	PrzemyslawX" <przemyslawx.czesnowicz@intel.com>,
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
X-List-Received-Date: Thu, 20 Sep 2012 16:21:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Przemys=B3aw Czesnowicz [mailto:czesiekbis@gmail.com]
>Sent: Thursday, September 20, 2012 3:58 AM
>To: Bodke, Kishore K
>Cc: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org; Samson, Don;
>Czesnowicz, PrzemyslawX
>Subject: Re: [yocto] [PATCH 0/3][meta-intel] Add new Corpus recipes to
>Crystal Forest BSP.
>
>2012/9/19  <kishore.k.bodke@intel.com>:
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>
>> Hi,
>>
>> This patch set adds three different types of Corpus files
>> to Crystal Forest BSP, which are basically used to test the
>> Lossless Compression algorithms.
>>
>> 1. calgary-corpus
>> 2. canterbury-corpus
>> 3. silesia-corpus
>>
>> These have been tested on both Crystal Forest Platforms.
>>
>
>Hi
>
>Are those for the sample code of QA driver?
>If so  the sample code needs the corpus to be in one file
>
>tar -xf calgary.tar.gz -O > calgary
>
>Also the CrystalForest software package includes the
> calgary and canterbury corpus files, at least in 0.9.0 version
>

Yes. These are for the QuickAssist Driver.
All the sample corpus data files will be installed under /lib/firmware, at =
least with the 0.9.0-144  version QA driver, that I had tested.

Instead of having all of files in one package and having one recipe, I had =
split them to multiple recipes.

Thanks
Kishore.

