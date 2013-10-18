Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0C43E0169A
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 13:17:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9IKHRKG009747
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Oct 2013 13:17:27 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 18 Oct 2013 13:17:26 -0700
Message-ID: <5261974C.7010202@windriver.com>
Date: Fri, 18 Oct 2013 16:17:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
In-Reply-To: <CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Fri, 18 Oct 2013 20:17:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-18 05:17 AM, Diego Sueiro wrote:
>
> 2013/10/18 Bruce Ashfield <bruce.ashfield@windriver.com
> <mailto:bruce.ashfield@windriver.com>>
>
>     I fell behind today .. i had 2300 unread email to start this morning :)
>     Is there a way that I can get a copy of your recipes and layers ? If
>     I can do a build myself, I can easily debug and fix this ..
>     otherwise, we'll
>     go back and forth many times debugging.
>
>     Cheers,
>
>     Bruce
>
>
> I'm using the environment provided by Angstrom from it's github setup
> scripts.
> If you want to exactly reproduce it you need to:
>
>     git clone https://github.com/Angstrom-distribution/setup-scripts.git
>     cd setup-scripts
>     git checkout angstrom-v2013.06-yocto1.4
>     MACHINE=beaglebone ./oebb.sh config beaglebone
>
> Here is the setup and files for meta-mine:
>
> bblayers.conf:
>
>     BBLAYERS = \"
>
>         ...
>         ${TOPDIR}/sources/meta-mine \
>         "
>
> meta-mine/conf/layer.conf:
>
>     # We have a conf and classes directory, append to BBPATH
>     BBPATH .= ":${LAYERDIR}"
>     # We have a recipes directory, add to BBFILES
>     BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>     ${LAYERDIR}/recipes*/*/*.bbappend"
>     BBFILE_COLLECTIONS += "mine-layer"
>     BBFILE_PATTERN_mine-layer := "^${LAYERDIR}/"
>     BBFILE_PRIORITY_mine-layer = "10"
>     LAYERDEPENDS_mine-layer = "angstrom-layer"
>
> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>
>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>     inherit kernel
>     require recipes-kernel/linux/linux-yocto.inc
>     COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>     SRC_URI += " file://config-addons.cfg "
>
> meta-mine/recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg:
>
>     CONFIG_WATCHDOG_NOWAYOUT=y
>     CONFIG_NTFS_FS=y
>     CONFIG_NTFS_RW=y
>
>
>
> But I think that instead of using the whole Angstrom you can just use
> poky and meta-beagleboard/common-bsp on dylan branch.

Great. I'll launch some test builds and see what breaks (or works) :)

Bruce

>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/


