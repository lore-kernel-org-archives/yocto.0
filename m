Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB23BE00877; Wed, 29 Oct 2014 07:57:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE661E00799
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 07:57:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Oct 2014 07:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,810,1406617200"; d="scan'208";a="622812376"
Received: from mriddel-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.108])
	by fmsmga002.fm.intel.com with ESMTP; 29 Oct 2014 07:57:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marc <marc.szymkowiak91@googlemail.com>
Date: Wed, 29 Oct 2014 14:57:11 +0000
Message-ID: <6633556.9qjGFBlA9Y@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <loom.20141029T144602-493@post.gmane.org>
References: <loom.20141029T144602-493@post.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Error with vServer
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
X-List-Received-Date: Wed, 29 Oct 2014 14:57:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marc,

On Wednesday 29 October 2014 13:46:56 Marc wrote:
> i try to build an Image with yoctos poky on my vserver (Ubuntu 14.04 LTS
> minimal - Vserver 64bit)
> 
> With my own pc with the same ubuntu version i don't have any problems to
> build the image, but on my vserver i get a lot of errors like this one:
> 
> ERROR: Execution of event handler 'run_buildstats' failed
> Traceback (most recent call last):
>   File "run_buildstats(e)", line 85, in
> run_buildstats(e=<bb.build.TaskSucceeded object at 0x7f5f79df6c10>)
>   File "buildstats.bbclass", line 2, in get_device(e=<bb.build.TaskSucceeded
> object at 0x7f5f79df6c10>)
> IOError: [Errno 2] No such file or directory:
> '/home/yocto/yocto/poky/build-hd/tmp/buildstats//.device'
> 
> What can i do?

Does /home/yocto/yocto/poky/build-hd/tmp/buildstats/ exist? If not, is it just 
the buildstats directory that is not yet created? (It should be created 
automatically, but I'm just trying to diagnose the issue.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

