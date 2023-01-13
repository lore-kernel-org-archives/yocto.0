Return-Path: <cbing@cybernetics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B4D7C54EBD
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 17:51:27 +0000 (UTC)
Received: from mail.cybernetics.com (mail.cybernetics.com [72.215.153.18])
 by mx.groups.io with SMTP id smtpd.web10.95014.1673632280497488611
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 09:51:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cybernetics.com header.s=mail header.b=UBJRboTw;
 spf=pass (domain: cybernetics.com, ip: 72.215.153.18, mailfrom: btv1==377bec7b149==cbing@cybernetics.com)
X-ASG-Debug-ID: 1673632279-1cf43916c2432ec0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id GXhVHIGF4jh68ytY for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 12:51:19 -0500 (EST)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cybernetics.com; s=mail;
	bh=ygMhiym/xEIlYEX8WdhJx10LfsYkZv4D2zTPxHyIsfU=;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
	Content-Language:Subject:MIME-Version:Date:Message-ID; b=UBJRboTweXH+YU54yzyR
	O+CYlUylON2Z1TUnNaffsVDXNAZZlAJSeZODL5xoJhYnj0xzOtFYiJcEUJzH2HleFwjYsX1AkHG2A
	O9upcmHEWELeWdIC8UeCDtt8YrzWVvB96zXWkl0Fxg9TDRw4/3wc39w3nlDZRxYdEkqRWEfp2I=
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 7.1.1)
  with ESMTPS id 12415089 for yocto@lists.yoctoproject.org; Fri, 13 Jan 2023 12:51:19 -0500
Message-ID: <e7a89a4d-479f-8bc3-b773-f01ea3977f58@cybernetics.com>
Date: Fri, 13 Jan 2023 12:51:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto][langdale] dropbear recipe fails to parse without pam in
 DISTRO_FEATURES
Content-Language: en-US
X-ASG-Orig-Subj: Re: [yocto][langdale] dropbear recipe fails to parse without pam in
 DISTRO_FEATURES
To: yocto@lists.yoctoproject.org
References: <a91c44ce-038e-f36a-d831-59c659008b35@cybernetics.com>
 <CAMKF1socccTJ4p+vn9CUfw5PNkb6d3dXO8pOMHsRt2+pomz8xQ@mail.gmail.com>
From: Claude Bing <cbing@cybernetics.com>
In-Reply-To: <CAMKF1socccTJ4p+vn9CUfw5PNkb6d3dXO8pOMHsRt2+pomz8xQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1673632279
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 3363
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 17:51:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58982

Forgive the text wrapping, but modifying PAM_SRC_URI still yields the
same results. I don't want to take up too much of your time since we
have a workaround, but I figured you would want some feedback.


SRC_URI = "http://matt.ucc.asn.au/dropbear/releases/dropbear-${PV}.tar.bz2 \
           file://0001-urandom-xauth-changes-to-options.h.patch \
           file://init \
           file://dropbearkey.service \
           file://dropbear@.service \
           file://dropbear.socket \
           file://dropbear.default \
           ${@bb.utils.contains('DISTRO_FEATURES', 'pam',
'${PAM_SRC_URI}', '', d)} \
           ${@bb.utils.contains('PACKAGECONFIG', 'disable-weak-ciphers',
'file://dropbear-disable-weak-ciphers.patch', '', d)} \

file://0007-Fix-X11-build-failure-use-DROPBEAR_PRIO_LOWDELAY.patch"

SRC_URI[sha256sum] =
"3a038d2bbc02bf28bbdd20c012091f741a3ec5cbe460691811d714876aad75d1"

PAM_SRC_URI = "file://0005-dropbear-enable-pam.patch \
               file://0006-dropbear-configuration-file.patch \
               file://dropbear \
               "

-------------------

ERROR:
/home/*****/projects/yocto/poky-next/build-cyber-v/../meta/recipes-core/dropbear/dropbear_2022.82.bb:
Unable to get checksum for dropbear SRC_URI entry
0007-Fix-X11-build-failure-use-DROPBEAR_PRIO_LOWDELAY.patchfile: file
could not be found

On 1/13/23 12:11, Khem Raj wrote:
> On Fri, Jan 13, 2023 at 6:26 AM Claude Bing <cbing@cybernetics.com> wrote:
>>
>> Good day everyone.
>>
>> We are in the process of upgrading to langdale, and I ran across a small
>> problem when building dropbear. The order of external assets in SRC_URI
>> seems to cause an issue when PAM is not available in DISTRO_FEATURES.
>>
>> ERROR:
>> /home/****/yocto/poky-next/build-cyber-v/../meta/recipes-core/dropbear/dropbear_2022.82.bb:
>> Unable to get checksum for dropbear SRC_URI entry
>> 0007-Fix-X11-build-failure-use-DROPBEAR_PRIO_LOWDELAY.patchfile: file
>> could not be found
>>
>> When we move the following entry to the bottom of SRC_URI in
>> meta/recipes-core/dropbear/dropbear_2022.82.bb, the recipe parses
>> successfully:
>>
>> ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}
>>
>> Is this a good fix? Am I missing a larger issue?
> 
> try something like below it will remove the positional requirement.
> 
> --- a/meta/recipes-core/dropbear/dropbear_2022.83.bb
> +++ b/meta/recipes-core/dropbear/dropbear_2022.83.bb
> @@ -27,7 +27,8 @@ SRC_URI[sha256sum] =
> "bc5a121ffbc94b5171ad5ebe01be42746d50aa797c9549a4639894a167
> 
>  PAM_SRC_URI = "file://0005-dropbear-enable-pam.patch \
>                 file://0006-dropbear-configuration-file.patch \
> -               file://dropbear"
> +               file://dropbear \
> +               "
> 
>  PAM_PLUGINS = "libpam-runtime \
>     pam-plugin-deny \
> 
>>
>> --
>> Regards,
>>
>> Claude Bing
>>
>>
>>
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58980): https://lists.yoctoproject.org/g/yocto/message/58980
>> Mute This Topic: https://lists.yoctoproject.org/mt/96246470/4618432
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [cbing@cybernetics.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

