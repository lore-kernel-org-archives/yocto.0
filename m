Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55365E00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 04:03:23 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94B3JZ9006075;
	Thu, 4 Oct 2012 12:03:19 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05653-05; Thu,  4 Oct 2012 12:03:15 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q94B39Of006064
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 4 Oct 2012 12:03:10 +0100
Message-ID: <1349348593.18301.83.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Szankin, Maciej" <maciej.szankin@intel.com>
Date: Thu, 04 Oct 2012 12:03:13 +0100
In-Reply-To: <4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7@IRSMSX104.ger.corp.intel.com>
References: <4D6A41946CB68D4EBC0E4378E53ED77F3AC7D7@IRSMSX104.ger.corp.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eglibc fails to build
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
X-List-Received-Date: Thu, 04 Oct 2012 11:03:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2012-10-04 at 10:02 +0000, Szankin, Maciej wrote:
> Hi,
> I’m having a hard time building yocto.
> I’m trying to build a tiny-poky / core-image-rt , but it doesn’t even
> matter as in every configuration it just fails on eglibc.
> Target architecture is x86.
>  
> I will keep it clean so the error log returned by build is here ->
> http://pastebin.com/RNv5u8H8
>
> I think that only the last line are what matters the most. The only
> issue that I see is multiple reference (starts @ 241 line).
>  
> Before this I had problems with building elfutils but adding
> libc-ftraverse and libc-posix-clang-wchar to
> DISTRO_FEATURES_LIBC_DEFAULTS fixed this.
>  
> Is there anything that I can do with eglibc?

It sounds like those libc options you've added have some dependencies or
other configuration you're missing. I'm not sure what those are but it
definitely looks like an unsupported set of eglibc configuration options
combinations.

Cheers,

Richard



