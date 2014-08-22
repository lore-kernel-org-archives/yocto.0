Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B29DDE007A0; Fri, 22 Aug 2014 04:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF53E00796
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 04:00:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Aug 2014 04:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,379,1406617200"; d="scan'208";a="580353374"
Received: from mvnawara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.246])
	by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2014 04:00:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex Damian <alex.r.damian@gmail.com>
Date: Fri, 22 Aug 2014 12:00:45 +0100
Message-ID: <5777242.Xr7uNq0FsT@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-200.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <CAL7ttbfhyeXxh1xHkAreqJG8_kBd8ND6wkiBSb3Jt2Ry1=MUig@mail.gmail.com>
References: <CAL7ttbfhyeXxh1xHkAreqJG8_kBd8ND6wkiBSb3Jt2Ry1=MUig@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: should systemd be considered harmful ?
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
X-List-Received-Date: Fri, 22 Aug 2014 11:00:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Wednesday 20 August 2014 18:53:10 Alex Damian wrote:
> In release 216, systemd includes a caching nameserver, and full TTY stream
> parsing. See details
> 
> http://lists.freedesktop.org/archives/systemd-devel/2014-August/022295.html
> 
> I think the ever growing number of components in systemd will create
> conflicts with the normal tools, like libresolv, used in traditional UNIX
> systems.
> 
> I think the number of components shipped with and required by systemd is
> pretty outside the scope for an init system.
> 
> I would argue that the monolithic systemd is not in line with the UNIX
> philosophy of small tools that do one thing and do it well, and that it is
> actually contra-productive to use it in embedded systems due to the large
> number of dependencies needed to get it to run, as well as the difficulty
> to debug when something goes amiss.
> 
> Can I get your opinions in the respect that systemd is a useful tool to
> have in the Yocto Project ?

One of the things that OpenEmbedded (and by extension, the Yocto Project) 
emphasises is flexibility. We support three packaging backends for example. It 
has to be this way - the systems we are targeting vary greatly in size, scope, 
and application. The OS produced by our build system may not always 
necessarily resemble a traditional Linux or even Unix system.

As far as init goes, for some devices, you can get by with sysvinit. Others 
can do with much less - e.g. a single sequential script for initialising the 
device and starting services. Others still need something more dynamic and 
robust, and those are the things systemd is designed to handle better. We need 
to cater for all of these, so we have little choice but to support systemd and 
do so properly. That does mean that the build system has to understand what 
functions systemd provides and where other software that might otherwise 
provide that functionality is not needed and thus should not be installed when 
systemd is being used.

I know a lot of people hold the view that systemd is rolling in too many 
functions that are already handled elsewhere, and it has seemed that way to me 
at times. It may be worth taking a look over this blog post if you haven't 
already though:

http://0pointer.de/blog/projects/the-biggest-myths

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

