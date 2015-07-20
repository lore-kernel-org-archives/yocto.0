Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61011E009E6; Mon, 20 Jul 2015 12:39:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E637CE008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 12:39:09 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jul 2015 12:39:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,509,1432623600"; d="scan'208";a="527307704"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.40])
	([10.219.4.40])
	by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2015 12:39:08 -0700
Message-ID: <55AD4E88.5060305@linux.intel.com>
Date: Mon, 20 Jul 2015 14:39:52 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <946917214.1073911.1437416807563.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <946917214.1073911.1437416807563.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: RaspberryPi 2
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
X-List-Received-Date: Mon, 20 Jul 2015 19:39:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit




On 07/20/2015 01:26 PM, Edward Vidal wrote:
> Hi all,
> I made the following changes in local.conf--- ../../local.conf.orig       2015-07-20 07:01:42.835320506 -0600
> +++ conf/local.conf     2015-07-20 10:50:00.129187741 -0600
> @@ -34,7 +34,10 @@
>   #MACHINE ?= "edgerouter"
>   #
>   # This sets the default machine to be qemux86 if no other machine is selected:
> -MACHINE ??= "qemux86"
> +#MACHINE ??= "qemux86"
> +MACHINE = "raspberrypi2"
> +MACHINE ??= "raspberrypi2"

no need to include de ??= once the = is set, but what you have is ok.

> +GPU_MEM = "16"
>
> I did not understand the comment by Gary ThomasYes, I use it all the time.  Make the assignment immediate/firm though:
>    MACHINE = "raspberrypi2"

The layer containing that machine, is it on your BBLAYERS? check the 
conf/bblayers.conf for this.


>
>     bitbake rpi-basic-image
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      Please set a valid MACHINE in your local.conf or environment
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> I also tried setting the MACHINE variable with the same results.Any and all help is appreciated.
> Edward Vidal Jr.
> e-mail develone@sbcglobal.net
> 915-595-1613
>
>
>

