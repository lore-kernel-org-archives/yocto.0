Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70E2DE006C3
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:24:55 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1TySQ4-0003Wa-Ii
	for yocto@yoctoproject.org; Thu, 24 Jan 2013 20:25:05 +0100
Received: from c-98-250-201-60.hsd1.mi.comcast.net ([98.250.201.60])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 20:25:04 +0100
Received: from brubor2005 by c-98-250-201-60.hsd1.mi.comcast.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 20:25:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Bruce <brubor2005@yahoo.com>
Date: Thu, 24 Jan 2013 19:15:56 +0000 (UTC)
Message-ID: <loom.20130124T201459-642@post.gmane.org>
References: <50DB2E67.4090602@dynamicdevices.co.uk>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 98.250.201.60 (Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.17
	(KHTML, like Gecko) Chrome/24.0.1312.56 Safari/537.17)
Subject: Re: [meta-mono] Support for Visual Studio debugging on Yocto/OE targets (e.g. RPi)
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
X-List-Received-Date: Thu, 24 Jan 2013 19:24:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Alex J Lennon <ajlennon@...> writes:

> 
> Hi all, Autif,
> 
> I've been working to support .NET development on Linux
> over the past few days.
> 
> There is a Visual Studio plugin, MonoTools for Visual Studio
> which provides support for local and remote debugging of
> .NET applications with Mono.
> 
> This requires a remote stub to be running on the target
> platform, monotools-server.
> 
> I've created a recipe to build monotools-server, which in
> turn required me to pull in Openembedded Legacy recipes
> for mono-xsp and gtk-sharp.
> 
> As it stands I'm now able to build an X enabled image for
> the Raspberry Pi and remote-debug some simple Windows
> Forms .NET applications within the Visual Studio IDE.
> 
> Recipes are hosted here in 'recipes-mono'
> 
> git@...:ciseco-eve.meta-eve.git
> 
> If there is interest in migrating these recipes into meta-mono
> and  somebody will review them then I'll be pleased to make
> whatever changes are needed to comply with relevant
> Yocto policies.
> 
> Best Regards, (& Happy Holidays)
> 
> Alex
> 
> 
Hello,

I stumbled on to this site and would like to know if you can tell me how to get 
monotools-server installed and how to run it on Raspberry Pi?

I tried following the instructions at this site:
http://mono-project.com/GettingStartedWithMonoVS

and got the Visual Studio side to work but can't figure out how to get 
monotools-server to run on Pi.  Specifically this part tripped me up:

    Download Servers for Linux and Mac to Run/Debug Remotely

    Linux:

    Use the openSUSE 1click from your existing Linux system:
              http://mono-project.com/files/2/2b/Monovs-1click.png

    Note: After installing on Linux, launch the "MonoTool GUI Server" from the 
application menu to start the server.

I tried clicking on the above link in Medora and it just hangs.  Is your version 
of Monotools-server available somewhere?  I would greatly appreciate any help 
you can offer.  Thanks,

Bruce



