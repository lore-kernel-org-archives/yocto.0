Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06016E0086E; Thu,  5 Mar 2015 12:53:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD4D0E0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 12:53:20 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 05 Mar 2015 12:48:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,348,1422950400"; d="scan'208";a="661073375"
Received: from localhost.jf.intel.com (HELO [10.7.201.37]) ([10.7.201.37])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2015 12:53:20 -0800
Message-ID: <54F8C240.4060808@linux.intel.com>
Date: Thu, 05 Mar 2015 12:53:20 -0800
From: Randy Witt <randy.e.witt@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1425588365.20158.YahooMailBasic@web172303.mail.ir2.yahoo.com>
In-Reply-To: <1425588365.20158.YahooMailBasic@web172303.mail.ir2.yahoo.com>
Subject: Re: Append recipe LICENCE checksum problem
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
X-List-Received-Date: Thu, 05 Mar 2015 20:53:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/05/2015 12:46 PM, p_j_r_m wrote:
> I have a layer meta-mycompany where i want to append to the grub_2.00 recipe placed at openembedded-core layer just to add my custom grub.cfg file.
> Also, I see there is ALREADY a grub-2.00.bbappend file in my BSP layer (meta-montavista-1.4).My layer has highest priority.
>
> So I wrote a recipe called grub-2.00.bbappend like this in my layer:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI = "file://grub${MYBOARD}.cfg "

You are overwriting the SRC_URI rather than appending to it. So my guess is that 
the source isn't getting fetched, which is why it says it can't find the license 
file.


> FILES_${PN}_append = "${base_prefix}/boot"
>
> do_install_append() {
>    if [ ! -d ${D}${base_prefix}/boot/grub ]
>    then
>       install -m 0755 -d ${S}${base_prefix}/boot/grub ${D}${base_prefix}/boot/grub
>    fi
>    install -m 0755 ${WORKDIR}/grub${MYBOARD}.cfg ${D}${base_prefix}/boot/grub/grub.cfg
> }
>
> $MYBOARD is a custom name just to pick up the proper grub file for each platform.
>
> But when i do a "bitbake grub" I get:
>
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid file: /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/COPYING
> ERROR: Logfile of failure stored in: /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/temp/log.do_configure.628
> Log data follows:
> | DEBUG: Executing python function sysroot_cleansstate
> ...
> | DEBUG: Python function do_qa_configure finished
> | ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid file: /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/COPYING
> ERROR: Task 5 (/opt/work/tmp/layers/openembedded-core-1.4-1411101352/openembedded-core-1.4-1411101352/meta/recipes-bsp/grub/grub_2.00.bb, do_configure) failed with exit code '1'
>
> If i take my layer out of my conf/extra-layers.conf ,recipe builds ok.
>
> My layer is:
>
> releases
> ├── meta-mycompany
> │   ├── conf
> │   │   └── layer.conf
> │   ├── README
> │   ├── recipes
> │       ├── grub
> │       │   ├── files
> │       │   │   ├── grubatca.cfg
> │       │   │   └── grubmni.cfg
> │       │   └── grub_2.00.bbappend
> │       ├── images
> │          ├── mycompany-atca-image.bb
> │          └── mycompany-atca-image-buildcf.bb
> ├── meta-mycompany.tar.bz2
> ├── meta-mycompany.tar.bz2.md5
>
> Do you know what is the problem?
> Must an .append recipe also provide a LICENCE file? Where?
>
> Thank you
>


