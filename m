Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2012E01206;
	Wed, 23 May 2012 17:37:25 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 May 2012 17:37:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147030598"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 23 May 2012 17:37:24 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 May 2012 17:37:24 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.219]) with mapi id
	14.01.0355.002; Wed, 23 May 2012 17:37:23 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, Wolfgang Denk <wd@denx.de>,
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@intel.com>
Thread-Topic: [yocto] [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
Thread-Index: AQHNOH1s7U1u/dUHgE2hXCfPyaPOMJbXUqeAgAD8LID//8oFEA==
Date: Thu, 24 May 2012 00:37:23 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C81DAE8@ORSMSX105.amr.corp.intel.com>
References: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
	<20120523054439.75DAD20025A@gemini.denx.de>
	<63ECFF2A2302B44093D7CE9E9962C490127DD2@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C490127DD2@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
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
X-List-Received-Date: Thu, 24 May 2012 00:37:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This should actually read as optional for compliance with the BSP Guide. I'=
ve already asked Scott to work on an explicit list of "required" vs "option=
al" items to conform with the guide to make this clearer.

The Intel silicon guys do this for their BSPs for a variety of reasons. I w=
ouldn't necessarily expect anyone else to do this.

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Saxena, Rahul
>Sent: Wednesday, May 23, 2012 1:47 PM
>To: Wolfgang Denk; Flanagan, Elizabeth
>Cc: yocto-announce@yoctoproject.org; yocto@yoctoproject.org
>Subject: Re: [yocto] [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison
>6.0.1
>
>Please see section 1.4 of the bsp-guide
>(http://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html)
>including the following text:
>
>" Note
>Pre-compiled images are bundled with a time-limited kernel that runs for a
>predetermined amount of time (10 days) before it forces the system to
>reboot. This limitation is meant to discourage direct redistribution of th=
e
>image. You must eventually rebuild the image if you want to remove this
>restriction."
>
>
>Thanks
>Rahul
>
>
>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Wolfgang Denk
>Sent: Tuesday, May 22, 2012 10:45 PM
>To: Flanagan, Elizabeth
>Cc: yocto-announce@yoctoproject.org; yocto@yoctoproject.org
>Subject: Re: [yocto] [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison
>6.0.1
>
>Dear Elizabeth,
>
>In message <CAPhnLPBb-qcMq-
>MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com> you wrote:
>>
>> This release enables the BSP to use the latest available kernel
>> patches for Intel's PowerVR graphics driver. The BSP image includes
>> time limited kernel images for testing purposes.
>
>This is probaby a stupid question, so I apologize in advance:
>
>What is a time limited kernel image?
>
>Best regards,
>
>Wolfgang Denk
>
>--
>DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
>HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
>You have the capacity to learn from  mistakes.  You'll  learn  a  lot toda=
y.
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

