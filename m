Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD482E00D9D; Thu, 17 Oct 2019 02:23:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5911AE00BE2
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 02:23:17 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2019 02:23:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="371078096"
Received: from dirkbeck-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.252.40.171])
	by orsmga005.jf.intel.com with ESMTP; 17 Oct 2019 02:23:15 -0700
To: yocto@yoctoproject.org
References: <CAFP0Ok-0adUp7F+eixAM5+cNNWWwoOJDQJAkC-hV7mdb_PqbcA@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <4a28b9db-d4dd-57d8-41d6-bb73a53f2f69@intel.com>
Date: Thu, 17 Oct 2019 10:23:14 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAFP0Ok-0adUp7F+eixAM5+cNNWWwoOJDQJAkC-hV7mdb_PqbcA@mail.gmail.com>
Subject: Re: trouble with rootfs generation with mxnet package
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
X-List-Received-Date: Thu, 17 Oct 2019 09:23:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 17/10/2019 03:45, karthik poduval wrote:
> Upon looking at the
> build/tmp/work/aarch64-xilinx-linux/mxnet/1.5.0-r0/packages-split
> directory
> I find that the mxnet sub directory is empty, mxnet-dev,
> mxnet-staticdev  have libmxnet.so and libmxnet.a respectively under
> usr/lib.

Don't set PACKAGES, as that's the default anyway.

So it *looks* like the mxnet recipe doesn't ship versioned libraries, 
which is very bad form for something from Apache.  If this is the case 
then read 
https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries#Non-versioned_Libraries.

If they do ship versioned libraries (by which I mean the library is 
libxmnet.so.1.2.3 or similar) then remove FILES and INSANE_SKIP, and let 
the packaging happen normally.

You've likely got the library package renamer enabled (it's on out of 
the box) so the resulting package will be libmxnet1 or similar, 
depending on the soname of the library.

Ross

