Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9976EE00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 11:02:47 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbnl22 with SMTP id l22so2374291vbn.35
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 11:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=YVrrY4KFIDT23OFYZo5Es7kFzN21tAnlNf2Y/rZ2mb4=;
	b=abCy2jj4ZkpGKT/naXcD9y6Eolhj6x+njzRhZPvd3p47TsiJ98XtaAXwFeL3ACpOG2
	Nrv1ygiJyYu3KPjTnoBrjAuN2wYj4asDhG8RVu410H8b3Qac89zKS3zUyvvhOCZRH9Hq
	va5U7bZXCWl7m4QcZZR0NVMTIv7s2N/SGGhkQ=
Received: by 10.52.93.146 with SMTP id cu18mr26952744vdb.56.1322074966868;
	Wed, 23 Nov 2011 11:02:46 -0800 (PST)
Received: from [10.0.1.36] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	f11sm21923524vdj.15.2011.11.23.11.02.45 (version=SSLv3 cipher=OTHER);
	Wed, 23 Nov 2011 11:02:46 -0800 (PST)
From: Jim Abernathy <jfabernathy@gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB3710@ORSMSX101.amr.corp.intel.com>
References: <1322066687.24623.4.camel@jim-ubuntu>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB36A7@ORSMSX101.amr.corp.intel.com>
	<C30646E8-D4E8-4344-AE3D-25F3EC259C70@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916EB3710@ORSMSX101.amr.corp.intel.com>
Date: Wed, 23 Nov 2011 14:03:00 -0500
Message-ID: <1322074980.24623.6.camel@jim-ubuntu>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADT installer
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
X-List-Received-Date: Wed, 23 Nov 2011 19:02:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-23 at 18:22 +0000, Rifenbark, Scott M wrote:
> Jim, 
> 
> My machine finished and it built the adt_installer.tar.bz2 in ~/yocto-project/build/tmp/deploy/sdk as advertised.  
> 
> The only change I made was  the URL change to get the Edison tarball using wget.
> 
> Scott
> 

Okay, I'll go back to a fresh install.  I just use the Poky-edison I had
used for a previous bitbake for a boot image.

Jim A

> -----Original Message-----
> From: James Abernathy [mailto:jfabernathy@gmail.com] 
> Sent: Wednesday, November 23, 2011 9:28 AM
> To: Rifenbark, Scott M
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] ADT installer
> 
> 
> On Nov 23, 2011, at 11:55 AM, Rifenbark, Scott M wrote:
> 
> > Jim, 
> > 
> > Let me try and replicate this from the manual.  I will get back momentarily.
> > 
> > Scott
> > 
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jim Abernathy
> > Sent: Wednesday, November 23, 2011 8:45 AM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] ADT installer
> > 
> > I was following the ADT manual online, section 2.1.1.1, and everything
> > seemed to complete as expected, but adt_installer.tar.bz2 was not
> > created in the ..../build/tmp/deploy/sdk direction as documented.  In
> > fact, there is no sdk directory in deploy.  Is this a documentation
> > issue or is this not working. BTW, I could not find the tarball anywhere
> > on my Ubuntu development system.
> > 
> > Jim A
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> The instructions don't have you cd into the directory to execute the source oe-.....  Not sure if that's a problem.  I can rerun.  I use the Edison Poky tarball and not the git.
> 
> Jim A



