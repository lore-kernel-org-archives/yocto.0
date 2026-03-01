Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED48FD005A
	for <webhook@archiver.kernel.org>; Sun,  1 Mar 2026 10:01:25 +0000 (UTC)
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.135596.1772359282332846102
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Mar 2026 02:01:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rootcommit.com header.s=hostingermail-a header.b=nFe+0P7g;
 spf=pass (domain: rootcommit.com, ip: 23.83.209.14, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 844C24C2673;
	Sun, 01 Mar 2026 10:01:21 +0000 (UTC)
Received: from de-fra-smtpout8.hostinger.io (100-107-38-197.trex-nlb.outbound.svc.cluster.local [100.107.38.197])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 393C04C262E;
	Sun, 01 Mar 2026 10:01:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1772359281;
	b=ZQgmCmk4YGl6kA/zIX74anYLVJB0EKQ+jKtWATSO5kqn5kf1KqOM80d/u7P5p0T3IotcJM
	cx0g0o6nZzKX223VZO2tvwA7N8s6BhlieygiTdcCFapsph2uHj7fGYOW1WpDIIlJHgQUiD
	GplnbZAsCiwwAmX2sk0BurXUwP5zc20gcXx/SS/rn9agO8Ckz0kQTzBQ6e1q5aTJHAFwKo
	1qbga7ATSeBMC7+nnNoV2HUsWGBexEIyjMty1MQUrIt27SO3gULkDkCxhjcp+tldj+0M9+
	JRsViLNanfp0EGq+9Ib3gIZxBbCM6diXQikjxQHd4TSYeDu9Tbde5Y//c0zlzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1772359281;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tLtMpG5Iq5j8Tr6sB6kdr1yquLkspU9w0XhIo2qAZCU=;
	b=rngGr+p9H0CbNyVCvlrroJFauI18HffxghFHJ4DR6oFhykmxOVTpcPGDwIMPPONHYhiMSC
	PbPwAxl8QbDCW5RtMZ8ySrsU+CBairqq8isKEpmL0ZJUeTrU8cIUPyXFovpH6g/wmPqcCR
	VZ6eAH90X6MSDv91Mv/EDAfogwAyM13naqyj72E+UCqHoCL9ADkREiLyrrCU8dhjAxndd3
	QsWJM2NAxhfDYdrXIbM/3jSpSTIL4tLGnrikD6hO68WpC+Fv9YSQ3pxN/yp5vr6FVm2emz
	Zl9G8XOt49nkMwgA3ejrD1riLFYt5Yh/5NjgIr5gvACQ+2HR6rEm1xymXVDG0g==
ARC-Authentication-Results: i=1;
	rspamd-6fbd58c58b-95lxz;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Snatch-Wide-Eyed: 761944170ad5c25d_1772359281272_675755665
X-MC-Loop-Signature: 1772359281272:1552737579
X-MC-Ingress-Time: 1772359281272
Received: from de-fra-smtpout8.hostinger.io (de-fra-smtpout8.hostinger.io
 [148.222.55.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.107.38.197 (trex/7.1.3);
	Sun, 01 Mar 2026 10:01:21 +0000
Received: from [IPV6:2001:861:4450:d360:ce17:18d4:cd7d:85d7] (unknown [IPv6:2001:861:4450:d360:ce17:18d4:cd7d:85d7])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fNyJG1VRhz3wh9;
	Sun,  1 Mar 2026 10:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1772359278;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tLtMpG5Iq5j8Tr6sB6kdr1yquLkspU9w0XhIo2qAZCU=;
	b=nFe+0P7gxZXxpz1hgIK8TY3bTT6f3vBkC06nmDa3wtDjybZ2+COSOFaAkJYMgOZKLOp1t6
	eGV5moaO8IuaGF7y8GOWlW4asHcqELSVMMmBk4pifhPGWsuHmEBllPvbWWYugq8LYN/+h+
	MCv0Mu769b5rCKWCQ5txe02/cxC9D0o8W1gKXsGb1wXBAPy1xU6/CTaqrgQf7uKejThxLg
	A2O2BJ3ksfl7oZzkZ8wcILJOPLz5ZTO8d/Z/xMHb+bAL8QtA7/CZd2cBzUuqmU+v0ykbJO
	9eM5cIVhVuKyqJd4ruLGeGjXk8QuWMV/JyEI+XAbeVVhug620px8b29CbSs4mw==
Message-ID: <0ef10528-815f-466e-86bf-076c6ba64c14@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, Vyacheslav Yurkov <uvv.mail@gmail.com>
Subject: Re: [yocto] FIT image verification not working on imx8mm
To: Francesco Valla <francesco@valla.it>, yocto@lists.yoctoproject.org,
 Quentin Schulz <quentin.schulz@cherry.de>
References: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
 <aZtpkyLqvFf2SPZr@bywater>
 <1ceab5c2-fbf9-4d26-b052-48058c1c260d@rootcommit.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <1ceab5c2-fbf9-4d26-b052-48058c1c260d@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun,  1 Mar 2026 10:01:18 +0000 (UTC)
X-CM-Envelope: MS4xfJ0kvmeLgfdIP8+Lq/VZQkXv0C+lOOIpKyuEEmYch5GkpWsTOqHSglIc850wzHOI3Q9fTn3oEoaGOy4ImyY8aJBF6xlxBSuIx7tD6Gh00L5vBxu3JvIY Kh6DhIWu1gybhG/xtJx4MHYMCWrk4LKetK2v9TxXos+hCwSzrX2VQbybybtFo017HvWvUobmHUObhqGAbM7HQSXsVQzluuQ3ca//i4mQzCV1CPdOiZbX3e33 F+1rnIVx2E0p9HclPVL23akIOvkxn4NPF4mBN20KyZhNrzqosgoarpmZHT9k+HsXLWRzIRBj7ijiIcl24B8qxlI0jDdwhcGMVj4QkBpacbQYgxYOwQ4VeEqA CbmUbc+3gcHWoDIu30+PxbhaFyPRffOrinMPkPuCmJyv/0s/AFpZMt6s/ZJTPXZ/p9ZvYt/3+o4ij+x2NOlPlFZ+fFw+c4hvfIHsXsJwm8mPnTY15jqx5jc/ /AIVKj4ZOdCfjz4k
X-CM-Analysis: v=2.4 cv=Ceda56rl c=1 sm=1 tr=0 ts=69a40e6e a=tYUyu9Su+O64wtbcsxDTPw==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dzjm_1pYAAAA:20 a=NEAV23lmAAAA:8 a=d70CFdQeAAAA:8 a=ifcc_kLnMWByLGxPfr0A:9 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-AuthUser: michael.opdenacker@rootcommit.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Mar 2026 10:01:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66286

Hi Francesco, Quentin,

Thanks again for your help with this issue!

Some updates...

On 2/24/26 7:06 PM, Michael Opdenacker wrote:
> Hi Francesco
>
> Thanks for having a look at this issue and the corresponding code, 
> much appreciated!
>
> On 2/22/26 11:33 PM, Francesco Valla wrote:
>>
>> If it is 1 (as it might be, as meta-freescale sets it to 1 for imx8m*
>> SoCs if the bootloader is not u-boot-imx [0]), the imx-boot container
>> is generated by U-Boot using binman, which however iis / should not be
>> able to use the u-boot.dtb binary with the signature. The injection of
>> the signature in fact happens on the u-boot.dtb binary only after this
>> has been deployed [1], which in this case would be *after* the imx-boot
>> blob has been generated.


What you found out really helped, and I ultimately found that I'm 
supported to use the meta-toradex-security layer [1] which addresses 
this need [2], along with other aspects of secure boot.

So, I tried to use its "main" branch together with the latest OE layers. 
However, it turns out that Toradex only maintains their 
"scarthgap-7.x.y" branch at the moment [3]. So, I'll switch back to my 
original project on Scarthgap. If I understood correctly, I will have to:

- Inherit the "tdx-signed" global class
- Add this to my U-Boot recipe:

require recipes-bsp/u-boot/u-boot-fit-signature.inc

See 
https://github.com/toradex/meta-toradex-security/blob/scarthgap-7.x.y/recipes-bsp/u-boot/u-boot-fit-signature.inc 
for details.

This also automatically adds the needed config options to U-Boot:
https://github.com/toradex/meta-toradex-security/blob/scarthgap-7.x.y/recipes-bsp/u-boot/files/fit-signature.cfg

This corresponds to what you suggested, Quentin :)

I'll keep you posted.
Thanks again
Michael.

[1] https://github.com/toradex/meta-toradex-security
[2] 
https://github.com/toradex/meta-toradex-security/blob/scarthgap-7.x.y/docs/README-secure-boot.md
[3] https://github.com/toradex/meta-toradex-security/pull/161

-- 
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


