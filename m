Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 114804C800BB
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 04:21:12 -0500 (CDT)
Received: by wwd20 with SMTP id 20so2347328wwd.11
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 02:21:12 -0700 (PDT)
Received: by 10.227.160.11 with SMTP id l11mr1843330wbx.1.1307697671758;
	Fri, 10 Jun 2011 02:21:11 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id o38sm1867143wba.3.2011.06.10.02.21.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Jun 2011 02:21:10 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1307695442.15712.208.camel@rex>
Date: Fri, 10 Jun 2011 11:21:08 +0200
Message-Id: <DFD16DF4-84A1-4EE4-8786-3DAAA5A53AD3@dominion.thruhere.net>
References: <1307695442.15712.208.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Update on build time performance - not good
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
X-List-Received-Date: Fri, 10 Jun 2011 09:21:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 10 jun 2011, om 10:44 heeft Richard Purdie het volgende geschreven:

> We've merged a number of things which should have helped performance
> recently. Changes in my test included:
> 
> * Splitting out the locale generation [not merged yet]
> * Not building tar-replacement-native when we don't need it
> * Cleaned up dependencies for native/nativesdk
> * Cleaned up dependencies for all-arch packages
> * Reduced dbus-native dependencies
> 
> The time for the benchmark timing test against master with the locale
> split patch applied was:
> 
> real	105m5.813s
> user	386m39.170s
> sys	59m40.250s
> 
> so not that much different from where we have been :(.
> 
> I did observe things through the build process:
> 
> * The first part of the build was *fast* getting through the first 2000 
>  of 4295 tasks in about 10 minutes.
> * The CPU usage was pretty much full for that time
> * The next 5 minutes covered the next 150 tasks
> * gettext-native didn't seem to get built until surprisingly late in 
>  the process
> * There was a highly serialised chain of gettext-native, libelf-native, 
>  binutils-native, binutils-cross etc.
> * Once eglibc/libgcc completed, processor usage was high again for the 
>  rest of the build
> 
> I'm hoping my BB_NUMBER_THREADS (12 on a quad core machine) was too high
> causing too much context switching and as the build process might now be
> more efficient, lowering it might help. I am a bit disappointed in those
> numbers though.

Do you have pretty bootchart graphs for that?

regards,

Koen

