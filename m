Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED20FE007CF; Tue, 17 Feb 2015 01:35:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB0E3E007AB
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 01:35:38 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 17 Feb 2015 01:30:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,593,1418112000"; d="scan'208";a="528542168"
Received: from choran1-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.31])
	by orsmga003.jf.intel.com with ESMTP; 17 Feb 2015 01:27:03 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: joachim rodrigues <joa_rodrigues@hotmail.com>
Date: Tue, 17 Feb 2015 09:35:35 +0000
Message-ID: <3316279.uPvO5Et2CA@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.6-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <DUB117-W40DA159C517EC34803CA52922F0@phx.gbl>
References: <DUB117-W139C9921C5259D684A39848922E0@phx.gbl>
	<DUB117-W40DA159C517EC34803CA52922F0@phx.gbl>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Missing packages on image target
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
X-List-Received-Date: Tue, 17 Feb 2015 09:35:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Joachim,

On Tuesday 17 February 2015 08:50:34 joachim rodrigues wrote:
> Sorry i made an error in the package name. The package not installed is :
> gstreamer
> 
> Hi, i installed successfully a linux on my raspberry following this tutorial
> :https://delog.wordpress.com/2014/09/16/embedded-linux-system-for-raspberry
> -pi-with-yocto-project/ But once installed in my board, gstreamer is not
> installed although it is included in the recipes-multimediawich are loaded
> this way : build-rpi/conf/bblayers.conf : BBLAYERS ?= " \ 
> /home/jj/dev/yocto/poky/meta \  /home/jj/dev/yocto/poky/meta-yocto \ 
> /home/jj/dev/yocto/poky/meta-yocto-bsp \ 
> /home/jj/dev/yocto/poky/meta-gstreamer1.0 \ 
> /home/jj/dev/yocto/poky/meta-raspberrypi \  "
> /home/jj/dev/yocto/poky/meta-raspberrypi/conf/layer.conf : BBFILES +=
> "${LAYERDIR}/recipes*/*/*.bb \           
> ${LAYERDIR}/recipes*/*/*.bbappend" And i have  
> /home/jj/dev/yocto/poky/meta-raspberrypi/resipes-multimedia/gstreamer/gstre
> amer1.0-plugins-bad_%.bbappendand  
> /home/jj/dev/yocto/poky/meta-gstreamer1.0/resipes-multimedia/gstreamer/gstr
> eamer1.0-plugins-bad_1.4.0.bb in my understanding as the recipe is included
> in the path it should be included in the board once the image installed

If an application that linked to gstreamer is in the image, then this would
be true; otherwise you will need to add the appropriate package to the
image. Here's some information on how to do that:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

