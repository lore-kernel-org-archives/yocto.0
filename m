Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC76DE008FA
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:10:03 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2014 09:05:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,556,1389772800"; d="scan'208";a="463548995"
Received: from ssaevars-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.24])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2014 09:09:47 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Feb 2014 17:09:46 +0000
Message-ID: <1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.4-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<530F60C9.7090204@dynamicdevices.co.uk>
	<6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 17:10:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 27 February 2014 08:30:10 Khem Raj wrote:
> On Feb 27, 2014, at 7:59 AM, Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> wrote:
> > On 27/02/2014 15:50, Khem Raj wrote:
> >       > On Feb 27, 2014, at 6:16 AM, Alex J Lennon
> >       
> >       <ajlennon@dynamicdevices.co.uk> wrote:
> >       >> +PR = "r1"
> >       >> 
> >       >> +
> >       > 
> >       > get rid of that
> > 
> > Why is that Khem?
> 
> we have automatic PR server now a days, its enabled by default.

FWIW, I don't think it's enabled by default, at least not in OE-Core/Poky. The 
point still stands though, it's the way PR should be managed rather than 
manual bumping.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

