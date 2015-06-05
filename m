Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 452C6E009DF; Thu,  4 Jun 2015 21:25:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A28E0098D
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 21:25:08 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.103])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z0j7X-0006mj-Rq; Fri, 05 Jun 2015 04:20:40 +0000
Message-ID: <55712496.5090303@twobit.us>
Date: Thu, 04 Jun 2015 21:24:54 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1431802650-1340-1-git-send-email-flihp@twobit.us>
	<1431803087-1601-1-git-send-email-flihp@twobit.us>
	<EBC449ED-D648-4DDD-BB75-55FF8275A3E0@gmail.com>
In-Reply-To: <EBC449ED-D648-4DDD-BB75-55FF8275A3E0@gmail.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] oe-selinux.conf: set preferred kernel version to 3.14
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
X-List-Received-Date: Fri, 05 Jun 2015 04:25:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 05/18/2015 07:15 PM, Khem Raj wrote:
> 
>> On May 16, 2015, at 12:04 PM, Philip Tricca <flihp@twobit.us> wrote:
>>
>> Upstream 3.19 isn't supported by meta-selinux yet. Set PREFERRED_VERSION
>> to 3.14 as a work-around to keep the reference images bootable.
>>
>> Signed-off-by: Philip Tricca <flihp@twobit.us>
>> ---
>> conf/distro/oe-selinux.conf | 2 ++
>> 1 file changed, 2 insertions(+)
>>
>> diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
>> index 6e55a32..ea3adbf 100644
>> --- a/conf/distro/oe-selinux.conf
>> +++ b/conf/distro/oe-selinux.conf
>> @@ -1,4 +1,6 @@
>> DISTRO = "oe-selinux"
>> DISTROOVERRIDES .= ":selinux"
>>
>> +PREFERRED_VERSION_linux-yocto = "3.14%”
> 
> IMO this looks a wrong place to pin kernel versions. Its BSPs choice hence belongs to machine
> layers. unless you want to limit the scope of this layer to BSPs using linux-yocto only, then you need
> to state that in README and still not set this but instead set a bbappend and raise a parse error to inform
> the user about the layer expecting linux-yocto 3.14

I picked the distro conf because the SELinux kernel config is why we
need to pin the version (don't have a config for 3.19 yet). Secondly in
looking for an example of using this variable I saw the poky distro
layer pinning the kernel version in the distro.conf. I may have just
been emulating bad behavior here though.

Philip

> 
>> +
> 
>> DISTRO_FEATURES_append = " acl xattr pam selinux"
>> --
>> 2.1.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 


