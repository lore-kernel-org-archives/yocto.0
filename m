Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8A55E008DD; Fri,  6 Mar 2015 10:49:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 230C3E00712
	for <yocto@yoctoproject.org>; Fri,  6 Mar 2015 10:49:07 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 06 Mar 2015 10:49:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,354,1422950400"; d="scan'208";a="537183953"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga003.jf.intel.com with ESMTP; 06 Mar 2015 10:48:51 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.124]) with mapi id
	14.03.0195.001; Fri, 6 Mar 2015 10:49:06 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] in kernel manual, should pick another example for
	KMACHINE
Thread-Index: AQHQV2gDWDi778pSbUe38c9y/uk5rp0OKZ+QgAGjbgA=
Date: Fri, 6 Mar 2015 18:49:05 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC3194@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503050659220.9386@Device-040570>
	<CA+aJhH2D52jskGJ+Ah7+VpDV5xe3RRx766Z2WJdANCXwts_Wrg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B3F@ORSMSX101.amr.corp.intel.com>
	<alpine.LFD.2.11.1503051212440.32669@Device-040570>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B86@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B86@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
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
X-List-Received-Date: Fri, 06 Mar 2015 18:49:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Probably worth looking over the "Using Kernel Metadata in a Recipe" section=
 (http://www.yoctoproject.org/docs/1.8/kernel-dev/kernel.dev.html#using-ker=
nel-metadata-in-a-recipe).  There have been several small areas touched tha=
t have affected what sample code is being talked about, etc. =20

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>Sent: Thursday, March 05, 2015 9:48 AM
>To: Robert P. J. Day
>Cc: Yocto discussion list
>Subject: Re: [yocto] in kernel manual, should pick another example for
>KMACHINE
>
>So I was digging in the meta-xilinx layer and down in recipes-
>kernel/linux/linux-zynqmp-mainline_3.19.bb there are two KMACHINE lines:
>
>  KMACHINE_ep108-zynqmp ?=3D "zynqmp"
>  KMACHINE_qemuzynqmp ?=3D "zynqmp"
>
>Given these two lines, this is a good example that shows two machines
>mapping to the same KMACHINE value?
>
>Scott
>
>>-----Original Message-----
>>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>>Sent: Thursday, March 05, 2015 9:15 AM
>>To: Rifenbark, Scott M
>>Cc: Nathan Rossi; Yocto discussion list
>>Subject: RE: [yocto] in kernel manual, should pick another example for
>>KMACHINE
>>
>>On Thu, 5 Mar 2015, Rifenbark, Scott M wrote:
>>
>>> I like Nathan's suggestion for the text.  Can someone explain to me
>>> though why emenlow is not a good example here?  In the
>>> linux-yocto_3.14.bbappend file, KMACHINE_emenlow-noemgd is set
>equal
>>> to "emenlow".  Isn't this equating emenlow-noemgd and emenlow?  I am
>>> probably mis-understanding it so I could use some further explanation.
>>
>>  normally, yes, but there *is* only the emenlow-noemgd machine, there
>>is no longer an emenlow machine. AIUI, there *used* to be both
>>machines, both using the same KMACHINE value, and that would have been
>>a perfect example.
>>
>>  personally, i think it would be more informative if you had two or
>>more actual machines mapping to the same KMACHINE value, but that's just
>me.
>>
>>rday
>>
>>--
>>
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>>                        http://crashcourse.ca
>>
>>Twitter:                                       http://twitter.com/rpjday
>>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D
>>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

