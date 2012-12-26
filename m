Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD4C4E00559
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 09:06:02 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TnuMy-0006Jf-0c; Wed, 26 Dec 2012 17:02:16 +0000
Message-ID: <50DB2E67.4090602@dynamicdevices.co.uk>
Date: Wed, 26 Dec 2012 17:05:43 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, autif.mlist@gmail.com
Subject: [meta-mono] Support for Visual Studio debugging on Yocto/OE targets (e.g. RPi)
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
X-List-Received-Date: Wed, 26 Dec 2012 17:06:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all, Autif,

I've been working to support .NET development on Linux
over the past few days.

There is a Visual Studio plugin, MonoTools for Visual Studio
which provides support for local and remote debugging of
.NET applications with Mono.

This requires a remote stub to be running on the target
platform, monotools-server.

I've created a recipe to build monotools-server, which in
turn required me to pull in Openembedded Legacy recipes
for mono-xsp and gtk-sharp.

As it stands I'm now able to build an X enabled image for
the Raspberry Pi and remote-debug some simple Windows
Forms .NET applications within the Visual Studio IDE.

Recipes are hosted here in 'recipes-mono'

git@git.assembla.com:ciseco-eve.meta-eve.git

If there is interest in migrating these recipes into meta-mono
and  somebody will review them then I'll be pleased to make
whatever changes are needed to comply with relevant
Yocto policies.

Best Regards, (& Happy Holidays)

Alex



