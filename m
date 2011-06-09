Return-Path: <daryl.spitzer@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D30C4C800B6
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 13:32:51 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so2335689vws.35
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2011 11:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:from:date:message-id:subject:to
	:content-type; bh=SeI2vpKTtRIMkK0+NrNQSUK1MrJgAkWzQcjztxq5uUQ=;
	b=j/2DXILfTn2Qn6yUZuEXxYmayRQMQUlnDJrG0w31lb465dKwWf+W6SaF5JzbUkDywI
	+7hW7QfDZhP5KVdAcYHHLI+aJMDZclmEMMsMnjmo+bFTu5NiGBjo1TstmFxpvVEWG/lA
	+z3BcLmx3Izhi1v/YIJBnBy3D+0OouGT7YluQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type;
	b=rvDzDDQDHyqtvC2KtY/eHRACxjn/UmPZITiS511cWzDLQXiM+F6V3JcahU7v6kxhIs
	VEIAbLD5QnivXn0jYyG7fKcXecT5Fk+l4wNJvwbHYdHmirN4I37eirTXaBIVeaDdj1EW
	kWc3vIZ6hr/p9PY69QqmZcp+MVh7IlRQKkr/A=
Received: by 10.52.115.10 with SMTP id jk10mr1490019vdb.294.1307644371067;
	Thu, 09 Jun 2011 11:32:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.169.225 with HTTP; Thu, 9 Jun 2011 11:32:11 -0700 (PDT)
From: Daryl Spitzer <daryl.spitzer@gmail.com>
Date: Thu, 9 Jun 2011 11:32:11 -0700
Message-ID: <BANLkTimMEUXEUxOyWNpM8zndLzYcdhU2sg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Troubleshooting ERROR: Function 'Fetcher failure for URL: 'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs; module=apps/update-rc.d; tag=r0_7'?
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
X-List-Received-Date: Thu, 09 Jun 2011 18:32:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm continuing to try to successfully build an image for the first
time, following the instructions in the Yocto Project Quick Start
(http://www.yoctoproject.org/docs/1.1/yocto-project-qs/yocto-project-qs.html).

As suggested in
https://lists.yoctoproject.org/pipermail/yocto/2011-June/001598.html,
I'm now trying http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2.
 And I'm following the instructions in
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy,
including defining CVS_PROXY_HOST & CVS_PROXY_PORT in my local.conf
file.

But I'm getting the following error:

NOTE: fetch http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
NOTE: Fetch cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7
cvs [checkout aborted]: end of file from server (consult above messages if any)
ERROR: Function 'Fetcher failure for URL:
'cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7'.
Unable to fetch URL
cvs://anoncvs:anoncvs@anoncvs.handhelds.org/cvs;module=apps/update-rc.d;tag=r0_7
from any source.' failed

(This is the contents of the logfile created in
poky-5.0.1-build/tmp/work/all-poky-linux/update-rc.d-0.7-r3/temp/log.do_fetch.16236.)

It's not clear to me if this is a proxy problem.

If I try `wget http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz`,
I see the following:

$ wget http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
--2011-06-09 11:25:37--
http://anoncvs@autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
Resolving gateway... 149.199.33.100, 172.22.140.250
Connecting to gateway|149.199.33.100|:8080... connected.
Proxy request sent, awaiting response... 400 Bad Request
2011-06-09 11:25:37 ERROR 400: Bad Request.

But `wget http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz`
(same as above, but s/anoncvs@//) succeeds:

 wget http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
--2011-06-09 11:29:39--
http://autobuilder.yoctoproject.org/sources/apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz
Resolving gateway... 149.199.33.100, 172.22.140.250
Connecting to gateway|149.199.33.100|:8080... connected.
Proxy request sent, awaiting response... 200 OK
Length: 2475 (2.4K) [application/x-gzip]
Saving to: `apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz'

100%[======================================>] 2,475       --.-K/s   in 0s

2011-06-09 11:29:39 (336 MB/s) -
`apps.update-rc.d_anoncvs.handhelds.org_r0_7_.tar.gz' saved
[2475/2475]


How do I troubleshoot or move past this?

--
Daryl

