Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEDB2E009CA; Tue, 25 Oct 2016 04:51:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AB0FE00912
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 04:51:44 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2016 04:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,545,1473145200"; d="scan'208";a="23359501"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 25 Oct 2016 04:51:42 -0700
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <F38A866CD026F746A3BF0928A84397BE3E7DC7A0@AZ-FFEXMB01.global.avaya.com>
	<313b3229-3de6-63d9-5782-cb238b922bd5@linux.intel.com>
	<F38A866CD026F746A3BF0928A84397BE3E7DC7BB@AZ-FFEXMB01.global.avaya.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ceae93d6-de2f-8871-e0ed-8c832d52adc4@linux.intel.com>
Date: Tue, 25 Oct 2016 14:49:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7DC7BB@AZ-FFEXMB01.global.avaya.com>
Subject: Re: Requires section of RPM Spec
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
X-List-Received-Date: Tue, 25 Oct 2016 11:51:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/25/2016 02:42 PM, Bipnesh, Abhinav (Abhinav) wrote:
> Basically when we try to install these package on the image using RPM
> package management i.e. rpm -ivh <package name> the dependency checks
> fails as the rootfs doesn't contain RPM database from where the check
> be made. So below is sample output

If the image doesn't have the RPM database, then you should not use rpm 
at all. Add the package to your image during image creation, for example 
like this:

IMAGE_INSTALL_append = " <package>"

Or you can enable the rpm database on the image by adding 
'package-management' to your IMAGE_FEATURES.

Alex

