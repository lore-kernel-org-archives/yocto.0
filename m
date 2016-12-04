Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AC36E00DEF; Sun,  4 Dec 2016 11:18:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3909E00DEA
	for <yocto@yoctoproject.org>; Sun,  4 Dec 2016 11:18:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Dec 2016 11:18:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,743,1477983600"; d="scan'208";a="1077342291"
Received: from patejona-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.157.67])
	by fmsmga001.fm.intel.com with ESMTP; 04 Dec 2016 11:18:24 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Daniel." <danielhilst@gmail.com>
Date: Mon, 05 Dec 2016 08:18:22 +1300
Message-ID: <1899156.Ghe0UD8W3g@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.10-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAF3SDA6m+dzLnFRxvtqiTHxkrcnDrvEwjWu9hDZWiUVNA8x_rg@mail.gmail.com>
References: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
	<CAF3SDA4WnhTY+HXr5+BaCa=tuqAfgKjYuhiOTq1WN6f4pJmwRQ@mail.gmail.com>
	<CAF3SDA6m+dzLnFRxvtqiTHxkrcnDrvEwjWu9hDZWiUVNA8x_rg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Krogoth rpm-native download gives me 404, can anybody confirm?
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
X-List-Received-Date: Sun, 04 Dec 2016 19:18:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Daniel,

On Fri, 02 Dec 2016 15:28:54 Daniel. wrote:
> I can't download rpm-5.4.15-0.20140824.src.rpm, I have to download it
> from another mirror. :/
> 
> I'm behind a firewall/proxy, so it can be this. Anyway, I download the
> package from another mirror, put on DL_DIR, clean and then it compiles
> fine :)

This is odd. The file is available on our source mirror:

  http://downloads.yoctoproject.org/mirror/sources/rpm-5.4.15-0.20140824.src.rpm

It should be downloading from there automatically, unless you're disabling the 
default MIRRORS / PREMIRRORS value, or maybe your firewall/proxy is also 
blocking access to our mirror.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

