Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F29FE00406
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2013 03:02:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Aug 2013 03:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,851,1367996400"; d="scan'208";a="384192447"
Received: from unknown (HELO helios.localnet) ([10.252.122.209])
	by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2013 03:02:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 10 Aug 2013 11:02:29 +0100
Message-ID: <3217805.kYDiUIXKQu@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <5205E9D6.6020408@reliableembeddedsystems.com>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<5205E9D6.6020408@reliableembeddedsystems.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Sat, 10 Aug 2013 10:02:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Saturday 10 August 2013 10:20:54 Robert Berger wrote:
> On 08/10/2013 03:22 AM, Flanagan, Elizabeth wrote:
> > * Infrastructure for automated QA testing. More testcases will be
> > automated in the next milestone release.
> 
> Are we talking about test automation using autobuilder here?
> As far as I can see runtime testing of images using QEMU is
> planned/already used.

The new framework replaces the old, is written in python and makes writing 
tests much easier. As a result we are going through a process of adding many 
more runtime tests than we had previously.

> What I'm after is runtime testing on real hardware. Assuming an
> infrastructure where you can remotely turn on/off the power of the board
> and where you have access e.g. via a conserver to the serial port I
> guess this should be possible as well.
> 
> I'm wondering why this seems to be limited to QEMU, am I missing something?

We do definitely want automated testing on real hardware; it's just that that 
it presents a number of problems that need solving:

 * How do you deploy the image/kernel/bootloader onto the board in an 
automated manner? To different kinds of boards?
 * How do you manage access to the boards when you have multiple autobuilders 
potentially wanting to make use of them at around the same time?

We'll be working through these but the likelihood is that we won't have this 
part of it for 1.5. Once we do though, connecting the currently QEMU-based 
testing framework to it should be trivial.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

