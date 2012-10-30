Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8783BE013EB
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 12:03:51 -0700 (PDT)
Received: from mail-gh0-f199.google.com ([209.85.160.199])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 30 Oct 2012 12:03:50 -0700
Received: by mail-gh0-f199.google.com with SMTP id r18so1276660ghr.2
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 12:03:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=ZRFsnFoeg8yi3NhluC/JFP0fB+cdoCutmkpU5Ks4DoM=;
	b=FevFUPSP3JeyyOC5tYC9aBfxQun9sw+TG3kpgZU8s4fy4X4Q0EBenYDGUeGza1+uC1
	pX4h8RX/VKvGC0j9Q4/ioJuUCarGcSZRq8OTHCxMZW2g6Gh7He2vY4Af0BLbbOE8WKKe
	5ZwMvOQXhOO77nJzhDdrOBMCcAvcALvGdP4BJS5GW4KFIqqW8T2FgFFPpddHQkqtYH15
	eGDb73ZzfOypjQwr2ZcJ+7fy0Jpr3PB/hoqoE0aoIMmj6r/IOu9tOsmin6D8KqH5F8t4
	3qqFXLjWVhkM4su7LVavdv00kWWqFBnBt374ztg7vIt7Pnsn7JAwu9nmlYS4JAxztiqF
	VOKg==
Received: by 10.224.78.148 with SMTP id l20mr8044054qak.27.1351623829382;
	Tue, 30 Oct 2012 12:03:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.78.148 with SMTP id l20mr8044043qak.27.1351623829203; Tue,
	30 Oct 2012 12:03:49 -0700 (PDT)
Received: by 10.229.94.206 with HTTP; Tue, 30 Oct 2012 12:03:49 -0700 (PDT)
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE233E72F80@ORSMSX105.amr.corp.intel.com>
References: <cover.1351616833.git.kishore.k.bodke@intel.com>
	<b3c825a8aa5a4e1d8fd7a861ce48b1de69fbd381.1351616833.git.kishore.k.bodke@intel.com>
	<CAPhnLPAGipumnCbemDobzwEACD=QUwXdF8YrABa=tvKzjvHNJQ@mail.gmail.com>
	<D956029D25CF204F948EA0FB515E1EE233E72F80@ORSMSX105.amr.corp.intel.com>
Date: Tue, 30 Oct 2012 12:03:49 -0700
Message-ID: <CAPhnLPDkbs1cLFTFhgqmuPd+N23nD1pVLB3m94ezy7mp19gZkA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
X-Gm-Message-State: ALoCoQnM5W+R8G9/Q9McmS/LgGL8ucLeHZnSaOjGtnM6DioqddFLCD9bQBGyE5CEtfxuDv8blIgang7MGsE0xc2SpsVN9ASOC3PswYxb7ksAet0SlSgk0i3+KF0xpcn3WC9ggOpha/Rd8PM2BcKUArFnqToNSI6ILQ==
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
X-List-Received-Date: Tue, 30 Oct 2012 19:03:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Oct 30, 2012 at 11:37 AM, Bodke, Kishore K
<kishore.k.bodke@intel.com> wrote:
>
>
>>-----Original Message-----
>>From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
>>Sent: Tuesday, October 30, 2012 11:20 AM
>>To: Bodke, Kishore K
>>Cc: Zanussi, Tom; Kamble, Nitin A; yocto@yoctoproject.org
>>Subject: Re: [yocto] [PATCH 1/1] [meta-intel] meta-intel/common: Add
>>License info for openssl-qat-module
>>
>>On Tue, Oct 30, 2012 at 10:11 AM,  <kishore.k.bodke@intel.com> wrote:
>>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>>
>>> openssl-qat-module has the dual license. So add GPLv2 and BSD
>>> License to openssl qat Module.
>>>
>>> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
>>> ---
>>>  .../openssl-qat-module/openssl-qat-module.bb       |    6 ++++--
>>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/common/recipes-connectivity/openssl-qat-module/openssl-qat-
>>module.bb b/common/recipes-connectivity/openssl-qat-module/openssl-
>>qat-module.bb
>>> index a4fe3c5..fdeebbb 100644
>>> --- a/common/recipes-connectivity/openssl-qat-module/openssl-qat-
>>module.bb
>>> +++ b/common/recipes-connectivity/openssl-qat-module/openssl-qat-
>>module.bb
>>> @@ -7,8 +7,10 @@ implemented on Intel Communications Chipset 89xx
>>Series based platforms."
>>>  HOMEPAGE = "http://www.openssl.org/"
>>>  SECTION = "libs/network"
>>>
>>> -LICENSE = "openssl"
>>> -LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-
>>${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8"
>>> +LICENSE = "openssl & GPLv2 & BSD"
>>
>>I'd actually make this:
>>
>>LICENSE = "OpenSSL & GPLv2 & BSD"
>>
>>as there is no SPDXLICENSEMAP to map openssl to OpenSSL, so this
>>should be throwing warnings.
>>
>
> I see LICENSE = "openssl" in poky/meta/recipes-connectivity/openssl/openssl.inc.
> So I followed the same here.

Ah, I stand corrected. There is an SPDXLICENSEMAP for openssl so yes,
this should be fine.

-b

>
> Thanks
> Kishore.
>
>>> +LIC_FILES_CHKSUM = "file://${WORKDIR}/openssl-
>>${PV}/LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8 \
>>> +                       file://${COMMON_LICENSE_DIR}/GPL-
>>2.0;md5=801f80980d171dd6425610833a22dbe6 \
>>> +
>>file://${COMMON_LICENSE_DIR}/BSD;md5=3775480a712fc46a69647678acb23
>>4cb"
>>>
>>>  PV = "1.0.1"
>>>  PR = "r0"
>>> --
>>> 1.7.9.5
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>--
>>Elizabeth Flanagan
>>Yocto Project
>>Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

