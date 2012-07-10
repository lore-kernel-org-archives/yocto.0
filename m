Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D31E00280
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:53:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jul 2012 02:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="163706223"
Received: from unknown (HELO helios.localnet) ([10.252.121.11])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2012 02:53:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jul 2012 10:53:28 +0100
Message-ID: <1430318.UTTjLmDdLs@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CAK18fxFkZAsyL1+DRPyYzMGy5RX5V9p4RfLgJQWxjaBkhraxfw@mail.gmail.com>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<2286431.Uqbs7UEu3k@helios>
	<CAK18fxFkZAsyL1+DRPyYzMGy5RX5V9p4RfLgJQWxjaBkhraxfw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi mailing list?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jul 2012 09:53:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 July 2012 12:45:28 Andrei Gherzan wrote:
> On Tue, Jul 10, 2012 at 12:35 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > FYI Andrei has now created a denzil branch in meta-raspberrypi which will
> > match up with denzil in OE-Core/Poky. I'm not sure if the problem is still
> > there but there may still be an issue building a kernel for the RPi with
> > the toolchain in master - Chris and I have been sticking to denzil for the
> > moment for that reason.
> 
> Both should work now. Denzil and master.

Just out of interest, have you managed to successfully boot a kernel built 
with master?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

