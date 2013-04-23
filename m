Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 058F6E014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 06:07:42 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3ND89n4008197; Tue, 23 Apr 2013 14:08:30 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id eYdthKbip1yZ; Tue, 23 Apr 2013 14:08:30 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3ND8O32008210
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Tue, 23 Apr 2013 14:08:26 +0100
Message-ID: <1366722437.23738.59.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 23 Apr 2013 14:07:17 +0100
In-Reply-To: <51767FE1.5060809@mlbassoc.com>
References: <00da01ce401a$852365e0$8f6a31a0$@gmail.com>
	<CAJTo0Lbf_TOUcuYCJKsqb6n6RfnL6W9+kSmaJWV-A7AszZ5R4g@mail.gmail.com>
	<010401ce401e$3399b130$9acd1390$@gmail.com>
	<51767FE1.5060809@mlbassoc.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Splashscreen using psplash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Apr 2013 13:07:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-04-23 at 06:34 -0600, Gary Thomas wrote:
> On 2013-04-23 06:29, Andreas Enbacka wrote:
> > Hello,
> >
> > Thanks a lot for info, I will try with that.
> >
> > //Andreas
> >
> > -----Original Message-----
> > From: Burton, Ross [mailto:ross.burton@intel.com]
> > Sent: 23. huhtikuuta 2013 15:09
> > To: Andreas Enbacka
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Splashscreen using psplash
> >
> > On 23 April 2013 13:03, Andreas Enbacka <aenbacka@gmail.com> wrote:
> >> I am creating a custom image based on core-image-sato, with a custom splash
> >> screen (using psplash). I have been able to replace the default yocto
> >> splashscreen in my image,  however, my question is whether it is possible to
> >> hide the initial console output text displayed on the screen prior to
> >> showing the splashscreen?  Currently most of the boot process is completed
> >> at the stage when the splash screen is being displayed on screen. This is
> >> because the image should be used as part of an embedded device, and the
> >> end-user should not see any traces of the underlying linux distro.
> >
> > Passing "quiet" to the kernel (APPEND+="quiet" in local.conf will do
> > it for testing) should stop the majority of the text.  A full
> > splash-from-bootloader is possible if you have a bootloader that
> > displays the image, and then a silent kernel from there.
> 
> Note: AFAICT this will only work if booting using grub or syslinux, not U-Boot
> or some other embedded bootstrap.

The trick is to redirect the console output somewhere else. By default
it goes to the first tty if I recall correctly but you can send it to a
serial port or wherever you want...

Cheers,

Richard





