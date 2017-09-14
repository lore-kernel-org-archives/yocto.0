Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C667E00CC4; Thu, 14 Sep 2017 03:31:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4522E00CAF
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 03:31:19 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8EAVFHd010341
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Sep 2017 03:31:17 -0700 (PDT)
Received: from [128.224.162.147] (128.224.162.147) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 14 Sep 2017 03:31:14 -0700
To: Mark Hatle <mark.hatle@windriver.com>, Chanho Park <parkch98@gmail.com>,
	<yocto@yoctoproject.org>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
	<20170905055958.54697-4-wenzong.fan@windriver.com>
	<CAPTzV14TtSer1QRZ+5fEiSCUjXiqb4VF9pSuCmNQ5-HUC1Adag@mail.gmail.com>
	<1f2a8ebb-bc8c-6e26-3381-8df2b043b387@windriver.com>
	<d03d0a77-16e4-1e98-1d5b-17c60bafea02@windriver.com>
	<cd1182f7-3a69-e174-e142-d5b06bf2ebd4@windriver.com>
From: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <1c944366-3583-25ca-3b8c-b2a64a93bcf5@windriver.com>
Date: Thu, 14 Sep 2017 18:31:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <cd1182f7-3a69-e174-e142-d5b06bf2ebd4@windriver.com>
Subject: Re: [meta-selinux][PATCH 04/21] libsemanage: uprev to 2.7 (20170804)
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
X-List-Received-Date: Thu, 14 Sep 2017 10:31:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 09/14/2017 08:07 AM, Mark Hatle wrote:
> On 9/12/17 9:19 PM, Mark Hatle wrote:
>> On 9/12/17 9:06 PM, wenzong fan wrote:
>>> On 09/12/2017 06:59 PM, Chanho Park wrote:
>>>> Hi,
>>>>
>>>> I can't apply this patch on top of the master branch. Which revision did
>>>> you make the patches?
>>>
>>> Oops, that's my fault. I did a "sed -i -e 's/Subject: [/Subject:
>>> [meta-selinux][/g' 00*" to add prefix for mail subjects, that also
>>> changed the removed patch files in libsemanage.
>>>
>>> I'll send v2.
>>>
>>> Thanks
>>> Wenzong
>>
>> I don't see the original set of patches in my archives.  When you rebase, please
>> rebase on top of mgh/master-next.
> 
> My mailer finally loaded the original set.  I saw the same problems, but was
> able to get them merged.
> 
> I have updated 'mgh/master-next'.  Please verify the contents include all of
> your changes.

All my changes are there now.

> 
> I tried to build a system and boot it, but it didn't work.  I'm guessing I
> forgot something simple, but I can't make master-next into master without
> knowing I can boot..  Any clue would be useful.  Thanks!
> 
> 
> My configuration is:
> 
> bblayers.conf:
> 
> oe-core (master) & meta-selinux (mgh/master-next)
> 
> 
> local.conf:
> 
> IMAGE_FEATURES_append = " debug-tweaks ssh-server-openssh"
> 
> DISTRO_FEATURES_append = " opengl x11 wayland acl xattr pam selinux"
> 
> PREFERRED_PROVIDER_virtual/refpolicy = "refpolicy-mls"
> PREFERRED_VERSION_refpolicy-mls = "2.20170204"

Above configs are OK, you can simply use:

DISTRO = "poky-selinux"
PREFERRED_VERSION_refpolicy-mls ?= "2.20170204"

> 
> 
> I ran QEMU using:
> 
> 
> runqemu qemux86 core-image-selinux ext4 nographic
> 
>

Please run QEMU with:

$ runqemu qemux86 core-image-selinux ext4 nographic 
bootparams="selinux=1 enforcing=0"

> 
> Trying to login I get:
> 
> qemux86 login: root
> [   23.960609] kauditd_printk_skb: 13 callbacks suppressed
> Cannot execute /bin/sh: Permission denied
> [   23.973922] audit: type=1400 audit(1505347190.805:29): avc:  denied  {
> execute } for  pid=671 comm="login" name="bash.bash" dev="vda" ino=8163
> scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
> tcontext=system_u:object_r:bin_t:s0 tclass=file permissive=0
> [   23.975463] audit: type=1400 audit(1505347190.813:30): avc:  denied  {
> execute } for  pid=671 comm="login" name="bash.bash" dev="vda" ino=8163
> scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
> tcontext=system_u:object_r:bin_t:s0 tclass=file permissive=0
> 
>

This should be blocked by refpolicy-mls, please boot with "selinux=1 
enforcing=0" to verify if SELinux tools work. For example:

$ sestatus

OR:
$ semanage login -l
Actually this doesn't work since runtime dependencies, I commented off 
this from setools_4.1.1.bb:

# TODO: depends on meta-python, disable the RDEPENDS for now:
# RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator 
python-setuptools"

For community， we need to discuss if we can get meta-selinux depend on 
meta-python by default? Or just get users to do that?

Thanks
Wenzong

> 
>> --Mark
>>
> 
> 

