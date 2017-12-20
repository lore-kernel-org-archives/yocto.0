Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8114AE00D81; Wed, 20 Dec 2017 01:08:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08D16E00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:08:38 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id vBK98aCq021215
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 11:08:36 +0200
From: Mircea Gliga <mircea.gliga@vitheia.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <753da0b1-9a45-6ce7-3016-502689f2330a@vitheia.com>
Date: Wed, 20 Dec 2017 11:08:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: call custom sh script in do_compile
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
X-List-Received-Date: Wed, 20 Dec 2017 09:08:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello

I have a build.sh script used to build outside yocto, after sourcing the 
build environment.
I want to use the same build.sh script inside the recipe, in the 
do_compile task, something like:

do_compile () {

  ./build.sh ${MACHINE}
}

The build.sh script eventually calls make for several targets, release 
debug etc...
The idea with this script is to be used both inside yocto and outside 
(after sourcing
build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi), by 
reusing the code.

What is the proper way to use a custom shell script to build things ?
How to pass info from oe_runmake/EXTRA_OEMAKE ?

Thanks
Mircea


