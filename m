Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47CDBE00D36; Wed, 18 Oct 2017 13:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8D57E00D33
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 13:35:02 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Oct 2017 13:35:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,398,1503385200"; d="scan'208";a="324833096"
Received: from klee4-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.148.108])
	by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2017 13:34:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Oct 2017 09:34:53 +1300
Message-ID: <2060595.J3DDjFPCHX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAMRMzCDyPCzRwuBKmAm1hcK1RXnbsBf5BPffDak7s_t4uTyGwQ@mail.gmail.com>
References: <1508218121.34337.17342@fedora25.yocto.io>
	<8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
	<CAMRMzCDyPCzRwuBKmAm1hcK1RXnbsBf5BPffDak7s_t4uTyGwQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: minimize size of SW update bundle
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
X-List-Received-Date: Wed, 18 Oct 2017 20:35:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 18 October 2017 3:11:59 AM NZDT Marc Ferland wrote:
> On Tue, Oct 17, 2017 at 9:12 AM, Robert Berger
> <yocto.user.mailinglist@gmail.com> wrote:
> > Hi,
> >
> > Imagine you have only a limited bandwidth to your devices available for SW
> > update. So you would like to minimize what's uploaded (over the air) to 
your
> > devices.
> >
> > How would you do this with yocto?
> >
> > [1] and [2] might be able to do incremental updates, but maybe there are
> > more ideas out there.
> >
> > Like how would you get a diff between two release builds...
> >
> 
> Some ideas:
> 
> - SquashFS with agressive compression settings can be quite
> impressive. I was able to reduce my image size from 650MB
> (uncompressed) down to maybe 120MB. This was for a complete system
> update though.
> - The new zstd algo from facebook looks promising (haven't tried it
> yet) and might be worth investigating, I think it is supported as a
> squashfs decompressor.
> - bsdiff can generate diffs from binary files (be carefull if diffing
> compressed files, i.e.: gzip --rsyncable).
> - there's also casync (never tried it): https://github.com/systemd/casync/

FWIW I have preliminary recipes for casync and zstd here, but I'm having 
trouble with some native dependencies not being populated properly when 
casync-native is pulled in by other recipes (or -c addto_recipe_sysroot), so 
it still needs work:

http://cgit.openembedded.org/meta-openembedded-contrib/log/?h=paule/casync

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

