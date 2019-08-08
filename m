Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBD7DE00DA4; Wed,  7 Aug 2019 20:01:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Aug 2019 20:01:49 PDT
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E054E00BAA
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 20:01:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Aug 2019 20:00:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="326172328"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by orsmga004.jf.intel.com with ESMTP; 07 Aug 2019 20:00:44 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.19]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.93]) with mapi id
	14.03.0439.000; Thu, 8 Aug 2019 11:00:43 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
Thread-Index: AQHVSHpx6skgUSSoJkubB04NtkJ+dKbmkWwAgAjUY9A=
Date: Thu, 8 Aug 2019 03:00:42 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634E8DB38@PGSMSX110.gar.corp.intel.com>
References: <20190801150425.40A8420251@debian10-ty-3.yocto.io>
	<9DDD2658D1FE414E99172D2DB1E4D04348211190@PGSMSX109.gar.corp.intel.com>
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04348211190@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzI2ZmJiZjgtY2QwNC00NDE1LWEwOWYtOGExZTEwZDU5ZWM5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUEhvZDlEdWl3R0l3Y0k2ampPeHBWZk9aZ0x5OGJrU2czWGtKeTh5ZWNUa2I4MUQ2SXlMcCtTODduOE14bHFFSSJ9
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
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
X-List-Received-Date: Thu, 08 Aug 2019 03:01:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

This is the full report for 2.6.3 RC1: =20
https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/log/?h=
=3Dintel-yocto-testresults

=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
No high milestone defects. =20
No new defects are found in this build.

=3D=3D=3D=3D=3D=3D=3DQA notes=3D=3D=3D=3D=3D=3D=3D=3D=3D
One minor issue is observed, after installed core-image-sato-sdk image to N=
UC7 internal harddisk, during boot up, it hangs at the Yocto splash screen.=
 Need to manual press keyboard "enter" button multiple times for it to cont=
inue the boot and bring the screen to sato GUI. No bug is filed for this is=
sue as this seems to be a minor issue and QA team investigating more onto i=
t. This bug is consistently reproducible.


Thanks & Regards,
Sangeeta Jain


