Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00975E01489
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 01:57:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 May 2013 01:57:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,734,1363158000"; d="scan'208";a="342736706"
Received: from unknown (HELO helios.localnet) ([10.255.12.195])
	by fmsmga002.fm.intel.com with ESMTP; 24 May 2013 01:57:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 24 May 2013 09:57:41 +0100
Message-ID: <1492691.JmiHExUAMW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-21-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAP71Wjy3ViuaPxZe+XvWEU3fS6geYymeYkLBxKD-xbTxmWMwbQ@mail.gmail.com>
References: <0789CF4373FAE1439958EBA64274B10924EFD6C06C@MXCL20.fgremc.it>
	<CAP71Wjy3ViuaPxZe+XvWEU3fS6geYymeYkLBxKD-xbTxmWMwbQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Qt5
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
X-List-Received-Date: Fri, 24 May 2013 08:57:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 23 May 2013 23:20:06 Nicolas Dechesne wrote:
> On Thu, May 23, 2013 at 10:51 PM, LIU Yang (MM) <yang.liu@magnetimarelli.com
> > wrote:
> > 
> > I am first time coming here for help on Yocto project with Qt5, I have two
> > questions/problems when I tried to bitbake a recipe in our layer. ****
>
> sorry to hijack (slightly...) that email, but what is the 'plan' for Qt5
> in OE? i don't see Qt5 listed in the yocto 1.5 schedule wiki. so are we
> going to replace qt4 by qt5 in oe-core? are we going to have them
> side-by-side? or is it going to live in its own layer?

It's currently being developed in its own layer:

http://layers.openembedded.org/layerindex/layer/meta-qt5/

Once it's working satisfactorily (and I'll admit, I haven't been following it 
closely) we should look to see whether it can fit in OE-Core.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

