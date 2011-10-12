Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0533DE005BB
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 03:12:11 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 7CC0923385
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 09:52:45 +0100 (BST)
Message-ID: <4E9567F9.2040003@communistcode.co.uk>
Date: Wed, 12 Oct 2011 11:12:09 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4E9463A3.3090005@communistcode.co.uk> <4E9484B3.9010605@intel.com>
In-Reply-To: <4E9484B3.9010605@intel.com>
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
X-List-Received-Date: Wed, 12 Oct 2011 10:12:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

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
eclipse.buildId=I20110613-1736
java.version=1.6.0_22
java.vendor=Sun Microsystems Inc.
BootLoader constants: OS=linux, ARCH=x86_64, WS=gtk, NL=en_GB
Framework arguments:  -product org.eclipse.sdk.ide
Command-line arguments:  -product org.eclipse.sdk.ide -data 
/home/developer/jackdaw/../runtime-EclipseApplication -dev 
file:/home/developer/jackdaw/.metadata/.plugins/org.eclipse.pde.core/Eclipse 
Application/dev.properties -os linux -ws gtk -arch x86_64 -consoleLog

!ENTRY org.eclipse.cdt.debug.mi.core 4 42 2011-10-12 09:24:47.192
!MESSAGE Internal Error
!STACK 0
org.eclipse.cdt.debug.mi.core.cdi.MI2CDIException: Inferior terminated[]
     at 
org.eclipse.cdt.debug.mi.core.cdi.SharedLibraryManager.getMIShareds(SharedLibraryManager.java:123)
     at 
org.eclipse.cdt.debug.mi.core.cdi.SharedLibraryManager.updateState(SharedLibraryManager.java:188)
     at 
org.eclipse.cdt.debug.mi.core.cdi.SharedLibraryManager.update(SharedLibraryManager.java:136)
     at 
org.eclipse.cdt.debug.mi.core.cdi.EventManager.processSuspendedEvent(EventManager.java:326)
     at 
org.eclipse.cdt.debug.mi.core.cdi.EventManager.update(EventManager.java:100)
     at java.util.Observable.notifyObservers(Observable.java:159)
     at 
org.eclipse.cdt.debug.mi.core.MISession.notifyObservers(MISession.java:791)
     at org.eclipse.cdt.debug.mi.core.EventThread.run(EventThread.java:46)

Which looks like a CDT bug or the interfacing with CDT. I could file a 
bug report if you think it is related to the poky-eclipse plugin?

Cheers,
Jack.

