Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CD77E006CB
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 10:02:49 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TynXi-0001jx-L0; Fri, 25 Jan 2013 17:58:22 +0000
Message-ID: <5102C8BC.6030708@dynamicdevices.co.uk>
Date: Fri, 25 Jan 2013 18:02:36 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: brubor2005@yahoo.com
References: <50DB2E67.4090602@dynamicdevices.co.uk>
	<loom.20130124T201459-642@post.gmane.org>
In-Reply-To: <loom.20130124T201459-642@post.gmane.org>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 25 Jan 2013 18:02:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/01/2013 19:15, Bruce wrote:
> Alex J Lennon <ajlennon@...> writes:
>
>> Hi all, Autif,
>>
>> I've been working to support .NET development on Linux
>> over the past few days.
>>
>> There is a Visual Studio plugin, MonoTools for Visual Studio
>> which provides support for local and remote debugging of
>> .NET applications with Mono.
>>
>> This requires a remote stub to be running on the target
>> platform, monotools-server.
>>
>> I've created a recipe to build monotools-server, which in
>> turn required me to pull in Openembedded Legacy recipes
>> for mono-xsp and gtk-sharp.
>>
>> As it stands I'm now able to build an X enabled image for
>> the Raspberry Pi and remote-debug some simple Windows
>> Forms .NET applications within the Visual Studio IDE.
>>
>> Recipes are hosted here in 'recipes-mono'
>>
>> git@...:ciseco-eve.meta-eve.git
>>
>> If there is interest in migrating these recipes into meta-mono
>> and  somebody will review them then I'll be pleased to make
>> whatever changes are needed to comply with relevant
>> Yocto policies.
>>
>> Best Regards, (& Happy Holidays)
>>
>> Alex
>>
>>
> Hello,
>
> I stumbled on to this site and would like to know if you can tell me how to get
> monotools-server installed and how to run it on Raspberry Pi?
>
> I tried following the instructions at this site:
> http://mono-project.com/GettingStartedWithMonoVS
>
> and got the Visual Studio side to work but can't figure out how to get
> monotools-server to run on Pi.  Specifically this part tripped me up:
>
>      Download Servers for Linux and Mac to Run/Debug Remotely
>
>      Linux:
>
>      Use the openSUSE 1click from your existing Linux system:
>                http://mono-project.com/files/2/2b/Monovs-1click.png
>
>      Note: After installing on Linux, launch the "MonoTool GUI Server" from the
> application menu to start the server.
>
> I tried clicking on the above link in Medora and it just hangs.  Is your version
> of Monotools-server available somewhere?  I would greatly appreciate any help
> you can offer.  Thanks,
>
> Bruce
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Bruce,

You might try the instructions I left here. These images should have the 
monotools server in.
I did see a problem building GTK# the other day though which I still 
might need to look into:

https://www.assembla.com/spaces/ciseco-eve/wiki/Getting_Started

If you do look at this I'd be grateful if you feed back to me on how it 
goes for you.

NB. Another point is that the activation code request on the MonoTools 
site appears not to work.
        If you contact Xamarin directly they seem happy to give you a 
code though.

Cheers,

Alex


