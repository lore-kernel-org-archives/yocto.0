Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE6C1E00BF2
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 06:03:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3SD3Xcb015749
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Apr 2014 06:03:33 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 28 Apr 2014 06:03:33 -0700
Message-ID: <535E5198.60709@windriver.com>
Date: Mon, 28 Apr 2014 09:03:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
References: <ljl1vt$ink$1@ger.gmane.org>
In-Reply-To: <ljl1vt$ink$1@ger.gmane.org>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Mon, 28 Apr 2014 13:03:42 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-28 04:03 AM, Neuer User wrote:
> Hello
>
> I am trying to add a custom kernel config to my layer. I followed the
> following guide:
> http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#creating-config-fragments
>
> I have the following files in my layer:
>
> recipes-kernel/linux/linux-cubox-i_3.0.35.bbappend:

The answer to your question depends on the base linux-cubox-i
recipe.

Config fragment support works for kernels that inherit from linux-yocto,
versus ones that inherit directly from kernel.bbclass. So if you
pop open that base recipe, and look for a reference to linux-yocto.inc,
you'll have the answer.

It is possible to bbappend the linux-yocto support into the kernel
recipe via your layer, and might be worth a try.

The separation between the two classes exists to not break compatibility
with existing kernel recipes, or change long standing oe workflow with
the existing classes.

Cheers,

Bruce

>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> inherit kernel
> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
>
> SRC_URI += "file://videoin.cfg"
>
>
> recipes-kernel/linux/linux-cubox-i-3.0.35/videoin.cfg:
>
> CONFIG_VIDEOBUF_VMALLOC=y
> CONFIG_VIDEO_TVEEPROM=y
> CONFIG_VIDEO_TUNER=y
> CONFIG_VIDEO_ADV7180=y
> CONFIG_VIDEO_MXC_CAMERA=y
> CONFIG_MXC_TVIN_ADV7180=y
> CONFIG_USB_VIDEO_CLASS=y
> CONFIG_USB_GSPCA=y
> CONFIG_USB_M5602=y
> CONFIG_USB_STV06XX=y
> ...
>
> The layer is included in conf/bblayers.conf. The file videoin.cfg is
> found and "installed" in the correct tmp/work directory. However the
> config is never added to the kernel config file.
>
> What am I doing wrong?
>
> I use Yocto "master-next", cubox-i4pro.
>
> Thanks
>
> Michael
>


