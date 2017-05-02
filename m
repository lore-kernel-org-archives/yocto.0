Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5459DE009A0; Tue,  2 May 2017 12:41:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C40E00972;
	Tue,  2 May 2017 12:41:02 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 02 May 2017 12:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,280,1491289200"; d="scan'208";a="96794096"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by fmsmga006.fm.intel.com with ESMTP; 02 May 2017 12:41:00 -0700
Message-ID: <1493754532.1761.5.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
Date: Tue, 02 May 2017 14:48:52 -0500
In-Reply-To: <14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8E08C@XSJ-PSEXMBX01.xlnx.xilinx.com>
References: <CAFL6qn5czUYrKRLPxhZbj7EEAgMu_dFr89WNsDBaYxVWKppM_w@mail.gmail.com>
	<b383700f-54c5-7ff1-92a7-89916c413f1a@gmail.com>
	<14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8CB02@XSJ-PSEXMBX01.xlnx.xilinx.com>
	<CA+aJhH0VpaJsXyBMMN5XYVmOAu0BsUk87ep-WdC8bmiSBJ_A3g@mail.gmail.com>
	<14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8E08C@XSJ-PSEXMBX01.xlnx.xilinx.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>,
	Pello Heriz <pello.heriz@alumni.mondragon.edu>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>,
	Jason Wu <jason.wu.misc@gmail.com>, "meta-xilinx-request@yoctoproject.org"
	<meta-xilinx-request@yoctoproject.org>
Subject: Re: [meta-xilinx] xen-image-minimal testing
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
X-List-Received-Date: Tue, 02 May 2017 19:41:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-05-02 at 18:28 +0000, Manjukumar Harthikote Matha wrote:
> 
> > -----Original Message-----
> > From: Nathan Rossi [mailto:nathan@nathanrossi.com]
> > Sent: Tuesday, May 02, 2017 10:23 AM
> > To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
> > Cc: Jason Wu <jason.wu.misc@gmail.com>; Pello Heriz
> > <pello.heriz@alumni.mondragon.edu>; meta-xilinx@yoctoproject.org; meta-xilinx-
> > request@yoctoproject.org; meta-virtualization@yoctoproject.org;
> > yocto@yoctoproject.org
> > Subject: Re: [meta-xilinx] xen-image-minimal testing
> >
> > On 3 May 2017 at 02:47, Manjukumar Harthikote Matha <manjukumar.harthikote-
> > matha@xilinx.com> wrote:
> > >
> > >
> > >> -----Original Message-----
> > >> From: meta-xilinx-bounces@yoctoproject.org [mailto:meta-xilinx-
> > >> bounces@yoctoproject.org] On Behalf Of Jason Wu
> > >> Sent: Tuesday, May 02, 2017 2:16 AM
> > >> To: Pello Heriz <pello.heriz@alumni.mondragon.edu>; meta-
> > >> xilinx@yoctoproject.org; meta-xilinx-request@yoctoproject.org; meta-
> > >> virtualization@yoctoproject.org; yocto@yoctoproject.org
> > >> Subject: Re: [meta-xilinx] xen-image-minimal testing
> > >>
> > >>
> > >>
> > >> On 2/05/2017 4:33 PM, Pello Heriz wrote:
> > >> > Hi all,
> > >> >
> > >> > I have built an image using "xen-image-minimal" command with Yocto
> > >> > and I would want to know how can I test if xen functionalities are
> > >> > correct or not with Zynq MPSoC QEMU. How can I do this?
> > >> http://www.wiki.xilinx.com/Building+the+Xen+Hypervisor+with+PetaLinux
> > >> +2016.4+
> > >> and+newer
> > >>
> > >> have look at the "TFTP Booting Xen and Dom0 2016.4" section and hope that
> > helps.
> > >>
> > >> >
> > >> > Anyway, I have seen that sometimes in the QEMU terminal appears the
> > >> > next message when the mentioned image is launched by "runqemu zcu102".
> > >> >
> > >> > INIT: Id "X0" respawning too fast: disabled for 5 minutes
> > >> >
> > >> > What's the meaning of the message? Is it critical?
> > >> It is not critical if you don't need it. The reason you are getting
> > >> this error message is because the your inittab trying spawn a console
> > >> when the device node (e.g. hvc0) for Id "X0" does not exists.
> > >>
> > >
> > > Is there a way to stop inittab from doing this?
> > > Tried few options for initiab, for ex: using "once" instead of "spawn"
> > >
> > > Any other good ideas on how we can disable it? Or what is a better
> > > approach to resolve this issue during runtime
> >
> > Change the sysvinit-inittab bbappend in meta-virtualization use start_getty instead
> > of just getty, start_getty does a 'test -c' before starting getty on the device. This is
> > how sysvinit-inittab handles SERIAL_CONSOLES. Alternatively the meta-virtualization
> > bbappend could just expand SERIAL_CONSOLES.
> >
> Something like this?
> https://github.com/Xilinx/meta-virtualization/commit/610887495c01f0b17db6084e1426cc55a3f806ea
> 
> We still see initab looking for console even after this change

another approach, including the following into your local.conf

SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"

or if you are using qemu, the following poky commit id can be
cherry-picked 86d6b790eb7 which avoids the entry on inittab for ttyS1.

Leo


> 
> Thanks
> Manju
> 
> 
> > Regards,
> > Nathan
> 
> 
> This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.
> 



