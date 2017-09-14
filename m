Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6542E00CB7; Thu, 14 Sep 2017 06:32:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BCBDE00CAF
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 06:32:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v8EDWu73027473
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Sep 2017 06:32:56 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 14 Sep 2017 06:32:55 -0700
To: wenzong fan <wenzong.fan@windriver.com>, Chanho Park <parkch98@gmail.com>, 
	<yocto@yoctoproject.org>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
	<20170905055958.54697-4-wenzong.fan@windriver.com>
	<CAPTzV14TtSer1QRZ+5fEiSCUjXiqb4VF9pSuCmNQ5-HUC1Adag@mail.gmail.com>
	<1f2a8ebb-bc8c-6e26-3381-8df2b043b387@windriver.com>
	<d03d0a77-16e4-1e98-1d5b-17c60bafea02@windriver.com>
	<cd1182f7-3a69-e174-e142-d5b06bf2ebd4@windriver.com>
	<1c944366-3583-25ca-3b8c-b2a64a93bcf5@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <a97d935a-6057-94ae-9108-58c4a9c91860@windriver.com>
Date: Thu, 14 Sep 2017 08:33:07 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1c944366-3583-25ca-3b8c-b2a64a93bcf5@windriver.com>
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
X-List-Received-Date: Thu, 14 Sep 2017 13:32:59 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/14/17 5:31 AM, wenzong fan wrote:
> 
> 
> On 09/14/2017 08:07 AM, Mark Hatle wrote:
>> On 9/12/17 9:19 PM, Mark Hatle wrote:
>>> On 9/12/17 9:06 PM, wenzong fan wrote:
>>>> On 09/12/2017 06:59 PM, Chanho Park wrote:
>>>>> Hi,
>>>>>
>>>>> I can't apply this patch on top of the master branch. Which revision did
>>>>> you make the patches?
>>>>
>>>> Oops, that's my fault. I did a "sed -i -e 's/Subject: [/Subject:
>>>> [meta-selinux][/g' 00*" to add prefix for mail subjects, that also
>>>> changed the removed patch files in libsemanage.
>>>>
>>>> I'll send v2.
>>>>
>>>> Thanks
>>>> Wenzong
>>>
>>> I don't see the original set of patches in my archives.  When you rebase, please
>>> rebase on top of mgh/master-next.
>>
>> My mailer finally loaded the original set.  I saw the same problems, but was
>> able to get them merged.
>>
>> I have updated 'mgh/master-next'.  Please verify the contents include all of
>> your changes.
> 
> All my changes are there now.
> 
>>
>> I tried to build a system and boot it, but it didn't work.  I'm guessing I
>> forgot something simple, but I can't make master-next into master without
>> knowing I can boot..  Any clue would be useful.  Thanks!
>>
>>
>> My configuration is:
>>
>> bblayers.conf:
>>
>> oe-core (master) & meta-selinux (mgh/master-next)
>>
>>
>> local.conf:
>>
>> IMAGE_FEATURES_append = " debug-tweaks ssh-server-openssh"
>>
>> DISTRO_FEATURES_append = " opengl x11 wayland acl xattr pam selinux"
>>
>> PREFERRED_PROVIDER_virtual/refpolicy = "refpolicy-mls"
>> PREFERRED_VERSION_refpolicy-mls = "2.20170204"
> 
> Above configs are OK, you can simply use:
> 
> DISTRO = "poky-selinux"
> PREFERRED_VERSION_refpolicy-mls ?= "2.20170204"

The DISTRO settings in meta-selinux are being removed (they are no longer in the
master-next branch).  Instead the user will be required to set the
DISTRO_FEATURE 'selinux' to enable the components.  (It is expected they will
also enable acl/xattr and pam.)

>>
>>
>> I ran QEMU using:
>>
>>
>> runqemu qemux86 core-image-selinux ext4 nographic
>>
>>
> 
> Please run QEMU with:
> 
> $ runqemu qemux86 core-image-selinux ext4 nographic 
> bootparams="selinux=1 enforcing=0"



>>
>> Trying to login I get:
>>
>> qemux86 login: root
>> [   23.960609] kauditd_printk_skb: 13 callbacks suppressed
>> Cannot execute /bin/sh: Permission denied
>> [   23.973922] audit: type=1400 audit(1505347190.805:29): avc:  denied  {
>> execute } for  pid=671 comm="login" name="bash.bash" dev="vda" ino=8163
>> scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
>> tcontext=system_u:object_r:bin_t:s0 tclass=file permissive=0
>> [   23.975463] audit: type=1400 audit(1505347190.813:30): avc:  denied  {
>> execute } for  pid=671 comm="login" name="bash.bash" dev="vda" ino=8163
>> scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
>> tcontext=system_u:object_r:bin_t:s0 tclass=file permissive=0
>>
>>
> 
> This should be blocked by refpolicy-mls, please boot with "selinux=1 
> enforcing=0" to verify if SELinux tools work. For example:

I would like to update the README file for the layer on how the user can
actually make a bootable system.  If this involves adding a user, that is fine.
But at present there is no way to login w/o turning off enforcing.  That seems
to defeat the purpose of enabling selinux in a design.

So any help you can give me for the documentation would be appreciated.

> $ sestatus

root@qemux86:~# sestatus
SELinux status:                 enabled
SELinuxfs mount:                /sys/fs/selinux
SELinux root directory:         /etc/selinux
Loaded policy name:             mls
Current mode:                   permissive
Mode from config file:          enforcing
Policy MLS status:              enabled
Policy deny_unknown status:     allowed
Memory protection checking:     requested (insecure)
Max kernel policy version:      30

> OR:
> $ semanage login -l

root@qemux86:~# semanage login -l

Login Name           SELinux User         MLS/MCS Range        Service

__default__          user_u               s0-s0                *
root                 root                 s0-s15:c0.c1023      *

(I followed the information below and enabled the python components.)

> Actually this doesn't work since runtime dependencies, I commented off 
> this from setools_4.1.1.bb:
> 
> # TODO: depends on meta-python, disable the RDEPENDS for now:
> # RDEPENDS_${PN} += "python-networkx python-enum34 python-decorator 
> python-setuptools"
> 
> For community， we need to discuss if we can get meta-selinux depend on 
> meta-python by default? Or just get users to do that?

Yes, we can add a requirement for meta-python.  I just need to clearly document
in the commit message why it is there.

I will work to update the mgh/master-next with the meta-python items and some of
the information above...

--Mark

> Thanks
> Wenzong
> 
>>
>>> --Mark
>>>
>>
>>


