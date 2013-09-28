Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23855E01667
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2013 12:46:30 -0700 (PDT)
Received: from static-63-131-30-243.syr.onecommunications.net ([63.131.30.243]
	helo=[172.16.1.10])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VQ0TB-0003JH-69; Sat, 28 Sep 2013 19:46:27 +0000
Message-ID: <5247320A.10805@twobit.us>
Date: Sat, 28 Sep 2013 15:46:18 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130828 Icedove/17.0.8
MIME-Version: 1.0
To: joe@deserted.net
References: <523B4551.3040407@windriver.com>
	<20130927195850.GA8272@deserted.net>
In-Reply-To: <20130927195850.GA8272@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 63.131.30.243
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] Updated meta-selinux -- master-next
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
X-List-Received-Date: Sat, 28 Sep 2013 19:46:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/27/2013 03:58 PM, Joe MacDonald wrote:
> [[yocto] [meta-selinux] Updated meta-selinux -- master-next] On 13.09.19 (Thu 13:41) Mark Hatle wrote:
> 
>> I have updated meta-selinux, and placed the update into the 'master-next' branch.
>>
>> This was locally tested with Poky as of commit
>> 853bc53cd58a621918f0e5ce662dba263d1befb4.
>>
>> Note, when building the core-image-selinux, the internal refpolicies
>> cause a lot of failures.  I'm not an expert on how this should be
>> configured, so I'm looking for help/patches from others.
>>
>> If you know of any other additional patches that should be applied,
>> or are able to help with the refpolicies, please let me know!
>>
>> Thanks!
>> --Mark
> 
> I just pushed a new (non-ff!) update to master-next.  It includes the
> following:
> 
>    - Mark Hatle: policycoreutils: avoid shell for checking target-special actions
>    - Mark Hatle: setools: Uprev setools
>    - Mark Hatle: README: Update status
>    - Mark Hatle: libcap-ng: Uprev libcap-ng
>    - Mark Hatle: audit: Uprev to audit 2.3.2
>    - Mark Hatle: swig: Update to latest swig from meta-openembedded
>    - Mark Hatle: python-ipy: Uprev to latest 0.81 version
>    - Mark Hatle: distro/*: Update the distro files
>    - Christopher Larson: layer.conf: avoid unnecessary early expansion with :=
>    - Qiang Chen: selinux: remove reference to locale env files from login
>    - Mark Hatle: linux-yocto: Add support for the 3.10 kernel
>    - Xin Ouyang: kernel: add BBAPPEND for linux 3.10

Can I put in a request to cherry-pick the 3.10 kernel update down to master? This is independent from all of the tools / policy updates and it would be very convenient for those of us building against master oe-core. As of now a build of meta-selinux master against oe-core master results in an image that will panic on boot as linux-yocto builds the 3.10 kernel and the selinux distros don't prefer a kernel with an available selinux config (3.8 is the most recent).

Thanks,
- Philip


