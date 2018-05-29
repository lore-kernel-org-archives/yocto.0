Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8202BE00C4D; Tue, 29 May 2018 03:49:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0CB3E009AC
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 03:48:59 -0700 (PDT)
Received: from ted ([192.168.3.30]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4TAmc0N004470
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Tue, 29 May 2018 11:48:49 +0100
Message-ID: <1527590917.16911.74.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Reyna, David" <david.reyna@windriver.com>, yocto <yocto@yoctoproject.org>,
	Tracy Graydon <tracy.graydon@intel.com>
Date: Tue, 29 May 2018 11:48:37 +0100
In-Reply-To: <5E53D14CE4667A45B9A06760DE5D13D0F38CA91E@ALA-MBD.corp.ad.wrs.com>
References: <5E53D14CE4667A45B9A06760DE5D13D0F38CA91E@ALA-MBD.corp.ad.wrs.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: "CHAN, AARON CHUN YEW" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: HELP: Release Candidate Build for yocto-2.4.3.rc2 now available.
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
X-List-Received-Date: Tue, 29 May 2018 10:49:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi David,

On Tue, 2018-05-29 at 03:36 +0000, Reyna, David wrote:
> I apologize for sending this patch for Toaster for Roco 2.4.3 very
> late. I have been focused on Sumo and I thought I had more time.
> 
> The Toaster for Rocko is broken on HEAD. There are two patches that
> made it into master and Sumo, but missed Rocko.
> 
> I have just now sent the missing patch set to "bitbake-dev". The
> first patch fixes an error that breaks the initialization of Toaster.
> The second patches fixes a change in behavior for Django that creates
> an extra thread that blocks Toaster from shutting down.
> 
> Please accept these patches for Rocko. They are confined to Toaster
> and do not affect the rest of the release.

I've added the patches onto the rocko/2.36 branches but 2.4.3 is
already in QA now so we'd have to break process to add those in
potentially untested or go to an rc3.

At least they will be on the branch ready for update for anyone that
runs into the issue and we can release note. Lets see what else (if
anything) is found in rc2...

Cheers,

Richard

