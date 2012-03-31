Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 865B3E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 19:14:00 -0700 (PDT)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.3.83.0; Sat, 31 Mar 2012 10:12:59 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.3.83.0; Sat, 31 Mar 2012
	10:13:31 +0800
Message-ID: <1333159881.10988.9.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: Autif Khan <autif.mlist@gmail.com>
Date: Sat, 31 Mar 2012 10:11:21 +0800
In-Reply-To: <CADzUK1K28hYC=7f7MxiHYeoEhD4_FKPFZBeiu6jhZnsngrzcJg@mail.gmail.com>
References: <1333090420.10988.4.camel@localhost.localdomain>
	<CADzUK1K28hYC=7f7MxiHYeoEhD4_FKPFZBeiu6jhZnsngrzcJg@mail.gmail.com>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to install kernel module(s)?
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
X-List-Received-Date: Sat, 31 Mar 2012 02:14:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-30 at 21:18 +0800, Autif Khan wrote:
> > Hi,
> > I have made a custom kernel bb file, and get some modules in
> > tmp/deploy/images/modules-3.3.0-r1-pangu-test.tgz,
> >
> > but how to install the modules into the image?
> 
> There is a chance that I completely misunderstand your scenario.
> 
> Presumably, you have a recipe for your kernel modules - something akin
> to meta/recipes-kernel/hello-mod/hello-mod_0.1.bb
> 
> In that case, to include the module, you need to add hello-mod to the
> IMAGE_INSTALL variable (either in local.conf or in your one
> meta-layer's images recipes)
> 
> Now, if you are modifying the kernel's recipe to get the modules - I
> am not sure.
sorry about that, indeed, my mean is a kernel recipe, not module recipe.

> Does this help? Can you please clarify, how the modules are built?
the modules is configured in the 'defconfig' used by the kernel recipe.

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


