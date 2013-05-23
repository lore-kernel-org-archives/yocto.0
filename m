Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3118E01482
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 02:08:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 May 2013 02:08:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,726,1363158000"; d="scan'208";a="318278579"
Received: from unknown (HELO helios.localnet) ([10.255.12.23])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2013 02:08:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: varun bhatnagar <varun292006@gmail.com>
Date: Thu, 23 May 2013 10:08:49 +0100
Message-ID: <9853675.p6VnmLGJNa@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-21-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAJTo0LZ_VTu6hWPUHN-xc1Xp-VBS8Ea9LwT_6ezg8NLROBkfeQ@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
	<CAGxOggEv1AJfZDo7_QPt8ZSXwVb4WGGrjf_JaOKH1VWKKocabQ@mail.gmail.com>
	<CAJTo0LZ_VTu6hWPUHN-xc1Xp-VBS8Ea9LwT_6ezg8NLROBkfeQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Thu, 23 May 2013 09:08:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 22 May 2013 18:19:40 Burton, Ross wrote:
> On 22 May 2013 18:12, varun bhatnagar <varun292006@gmail.com> wrote:
> > Thanks Burton, Ross....
> > Will try this at my workplace.....
> > And is this a bug?
> 
> No.  Make it require SDL and people object, make it always build
> without SDL and people object.  So the dependency is "floating".

More precisely, this allows people to build qemu-native both on headless 
servers and on desktops that do have a display without any need to configure 
anything.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

