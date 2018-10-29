Return-Path: <alberto@albeus.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC3ACE00BC2; Mon, 29 Oct 2018 08:42:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [5.144.164.174 listed in list.dnswl.org]
Received: from m-r2.th.seeweb.it (m-rb.th.seeweb.it [5.144.164.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87537E00AC5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:42:09 -0700 (PDT)
Received: from zazen.local.albeus.eu
	(host105-154-dynamic.252-95-r.retail.telecomitalia.it
	[95.252.154.105])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 456013EE6D;
	Mon, 29 Oct 2018 16:42:08 +0100 (CET)
Received: by zazen.local.albeus.eu (Postfix, from userid 1000)
	id 2C94849949F; Mon, 29 Oct 2018 16:42:07 +0100 (CET)
Date: Mon, 29 Oct 2018 16:42:07 +0100
From: Alberto Eusebi <alberto@albeus.eu>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20181029154206.GA13658@zazen.local.albeus.eu>
References: <20181015161520.GA17645@zazen.local.albeus.eu>
	<CAJTo0LYgWV2UxHEpMJ7DVWLsTZ19uDfdS=6weowdQ2m5+um71w@mail.gmail.com>
	<20181017131731.GA16630@zazen.local.albeus.eu>
	<CAJTo0LYNLOs=k3sw_y37fD9XH6YebjcLy4+m06GS2tU7d_URgg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYNLOs=k3sw_y37fD9XH6YebjcLy4+m06GS2tU7d_URgg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Add python2 as native package in openembedded sdk
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
X-List-Received-Date: Mon, 29 Oct 2018 15:42:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wednesday 17 October 2018, alle 14:27, Burton, Ross wrote:
> On Wed, 17 Oct 2018 at 14:18, Alberto Eusebi <alberto@albeus.eu> wrote:
> > On Monday 15 October 2018, alle 17:57, Burton, Ross wrote:
> > > Add nativesdk-python-core and nativesdk-python-modules to
> > > TOOLCHAIN_HOST_TASK (using _append).
> >
> 
> > But the resulting script don't work, it only unpacks the sysroots and then stalls:
> >
> >    __________________________________________________________________________________________________________________________
> >    # ./angstrom-glibc-x86_64-armv7at2hf-neon-v2017.12-toolchain.sh -d 4.9
> >    Angstrom SDK installer version nodistro.0
> >    =========================================
> >    You are about to install the SDK to "/opt/toradex_sdk/imx6/4.9". Proceed[Y/n]?
> >    Extracting SDK.........................................................................................................done
> >    Setting it up...ls: cannot access '/opt/toradex_sdk/imx6/4.9/environment-setup-*': No such file or directory
> >    __________________________________________________________________________________________________________________________
> 
> Sounds like you broke the SDK.  How did you set TOOLCHAIN_HOST_TASK?

Hi Ross,
thank you. Your reply solved my problem. I appled it in a wrong way: i used
"+=" in variable. Now I used _append as you recommended.

Thank you very much for your support!

Cheers
Albeus

