Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9554E003E1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2012 00:00:39 -0800 (PST)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Fri, 17 Feb 2012 16:00:25 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Fri, 17 Feb 2012
	16:00:20 +0800
Message-ID: <1329465515.1067.176.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Date: Fri, 17 Feb 2012 15:58:35 +0800
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FCE8B3E@SHSMSX102.ccr.corp.intel.com>
References: <1329463593.1067.174.camel@localhost.localdomain>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE8B3E@SHSMSX102.ccr.corp.intel.com>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The sysroot location in eclipse plugin?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Feb 2012 08:00:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

thanks! another question:
why I must specify the sysroot location in eclipse plugin? the
environment-setup has it already.

On Fri, 2012-02-17 at 15:49 +0800, Lu, Lianhao wrote:
> Ni Qingliang wrote on 2012-02-17:
> > the environment-setup file in build tree had defined CFLAGS and CXXFLAGS
> > which include the sysroot argument(<build_tree>/tmp/sysroots/<machine>).
> >
> > Do we must specify the sysroot location in the eclipse plugin?
> >
> > after specify it, I found the CFLAGS CXXFLAGS in project property follow
> > it, and dropped the sysroot defined in environment-setup file.
> >
> > and I have another sysroot running on target (qemu) unzipped from the
> > image.
> >
> > If I specify the target sysroot in eclipse-plugin, I can't compile my
> > code, because there is no any header file in /usr/include.
> > If I specify the <build_tree>/tmp/sysroots/<machine>, I can't running
> > the qemu machine in eclipse, because there is no 'init'.
> >
> The eclipse-plugin by default assumes the user using the same target sysroot for both cross compiling and qemu launching. So this requires the target sysroot having the libraries and header files.
> 
> You might have 2 options here:
> 1. build a new image with the "dev-pkgs" image feature(you can set that in conf/local.conf in variable EXTRA_IMAGE_FEATURES) and use that image as target sysroot in eclipse.
> 
> 2. launch the qemu in console terminal, out of eclipse, using a different target sysroot.
> 
> Best Regards,
> Lianhao
> 
> 

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


