Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05AA9E00CD2; Tue, 22 Aug 2017 06:43:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.134 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A7AE00C14
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 06:43:47 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue004
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MK5Y1-1djJzQ3zoD-001QaR
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 15:43:46 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Tue, 22 Aug 2017 14:43:45 +0100
Organization: LN Systems Limited
Message-ID: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdMbSydPJN+NZKKAQ4qWWkoPDNtJAA==
X-Provags-ID: V03:K0:HND1+KMXSah5yUOYUnYXyi+Cs7DekfwIrnUs7VOzJYf7LWUrPrb
	L12T3WFYwPRQLorUelnH90Un7ls0SdOW+/4Ih4rVPQ9INr7KuhWco7aYIxOl80mPVVtkWvu
	WfqEN8Dk5d7DJHjzuc1CUaRC6TGIbmba9YGnB6V9pZqUoCpADgFUybHDpYu3GhlDSdD7WKj
	tO2+JcB/8Ivr65ekui4eQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ks0eTuulCP4=:Dt37/1b595EzDxY9ZEjGle
	aTTvBMZul5TZdY66lKJ8jzNKfsUklu6GWrMpcsLNDCQLR4Ob0i0PVxmkPVv9z6zbKFFNQPyJ5
	m05R2cA0fQ/pOXo3DjDKteH3z7sQojCdSBPmcO01NpDtqwp1JNFLg3js8LqxrAz8q9eAMo2aX
	d3J/zTV0LAO9FYb5v8/ycI/F94X1+pOA9G85QbFNJg/5B4NkJmWmifmyzKohCAfk3SWl/huyt
	/e+caYpIVVtSiCW4pvpo9v/FeR2Unr+6XNZOTW14oXIRijE22TQMBPw762nwRAxmaM4FfKSat
	zQ0BC1Lk6F2EuaOhg4HhmPyEU+14EUNNzO/cfzC7xp93oW/XYbdkkVBiw+0JE6yuOqoj5cZgb
	WOm1DJLCHIHmzg/GyR8tljGZqlG43Mbg4Kjb/IBkIcRD8FjFEgSfO8l8IaAZjd/PyuwZrN2fV
	Qwxm8gF2PGU/QkBu+iwNUQaWiBGli2Ca0HJQ9YU+p+OiSUJNuS6JVt4rm+GKB9VYlBUJWz0Xi
	c7IkroPIjnG+rT/E183iUVWoyAHTQcagtnA3YOERG79TTNQAaKdQBGaDtrocrkWnM9YPqkD7d
	TCKOwktGAN5r6EuFK8osLb2AIV9bVjqroqXqeMPEq9Z1xF9MoqVZauGD83vokAzoDsfOJgZB5
	YK32dlQ8WnNgUAmnOxYDHyhtVz9aqQaP+f7frzww1kIBDrw32kVPu7mRP/8KLagkDIIc7hmuk
	Vryp+/eSGQ5kUsh7DTiSD3+tMQNWXlFe/DFo5DjGVvG8fqc/fclWKA8PlLE=
Subject: Custom recipe - resolving "do_package_qa: QA Issue: -dev package contains non-symlink .so"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Aug 2017 13:43:49 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I have a custom recipe (for the AWS SDK), which is failing at the package_qa
stage.
The recipe is a very basic cmake styley, and on its own seems to begin with:
'bitbake -f -c package aws-sdk'  completes without errors.

But for 'bitbake -c package_qa aws-sdk) I get: 

ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package contains
non-symlink .so: aws-sdk-dev path
'/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
dk-dev/usr/lib/libaws-cpp-sdk-core.so'
-dev package contains non-symlink .so: aws-sdk-dev path
'/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
dk-dev/usr/lib/libaws-cpp-sdk-s3.so' [dev-elf]

I'd appreciate help with resolving this. Thanks.



