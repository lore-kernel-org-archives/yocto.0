Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BAA14C8101B
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 18:39:10 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9MNd4Cu006118;
	Sat, 23 Oct 2010 00:39:04 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05997-03; Sat, 23 Oct 2010 00:39:00 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9MNcwwc006112
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 23 Oct 2010 00:38:58 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CC1D64B.3050606@linux.intel.com>
References: <4CC1D64B.3050606@linux.intel.com>
Date: Sat, 23 Oct 2010 00:38:44 +0100
Message-ID: <1287790724.16386.791.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>, "Hohndel,
	Dirk" <dirk.hohndel@intel.com>
Subject: Re: Fetcher error reporting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 23:39:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-10-22 at 11:22 -0700, Darren Hart wrote:
> Here is an example of the do_fetch/do_unpack failure that I believe is 
> representative of what Dirk saw and what I have been seeing periodically.
> 
> I saw the following while building libproxy in poky-image-sdk-live on a 
> Fedora 13 box behind the firewall. I saw identical failures with opkg on 
> a different machine - also behind the firewall. Both SRC_URIs point to 
> googlecode.
> 
> log.do_fetch:
> -------------
> NOTE: fetch http://libproxy.googlecode.com/files/libproxy-0.4.3.tar.gz
> NOTE: libproxy-0.4.3: 
> http://libproxy.googlecode.com/files/libproxy-0.4.3.tar.gz has no entry 
> in conf/checksums.ini, not checking URI
> 
> log.do_unpack:
> --------------
> gzip: stdin: unexpected end of file
> tar: Child returned status 1
> tar: Exiting with failure status due to previous errors
> NOTE: Unpacking 
> /vol/1/dvhart/poky.git/build/downloads/libproxy-0.4.3.tar.gz to 
> /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/libproxy-0.4.3-r2/
> ERROR: Task failed:
> 
> With opkg, I tried the following which resulted in the same error.
> 
> $ bitbake -c clean;
> $ rm downloads/*opkg*
> $ bitbake opkg
> 
> In both cases, using wget to manually download the file and place it in
> the downloads directory allowed the build to continue.

We've talked about this a lot over jabber. We don't have a reproducer.
What we do see is its always the wget fetcher that hits this (for mirror
urls in the case of git repos) and its failing creating a zero length
file.

If we make the assumption that wget is creating the empty file and
exiting with an error code and look at what bitbake would do, it would
give the behaviour described in these bugs.

Why? If the original fetch fails, it falls back to the mirror code. That
looks, sees a file on the disk and says "nothing to do".

Solution is therefore to make sure if the wget fetcher fails we wipe any
file that may be present.

Is is possible the wget fetcher is creating a zero length file and no
setting an error code but I really hope its not that broken.

So I've pushed this patch as a bandaid for the problem:

http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=c5fab99a6f979a4a0ce246c6395b35a3082aec0d

Cheers,

Richard



