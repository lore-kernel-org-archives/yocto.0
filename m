Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C7DE014E4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 14:32:56 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jun 2013 14:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,961,1363158000"; d="scan'208";a="357486778"
Received: from unknown (HELO helios.localnet) ([10.252.122.99])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2013 14:33:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>
Date: Fri, 28 Jun 2013 22:32:53 +0100
Message-ID: <1766801.PpUdFPY3cf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<CALmOhgmENvPECpf-L4w8q0cTmLhuvJuYeCyFjaRN6bN=XLx_-Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Fri, 28 Jun 2013 21:32:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 June 2013 12:01:39 Trevor Woerner wrote:
> Just out of curiosity...
> 
> On 27 June 2013 06:06, Ross Burton <ross.burton@intel.com> wrote:
> >  buildset-config/nightly-arm.conf     |    2 ++
> >  buildset-config/nightly-fsl-arm.conf |    2 ++
> >  buildset-config/nightly-fsl-ppc.conf |    2 ++
> >  buildset-config/nightly-mips.conf    |    2 ++
> >  buildset-config/nightly-oecore.conf  |    2 ++
> >  buildset-config/nightly-ppc.conf     |    2 ++
> >  buildset-config/nightly-x86-64.conf  |    2 ++
> >  buildset-config/nightly-x86.conf     |    2 ++
> 
> Against which repository do these apply?

I believe it's the eflanagan/yocto-autobuilder-refactor branch of the
yocto-autobuilder repository:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=eflanagan/yocto-autobuilder-refactor

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

