Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FF59E00307
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2011 15:01:08 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:45151
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RMRov-0000p4-Km
	for yocto@yoctoproject.org; Fri, 04 Nov 2011 22:01:05 +0000
Message-Id: <7C2B93F5-C4A1-4AB7-8FD9-61BCBC2F18B0@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAMRMzCDszc7p0-dD0twCJ-hxMR6i4VVuF75g49g5cvv=8cGxtQ@mail.gmail.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 4 Nov 2011 22:01:02 +0000
References: <CAMRMzCDszc7p0-dD0twCJ-hxMR6i4VVuF75g49g5cvv=8cGxtQ@mail.gmail.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: Change splash screen
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
X-List-Received-Date: Fri, 04 Nov 2011 22:01:09 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 4 Nov 2011, at 21:44, Marc Ferland wrote:

> Hi,
>
> What's the proper way to change the splash screen in Yocto? I have  
> re-generated the psplash-poky-img.h file but I don't know where to  
> put this file in my local layer. I guess this question also applies  
> to all recipes containing references to local files in the SRC_URI.
>
> I could replace the current file with the one I just generated but  
> that doesn't seem right...!


I did it by creating a .bbappend file in an overlay (which holds all  
my changes):

--------

overlay-directory/recipes/psplash/psplash_svn.bbappend:

FILESEXTRAPATHS := "${THISDIR}/files"

---------

overlay-directory/recipes/psplash/files/psplash-poky-img.h --- your  
new image file


Chris Tapp

opensource@keylevel.com
www.keylevel.com


