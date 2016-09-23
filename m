Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 586F8E00A7B; Thu, 22 Sep 2016 20:05:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F8CE00997
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 20:05:31 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 22 Sep 2016 20:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,380,1470726000"; d="scan'208";a="172220231"
Received: from yleow-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.155.25])
	by fmsmga004.fm.intel.com with ESMTP; 22 Sep 2016 20:05:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Date: Fri, 23 Sep 2016 15:05:25 +1200
Message-ID: <4685459.V3jZSWUhVj@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.3-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAMKF1srZOGKa0K_20Sx8VkmzzodzTND7g94z5tjPE7kxr676dw@mail.gmail.com>
References: <DB23C91B06C303459B24BC3208AF424A20F90FF3@MBX214.d.ethz.ch>
	<CAMKF1srZOGKa0K_20Sx8VkmzzodzTND7g94z5tjPE7kxr676dw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Enable/disable service startup
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
X-List-Received-Date: Fri, 23 Sep 2016 03:05:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 22 Sep 2016 18:39:03 Khem Raj wrote:
> On Thu, Sep 22, 2016 at 1:47 AM, Anicic Damir (PSI) <damir.anicic@psi.ch>
> wrote:
> > I am building Yocto 2.1 for PowerPC-64
> > 
> > I have bind and dhcpcd packages built in.
> > 
> > named service (from bind) gets started - but I do not want it started
> 
> You may be able to do it via a image post processing function.

That will be solved by not installing it, see below.

> > dhcpcd service does not get started - but I would like to have it started
> 
> hmm that may be a bug you need to see why it does not start

If you mean the dhcpcd recipe in meta-networking, it looks like that recipe 
doesn't have anything to enable it to start on boot (i.e. it does not inherit 
update-rc.d or systemd). If that's what you want you will need to do that 
either in the original recipe or use a bbappend.

Note that in some configurations (including our default) the dhcp client is 
started on demand by the networking scripts and thus doesn't need to be 
started as a service, but by default we are using dhclient for that and not 
dhcpcd.

> > I would also prefer not to remove bind, because I need dig (dig, host,
> > nslookup)
> 
> you have to change the code, doing finer packaging for bind where the daemon
> gets packaged into package of its own and rest of the binaries e.g. dig etc
> go into
> another output package e.g. bind-extra or somesuch. then you just
> include bind-extas
> in your image.

The bind-utils package is already split out and packages dig and host, so I 
would suggest installing that rather than the main bind package. nslookup 
isn't being packaged at all, I suspect we are relying on the busybox stub 
version for that at least by default.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

