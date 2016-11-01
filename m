Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AB09E00C9B; Mon, 31 Oct 2016 23:59:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ED46E00C60
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 23:58:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 31 Oct 2016 23:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,430,1473145200"; d="scan'208";a="1062190911"
Received: from mbi370x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.81])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2016 23:58:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Swapna.Gurumani@microchip.com
Date: Tue, 01 Nov 2016 19:58:53 +1300
Message-ID: <7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE722C@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<16244336.UgYXzEjrtG@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE722C@CHN-SV-EXMX05.mchp-main.com>
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
X-List-Received-Date: Tue, 01 Nov 2016 06:59:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Nov 2016 04:03:58 Swapna.Gurumani@microchip.com wrote:
> With the attached recipe I get the following error:
> ERROR: crank-1.0-r0 do_package: QA Issue: crank: Files/directories were
> installed but not shipped in any package: /opt
>   /opt/sb_launch.sh
>   /opt/clear_buffers
>   /opt/runsb.sh
>   /opt/README.txt

Ah, I think you need this line first in do_install:

    install -d ${D}/opt/crank

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

