Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BAF6E00E10; Tue,  6 Feb 2018 04:53:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B13E00DB5
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 04:53:15 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w16CrCN3031438
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Tue, 6 Feb 2018 14:53:12 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
Date: Tue, 6 Feb 2018 14:53:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: static libraries missing from sdk
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
X-List-Received-Date: Tue, 06 Feb 2018 12:53:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

I have a problem providing a static library in the SDK:
I have a recipe that builds a library. It outputs an -dev pkg with the 
/usr/{include,lib} libs in it and a -staticdev pkg with the static library.
The main pkg is empty, in my recipe I have added ALLOW_EMPTY_${PN} = "1" 
because the -dev and -staticdev depend on it

In my local.conf I have added:
     SDKIMAGE_FEATURES += "dev-pkgs dbg-pkgs staticdev-pkgs"

Then I run
     bitbake my-image -c populate_sdk
After installing the SDK, I get the headers (from the -dev pkg) but not 
the static library from the -staticdev pkg.

Why is that ? From my understanding specifying staticdev-pkgs in the 
SDKIMAGE_FEATURE should have this covered.

I was able to "force" the install of the -staticdev pks by adding to 
local.conf:

     TOOLCHAIN_TARGET_TASK_append = " mylibrary-staticdev"

Do you have to manually take care of this ? Then, what's the purpose of 
SDKIMAGE_FEATURES += " staticdev-pkgs" ?
I would like to  have all static libraries in the SDK.

Thanks and regards




