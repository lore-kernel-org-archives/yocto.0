Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49713E00D25; Thu,  3 Sep 2015 07:04:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B841DE0049B
	for <yocto@yoctoproject.org>; Thu,  3 Sep 2015 07:04:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Sep 2015 07:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,462,1437462000"; d="scan'208";a="797061792"
Received: from selmalla-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.12.148])
	by orsmga002.jf.intel.com with ESMTP; 03 Sep 2015 07:04:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	Gorny Krystian <krystian.gorny@wipotec.com>
Date: Thu, 03 Sep 2015 15:04:08 +0100
Message-ID: <3535088.es0MYKo6Wx@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.5-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55E84BA1.2000609@linux.intel.com>
References: <10D57FBA9FD7C14FB49EE17590E1AF9453C91CA3@svr-exc-03.intern.wipotec.de>
	<55E84BA1.2000609@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Autologin after bootup on the genericx86 machine
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
X-List-Received-Date: Thu, 03 Sep 2015 14:04:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 03 September 2015 08:31:13 Leonardo Sandoval wrote:
> On 09/03/2015 04:36 AM, Gorny Krystian wrote:
> > I'm using the fido branch and building a genericx86 machine for the
> > core-image-rt image. After my image boot up I always need to login as
> > root first, is there a way to login and start my application
> > automatically? I can't find an easy way to do this.
> On your local.conf, add the following
> 
> EXTRA_IMAGE_FEATURES = "debug-tweaks"

I don't think that's going to help, that just ensures the root password is 
blank.

If your application is a background service (or a console/framebuffer 
application) then you probably will want to start it as a service i.e. you'll 
need to create a initscript (if you're using sysvinit) or a systemd service 
file (if using systemd). We have some classes to help install and set these up 
(update-rc.d and systemd respectively - these are covered in the reference 
manual or you can e.g. "git grep 'inherit.*update-rc.d'" to find examples.

On the other hand if your application runs under X then you should probably 
look at meta/recipes-graphics/mini-x-session; you should be able to use it as 
a template for creating a session script to start your app.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

