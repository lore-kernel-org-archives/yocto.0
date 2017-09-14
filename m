Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ECACE00CB7; Wed, 13 Sep 2017 17:07:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D570FE00B1B
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 17:07:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8E079me011338
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 13 Sep 2017 17:07:09 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 13 Sep 2017 17:07:08 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: wenzong fan <wenzong.fan@windriver.com>, Chanho Park <parkch98@gmail.com>, 
	<yocto@yoctoproject.org>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
	<20170905055958.54697-4-wenzong.fan@windriver.com>
	<CAPTzV14TtSer1QRZ+5fEiSCUjXiqb4VF9pSuCmNQ5-HUC1Adag@mail.gmail.com>
	<1f2a8ebb-bc8c-6e26-3381-8df2b043b387@windriver.com>
	<d03d0a77-16e4-1e98-1d5b-17c60bafea02@windriver.com>
Organization: Wind River Systems
Message-ID: <cd1182f7-3a69-e174-e142-d5b06bf2ebd4@windriver.com>
Date: Wed, 13 Sep 2017 19:07:20 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <d03d0a77-16e4-1e98-1d5b-17c60bafea02@windriver.com>
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
X-List-Received-Date: Thu, 14 Sep 2017 00:07:14 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 9/12/17 9:19 PM, Mark Hatle wrote:
> On 9/12/17 9:06 PM, wenzong fan wrote:
>> On 09/12/2017 06:59 PM, Chanho Park wrote:
>>> Hi,
>>>
>>> I can't apply this patch on top of the master branch. Which revision did 
>>> you make the patches?
>>
>> Oops, that's my fault. I did a "sed -i -e 's/Subject: [/Subject: 
>> [meta-selinux][/g' 00*" to add prefix for mail subjects, that also 
>> changed the removed patch files in libsemanage.
>>
>> I'll send v2.
>>
>> Thanks
>> Wenzong
> 
> I don't see the original set of patches in my archives.  When you rebase, please
> rebase on top of mgh/master-next.

My mailer finally loaded the original set.  I saw the same problems, but was
able to get them merged.

I have updated 'mgh/master-next'.  Please verify the contents include all of
your changes.

I tried to build a system and boot it, but it didn't work.  I'm guessing I
forgot something simple, but I can't make master-next into master without
knowing I can boot..  Any clue would be useful.  Thanks!


My configuration is:

bblayers.conf:

oe-core (master) & meta-selinux (mgh/master-next)


local.conf:

IMAGE_FEATURES_append = " debug-tweaks ssh-server-openssh"

DISTRO_FEATURES_append = " opengl x11 wayland acl xattr pam selinux"

PREFERRED_PROVIDER_virtual/refpolicy = "refpolicy-mls"
PREFERRED_VERSION_refpolicy-mls = "2.20170204"


I ran QEMU using:


runqemu qemux86 core-image-selinux ext4 nographic



Trying to login I get:

qemux86 login: root
[   23.960609] kauditd_printk_skb: 13 callbacks suppressed
Cannot execute /bin/sh: Permission denied
[   23.973922] audit: type=1400 audit(1505347190.805:29): avc:  denied  {
execute } for  pid=671 comm="login" name="bash.bash" dev="vda" ino=8163
scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
tcontext=system_u:object_r:bin_t:s0 tclass=file permissive=0
[   23.975463] audit: type=1400 audit(1505347190.813:30): avc:  denied  {
execute } for  pid=671 comm="login" name="bash.bash" dev="vda" ino=8163
scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
tcontext=system_u:object_r:bin_t:s0 tclass=file permissive=0



> --Mark
> 


