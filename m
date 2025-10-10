Return-Path: <peter@berginkonsult.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A608CCA476
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:24:17 +0000 (UTC)
Received: from mailrelay-egress8.pub.mailoutpod2-cph3.one.com (mailrelay-egress8.pub.mailoutpod2-cph3.one.com [46.30.211.183])
 by mx.groups.io with SMTP id smtpd.web11.9012.1760102654739952033
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:24:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=rsa1 header.b=FAINKotc;
 dkim=pass header.i=@berginkonsult.se header.s=ed1 header.b=OmVeb19Q;
 spf=none, err=SPF record not found (domain: berginkonsult.se, ip: 46.30.211.183, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1760102652; x=1760707452;
	d=berginkonsult.se; s=rsa1;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:to:subject:
	 mime-version:date:message-id:from;
	bh=AOaU9zqWfqdGyDYZnWamF4lHruRL90AgJekIWHuFt9Y=;
	b=FAINKotc3TwacKfF6DfDJxGg3Nh2rVYKY4macLa5tezsxx+UO185XLYfebPOMNN61l4wVIj7CUOaU
	 TefghrM0OEqlAY4acTmmS8KkUKt8zmwTUvULHFBD7rFPji1AMipYj1KyWaqHFREqLCUItQhaz3tgBE
	 x+9dWzh7vvLc3IDM2aGEVcXFxRMaB7Uy3UpKqEq87s2VvenE2aSZmWB9paENPnOlsRBteurN3ABngw
	 5pUOoQfsAjX4EsKFQXCpc+Uzey4ttj/Vx8of9sj9K2Q2M0HKzl7T3lYXHAvQI6YudGKw0TsCxKftJ3
	 Jj//WhVftdr/mgE7RegnLbKAlDfoeQQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1760102652; x=1760707452;
	d=berginkonsult.se; s=ed1;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:to:subject:
	 mime-version:date:message-id:from;
	bh=AOaU9zqWfqdGyDYZnWamF4lHruRL90AgJekIWHuFt9Y=;
	b=OmVeb19QC7unNApg/2Xn9esRetAmUCKOIZnqqBcR6T7qT7hBz0j5d4ddDY/uYC5qrnIZFmy9O/RLA
	 mabn21ZCw==
X-HalOne-ID: 6835f658-a5dc-11f0-af16-494313b7f784
Received: from [192.168.100.34] (c83-191-168-223.bredband.tele2.se [83.191.168.223])
	by mailrelay6.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id 6835f658-a5dc-11f0-af16-494313b7f784;
	Fri, 10 Oct 2025 13:24:11 +0000 (UTC)
Message-ID: <c6ddb3a2-867e-4f6b-8b88-aa069dd2ad7b@berginkonsult.se>
Date: Fri, 10 Oct 2025 15:24:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] image class got error from copyhardlinktree/tar during
 migration to whinlatter
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
References: <174d063a-9e3e-4aab-9d1d-70cd7095a681@berginkonsult.se>
 <c1382972-87dd-4d24-bfc0-9e96b867a177@gmail.com>
Content-Language: en-US, sv-SE
From: Peter Bergin <peter@berginkonsult.se>
In-Reply-To: <c1382972-87dd-4d24-bfc0-9e96b867a177@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:24:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65918

Many thanks Gyorgy!!

Adding PSEUDO_INCLUDE_PATHS to my bblcass solved the issue.

Best regards,
/Peter

On 10/10/25 14:24, Gyorgy Sarvari via lists.yoctoproject.org wrote:
> On 10/10/25 13:54, Peter Bergin via lists.yoctoproject.org wrote:
>> Hi,
>>
>> I'm working on uprev for a layer from scarthgap to whinlatter. In the
>> layer there is a custom image class that will take part om the rootfs
>> and make a separate image of. First step is to copy out that part to a
>> separate directory before creating an image file. The function is using
>> copyhardlinktree from 'meta/lib/oe/path.py'. It has worked well in
>> scarthgap but when building in whinlatter I get this error:
>>
>>                0106:
>>                0107:    _from =
>> os.path.realpath(os.path.join(d.getVar("IMAGE_ROOTFS"), "data"))
>>                0108:    _to =
>> os.path.realpath(os.path.join(d.getVar("WORKDIR"), "data.copy.%s" %
>> d.getVar('BB_CURRENTTASK')))
>>                0109:
>>            *** 0110:    copyhardlinktree(_from, _to)
>>                0111:
>>           ...
>>           Subprocess output:
>>           tar: ./mydir: Cannot change ownership to uid 0, gid 0: Invalid
>> argument
>>           tar: .: Cannot change ownership to uid 0, gid 0: Invalid argument
>>           tar: Exiting with failure status due to previous errors
>>
>> The directory 'mydir' is owned by root user in my target file system. I
>> would like to check if someone have seen similar things when going to
>> newer versions? Or if someone have an idea about the root cause? I did a
>> workaround and used 'shutil.copytree' to avoid this error but is curios
>> to find the root cause and understand why it fails.
>>
> One idea:
>
> There was one change recently, regarding how pseudo handles which paths
> to handle[1].
>
> In Scarthgap, everything is handled, unless it is explicitly excluded
> with the PSEUDO_IGNORE_PATHS variable. ${WORKDIR} was not excluded by
> default, and pseudo kept track of the permissions (except for the
> specific subfolders that were excluded).
>
> Currently nothing is handled, unless it is explicitly included with the
> PSEUDO_INCLUDE_PATHS - and ${WORKDIR} is not included by default, so
> pseudo doesn't keep track of it currently (except for he named subfolders).
>
> I would try adding something like 'PSUEDO_INCLUDE_PATHS +=
> "${WORKDIR}/data.copy"' or similar in local.conf, and see if it helps.
>
> [1]:
> https://git.openembedded.org/openembedded-core/commit/meta/conf/bitbake.conf?id=2502da81709f25de499277b28d33c915638c45f6
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65917): https://lists.yoctoproject.org/g/yocto/message/65917
> Mute This Topic: https://lists.yoctoproject.org/mt/115687401/3617552
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [peter@berginkonsult.se]
> -=-=-=-=-=-=-=-=-=-=-=-
>

