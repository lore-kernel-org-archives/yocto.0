Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D04F0E014D0
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 04:49:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Mar 2013 04:49:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,904,1355126400"; d="scan'208";a="311518301"
Received: from unknown (HELO helios.localnet) ([10.255.13.190])
	by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2013 04:49:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Mon, 25 Mar 2013 11:49:11 +0000
Message-ID: <2242826.o7Q2GGHyv2@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <cover.1363896182.git.kevin.strasser@linux.intel.com>
References: <1558587.S9v9mAN4hA@helios>
	<cover.1363896182.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon] [PATCH v2 0/6] Updates and fixes
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
X-List-Received-Date: Mon, 25 Mar 2013 11:49:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 21 March 2013 13:24:21 Kevin Strasser wrote:
> Hi Paul,
> 
> The old configuration bits are now included with the new samba recipe and
> everything is again working out-of-the-box. Also, I've added a commit to
> the series that removes our workaround for the NFS regression; it has been
> fixed both in OE-core as well as upstream.
> 
> The following changes since commit 566cb211cee8a9870257a4ac2fc706990a70b9d2:
> 
>   nfs-utils: update bbappend version to 1.2.7 (2013-02-27 15:24:30 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib strassek/baryon
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon
> 
> Kevin Strasser (6):
>   kernel: enable nfsd in linux-yocto 3.8
>   ffmpegthumbnailer: update to 2.0.8
>   ffmpegthumbnailer: include cstring
>   lvm2: sync with meta-oe
>   nfs-utils: remove NFS upcall workaround
>   samba: sync with meta-oe
> 

Merged, thanks!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

