Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D21FE0086E; Thu,  5 Mar 2015 08:56:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF262E0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 08:56:48 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 05 Mar 2015 08:51:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,348,1422950400"; d="scan'208";a="694451277"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2015 08:56:47 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 5 Mar 2015 08:56:47 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.95]) with mapi id
	14.03.0195.001; Thu, 5 Mar 2015 08:56:47 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Nathan Rossi <nathan@nathanrossi.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] in kernel manual,	should pick another example for
	KMACHINE
Thread-Index: AQHQV0sctdHjgHoZFEW8zcSJq3yKD50OG3FA
Date: Thu, 5 Mar 2015 16:56:46 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B3F@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503050659220.9386@Device-040570>
	<CA+aJhH2D52jskGJ+Ah7+VpDV5xe3RRx766Z2WJdANCXwts_Wrg@mail.gmail.com>
In-Reply-To: <CA+aJhH2D52jskGJ+Ah7+VpDV5xe3RRx766Z2WJdANCXwts_Wrg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: in kernel manual, should pick another example for KMACHINE
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
X-List-Received-Date: Thu, 05 Mar 2015 16:56:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I like Nathan's suggestion for the text.  Can someone explain to me though =
why emenlow is not a good example here?  In the linux-yocto_3.14.bbappend f=
ile, KMACHINE_emenlow-noemgd is set equal to "emenlow".  Isn't this equatin=
g emenlow-noemgd and emenlow?  I am probably mis-understanding it so I coul=
d use some further explanation.=20

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Nathan Rossi
>Sent: Thursday, March 05, 2015 5:48 AM
>To: Robert P. J. Day
>Cc: Yocto discussion list
>Subject: Re: [yocto] in kernel manual, should pick another example for
>KMACHINE
>
>On Thu, Mar 5, 2015 at 10:03 PM, Robert P. J. Day <rpjday@crashcourse.ca>
>wrote:
>>
>>   in section 3.2 of the kernel dev manual, there is a discussion of
>> KMACHINE and how it is *typically* set to the same value as MACHINE,
>> but there are cases where that might not be true; however, the example
>> used to demonstrate this -- emenlow and emenlow-noemgd -- doesn't
>seem
>> appropriate as there is no "emenlow" machine definition file anymore
>> in meta-intel. AFAICT, all of those non-noemgd machine definitions are
>> gone.
>>
>>   in all the layers i have checked out, the only layer where i see
>> KMACHINE covering a number of MACHINE values is meta-xilinx
>> (zynq-based machines). it sounds picky but, when demonstrating some
>> concept, i think it's important that examples used actually exist in
>> the code base in case people want to check.
>
>It comes around a bit due to the nature of different types of hardware. Yo=
u
>will find that amongst most of the meta-* bsp layers there exists two type=
s of
>MACHINE. You have the layers like meta-xilinx, meta-ti, etc which have
>machines for each board. And then there are the layers like meta-intel whi=
ch
>have machines for each platform or SoC. There are a number of reasons for
>each way.
>
>At least for Zynq, the kernel can (if you ignore that it has FPGA
>logic) be configured and built the same way for all the boards with device
>trees handling the differences. And as such the configuration is setup for=
 the
>SoC instead of the board. The reason that you actually see KMACHINE
>differences in meta-xilinx is that the layer uses the linux-yocto build fl=
ow as
>well as providing an in layer config cache for its targeted KMACHINE's. Wh=
ich I
>believe is rarely done in bsp layers that inherit linux-yocto for their ke=
rnels (or
>bbappend to linux-yocto).
>
>You could re-word the documentation to cover this case with something like=
:
>"This variable is typically set to the same value as the MACHINE variable
>however in some cases may instead refer to the underlying platform of the
>MACHINE."
>
>Regards,
>Nathan
>
>>
>> rday
>>
>> --
>>
>>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                         http://crashcourse.ca
>>
>> Twitter:                                       http://twitter.com/rpjday
>> LinkedIn:                               http://ca.linkedin.com/in/rpjday
>>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> =3D=3D
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

