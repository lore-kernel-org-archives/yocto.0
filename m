Return-Path: <marco.tessore@axelsw.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 168C4E0089B; Tue, 13 Jan 2015 06:13:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.97.34.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 567 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Jan 2015 06:13:38 PST
Received: from outbusiness.email.it (outbusiness.email.it [212.97.34.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B4A4E00752
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 06:13:38 -0800 (PST)
Received: from [10.0.0.56] (78-134-6-176.v4.ngi.it [78.134.6.176])
	by outbusiness.email.it (Postfix) with ESMTP id D426158C0D5
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 15:04:07 +0100 (CET)
Message-ID: <54B52591.5050700@axelsw.it>
Date: Tue, 13 Jan 2015 15:02:57 +0100
From: Marco Tessore <marco.tessore@axelsw.it>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [meta-xilinx-community] How to build for MicroZed board?
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
X-List-Received-Date: Tue, 13 Jan 2015 14:13:41 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Good Morning,
I am new to Yocto, but I need to create an embedded system on board 
MicroZed, based on processor Zynq from Xilinx.

 From what I understand the support form my board is provided by layer 
xilinx-meta-community;
from the README file associated with this layer I see that the mailing 
list of reference is this,
with the constraint of using "[meta-xilinx-community]" as a subject prefix.

In doubt if this is the correct mailing list, I am also writing to 
meta-xilinx@yoctoproject.org.

If I'm writing to the correct mailing list, I would write of a problem:
I would like to generate the configuration core-image-minimal,
with MACHINE ??= "microzed-zynq7", with the sources aligned to version 
"daisy".

I cloned repositories related to "poky", "meta-xilinx" and 
"meta-xilinx-community" with the following commands:
   - git clone -b daisy git://git.yoctoproject.org/poky.git
   - git clone -b daisy git://github.com/Xilinx/meta-xilinx
   - git clone -b daisy git://git.yoctoproject.org/meta-xilinx-community
   - git clone -b daisy git://github.com/openembedded/meta-oe

I then modified my file local.conf specifying parallelism and the variable
MACHINE ??= "ZedBoard-zynq7"

I also changed the file bblayers.conf changing layers included as follows:
BBLAYERS ?= " \
   /data/axel/YoctoMicroZed/poky/meta \
   /data/axel/YoctoMicroZed/poky/meta-yocto \
   /data/axel/YoctoMicroZed/poky/meta-yocto-bsp \
   /data/axel/YoctoMicroZed/poky/meta-xilinx-community \
   /data/axel/YoctoMicroZed/poky/meta-xilinx \
   /data/axel/YoctoMicroZed/poky/meta-oe/meta-oe \
   "


The problem is that running the command "bitbake core-image-minimal",
after the download phase and the execution of some tasks, the process 
stops with the following error:
Function failed: do_configure (log file is located at 
/data/axel/YoctoMicroZed/poky/build/tmp/work/microzed_zynq7-poky-linux-gnueabi/linux-xlnx/3.14-xilinx+git2b48a8aeea7367359f9eebe55c4a09a05227f32b-r0/temp/log.do_configure.11742)

Before going to analyze the nature of the error I'd like to know if the 
version of the various sources is updated - in the sense:
there are archives of sources, tested such that it is possible to 
successfully execute the build for this system?
Or I have to refer to particular sources on git commit?

Thank you in advance for any suggestion
Kind regards
Marco Tessore


