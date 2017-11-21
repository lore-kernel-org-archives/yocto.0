Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EB1BE00C45; Tue, 21 Nov 2017 01:55:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC162E00B48
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 01:55:45 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Nov 2017 01:55:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,432,1505804400"; 
   d="scan'208";a="7735547"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 21 Nov 2017 01:55:43 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB0840E46221671FF3A69BA921ED220@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f849e7ef-c733-18a2-3032-643b3ca476a4@linux.intel.com>
Date: Tue, 21 Nov 2017 11:56:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB0840E46221671FF3A69BA921ED220@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Generating Package/Image Developer Documentation
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
X-List-Received-Date: Tue, 21 Nov 2017 09:55:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/20/2017 09:53 PM, Koehler, Yannick wrote:
>    The image would then install those documentation in the sysroot under some folder, maybe /usr/share/devdoc/<packagename>/ and potentially create a tarball of this documentation.
> 
>     Anyway, let me know if something similar pre-exists or if such a project has been started somehow please, as I would like to contribute/participate.


Yes. Add "api-documentation" to DISTRO_FEATURES and you will get 
manpages and gtk-doc based documentation generated, packaged and added 
to SDKs. It will slow down the build significantly, so use with care.

I considered adding doxygen support as well, but generating and 
installing that needs to be hand-crafted for each recipe, and so it 
wasn't done. You are welcome to work on that, subject to 
api-documentation being enabled. I have a recipe for doxygen itself here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=akanavin/enable-doxygen

Alex

