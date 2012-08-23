Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72A4AE002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:33:10 -0700 (PDT)
Received: by bkty5 with SMTP id y5so335166bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=xz7bAbm55649zvvOMOi67hrzRb5uIH6DpImJ27u/LkA=;
	b=LFtqjQ+v/V4tu9N5JvqOuu3sqCU89PN2xRWe0Np64PQZVbub/IN0o6SInYjnYkooYV
	BreDPGEImp09Qyq41XuLncIoF//cekTabp0j/08imvpB0pXfwXaL8mAHSE15In4bBz7Q
	xS8bEjGl1oxWzHJX9JIWCiJ1a7L7UdMubwWjc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=xz7bAbm55649zvvOMOi67hrzRb5uIH6DpImJ27u/LkA=;
	b=mFVY4KlZ7gFEQSl3qmVNpDmL8xSt3DohhXR4y271A7GVSmalR5S19H15FtK0LGplqu
	9a4AOnYGd50rNnJjJ49t3BRwQxYgAVNnl72Vb5TUkLktDAenAb8smgdLxwQMrEbFtnN/
	LtHVR48ArkkrHI5Gd7Mb62NNnLIxXDUM9m0gsdOcV1n2oaF7ln6ssn6G0J8F8K2GfipK
	1XtJfUeYvYlNTKVvdn4WjO05sXxbO59QhQbwnlLtBOsTUaFbEGosrBU4/BaULIn2/1Dt
	MlCa8ToCv9j6i8UlSmEMBw8fg15l4YsTvAhk1Zf6B78hMt6KP0Gca5LP9JzzQE6SShwp
	gOdQ==
Received: by 10.204.152.145 with SMTP id g17mr801099bkw.120.1345739589311;
	Thu, 23 Aug 2012 09:33:09 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id n5sm4998125bkv.14.2012.08.23.09.33.07
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 09:33:07 -0700 (PDT)
Date: Thu, 23 Aug 2012 18:33:04 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120823183119.afd00e1b-7539-402f-a396-e02f7291ed21.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120823111211.dc88b42c-eca6-4b9e-ad44-f26b84dfcdad.mhubig@imko.de>
	<20120823093202.GL3029@jama.jama.net>
MIME-Version: 1.0
In-Reply-To: <20120823093202.GL3029@jama.jama.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQn5FYsga+wB8EPoqTes5elMiO3Bp8c5uwsqAxuEMAZzq631IVxa1T7Jm0DA9RHih4SuctR5
Subject: [SOLVED] Wrong ENTRYPOINT and LOADADDRESS in uImage
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
X-List-Received-Date: Thu, 23 Aug 2012 16:33:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 23, 2012 at 11:32:02AM +0200, Martin Jansa wrote:
> On Thu, Aug 23, 2012 at 11:24:20AM +0200, Markus Hubig wrote:
> > 
> > I have a customized Yocto-Linux Recipe in my BSP, and now I'm seeing that
> > the UBOOT_ENTRYPOINT and UBOOT_LOADADDRESS settings in my ${MACHINE}.conf
> > is not honored in the resulting uImage.
> 
> You need newer oe-core with this commit and KEEPUIMAGE set to "no"
> 
> commit 72a7049526ee107005bd39c7bdd814ed71345829
> Author: Koen Kooi <koen@dominion.thruhere.net>
> Date:   Mon Jul 23 13:45:30 2012 -0700
> 
>     kernel bbclass: Recreate uImage only when KEEPUIMAGE != "yes"
> 
>     The intent of the uImage code in this class includes the following
> 
>     1) be able to specify custom load addresses without needing to patch the
>        kernel
>     2) add better information to the uImage description field
> 
>     The current state is a NOP anyway, the kernel will always build a uImage
>     when you tell it to 'make uImage'.
> 
>     weakly Set KEEPUIMAGE to 'yes' in default-distrovars.inc which preserve
>     the current OE-Core behavior. Machines which are being ported from oe.dev
>     and need to regenerate uImage can set this to be empty
> 
>     Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
>     Signed-off-by: Khem Raj <raj.khem@gmail.com>
>     Signed-off-by: Saul Wold <sgw@linux.intel.com>

Thanks that fixed it ...

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

