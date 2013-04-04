Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51D8EE01487
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 11:31:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Apr 2013 11:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,410,1363158000"; d="scan'208";a="317024973"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2013 11:31:13 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 4 Apr 2013 11:31:12 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.39]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.107]) with mapi id
	14.01.0355.002; Thu, 4 Apr 2013 11:31:13 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "Paul D. DeRocco"
	<pderocco@ix.netcom.com>
Thread-Topic: [yocto] This one can't be me...
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAITTSAACOC5oAADDYCwA==
Date: Thu, 4 Apr 2013 18:31:12 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
	<7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
In-Reply-To: <515DB5F5.5010300@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: This one can't be me...
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
X-List-Received-Date: Thu, 04 Apr 2013 18:31:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Thursday, April 04, 2013 10:19 AM
>To: Paul D. DeRocco
>Cc: yocto@yoctoproject.org; Bodke, Kishore K
>Subject: Re: [yocto] This one can't be me...
>
>
>
>On 04/03/2013 05:21 PM, Paul D. DeRocco wrote:
>>> From: Darren Hart
>>>
>>> Are you building with the rm work setting? Otherwise, that
>>> should not be
>>> empty unless you have more than one linux-yocto* directory
>>> and the other
>>> is populated.
>>>
>>> If not, verify rm work is not on and just build the kernel:
>>>
>>> $ bitbake linux-yocto -c cleansstate
>>> $ bitbake linux-yocto
>>
>> After doing that (with two esses), I now have a .config file, along with=
 a
>> ton of other stuff, in that folder. I have no idea what made it disappea=
r,
>> because I don't use the rm_work option.
>>
>> However, the only BLK_DEV_RAM line is
>>
>> 	# CONFIG_BLK_DEV_RAM is not set
>>
>> I haven't been fiddling with the kernel, because I don't know how to fid=
dle
>> with the kernel. This should be a plain vanilla build.
>>
>
>So that would result in this exact failure. Kishore, can you verify the
>BSP linux-yocto meta-data and either fix the BLK_DEV_RAM issue or help
>Paul sort out what he may have done that resulted in this breakage?
>

Hi Paul,

While I do the check and verify at my end, can you enable the missing confi=
gs by=20
Menuconfig?

bitbake  -c  menuconfig  linux-yocto
bitbake  linux-yocto.

Thanks
Kishore.

