Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E3B7E00C9B; Tue, 22 Oct 2019 13:26:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA93E00B7A
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 13:26:12 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9MKQ50F015442
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Tue, 22 Oct 2019 15:26:06 -0500
To: Yocto Project <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <a0645e58-5312-fea8-db73-31b91a75459c@kernel.crashing.org>
Date: Tue, 22 Oct 2019 15:26:04 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.2
MIME-Version: 1.0
Subject: toaster - in build watching mode
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
X-List-Received-Date: Tue, 22 Oct 2019 20:26:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I'm using toaster in a build watching mode and I'm getting errors to the console
log such as:

File:
'/home/jenkins/workspace/OEBuild/build-32/oe-core/meta/classes/toaster.bbclass',
lineno: 130, function: toaster_package_dumpdata
     0126:    lpkgdata = {}
     0127:    datadir = os.path.join(pkgdatadir, 'runtime')
     0128:
     0129:    # scan and send data for each generated package
 *** 0130:    for datafile in os.listdir(datadir):
     0131:        if not datafile.endswith('.packaged'):
     0132:            lpkgdata = _toaster_load_pkgdatafile(datadir, datafile)
     0133:            # Fire an event containing the pkg data
     0134:            bb.event.fire(bb.event.MetadataEvent("SinglePackageInfo",
lpkgdata), d)
Exception: FileNotFoundError: [Errno 2] No such file or directory:
'/home/jenkins/workspace/OEBuild/builds/build-32/tmp-glibc/work/core2-64-oe-linux/libxfixes/1_5.0.3-r0/pkgdata/runtime'


Also lots of messages like:

NOTE: We did not find one recipe for theconfiguration data package libxml2
Recipe matching query does not exist.
NOTE: We did not find one recipe for theconfiguration data package libx11-6
Recipe matching query does not exist.
NOTE: We did not find one recipe for theconfiguration data package
wpa-supplicant Recipe matching query does not exist.


In the toaster itself, I see the % status of the current build (which appears to
be correct).  However, during the build I didn't get any per task information
like I remembered seeing in the past.  Has this changed, or do we have a bug
somewhere?

--Mark

