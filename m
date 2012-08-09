Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF215E013A6
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:46:13 -0700 (PDT)
Received: by bkty5 with SMTP id y5so233089bkt.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 07:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent;
	bh=U4maCl3Sn8OBExEc7Jsu7VmAjB9PsiBXS1njdULYkHY=;
	b=mCif/smkhVF2ZsBS3q1iGloeyxEyyCh0HbZ2a4T+6EpUeN9bQmJ7jTyVu+u09BgVTN
	ztUDRfnArTikjC0QK7olElBYVaGRqH6pAc5qS4AXg906MMZFuWat0nePaKJzRKf7JBIV
	7OyAWzUULc+U9wFsLELMSHsYmBcqNzwXJo08Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent:x-gm-message-state;
	bh=U4maCl3Sn8OBExEc7Jsu7VmAjB9PsiBXS1njdULYkHY=;
	b=g5G5JKzx1QO5SDMOsV2iQtaptB2HprBHymkZ5E5GLZ1UWvAyQR+zAUoa7VaBZWKTel
	S05/6x6j7rKAVoqX5GHYdTgU77tRxzzNvyNP1huAgxjApvCM+HZ6Q7LhyVBVJ5CIj4zT
	cY16Z+TcHJ9TYtMR/2NKvjiHbxa+jInxpD1aaGpaWLh9XoNn9BTMM3vCPQqB5DIz3ymf
	U1dWcNPfI9OSdYC0nveDW0hNW3RIuDBkE5W0TjnhOBqlwdscwhhWwgsVCqmVvJ7dyEhc
	o7qGXY5b+CUnF+LAdFzl8F1rFUYtXYwX5s5eARoWqytg/gQtZa5/T8JkXbTIlED+1Pfk
	8KOg==
Received: by 10.204.143.138 with SMTP id v10mr9376780bku.114.1344523572622;
	Thu, 09 Aug 2012 07:46:12 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id n17sm792872bks.6.2012.08.09.07.46.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 07:46:11 -0700 (PDT)
Date: Thu, 9 Aug 2012 16:46:05 +0200
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Message-ID: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
Mail-Followup-To: Yocto Project Mailing List <yocto@yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQl63J6ZVhGAXStH1co9vIQpoEJ61YwIXnykZ4LyrTC14bVHED6EQzWZF/1gD+S21MpVnD/P
Subject: Problem with BSP supporting different machines
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
X-List-Received-Date: Thu, 09 Aug 2012 14:46:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi @all,

I'm having some trouble building a BSP supporting two different machines.
The machines in question are the Stamp9g20 and PortuxG20 from taskit. These
machines are just slightly different course the PortuxG20 is basically just
a small SBC built around the Stamp9G20.

You can have a look at my BSP here: http://bitbucket.org/imko/meta-stamp9g20
but take attention that you're selecting the denzil branch...

If I set MACHINE = stamp9g20 in local.conf all went fine, but with
MACHINE = portuxg20 I get a kernel for common-pc instead of
arm-versatile-926ejs ...

Comparing the output of "bitbake -e linux-yocto" for both MACHINE settings
I notice that for stamp9g20 KMACHINE is "stamp9g20" but for portuxg20 it's
"common-pc", which results in these "updateme" command:

| updateme --branch standard/default/arm-versatile-926ejs -DKDESC=common-pc:standard
|  --feature features/netfilter --feature features/taskstats arm common-pc
|  poky/meta-stamp9g20/recipes-kernel/linux/files/hardware.cfg
|  poky/meta-stamp9g20/recipes-kernel/linux/files/non-hardware.cfg
|  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.cfg
|  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-preempt-rt.scc
|  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.scc
|  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-standard.scc

Which again (I think ...) leads to a kernel compile error ...

Unfortunately I was not able to find out why the KMACHINE variable is not setup
correctly with my BSP for PortuxG20 ...

Please can someone have a look? ;-)

Cheers, Markus

