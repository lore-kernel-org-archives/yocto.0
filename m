Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EBB5E00C9D; Mon, 14 Nov 2016 06:36:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFC21E00C98
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 06:36:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTP id uAEEa1Tr025890;
	Mon, 14 Nov 2016 06:36:02 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 14 Nov 2016 06:36:00 -0800
To: <mert.ergun@mikro-tasarim.com.tr>, <yocto@yoctoproject.org>
References: <8a556f5733a5ed58345b4d907f7b5cbb.squirrel@mail.mikro-tasarim.com.tr>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <3421be68-caba-3ee8-1f1d-f205c14dc7d8@windriver.com>
Date: Mon, 14 Nov 2016 09:36:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <8a556f5733a5ed58345b4d907f7b5cbb.squirrel@mail.mikro-tasarim.com.tr>
Subject: Re: Correct way to build patched kernel modules
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
X-List-Received-Date: Mon, 14 Nov 2016 14:36:10 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-14 10:01 AM, Mert Can Ergun wrote:
> Hi!
>
> I am currently using a kernel bbappend file to build my kernel and kernel
> modules. My bbappend file looks like this:
>
> linux-imx_%.bbappend
> SUMMARY = "Patches applied to Freescale kernel"
> DESCRIPTION = "blank"
>
> FILESPATH_prepend := "${THISDIR}/patches:"
>
> SRC_URI += " \
> 	file://defconfig-mt \
> 	**patches for kernel modules appear here**
> "
>
> do_configure_prepend() {
>             cp ${WORKDIR}/defconfig-mt ${WORKDIR}/defconfig
> }
>
> However, this approach doesn't feel right and I want to seperate kernel
> and its modules from each other at build.

If the kernel modules that you are patching and building are in-tree,
there's no problem with the architecture of what you have above. The
build process for in-tree modules is integrated with the main kernel
build.

>
> What I tried to do is remove patches from the bbappend file and keep
> defconfig file intact. Create a new bb file and put patches inside there
> instead. So new architecture looks like this:
>
> linux-imx_%.bbappend
> SUMMARY = "Patches applied to Freescale kernel"
> DESCRIPTION = "MT6415CA"
>
> FILESPATH_prepend := "${THISDIR}/patches:"
>
> SRC_URI += " \
> 	file://defconfig-mt \
> "
>
> do_configure_prepend() {
>             cp ${WORKDIR}/defconfig-mt ${WORKDIR}/defconfig
> }
>
> mt-module_0.1.bb
> SUMMARY = "Patches applied to Freescale kernel"
> DESCRIPTION = "blank"
> LICENSE = "GPLv2"
>
> inherit module
>
> FILESPATH_prepend := "${THISDIR}/patches:"
>
> SRC_URI += " \
> 	**patches appear here**
> "
>
> Now my kernel append module doesn't even apply defconfig changes and new
> bb file doesn't do anything either. What's the right way to do this?

If you are patching the kernel source with this recipe, it needs to
match the name of your kernel recipe.

Bruce


>
> -------------------------------
> Mert Can Ergun
> Yazilim Gelistirme Muhendisi
>
> Mikro-Tasarim Ltd.
> ODTU-Teknokent ODTU-MET Alani
> A-1 Blok 4. Bolum Ofis 3/A
> TR-06530 Ankara
> T: +90 312 286 0103
> F: +90 312 286 0104
> U: www.mikro-tasarim.com.tr
> E: mert.ergun@mikro-tasarim.com.tr
> -------------------------------
>


