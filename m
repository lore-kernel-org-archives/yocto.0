Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71FB74C8086F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 16:54:37 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p59LsYU3018706;
	Thu, 9 Jun 2011 22:54:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18517-03; Thu,  9 Jun 2011 22:54:30 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p59LsPot018699
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Jun 2011 22:54:25 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Daryl Spitzer <daryl.spitzer@gmail.com>
In-Reply-To: <BANLkTimMEUXEUxOyWNpM8zndLzYcdhU2sg@mail.gmail.com>
References: <BANLkTimMEUXEUxOyWNpM8zndLzYcdhU2sg@mail.gmail.com>
Date: Thu, 09 Jun 2011 22:54:14 +0100
Message-ID: <1307656454.15712.189.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Troubleshooting ERROR: Function 'Fetcher failure for URL: 'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs; module=apps/update-rc.d; tag=r0_7'?
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
X-List-Received-Date: Thu, 09 Jun 2011 21:54:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-09 at 11:32 -0700, Daryl Spitzer wrote:
> I'm continuing to try to successfully build an image for the first
> time, following the instructions in the Yocto Project Quick Start
> (http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html).
> 
> As suggested in
> https://lists.yoctoproject.org/pipermail/yocto/2011-June/001598.html,
> I'm now trying http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2.
>  And I'm following the instructions in
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy,
> including defining CVS_PROXY_HOST & CVS_PROXY_PORT in my local.conf
> file.
> 
> But I'm getting the following error:
> 
> NOTE: fetch http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
> NOTE: Fetch cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7
> cvs [checkout aborted]: end of file from server (consult above messages if any)
> ERROR: Function 'Fetcher failure for URL:
> 'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7'.
> Unable to fetch URL
> cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7
> from any source.' failed
> 
> (This is the contents of the logfile created in
> poky-5.0.1-build/tmp/work/all-poky-linux/update-rc.d-0.7-r3/temp/log.do_fetch.16236.)
> 
> It's not clear to me if this is a proxy problem.
> 
> If I try `wget http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz`,
> I see the following:
> 
> $ wget http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
> --2011-06-09 11:25:37--
> http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
> Resolving gateway... 149.199.33.100, 172.22.140.250
> Connecting to gateway|149.199.33.100|:8080... connected.
> Proxy request sent, awaiting response... 400 Bad Request
> 2011-06-09 11:25:37 ERROR 400: Bad Request.
> 
> But `wget http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz`
> (same as above, but s/anoncvs@//) succeeds:
> 
>  wget http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
> --2011-06-09 11:29:39--
> http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
> Resolving gateway... 149.199.33.100, 172.22.140.250
> Connecting to gateway|149.199.33.100|:8080... connected.
> Proxy request sent, awaiting response... 200 OK
> Length: 2475 (2.4K) [application/x-gzip]
> Saving to: `apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz'
> 
> 100%[======================================>] 2,475       --.-K/s   in 0s
> 
> 2011-06-09 11:29:39 (336 MB/s) -
> `apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz' saved
> [2475/2475]
> 
> 
> How do I troubleshoot or move past this?

To move past it, place the file you've downloaded into wherever DL_DIR
is pointing and also touch
apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz.done to signify the
download is complete. It should them move you past that point.

As for the root cause, we should be discarding the username information
when trying mirrors. I'll have a look and see if I can work out a patch
for the fetcher to do that...

Cheers,

Richard


