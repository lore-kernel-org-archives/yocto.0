Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E6B2E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 18:32:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 May 2012 18:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103122981"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 22 May 2012 18:32:39 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 May 2012 18:32:38 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.133]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.6]) with mapi id
	14.01.0355.002; Wed, 23 May 2012 09:32:36 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Connecting to target using eclipse/ADT
Thread-Index: AQHNOEziyORa90n+bkOKELmVpa4UzJbVuuAAgAAD0oCAANcPgA==
Date: Wed, 23 May 2012 01:32:36 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FDC6A56@SHSMSX102.ccr.corp.intel.com>
References: <CAExZvuNa59NhtL767y9fD-A05rZkpYdp+55N-zHWn2kJeEU_Fw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46A4CAFC@ORSMSX101.amr.corp.intel.com>
	<91072D03-738A-4BC9-803F-0803A2D88171@gmail.com>
In-Reply-To: <91072D03-738A-4BC9-803F-0803A2D88171@gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Connecting to target using eclipse/ADT
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
X-List-Received-Date: Wed, 23 May 2012 01:32:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Emirelkholy,

If the program is successfully transferred to the target by the Eclipse the=
n I assume the tcf-agent is already running. However please doublecheck the=
 followings:
- When you create connections, make sure you choose type TCF.
- Try to goto "Remote system explorer(RSE) perspective", and see if you can=
 open a terminal to your target through tcf
- make sure gdbserver is installed on your target

Best Regards,
-Lianhao

emirelkholy@gmail.com wrote on 2012-05-23:
> Hello,
> I can ping my target with no problem, and when I tried to debug a hello w=
orld program it transferred the hello world file the target. The
> connection just timed out so I was unable to debug through eclipse. How c=
an I check to verify the tcf agent is running on thr target? Do you
> have instructions?
>=20
> Thanks,
> Emir
>=20
>=20
>=20
> On May 22, 2012, at 4:23 PM, "Zhang, Jessica" <jessica.zhang@intel.com> w=
rote:
>=20
>> So do you have access to your target at all? Can you verify that the tcf=
-agent is up running on the target device?
>>=20
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org] On Behalf Of Emir Elkholy
>> Sent: Tuesday, May 22, 2012 11:58 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Connecting to target using eclipse/ADT
>>=20
>> When connecting to my CRB that is running off a usb drive that has yocto=
 on it I am trying to connect to the CRB from my host in order to
> debug using TCF agent. Through eclipse I am entering the IP address of th=
e target, and attempting to debug from the debug configurations
> menu. Using a simple helloworld as an example, the file is actually trans=
ferred to the target CRB, but the debugging fails. Eclipse gives me a
> connection timing out error (not allowing me to debug). Is there a link t=
hat describes how to connect to a physical target using eclipse and
> the ADT? Is there anything that must be done on the target side first bef=
ore attempting to debug? I only enter the IP address of the target
> under debug configurations, I don't setup anything on the target side, ma=
ybe this is the problem? I followed the same procedure as
> connecting to the QEMU (which works) as I did with the physical hardware.=
 I can't find anything online about a connection time out either.
>>=20




