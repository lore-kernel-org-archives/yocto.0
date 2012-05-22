Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE7C0E01396
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:39:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 22 May 2012 13:39:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="103022820"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 22 May 2012 13:39:40 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 May 2012 13:39:39 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.219]) with mapi id
	14.01.0355.002; Tue, 22 May 2012 13:39:39 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "emirelkholy@gmail.com" <emirelkholy@gmail.com>
Thread-Topic: [yocto] Connecting to target using eclipse/ADT
Thread-Index: AQHNOEzinaywyvqyok6sdJwKwHX6+pbWQIXAgAB5ooD//4rucA==
Date: Tue, 22 May 2012 20:39:38 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46A4CB35@ORSMSX101.amr.corp.intel.com>
References: <CAExZvuNa59NhtL767y9fD-A05rZkpYdp+55N-zHWn2kJeEU_Fw@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46A4CAFC@ORSMSX101.amr.corp.intel.com>
	<91072D03-738A-4BC9-803F-0803A2D88171@gmail.com>
In-Reply-To: <91072D03-738A-4BC9-803F-0803A2D88171@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 22 May 2012 20:39:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So if you can tell the hello world program is transferred to the remote tar=
get successfully, I'm assuming that you can access the remote target.  So o=
n it, can you grep the running process and see whether there's tcf-agent?

-----Original Message-----
From: emirelkholy@gmail.com [mailto:emirelkholy@gmail.com]
Sent: Tuesday, May 22, 2012 1:37 PM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Connecting to target using eclipse/ADT

Hello,
I can ping my target with no problem, and when I tried to debug a hello wor=
ld program it transferred the hello world file the target. The connection j=
ust timed out so I was unable to debug through eclipse. How can I check to =
verify the tcf agent is running on thr target? Do you have instructions?

Thanks,
Emir



On May 22, 2012, at 4:23 PM, "Zhang, Jessica" <jessica.zhang@intel.com> wro=
te:

> So do you have access to your target at all? Can you verify that the tcf-=
agent is up running on the target device?
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Emir Elkholy
> Sent: Tuesday, May 22, 2012 11:58 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Connecting to target using eclipse/ADT
>
> When connecting to my CRB that is running off a usb drive that has yocto =
on it I am trying to connect to the CRB from my host in order to debug usin=
g TCF agent. Through eclipse I am entering the IP address of the target, an=
d attempting to debug from the debug configurations menu. Using a simple he=
lloworld as an example, the file is actually transferred to the target CRB,=
 but the debugging fails. Eclipse gives me a connection timing out error (n=
ot allowing me to debug). Is there a link that describes how to connect to =
a physical target using eclipse and the ADT? Is there anything that must be=
 done on the target side first before attempting to debug? I only enter the=
 IP address of the target under debug configurations, I don't setup anythin=
g on the target side, maybe this is the problem? I followed the same proced=
ure as connecting to the QEMU (which works) as I did with the physical hard=
ware. I can't find anything online about a connection time out either.
>
> Thanks
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

