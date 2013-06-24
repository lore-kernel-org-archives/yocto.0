Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA1DE01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 08:40:57 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jun 2013 08:40:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,929,1363158000"; d="scan'208";a="321754027"
Received: from unknown (HELO helios.localnet) ([10.252.122.47])
	by azsmga001.ch.intel.com with ESMTP; 24 Jun 2013 08:40:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Mon, 24 Jun 2013 16:40:54 +0100
Message-ID: <1409977.06We3GSB1m@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
References: <7941E07E1E020448937ACA7D4279E632018398AF5AA8@powerhog>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Image recipes in Yocto 1.4 (dylan-9.0.0)
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
X-List-Received-Date: Mon, 24 Jun 2013 15:40:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

On Monday 24 June 2013 11:01:31 Brian Karcz wrote:
> I have a question regarding the shared state code optimizations in yocto
> 1.4. I'm in the process of upgrading one of our projects from Edison (6.0)
> to Dylan (9.0.0) and am running into an issue with our existing image
> recipe.
> 
> The recipe brings in files from a "files" directory in the image area. It
> also adds an image preprocess command that takes action on those files in
> the work area. After reading the version 1.4 migration guidelines and
> examining both the old and new builds, it looks like the do_unpack task has
> been optimized out of the way images are built in the new release. The
> files listed in the SRC_URI variable don't get populated in the work
> directory, and actions taken in the image preprocess command fail.
> 
> Is there a way to stop this optimization and have the image build populate
> the work directory as it has in the past?

You should be able to do this in your image recipe:

python () {
        d.delVarFlag("do_fetch", "noexec")
        d.delVarFlag("do_unpack", "noexec")
}

This isn't related to shared state, btw, just that image.bbclass disables 
these tasks by default as of version 1.2 (denzil).

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

