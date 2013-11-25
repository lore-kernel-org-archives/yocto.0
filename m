Return-Path: <wmills@ti.com>
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 094C3E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 10:02:38 -0800 (PST)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id rAPI2a9V026059;
	Mon, 25 Nov 2013 12:02:36 -0600
Received: from DLEE70.ent.ti.com (dlee70.ent.ti.com [157.170.170.113])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id rAPI2ZXP014294;
	Mon, 25 Nov 2013 12:02:35 -0600
Received: from dlep33.itg.ti.com (157.170.170.75) by DLEE70.ent.ti.com
	(157.170.170.113) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 25 Nov 2013 12:02:35 -0600
Received: from gtwmills.gt.design.ti.com (ileax41-snat.itg.ti.com
	[10.172.224.153])	by dlep33.itg.ti.com (8.14.3/8.13.8) with ESMTP id
	rAPI2Zq9030735;	Mon, 25 Nov 2013 12:02:35 -0600
Message-ID: <529390BB.3020005@ti.com>
Date: Mon, 25 Nov 2013 13:02:35 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F510DC@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F510DC@ORSMSX101.amr.corp.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Dmytriyenko,
	Denys" <denys@ti.com>
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
X-List-Received-Date: Mon, 25 Nov 2013 18:02:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2013 09:06 AM, Rifenbark, Scott M wrote:
> Anyone have descriptions for these three variables?  I would like to document them and am wondering if anyone has used them or knows how they work.
>

SPL is the preloader for U-boot required on some platforms.

The base include for u-boot defines the SPL_IMAGE and SPL_SYMLINK
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot/u-boot.inc

One example of use of SPL_BINARY is here:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/recipes-bsp/u-boot/u-boot_2011.12.bb

So the SPL_BINARY defines the name of the file in the filesystem image.
The SPL_IMAGE and SPL_SYMLINK appear to specific the long version 
specific image file produced by the build and the somewhat shorter 
symlink that points to it.  These will be in a machine specific dir on 
the build machine; the same place the kernel is found.
(The kernel also gets a very long name and a symlink  you can reuse 
wording from the description if you have that already.)


