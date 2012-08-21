Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A617FE0027F
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:40:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 09:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; d="scan'208";a="136556304"
Received: from unknown (HELO helios.localnet) ([10.252.121.105])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Aug 2012 09:34:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Aug 2012 17:34:51 +0100
Message-ID: <2350730.VsPNl426oH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1208211215490.14178@oneiric>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
	<CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
	<alpine.DEB.2.02.1208211215490.14178@oneiric>
MIME-Version: 1.0
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Tue, 21 Aug 2012 16:40:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 21 August 2012 12:16:26 Robert P. J. Day wrote:
> On Tue, 21 Aug 2012, Jeff Osier-Mixon wrote:
> > Hi - please take a look at the FAQ here:
> > https://wiki.yoctoproject.org/wiki/FAQ
> > 
> > Near the bottom there are some technical answers, one of which is how
> > to add a single package:
> > 
> > Q: How can I add a package to my project?
> > 
> > A: As with any complex system, the real answer is it depends, but of
> > course that is not very helpful. The simplest method for adding a
> > single package to your build is to add a line like this to
> > 
> > conf/local.conf:
> >    IMAGE_INSTALL_append += " package"
> 
>    grrrrrr ...            ^ "="
> 
> the "+=" is redundant.

Fixed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

