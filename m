Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B3ACE00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 10:19:45 -0700 (PDT)
Received: by lboj14 with SMTP id j14so4124183lbo.35
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 10:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=luvC4hFj1LsR0vFYbLf2NE/Ly3sMjAN9fEycbgGwM+g=;
	b=XYXu4ou9NQ/iCKxQcDvI5ckcJL1uqsPYTR1g+EDl8k4Ae4cJwbywBnaVJmaSrO/bV5
	xtOKa/44kV+eKogJt13zcaQgklODglKNWXB+GK4fE+yy245zJY+gFTR0gHe7Apt71bNR
	adQqCkacxdsgcKap+0jtIvidt3QMid7hUdfxoygv5yq7f2msWRa4La91kvz4jeQWxXPI
	I84b68FLmehniAkagfk2U/2oSXgMIdiUVE/btmSGVslwK7k3jBIp6FE/uNTsJo6cNmOz
	QC9d7czL7r9g8Ubzsl5Yfow1OZakjgyAYISM3ymS3XJsDEWU7oZhc2Ak4PJpv9th//R/
	Q1Eg==
Received: by 10.152.146.101 with SMTP id tb5mr37670035lab.0.1342113583862;
	Thu, 12 Jul 2012 10:19:43 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Thu, 12 Jul 2012 10:19:23 -0700 (PDT)
In-Reply-To: <8a1dbb15a9e7ce0b9ef651ac01ff93a1996edc71.1342085510.git.nitin.a.kamble@intel.com>
References: <cover.1342085510.git.nitin.a.kamble@intel.com>
	<8a1dbb15a9e7ce0b9ef651ac01ff93a1996edc71.1342085510.git.nitin.a.kamble@intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 12 Jul 2012 10:19:23 -0700
X-Google-Sender-Auth: u39E21RA25xOffcFFiV8dD_xMSA
Message-ID: <CABcZAN=Wa3drqpkDrX+YH4hejrLmUPPHMbT1FgNzU0Yjww7rgg@mail.gmail.com>
To: nitin.a.kamble@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] ia32-base.inc: also take -dev package of emgd
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
X-List-Received-Date: Thu, 12 Jul 2012 17:19:45 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 12, 2012 at 2:35 AM,  <nitin.a.kamble@intel.com> wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>
> emgd-driver-bin recipe provides emgd-driver-bin, emgd-driver-bin-dev
> & emgd-driver-bin-dbg packages. For emgd driver to work it also need
> library files from emgd-driver-bin-dev package. This change makes sure
> this -dev package is also added for emgd driver.

This seems questionable. If the driver requires those libraries, they
should probably be moved out of -dev, no?
-- 
Christopher Larson

