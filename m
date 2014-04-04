Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C01A9E00BE0
	for <yocto@yoctoproject.org>; Fri,  4 Apr 2014 00:57:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s347vRna015738
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Apr 2014 00:57:27 -0700 (PDT)
Received: from Pascal-MacBookPro.local (128.224.158.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Fri, 4 Apr 2014 00:57:26 -0700
Message-ID: <533E65E5.9040707@windriver.com>
Date: Fri, 4 Apr 2014 15:57:25 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>, <wenzong.fan@windriver.com>
References: <cover.1395709062.git.wenzong.fan@windriver.com>	<20140403192027.GM4075@deserted.net>
	<533E57CD.8010202@windriver.com>
In-Reply-To: <533E57CD.8010202@windriver.com>
X-TagToolbar-Keys: D20140404155725158
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] add targeted/minimum policy and some updates
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
X-List-Received-Date: Fri, 04 Apr 2014 07:57:31 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-4-4 下午2:57, Pascal Ouyang 写道:
> 于 14-4-4 上午3:20, Joe MacDonald 写道:
>> Hey Wenzong,
>>
>> I merged two of these four.
>>
>> [[yocto] [meta-selinux][PATCH 0/4] add targeted/minimum policy and
>> some updates] On 14.03.24 (Mon 21:07) wenzong.fan@windriver.com wrote:
>>
>>> From: Wenzong Fan <wenzong.fan@windriver.com>
>>>
>>> Changes:
>>> * backport tmpfs_t patch from upstream;
>>> * add rules for /var/log symlink on poky;
>>
>> These both went in.  These:
>>
>>> * add targeted policy type
>>> * add minimum targeted policy
>>
>> I'm less clear on.  They both look like significant changes to
>> refpolicy-* behaviour, which is fine, but in that case I think it'd be
>> better to give them a different name.  Or one that differentiates them
>> significantly.  For example the "minimum" policy has users unconfined
>> and applications confined?  Or neither?  I'm not sure what the value is
>> of these.
>>
>> If they really are just specialized versions of the standard reference
>> policy, they should at least be ported to use the refpolicy_common
>> infrastructure Phil set up a while back.
>
> Hi Joe&Wenzong,
>
> According to the origin design, both policy types are targeted policies.
>
> For targeted policies,
> * Users will login into shells on unconfined domain.
> * For applications with no policy module or with policy module disabled,
> they will also run on unconfined domain.
> * For applications "targeted", they would have policy module enabled,
> with rules to do domtrans from unconfined/init* domain to their own domain.
>
> The result will be:
> - standard/mls :
>    un-ruled applications(usually bin_t) will run on unconfined domain,
> so operations will *not* be blocked.

s#standard/mls#targeted/minimum#

> - targeted/minimum
>    un-ruled applications will run on user's current domain, such as
> user_t,sysadm_t, so most privileged operations will be blocked.
>

s#targeted/minimum#standard/mls#

:-;

- Pascal

>
> Difference between refpolicy-minium&refpolicy-targeted
> * refpolicy-minium = targeted policy with only core policies
>    It should just be used for admins to defined their own policy.
>    For example, a httpd server could just use refpolicy-minium + httpd
> module. Actually, I have thought to use refpolicy-targeted-minium as its
> name, but not in the end.
> * refpolicy-targeted = targeted policy with all 300+ modules
>
> Thanks. :)
>
> - Pascal
>
>>
>> Thanks,
>> -J.
>>
>>>
>>> The following changes since commit
>>> a6079a43719e79e12a57e609923a0cccdba06916:
>>>
>>>    refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)
>>>
>>> are available in the git repository at:
>>>
>>>    git://git.pokylinux.org/poky-contrib wenzong/ref-minimum
>>>
>>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/ref-minimum
>>>
>>>
>>> Wenzong Fan (4):
>>>    refpolicy: associate tmpfs_t (shm) to device_t (devtmpfs) file
>>>      systems
>>>    refpolicy: add rules for /var/log symlink on poky
>>>    refpolicy: add targeted policy type
>>>    refpolicy: add minimum targeted policy
>>>
>>>   ...associate-tmpfs_t-shm-to-device_t-devtmpf.patch |   30 +++
>>>   ...ky-policy-add-rules-for-syslogd_t-symlink.patch |   30 +++
>>>   ...rules-for-var-log-symlink-audisp_remote_t.patch |   29 +++
>>>   .../refpolicy/refpolicy-minimum_2.20130424.bb      |   46 +++++
>>>   ...olicy-fix-optional-issue-on-sysadm-module.patch |   60 ++++++
>>>   .../refpolicy-unconfined_u-default-user.patch      |  198
>>> ++++++++++++++++++++
>>>   .../refpolicy/refpolicy-targeted_2.20130424.bb     |   18 ++
>>>   .../refpolicy/refpolicy_2.20130424.inc             |    3 +
>>>   8 files changed, 414 insertions(+)
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch
>>>
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-syslogd_t-symlink.patch
>>>
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-2.20130424/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch
>>>
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-targeted/refpolicy-fix-optional-issue-on-sysadm-module.patch
>>>
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-targeted/refpolicy-unconfined_u-default-user.patch
>>>
>>>   create mode 100644
>>> recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
>>>
>
>


-- 
- Pascal

