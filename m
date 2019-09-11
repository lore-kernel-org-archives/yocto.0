Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8EBEE00DF1; Tue, 10 Sep 2019 18:22:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C038AE00DE3
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2019 18:22:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8B1MEFG002212
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Sep 2019 18:22:15 -0700 (PDT)
Received: from [128.224.162.195] (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Tue, 10 Sep 2019 18:22:14 -0700
To: Joe MacDonald <joe@deserted.net>, "Yang, Liezhi"
	<Liezhi.Yang@windriver.com>
References: <1568008890-8700-1-git-send-email-yi.zhao@windriver.com>
	<20190909171150.GD37987@deserted.net>
From: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <f42b6eae-46b5-0d8f-5efa-63007b1bfa0b@windriver.com>
Date: Wed, 11 Sep 2019 09:22:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909171150.GD37987@deserted.net>
X-Originating-IP: [128.224.162.195]
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic layers
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
X-List-Received-Date: Wed, 11 Sep 2019 01:22:17 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 9/10/19 1:11 AM, Joe MacDonald wrote:
> Hi Yi,
>
> [[meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic layers] On 19.09.09 (Mon 14:01) Yi Zhao wrote:
>
>> From: Robert Yang <liezhi.yang@windriver.com>
>>
>> The previous code add all BBFILE_COLLECTIONS/recipes*/*/*.bbappend to BBFILES,
>> which causes the parsing very slow when there are many layers, e.g., I have 87
>> layers:
>>
>> * Before:
>> $ rm -fr tmp-glibc/ cache; time bitbake -p
>> real    0m45.173s
>> user    0m0.560s
>> sys     0m0.060s
>>
>> * After:
>> $ rm -fr tmp-glibc/ cache; time bitbake -p
>> real    0m25.542s
>> user    0m0.572s
>> sys     0m0.040s
>>
>> It wasted 20s which wasn't worth (The host has 128 threads, it should cost more
>> time on less power host), use BBFILES_DYNAMIC can fix the problem.
>
> This seems like a big claim, I certainly haven't seen that on my setup:
>
> * Before:
> $ rm -fr tmp cache
> real    0m14.751s
> user    0m0.323s
> sys     0m0.048s
>
> * After:
> $ rm -fr tmp cache ; time bitbake -p
> real    0m14.725s
> user    0m0.326s
> sys     0m0.046s
>
> but it's still a sensible change.  When I ran a test before/after
> configuration for augeas the configuration seemed off, though.  Can you
> confirm that with this change as is you're getting the correct
> --with/--without and --enable/--disable and patches applied for your
> layers?  I just want to confirm since the ~20s difference in parsing
> seems kind of out of scale for moving essentially three bbappends around
> and I'm wondering if there's something else siginficant in your tree we
> want to consider.


This patch is from Robert Yang. CC to him. Maybe he can give us more 
explanation.

For the augeas, the current augeas_%.bbapend doesn't work because the 
augeas recipe is in meta-oe layer but not meta-python layer. This patch 
moves the bbappend to the correct layer to fix this issue.

It works on my local:

$ cat log.do_configure

[snip]
checking for library containing setfilecon... -lselinux
[snip]
checking for selinux/selinux.h... (cached) yes
checking selinux/context.h usability... yes
checking selinux/context.h presence... yes
checking for selinux/context.h... yes
[snip]


//Yi


>
> -J.
>
>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>> ---
>>   conf/layer.conf                                               | 11 +++++++----
>>   .../recipes-daemons/iscsi-initiator-utils/files/initd.debian  |  0
>>   .../iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend    |  0
>>   .../iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc   |  0
>>   .../recipes-support}/augeas/augeas_%.bbappend                 |  0
>>   .../recipes-containers/lxc/lxc_%.bbappend                     |  0
>>   6 files changed, 7 insertions(+), 4 deletions(-)
>>   rename {networking-layer => dynamic-layers/networking-layer}/recipes-daemons/iscsi-initiator-utils/files/initd.debian (100%)
>>   rename {networking-layer => dynamic-layers/networking-layer}/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend (100%)
>>   rename {networking-layer => dynamic-layers/networking-layer}/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc (100%)
>>   rename {meta-python/recipes-extended/augeas => dynamic-layers/openembedded-layer/recipes-support}/augeas/augeas_%.bbappend (100%)
>>   rename {virtualization-layer => dynamic-layers/virtualization-layer}/recipes-containers/lxc/lxc_%.bbappend (100%)
>>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 9dd34b1..89b9468 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -5,10 +5,13 @@ BBPATH .= ":${LAYERDIR}"
>>   BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>>               ${LAYERDIR}/recipes-*/*/*.bbappend"
>>   
>> -# Let us add layer-specific bbappends which are only applied when that
>> -# layer is included in our configuration
>> -BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
>> -               for layer in BBFILE_COLLECTIONS.split())}"
>> +BBFILES_DYNAMIC += "openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bb \
>> +                    openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bbappend \
>> +                    networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bb \
>> +                    networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bbappend \
>> +                    virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bb \
>> +                    virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bbappend \
>> +                   "
>>   
>>   BBFILE_COLLECTIONS += "selinux"
>>   BBFILE_PATTERN_selinux = "^${LAYERDIR}/"
>> diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
>> similarity index 100%
>> rename from networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
>> rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
>> diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
>> similarity index 100%
>> rename from networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
>> rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
>> diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
>> similarity index 100%
>> rename from networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
>> rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
>> diff --git a/meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend b/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend
>> similarity index 100%
>> rename from meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend
>> rename to dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend
>> diff --git a/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend b/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
>> similarity index 100%
>> rename from virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
>> rename to dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
>> -- 
>> 2.7.4
>>

