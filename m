Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CF4E01396
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 09:59:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 May 2012 09:59:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="166095786"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 14 May 2012 09:59:14 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 14 May 2012 09:59:14 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.121]) with mapi id
	14.01.0355.002; Mon, 14 May 2012 09:59:14 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Yocto Project Discussions <yocto@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Unable to fetch URL from any source
Thread-Index: Ac0vXYfqo3OUnH4MTu+dY+HkyEL2NAAOdnqgABJCBwAAhI+qsA==
Date: Mon, 14 May 2012 16:59:12 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACAE48B@ORSMSX105.amr.corp.intel.com>
References: <99B4EF8390848E44BF0CFDBD67466FA40ECE86@PGSMSX103.gar.corp.intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACACD57@ORSMSX105.amr.corp.intel.com>
	<4FAD5D74.3080004@windriver.com>
In-Reply-To: <4FAD5D74.3080004@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Unable to fetch URL from any source
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
X-List-Received-Date: Mon, 14 May 2012 16:59:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Friday, May 11, 2012 11:42 AM
>To: Bodke, Kishore K
>Cc: Yocto Project Discussions; yocto@yoctoproject.org
>Subject: Re: Unable to fetch URL from any source
>
>On 12-05-11 01:04 PM, Bodke, Kishore K wrote:
>> Yes.
>>
>> I saw the same failures too.
>>
>> For some reason 3.0 kernel fetch failures started showing up for
>Cedartrail.
>>
>> There is a discussion thread on this in the mailing list.
>>
>> Bruce might be able to give some pointers on this.
>
>Unfortunately not. From what I hear, it's server issues. Which will be
>resolved ASAP.

Does anyone have update on this?

Thanks
Kishore.

>
>Cheers,
>
>Bruce
>
>>
>> -Kishore.
>>
>> *From:*yocto-bounces@linux.intel.com
>> [mailto:yocto-bounces@linux.intel.com] *On Behalf Of *Chiang, Terence
>> *Sent:* Friday, May 11, 2012 3:05 AM
>> *To:* Yocto Project Discussions (yocto@linux.intel.com)
>> *Subject:* [Yocto] Unable to fetch URL from any source
>>
>> Hi
>>
>> While I build the image for cedartrail with "denzil"
>>
>> With meta-cedartrail and distro =3D "poky". the error is following and
>the
>> detail log is attached.
>>
>> Function failed: Fetcher failure for URL:
>> 'git://git.yoctoproject.org/linux-yocto-
>3.0;protocol=3Dgit;bareclone=3D1;branch=3Dyocto/standard/cedartrail,meta,y=
octo
>/pvr;name=3Dmachine,meta,pvr'.
>> Unable to fetch URL from any source.
>>
>> Do you encounter similar issue?
>>
>> /Regard,/
>>
>> -Terence
>>


