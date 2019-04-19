Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AC9DE00B5C; Thu, 18 Apr 2019 20:16:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EDBDE009A0;
	Thu, 18 Apr 2019 20:16:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Apr 2019 20:16:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,368,1549958400"; d="scan'208";a="137059345"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by orsmga006.jf.intel.com with ESMTP; 18 Apr 2019 20:16:40 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.159]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.8]) with mapi id
	14.03.0415.000; Fri, 19 Apr 2019 11:16:39 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>, "Graydon, Tracy"
	<tracy.graydon@intel.com>, "yocto-announce@yoctoproject.org"
	<yocto-announce@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2
	(thud 20.0.2)	Released
Thread-Index: AQHU9lPltK/FgWg8xke2kwFzqqzHYaZCzi3Q
Date: Fri, 19 Apr 2019 03:16:38 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DD7AB4@PGSMSX110.gar.corp.intel.com>
References: <0720978d-2fdd-3084-3217-dc93470040e1@intel.com>
	<BYAPR02MB60055D9DE1AD3A765C241855B9250@BYAPR02MB6005.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB60055D9DE1AD3A765C241855B9250@BYAPR02MB6005.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODY2YTVkMjAtMzI4ZC00NmYzLWE1ZTctZTQxMjMwNDY1MmJjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicXhsUFFMa3Q5Z05Lb1lBZVY2VW9DcXZGVTlYOEQ3TUZQT3I0VytEYkE5M3dWTElmek1jRHlJbDJrNjVLMDJIZCJ9
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2	(thud 20.0.2)	Released
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
X-List-Received-Date: Fri, 19 Apr 2019 03:16:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

For latest releases and test results please refer to:

https://autobuilder.yocto.io/pub/releases/

For previous test results, refer to yocto-testresults repo at=20

https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults/

to refer 2.6.2.rc3 results from yocto-testresults, use

--branch thud  --commit faeb366bc3eb322f5f203cfe08dc4cf529a822e9


Thanks & Regards,
Sangeeta Jain

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On
>Behalf Of Manjukumar Harthikote Matha
>Sent: Thursday, 18 April, 2019 4:28 AM
>To: Graydon, Tracy <tracy.graydon@intel.com>; yocto-
>announce@yoctoproject.org; yocto@yoctoproject.org
>Subject: Re: [yocto] [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2
>(thud 20.0.2) Released
>
>Hi Tracy,
>
>> -----Original Message-----
>> From: yocto-announce-bounces@yoctoproject.org [mailto:yocto-announce-
>> bounces@yoctoproject.org] On Behalf Of Tracy Graydon
>> Sent: Wednesday, April 17, 2019 1:25 PM
>> To: yocto-announce@yoctoproject.org; yocto@yoctoproject.org
>> Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.6.2 (thud
>> 20.0.2) Released
>>
>> We are pleased to announce the latest release of the Yocto Project
>> 2.6.2 (thud-
>> 20.0.2) is now available for download:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.2/poky-thud
>> -
>> 20.0.2.tar.bz2
>> http://mirrors.kernel.org/yocto/yocto/yocto-2.6.2/poky-thud-20.0.2.tar
>> .bz2
>>
>> A gpg signed version of these release notes is available at:
>>
>> http://downloads.yoctoproject.org/releases/yocto/yocto-2.6.2/RELEASENO
>> TES
>>
>> Yocto 2.6.2 QA reporting:
>>
>> Summary: https://lists.yoctoproject.org/pipermail/yocto/2019-
>> April/044827.html
>> Results:
>> https://autobuilder.yocto.io/pub/releases/yocto-2.6.2.rc3/testresults/
>>
>
>I am not able to access this results page. It says "No Such Resource File =
not
>found."
>
>
>Thanks,
>Manju
>
>
>> Build log:
>> hhttps://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/122
>>
>> Release Criteria:
>> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Yocto_Pro
>> ject_2
>> .6.2_release
>>
>>
>> Thank you for everyone's contributions to this release.
>>
>> Sincerely,
>>
>> Tracy Graydon
>> Yocto Project Build and Release
>> tracy.graydon@intel.com
>> --
>> _______________________________________________
>> yocto-announce mailing list
>> yocto-announce@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto-announce
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

