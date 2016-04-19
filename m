Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6CD3E00E8C; Tue, 19 Apr 2016 11:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79852E008EE
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 11:34:31 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id z133so3831526iod.1
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 11:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Uwe88HCdmiWEmAv01fO2P+YawRwvvNSDAzYi9erhl00=;
	b=HQy+9ECgC/NJ6U5jMEDy8Q4Km4Jl67OPG8DCXED10EJC0KZU942bnr/QBcoWFPuSJx
	NUHkbrChjEgL7dqJEz3C/KeuD6Q7ZtMQbbD4n3ZARTOr5uvJ6vAKraYImULbId7GTMm6
	i5Gdunk1NOG1ry66rchtHHTzIhfSvnOjy7Um3CLISSHNHBLZMf85SJ16Gsynb6YVoUO2
	GNK5BWqIQ6s6S9lG2c5CUH0F+2MHpDiZFiXGvjrRIf19J/o02cUwnX7Va7ycuKaOPSOS
	O/vGw0w3gssmVZ8iU1B8/6lwnYNmrrZqOWTI3Puu3L5lNtkavWIHxquV0nEl1zPOn+le
	K5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Uwe88HCdmiWEmAv01fO2P+YawRwvvNSDAzYi9erhl00=;
	b=aH5SXVtjxfcNSZEjOBgOZZ0u5y4QDIv0H/XAC2qkwvSIWhdGWK8+CoWZzu/gFRPUZq
	JI3TZbDktXEgrqSuW21y+nua+DbamvTmcQWuIjgMmM6P9f5MEHSZjwEZoJxVQrtIOyyH
	jlldteg3w7zzrHxNobWTxzOfkzf1wqzMIJbXebXQeWvVcpCUrQoOkkYTtbN0p/VtnPmy
	TueDks5+Ox7Cb3kVP2Y/12mwJy8fD8Gikpvm9aGXU7lNtZ+9lWuding2hcGN2FF4pqtb
	WS2Y9K26dCCM/MR3KfDYfmfZJiAKipsK5iffd2c/zBr1cY0SVgLIk0E4J9hMflaQNyBx
	D79A==
X-Gm-Message-State: AOPr4FWuIcqUbamW3mHnin6WAfo2oOIeu5A/VpERrZG4vGUCcprnMaQAx8POZNb21+16kt1DiznqgE/Ab/4c0A==
MIME-Version: 1.0
X-Received: by 10.107.47.10 with SMTP id j10mr5132393ioo.168.1461090870569;
	Tue, 19 Apr 2016 11:34:30 -0700 (PDT)
Received: by 10.36.147.193 with HTTP; Tue, 19 Apr 2016 11:34:30 -0700 (PDT)
In-Reply-To: <57148DF9.8020905@windriver.com>
References: <1460103572-63539-1-git-send-email-wenzong.fan@windriver.com>
	<5713F9F7.8040106@twobit.us> <57148DF9.8020905@windriver.com>
Date: Tue, 19 Apr 2016 13:34:30 -0500
Message-ID: <CAFSKS=ObDBisOn9CLOm7Q=KuYHbw-17yhj_9BCOA1rpETWSMFw@mail.gmail.com>
From: George McCollister <george.mccollister@gmail.com>
To: wenzong fan <wenzong.fan@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] refpolicy-minimum: port changes for prepare_policy_store
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
X-List-Received-Date: Tue, 19 Apr 2016 18:34:34 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 18, 2016 at 2:34 AM, wenzong fan <wenzong.fan@windriver.com> wrote:
> On 04/18/2016 05:02 AM, Philip Tricca wrote:
>>
>> Hello Wenzong,
>>
>> On 04/08/2016 01:19 AM, wenzong.fan@windriver.com wrote:
>>>
>>> From: Wenzong Fan <wenzong.fan@windriver.com>
>>>
>>> Apply the changes to refpolicy-minimum_2.20151208.bb:
>>>
>>>    commit bfaf278116e6c3a04bb82c9f8a4f8629a0a85df8
>>>    Author: Wenzong Fan <wenzong.fan@windriver.com>
>>>    Date:   Tue Oct 27 06:25:04 2015 -0400
>>>
>>>      refpolicy-minimum: update prepare_policy_store
>>>
>>>      * update prepare_policy_store() for supporting SELinux 2.4 & CIL,
>>> the
>>>        logic is from refpolicy_common.inc but with minimum set of policy
>>>        modules;
>>>
>>>      * add extra policy modules that required by sysnetwork, without
>>> those
>>>        modules the install process will fail with error:
>>>
>>>          | Failed to resolve roletype statement at 62 of \
>>>
>>> .../image/var/lib/selinux/minimum/tmp/modules/100/sysnetwork/cil
>>>          | Failed to resolve ast
>>>          | semodule:  Failed!
>>>
>>>      Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>>>      Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>>>
>>> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>>> ---
>>
>>
>> This looks great but in testing it I'm unable to use the 'minimum'
>> refpolicy recipe in any image. The recipe builds fine but the do_rootfs
>> fails trying to label the filesystem. I haven't been able to find the
>> root cause for this yet, but I'm seeing this behavior both before and
>> after adding this patch so it may be a preexisting issue?
>>
>> Given all of that, I've merged this patch into master since it doesn't
>> seem related to the issue I'm seeing. Still, some help in resolving the
>> issue I'm seeing with the minimum refpolicy recipe would be appreciated.
>
>
> Hi Philip,
>
> Thanks for getting the change merged.
>
> I did a test and see errors about:
>
>
> /.../core-image-selinux/1.0-r0/rootfs//etc/selinux/mcs/contexts/files/file_contexts:
> No such file or directory
>
> That should be the SELINUXTYPE in /etc/selinux/config is not correct, below
> patches could fix it:
>
> --- a/recipes-security/refpolicy/refpolicy_common.inc
> +++ b/recipes-security/refpolicy/refpolicy_common.inc
> @@ -162,7 +162,8 @@ SELINUX=${DEFAULT_ENFORCING}
>  #     mls - Multi Level Security protection.
>  #     targeted - Targeted processes are protected.
>  #     mcs - Multi Category Security protection.
> -SELINUXTYPE=${POLICY_TYPE}
> +#     minimum - Minimum Security protection.
> +SELINUXTYPE=${POLICY_NAME}
>
> It works in my test, please feel free to integrate it if you think it makes
> sense.
>

With this change my refpolicy-targeted build completes again.
Thanks,
George

> Thanks
> Wenzong
>
>
>>
>> Thanks,
>> Philip
>>
>>>   .../refpolicy/refpolicy-minimum_2.20151208.bb      | 41
>>> ++++++++++++++++------
>>>   1 file changed, 30 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
>>> b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
>>> index b275821..47ed558 100644
>>> --- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
>>> +++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
>>> @@ -26,23 +26,42 @@ EXTRA_POLICY_MODULES += "nscd"
>>>   # "login", so "login" process will access to /var/spool/mail.
>>>   EXTRA_POLICY_MODULES += "mta"
>>>
>>> +# sysnetwork requires type definitions (insmod_t, consoletype_t,
>>> +# hostname_t, ping_t, netutils_t) from modules:
>>> +EXTRA_POLICY_MODULES += "modutils consoletype hostname netutils"
>>> +
>>>   POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
>>>
>>>   # re-write the same func from refpolicy_common.inc
>>>   prepare_policy_store () {
>>>         oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
>>> +       POL_PRIORITY=100
>>> +       POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
>>> +       POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
>>> +       POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
>>>
>>>         # Prepare to create policy store
>>> -       mkdir -p ${D}${sysconfdir}/selinux/
>>> -       mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
>>> -       mkdir -p
>>> ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
>>> -       mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
>>> -       touch
>>> ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
>>> -       for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
>>> -               bzip2 -f $i && mv -f $i.bz2 $i
>>> -       done
>>> -       cp base.pp
>>> ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
>>> -       for i in ${POLICY_MODULES_MIN}; do
>>> -               cp ${i}.pp
>>> ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename
>>> $i.pp`
>>> +       mkdir -p ${POL_STORE}
>>> +       mkdir -p ${POL_ACTIVE_MODS}
>>> +
>>> +       # get hll type from suffix on base policy module
>>> +       HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print
>>> $NF}}')
>>> +
>>> HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
>>> +
>>> +       for i in base ${POLICY_MODULES_MIN}; do
>>> +               MOD_FILE=${POL_SRC}/${i}.${HLL_TYPE}
>>> +               MOD_DIR=${POL_ACTIVE_MODS}/${i}
>>> +               mkdir -p ${MOD_DIR}
>>> +               echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
>>> +
>>> +               if ! bzip2 -t ${MOD_FILE} >/dev/null 2>&1; then
>>> +                       ${HLL_BIN} ${MOD_FILE} | bzip2 --stdout >
>>> ${MOD_DIR}/cil
>>> +                       bzip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2
>>> ${MOD_FILE}
>>> +               else
>>> +                       bunzip2 --stdout ${MOD_FILE} | \
>>> +                               ${HLL_BIN} | \
>>> +                               bzip2 --stdout > ${MOD_DIR}/cil
>>> +               fi
>>> +               cp ${MOD_FILE} ${MOD_DIR}/hll
>>>         done
>>>   }
>>>
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

