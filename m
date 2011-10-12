Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C559CE004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 10:53:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Oct 2011 10:53:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="62293468"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2011 10:53:04 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 12 Oct 2011 10:53:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.01.0323.003; Wed, 12 Oct 2011 10:53:03 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] QEmu Script Error Checking
Thread-Index: AQHMiCxgB6U9U6ypAUSqtwjN01/DLJV35N+AgAEO7oCAAAmHYA==
Date: Wed, 12 Oct 2011 17:52:57 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E8A252@ORSMSX101.amr.corp.intel.com>
References: <4E9463A3.3090005@communistcode.co.uk>
	<4E9484B3.9010605@intel.com> <4E9567F9.2040003@communistcode.co.uk>
In-Reply-To: <4E9567F9.2040003@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: QEmu Script Error Checking
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
X-List-Received-Date: Wed, 12 Oct 2011 17:53:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jack,

When and how did you trigger the error.  It looks more like a CDT issue tha=
n a Yocto issue, but can you tell us more what exactly you were doing with =
Yocto plug-in while this crash happened?  So you mean when you click on the=
 debug, it caused qemu crashes? Or the qemu crashed 1st. then you got the e=
clipse error msg.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jack Mitchell
Sent: Wednesday, October 12, 2011 3:12 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] QEmu Script Error Checking

On 11/10/2011 19:02, Scott Garman wrote:
> On 10/11/2011 08:41 AM, Jack Mitchell wrote:
>> I have run into the following issue where the tap device is in use due
>> to the QEmu machine unexpectedly crashing. The error I recieve is here:
>>
>> http://i.imgur.com/5t9U1.png (appologies for the screenshot but it
>> wouldn't let me copy the text)
>>
>> Is there any leaway for more robust error checking or a way to forcibly
>> destroy the tap node to allow a new one to be created?
>
> Hi Jack,
>
> Since qemu is being run from a parent shell script (runqemu), if qemu
> were to crash, I would think the parent shell script would continue on
> and destroy the tap device normally. Might you be killing the runqemu
> process instead of qemu itself?
>
> I'm not sure if there is a way we could reliably force a cleanup of
> tap devices when runqemu starts, because we need to support the case
> where multiple instances of qemu sessions are running simultaneously
> (each with their own tap device). Off the top of my head I think this
> would make the state of tap devices non-deterministic.
>
> Furthermore, we support a mode where an administrator can set up one
> or more tap devices, allowing the runqemu user to not need sudo
> privileges. So checking for the case where a tap device exists but no
> qemu process is running wouldn't work.
>
> Scott
>

Ok, thank you for the information Scott. I think I found the issue today
which is causing the QEmu script to terminate pre-maturely.

I am using the eclipse-poky master branch as my eclipse plugin and it
threw an error today when I tried to debug - which coincided with the
QEmu and terminal window terminating. The errror I recieved was:

!SESSION 2011-10-12 09:22:49.135
-----------------------------------------------
eclipse.buildId=3DI20110613-1736
java.version=3D1.6.0_22
java.vendor=3DSun Microsystems Inc.
BootLoader constants: OS=3Dlinux, ARCH=3Dx86_64, WS=3Dgtk, NL=3Den_GB
Framework arguments:  -product org.eclipse.sdk.ide
Command-line arguments:  -product org.eclipse.sdk.ide -data
/home/developer/jackdaw/../runtime-EclipseApplication -dev
file:/home/developer/jackdaw/.metadata/.plugins/org.eclipse.pde.core/Eclips=
e
Application/dev.properties -os linux -ws gtk -arch x86_64 -consoleLog

!ENTRY org.eclipse.cdt.debug.mi.core 4 42 2011-10-12 09:24:47.192
!MESSAGE Internal Error
!STACK 0
org.eclipse.cdt.debug.mi.core.cdi.MI2CDIException: Inferior terminated[]
     at
org.eclipse.cdt.debug.mi.core.cdi.SharedLibraryManager.getMIShareds(SharedL=
ibraryManager.java:123)
     at
org.eclipse.cdt.debug.mi.core.cdi.SharedLibraryManager.updateState(SharedLi=
braryManager.java:188)
     at
org.eclipse.cdt.debug.mi.core.cdi.SharedLibraryManager.update(SharedLibrary=
Manager.java:136)
     at
org.eclipse.cdt.debug.mi.core.cdi.EventManager.processSuspendedEvent(EventM=
anager.java:326)
     at
org.eclipse.cdt.debug.mi.core.cdi.EventManager.update(EventManager.java:100=
)
     at java.util.Observable.notifyObservers(Observable.java:159)
     at
org.eclipse.cdt.debug.mi.core.MISession.notifyObservers(MISession.java:791)
     at org.eclipse.cdt.debug.mi.core.EventThread.run(EventThread.java:46)

Which looks like a CDT bug or the interfacing with CDT. I could file a
bug report if you think it is related to the poky-eclipse plugin?

Cheers,
Jack.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

