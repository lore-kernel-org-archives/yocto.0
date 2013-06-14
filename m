Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88D42E005B3
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 05:34:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jun 2013 05:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,866,1363158000"; d="scan'208";a="353306624"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jun 2013 05:34:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Jun 2013 13:34 +0100
Message-ID: <342806016.xqFbCBQS4Q@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAJTo0LYb8pL5O_1yj-6FwvhsU1mfxdFpmeLTpXg_K0Py0mJKnQ@mail.gmail.com>
References: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
	<CAM1ZcoVjQ83ecfrQasDY29CYs+RNEUmUqJbjg6XseS-qBF-n1g@mail.gmail.com>
	<CAJTo0LYb8pL5O_1yj-6FwvhsU1mfxdFpmeLTpXg_K0Py0mJKnQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: recipe using waf installation location
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
X-List-Received-Date: Fri, 14 Jun 2013 12:34:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 14 June 2013 12:36:22 Burton, Ross wrote:
> On 13 June 2013 17:08, Katu Txakur <katutxakurra@gmail.com> wrote:
> > Thanks a lot Ross,
> > you are absolutely right. Just that the --prefix in waf it's done in the
> > configure so I now have
> > 
> > do_configure() {
> > ./waf configure --prefix=${prefix} --debug --alsa --clients=128
> > }
> 
> At this point it would be sensible to write a waf class so that
> someone else doesn't have to do the same again.

I agree. FWIW, I stumbled across this some months ago but forgot to follow up 
on it:

http://fastr.github.io/articles/WAF-on-OpenEmbedded.html

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

