Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D686E00DA9; Wed, 30 Oct 2019 10:30:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92481E00D99
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 10:30:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Oct 2019 10:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="400210789"
Received: from koernerm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.41.216])
	by fmsmga005.fm.intel.com with ESMTP; 30 Oct 2019 10:30:27 -0700
To: Arno Steffens <star@gmx.li>
References: <trinity-8eddf10e-7c97-465a-a389-4a6462d8fdf7-1572416709913@3c-app-gmx-bs26>
	<trinity-6abbfb1a-fa17-4a62-b533-19ad564d18c2-1572437509538@3c-app-gmx-bs19>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <7b69ccd2-e96d-51ef-f0ca-11b28b0a138a@intel.com>
Date: Wed, 30 Oct 2019 17:30:26 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <trinity-6abbfb1a-fa17-4a62-b533-19ad564d18c2-1572437509538@3c-app-gmx-bs19>
Cc: yocto@yoctoproject.org
Subject: Re: [zeus] icu-native-64.2-r0 do_configure: configure failed
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
X-List-Received-Date: Wed, 30 Oct 2019 17:30:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 30/10/2019 12:11, Arno Steffens wrote:
> I use a poky core-image-minimal with some packages added - as for instance strace and valgrind (for armv7a).
> Strange - yocto in older versions generates images with valgrind/strace .. without any complaints.
> So both PC and image-recipe are same, but in Yocto 2.5 and 2.7 it works, in 3.0 not ?!?
> 
> Sorry I am confused, do you mean python is missing in requested image or at host PC with Ubuntu 1804? If it is missing in image,
> shouldn't it be included by dependencies automatically?
> 
> At UbuntuPC python 2.7 is installed:
> python
> Python 2.7.15+ (default, Oct 7 2019, 17:39:04)
> [GCC 7.4.0] on linux2

I mean the host, as that's running code using the host python during the 
build.

Try this:

$ python3 -m distutils.sysconfig

If that does nothing then your Python is working.  If it fails then you 
need to install the full Python 3 on your machine, not just minimal.

Ross

