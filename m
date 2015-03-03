Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39345E00810; Tue,  3 Mar 2015 01:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D69E003FA
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 01:37:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2015 01:37:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,681,1418112000"; d="scan'208";a="674360449"
Received: from tmlemanx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.7.97])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2015 01:37:42 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Date: Tue, 03 Mar 2015 09:37:42 +0000
Message-ID: <23759981.tJ0jcZThOh@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <1425361303765.315@inedasystems.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<26169231.54.1423648818817.JavaMail.kraghavendra@Raghavendra>
	<1425361303765.315@inedasystems.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK generation issue
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
X-List-Received-Date: Tue, 03 Mar 2015 09:37:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 March 2015 05:41:43 Raghavendra Kakarla wrote:
> I am generated the yocto SDK using the yocto sdk script "bitbake
> core-image-minimal -c populate_sdk" command. With this command I am able to
> generte the installation script file and .manifest file.
> 
> I run the installation script file. After running installation script file
> it propts that following message:
> 
> Extracting SDK...done
> Setting it up...done
> SDK has been successfully set up and is ready to be used.
> 
> 
> After this i run the ".
> /opt/poky/1.7/environment-setup-mips32rel-poky-linux" and echo $PATH i got
> the correct path.
> 
> After this i built wrote a small example and try to build with the sdk
> generated toolchain by running following command:
> 
> mipsel-poky-linux-gcc test.c

Use $CC instead of running the compiler directly so that you get the correct 
options.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

