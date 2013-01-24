Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 419C1E002AB
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 11:14:57 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:33579 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TySGG-00082Q-8V; Thu, 24 Jan 2013 14:14:56 -0500
Date: Thu, 24 Jan 2013 14:14:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: daniel.schnel.extern@ifm.com
In-Reply-To: <OFBE0EFB03.95C8CD96-ONC1257AFD.00580557-C1257AFD.00584DE3@ifm-electronic.com>
Message-ID: <alpine.DEB.2.02.1301241412340.6204@oneiric>
References: <OFBE0EFB03.95C8CD96-ONC1257AFD.00580557-C1257AFD.00584DE3@ifm-electronic.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: PREMIRRORS_prepend & friends
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
X-List-Received-Date: Thu, 24 Jan 2013 19:14:57 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 24 Jan 2013, daniel.schnel.extern@ifm.com wrote:

>
> Hi,
>
> after hours of trying and googling I finally make my first coming out here
> on this list to get some help with PREMIRRORS_prepend & friends.So please
> be friendly ;)
>
> I want to setup local mirrors for our yocto build for reproducability
> purposes. I am using ELDK-5.2.1 which is based on yocto-1.2
>
> I have made the following settings in my local.conf:
>
> PREMIRRORS_prepend = "\
>      git://.*/.*   git://git@dettlx79: \n \
>      ftp://.*/.* http://dettlx79/sources \n \
>      http://.*/.* http://dettlx79/sources \n \
>      https://.*/.* http://dettlx79/sources \n \"
>
>
> BB_FETCH_PREMIRRORONLY = "1"

  ... snip ...

i documented how i set up my own local mirror here:

http://www.crashcourse.ca/wiki/index.php/OE_Creating_your_%22own_mirror%22

it's all based on eventually storing tarballs of the sources, no
matter how you fetched the original sources.  is that what you're
after for reproducibility?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

