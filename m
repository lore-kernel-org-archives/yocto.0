Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0A70E00CB6; Mon, 31 Oct 2016 20:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 488CFE00C86
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 20:34:44 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 31 Oct 2016 20:34:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,430,1473145200"; d="scan'208";a="780661429"
Received: from mbi370x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.81])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Oct 2016 20:34:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Swapna.Gurumani@microchip.com
Date: Tue, 01 Nov 2016 16:34:39 +1300
Message-ID: <16244336.UgYXzEjrtG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE71F2@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<4177938.GHPXVAbNun@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE71F2@CHN-SV-EXMX05.mchp-main.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 03:34:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Nov 2016 03:12:15 Swapna.Gurumani@microchip.com wrote:
> Thank you so much for your speedy response!!! Actually I ended up attaching
> an older bb file. I had some more modifications as attached. I changed
> license to close per your suggestion. Should I change FILES_${PN} to look
> like this:
> 
> FILES_${PN} = "/opt/crank/"

Yes that would be a lot simpler.

> Actually to be honest I took inspiration from another recipe to make mine.
> All I want to do it take a locally stored .tar.gz file, untar it and put it
> in the /opt folder of my RFS. I notice that the tar file has been extracted
> and I see it in the
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon-
> poky-linux-gnueabi/crank/1.0-r0/crank Folder.
> Do I need a makefile? I don't know what a .po file is..

No, for something simple like this you can do everything you need from the 
recipe.

> How do I install the files "manually" within do_install using install and/or
> cp commands? Like this?:
> 
> do_install() {
>         make INSTALL_ROOT=${D} install    << what does this do>>
>         cp -ar ${B}/crank/ ${D}/opt/
> }
> 

I think you want:

do_install() {
    cp -a --no-preserve=ownership ${WORKDIR}/crank ${D}/opt/
}

You don't need the "make install" line.

Cheers,
Paul

PS: please keep the mailing list on CC. Thanks.



