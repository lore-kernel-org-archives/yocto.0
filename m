Return-Path: <jae.hyun.yoo@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 478A1E00890; Tue,  3 Sep 2019 14:16:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF64BE00890
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2019 14:16:38 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Sep 2019 14:16:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="187394026"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
	([10.7.153.148])
	by orsmga006.jf.intel.com with ESMTP; 03 Sep 2019 14:16:38 -0700
To: Brad Bishop <bradleyb@fuzziesquirrel.com>,
	akuster808 <akuster808@gmail.com>
References: <038f49d9-099e-dabd-2957-d31e7b8bbf41@linux.intel.com>
	<628d5b4c-63d4-78b6-83d8-1781cbc86e0f@linux.intel.com>
	<7694CCA3-89BD-44FE-90D1-99569476E980@fuzziesquirrel.com>
	<fbcfc988-687f-55ad-1ca9-ace092f09a99@gmail.com>
	<68bddbec8c08cbd9d31f561222bb3afde814a94b.camel@fuzziesquirrel.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <9e7fa5a8-3ac4-a187-e878-2e6a24b1713d@linux.intel.com>
Date: Tue, 3 Sep 2019 14:16:38 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <68bddbec8c08cbd9d31f561222bb3afde814a94b.camel@fuzziesquirrel.com>
X-Mailman-Approved-At: Mon, 09 Sep 2019 02:06:56 -0700
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	James Feist <james.feist@linux.intel.com>
Subject: Re: Build break in the latest openbmc tree.
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
X-List-Received-Date: Tue, 03 Sep 2019 21:16:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/27/2019 5:00 PM, Brad Bishop wrote:
> On Sun, 2019-08-25 at 10:49 -0700, akuster808 wrote:
>> the meta-security layer should be fix now.
>>
>> please update and let me know if not.
> 
> Thanks Armin!
> 
> Jae, I've pulled this into OpenBMC.  Can you give it a try?
> 

Thanks Armin, Brad!

I tried it using the latest tree and checked that the build breakage has
gone, but a new issue happened while it's building 'qemu-native'.

| ERROR: Execution of 
'/home/yoojae/workspace/openbmc/build/tmp/work/x86_64-linux/qemu-native/4.1.0-r0/temp/run.do_configure.2396' 
failed with exit code 1:
| ERROR: unknown option --disable-libssh

So I made a patch to fix the new issue.

--- a/poky/meta/recipes-devtools/qemu/qemu.inc
+++ b/poky/meta/recipes-devtools/qemu/qemu.inc
@@ -137,7 +137,7 @@ PACKAGECONFIG[curses] = 
"--enable-curses,--disable-curses,ncurses,"
  PACKAGECONFIG[gtk+] = "--enable-gtk,--disable-gtk,gtk+3 gettext-native"
  PACKAGECONFIG[vte] = "--enable-vte,--disable-vte,vte gettext-native"
  PACKAGECONFIG[libcap-ng] = "--enable-cap-ng,--disable-cap-ng,libcap-ng,"
-PACKAGECONFIG[ssh] = "--enable-libssh,--disable-libssh,libssh,"
+PACKAGECONFIG[ssh] = "--enable-libssh2,--disable-libssh2,libssh2,"
  PACKAGECONFIG[gcrypt] = "--enable-gcrypt,--disable-gcrypt,libgcrypt,"
  PACKAGECONFIG[nettle] = "--enable-nettle,--disable-nettle,nettle"
  PACKAGECONFIG[libusb] = "--enable-libusb,--disable-libusb,libusb1"

Brad,
Please apply this change into the qemu recipe.

Thanks,
Jae




