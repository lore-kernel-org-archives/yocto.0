Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B9BE01206;
	Wed, 23 May 2012 13:47:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 May 2012 13:47:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170541288"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 23 May 2012 13:47:14 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 23 May 2012 13:47:14 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.163]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.232]) with mapi id
	14.01.0355.002; Wed, 23 May 2012 13:47:14 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Wolfgang Denk <wd@denx.de>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
Thread-Index: AQHNOKc6KcZHDLQEz0yLoDlDOjxM6JbX2H3w
Date: Wed, 23 May 2012 20:47:13 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C490127DD2@ORSMSX103.amr.corp.intel.com>
References: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
	<20120523054439.75DAD20025A@gemini.denx.de>
In-Reply-To: <20120523054439.75DAD20025A@gemini.denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Wed, 23 May 2012 20:47:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please see section 1.4 of the bsp-guide (http://www.yoctoproject.org/docs/l=
atest/bsp-guide/bsp-guide.html) including the following text:=20

" Note
Pre-compiled images are bundled with a time-limited kernel that runs for a =
predetermined amount of time (10 days) before it forces the system to reboo=
t. This limitation is meant to discourage direct redistribution of the imag=
e. You must eventually rebuild the image if you want to remove this restric=
tion."


Thanks
Rahul


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Wolfgang Denk
Sent: Tuesday, May 22, 2012 10:45 PM
To: Flanagan, Elizabeth
Cc: yocto-announce@yoctoproject.org; yocto@yoctoproject.org
Subject: Re: [yocto] [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0=
.1

Dear Elizabeth,

In message <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.=
com> you wrote:
>=20
> This release enables the BSP to use the latest available kernel=20
> patches for Intel's PowerVR graphics driver. The BSP image includes=20
> time limited kernel images for testing purposes.

This is probaby a stupid question, so I apologize in advance:

What is a time limited kernel image?

Best regards,

Wolfgang Denk

--=20
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de You h=
ave the capacity to learn from  mistakes.  You'll  learn  a  lot today.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

