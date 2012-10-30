Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00B1E003DA
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 11:37:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Oct 2012 11:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,682,1344236400"; d="scan'208";a="234749822"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2012 11:37:15 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 30 Oct 2012 11:37:15 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.140]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.195]) with mapi id
	14.01.0355.002; Tue, 30 Oct 2012 11:37:15 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] [PATCH 1/1] [meta-intel] meta-intel/common: Add
	License info for openssl-qat-module
Thread-Index: AQHNtsFCBoLyNibrDkSusoHXUhK1wpfSnhqA//+O65A=
Date: Tue, 30 Oct 2012 18:37:14 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE233E72F80@ORSMSX105.amr.corp.intel.com>
References: <cover.1351616833.git.kishore.k.bodke@intel.com>
	<b3c825a8aa5a4e1d8fd7a861ce48b1de69fbd381.1351616833.git.kishore.k.bodke@intel.com>
	<CAPhnLPAGipumnCbemDobzwEACD=QUwXdF8YrABa=tvKzjvHNJQ@mail.gmail.com>
In-Reply-To: <CAPhnLPAGipumnCbemDobzwEACD=QUwXdF8YrABa=tvKzjvHNJQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] [meta-intel] meta-intel/common: Add License info for openssl-qat-module
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
X-List-Received-Date: Tue, 30 Oct 2012 18:37:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
>Sent: Tuesday, October 30, 2012 11:20 AM
>To: Bodke, Kishore K
>Cc: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org
>Subject: Re: [yocto] [PATCH 1/1] [meta-intel] meta-intel/common: Add
>License info for openssl-qat-module
>
>On Tue, Oct 30, 2012 at 10:11 AM,  <kishore.k.bodke@intel.com> wrote:
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>
>> openssl-qat-module has the dual license. So add GPLv2 and BSD
>> License to openssl qat Module.
>>
>> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
>> ---
>>  .../openssl-qat-module/openssl-qat-module.bb       |    6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/common/recipes-connectivity/openssl-qat-module/openssl-qat-
>module.bb b/common/recipes-connectivity/openssl-qat-module/openssl-
>qat-module.bb
>> index a4fe3c5..fdeebbb 100644
>> --- a/common/recipes-connectivity/openssl-qat-module/openssl-qat-
>module.bb
>> +++ b/common/recipes-connectivity/openssl-qat-module/openssl-qat-
>module.bb
>> @@ -7,8 +7,10 @@ implemented on Intel Communications Chipset 89xx
>Series based platforms."
>>  HOMEPAGE =3D "http://www.openssl.org/"
>>  SECTION =3D "libs/network"
>>
>> -LICENSE =3D "openssl"
>> -LIC_FILES_CHKSUM =3D "file://${WORKDIR}/openssl-
>${PV}/LICENSE;md5=3Df9a8f968107345e0b75aa8c2ecaa7ec8"
>> +LICENSE =3D "openssl & GPLv2 & BSD"
>
>I'd actually make this:
>
>LICENSE =3D "OpenSSL & GPLv2 & BSD"
>
>as there is no SPDXLICENSEMAP to map openssl to OpenSSL, so this
>should be throwing warnings.
>

I see LICENSE =3D "openssl" in poky/meta/recipes-connectivity/openssl/opens=
sl.inc.
So I followed the same here.

Thanks
Kishore.

>> +LIC_FILES_CHKSUM =3D "file://${WORKDIR}/openssl-
>${PV}/LICENSE;md5=3Df9a8f968107345e0b75aa8c2ecaa7ec8 \
>> +                       file://${COMMON_LICENSE_DIR}/GPL-
>2.0;md5=3D801f80980d171dd6425610833a22dbe6 \
>> +
>file://${COMMON_LICENSE_DIR}/BSD;md5=3D3775480a712fc46a69647678acb23
>4cb"
>>
>>  PV =3D "1.0.1"
>>  PR =3D "r0"
>> --
>> 1.7.9.5
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>--
>Elizabeth Flanagan
>Yocto Project
>Build and Release

