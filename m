Return-Path: <denys@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF71E00510
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 10:24:55 -0800 (PST)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id rAPIOsLu019228;
	Mon, 25 Nov 2013 12:24:54 -0600
Received: from DLEE70.ent.ti.com (dlee70.ent.ti.com [157.170.170.113])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id rAPIOrhm029120;
	Mon, 25 Nov 2013 12:24:54 -0600
Received: from dflp32.itg.ti.com (10.64.6.15) by DLEE70.ent.ti.com
	(157.170.170.113) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 25 Nov 2013 12:24:53 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dflp32.itg.ti.com (8.14.3/8.13.8) with ESMTP id rAPIOrwI024895;
	Mon, 25 Nov 2013 12:24:53 -0600
Date: Mon, 25 Nov 2013 13:24:52 -0500
From: Denys Dmytriyenko <denys@ti.com>
To: William Mills <wmills@ti.com>
Message-ID: <20131125182452.GN690@edge>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F510DC@ORSMSX101.amr.corp.intel.com>
	<529390BB.3020005@ti.com>
MIME-Version: 1.0
In-Reply-To: <529390BB.3020005@ti.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SPL_IMAGE, SPL_BINARY, and SPL_SYMLINK definitions
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
X-List-Received-Date: Mon, 25 Nov 2013 18:24:57 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Mon, Nov 25, 2013 at 01:02:35PM -0500, William Mills wrote:
> On 11/25/2013 09:06 AM, Rifenbark, Scott M wrote:
> >Anyone have descriptions for these three variables?  I would like to 
> >document them and am wondering if anyone has used them or knows how they 
> >work.

git blame u-boot.inc would have shown the commit 2965aa2f that added those 
vars into the main u-boot.inc. The commit log does provide some explanation. 
Although, that is the commit that unified SPL_* vars into a common .inc file, 
previously we used to add them into specific u-boot_*.bb recipes along with 
the necessary do_install_append() and do_deploy_append()...


> SPL is the preloader for U-boot required on some platforms.

And it stands for Secondary Program Loader:
http://git.denx.de/?p=u-boot.git;a=blob;f=doc/README.SPL;hb=HEAD


> The base include for u-boot defines the SPL_IMAGE and SPL_SYMLINK
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/u-boot.inc
> 
> One example of use of SPL_BINARY is here:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/recipes-bsp/u-boot/u-boot_2011.12.bb
> 
> So the SPL_BINARY defines the name of the file in the filesystem image.
> The SPL_IMAGE and SPL_SYMLINK appear to specific the long version
> specific image file produced by the build and the somewhat shorter
> symlink that points to it.  These will be in a machine specific dir
> on the build machine; the same place the kernel is found.
> (The kernel also gets a very long name and a symlink  you can reuse
> wording from the description if you have that already.)
> 

