Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23B16E00BF7; Wed, 21 Mar 2018 07:44:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B39BEE005A9
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:44:20 -0700 (PDT)
Received: from [79.160.140.131] (port=56869 helo=[10.183.35.37])
	by smtp.domeneshop.no with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
	(envelope-from <sveinse@seldal.com>)
	id 1eyeyQ-0004jm-W0; Wed, 21 Mar 2018 15:44:19 +0100
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	yocto@yoctoproject.org
References: <ad09d45b8456613da24304c00a2c2273@webmail.domeneshop.no>
	<67ee7cc2-3ff6-464e-ea81-c3ad2ec8756f@linux.intel.com>
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <16149a84-e90d-6702-14ca-88eff4c149ae@seldal.com>
Date: Wed, 21 Mar 2018 15:44:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <67ee7cc2-3ff6-464e-ea81-c3ad2ec8756f@linux.intel.com>
Subject: Re: Yocto and NPM issues
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
X-List-Received-Date: Wed, 21 Mar 2018 14:44:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


On 21.03.2018 14:54, Alexander Kanavin wrote:
>> I'm attempting to package a npm-based js application into a Rocko 
>> image, and I'm having some issues. For testing I use the official poky 
>> repo and the meta-openembedded repo (for installing nodejs 8.4.0). I'm 
>> building for qemux86-64.
> 
> I know this is not an answer to your specific issues, but npm is a bit 
> of maintenance nightmare as its workflow (downloading random stuff off 
> the internet as an integral part of the build) clashes badly with how 
> bitbake, and embedded world in general handle builds. We've discussed 
> what to do about it, with no clear outcome, but we would like to have 
> something that doesn't require constant fixing and hacks:
> 
> http://lists.openembedded.org/pipermail/openembedded-architecture/2017-March/000480.html 

I haven't read the post in full yet, but the principle of npm is 
inherently different from the philosophies of Yocto, granted.

One approach that we've been discussing as an alternative to the 
yocto+npm approach is to install the js app on a target machine and 
snapshot the whole resulting directory hierarchy. The product validation 
is then made on the modules as a whole. The recipe would need to be a 
simple file-installer.

The problem with that is that one needs a target deployment system that 
runs npm install on the actual target in order to make the correct files 
for the target. The output from that must be plugged into the oe build 
system somehow, so there will be many moving parts in this scheme too.

 > Oh, and you might have more success using meta-nodejs, as it doesn't try
 > to implement a custom fetcher, and just runs npm directly during the
 > build. If you don't mind that that makes the build outcome essentially
 > random from one invocation to the next.
 >
 > https://github.com/imyller/meta-nodejs

The meta-nodejs repo seems to be abandoned, as it does support any newer 
versions of nodejs. I asked on #yocto and I was suggested that this 
layer wasn't really necessary as meta-openembedded supports nodejs.


Best regards,
Svein

