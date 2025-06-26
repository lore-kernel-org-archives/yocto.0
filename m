Return-Path: <ashie@clear-code.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50698C77B7F
	for <webhook@archiver.kernel.org>; Thu, 26 Jun 2025 08:12:41 +0000 (UTC)
Received: from mail.clear-code.com (mail.clear-code.com [153.126.203.179])
 by mx.groups.io with SMTP id smtpd.web10.3411.1750925555742701751
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jun 2025 01:12:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@clear-code.com header.s=default header.b=W8ttrYzZ;
 spf=pass (domain: clear-code.com, ip: 153.126.203.179, mailfrom: ashie@clear-code.com)
Received: from [IPV6:240f:104:fde7:1:327c:2296:65f4:4838] (unknown [IPv6:240f:104:fde7:1:327c:2296:65f4:4838])
	by mail.clear-code.com (Postfix) with ESMTPSA id 471966CB40E
	for <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 17:12:31 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.clear-code.com 471966CB40E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=clear-code.com;
	s=default; t=1750925551;
	bh=QoxDUAAtmk1XD1Jww5frvWGOj2voAyVHizm/7wakf4g=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=W8ttrYzZnRIPiPOEjFNqiz9P2Xmim4T7KQWphHfWWWFG4KMlHTA9iDOqHtrm22HbJ
	 c9WAhNcwnIWcQILNaNvqMQjSlOG2w2o/2OXuzDNtaccH3rW8HPOtpl+HiVsVWHuyuQ
	 xGWMZFdinh0v8IzrJ5/KY8ZiHbWKyNr5se1dSwCY=
Message-ID: <68dcffab-ef3f-4643-baab-7b5c8015b7a1@clear-code.com>
Date: Thu, 26 Jun 2025 17:13:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: yocto@lists.yoctoproject.org
References: <C42u.1750681341370467311.Q2We@lists.yoctoproject.org>
From: Takuro Ashie <ashie@clear-code.com>
Content-Language: en-US
Autocrypt: addr=ashie@clear-code.com; keydata=
 xjMEYtYYFhYJKwYBBAHaRw8BAQdAziKfZS7O6rOpUNL17C32vnGBMsc1zS7ivA3Usyn5VgzN
 I1Rha3VybyBBc2hpZSA8YXNoaWVAY2xlYXItY29kZS5jb20+wpAEExYIADgWIQSXCf+R8K1p
 +5Wm2h5i6kZhv4sNSQUCYtYYFgIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBi6kZh
 v4sNSRgVAP96vWSpnCr900XPA5BnRZCth42U3PvAbqeS4Wf30zXnnQEA+kiykMUUKPl2mV9A
 fxAT2d2ic9M4BfgpKBmi16O8XA/OOARi1hgWEgorBgEEAZdVAQUBAQdAMgdHtdkBTlRVpiRc
 G7IAPw4AMCxBa7TyEDRaI59H0ggDAQgHwngEGBYIACAWIQSXCf+R8K1p+5Wm2h5i6kZhv4sN
 SQUCYtYYFgIbDAAKCRBi6kZhv4sNSYCxAP0YOCKnW7ymXf3pNjD2ofVu74/E+8qHub7TqP81
 Litb9AEAm4TS7LKVmhquEwBFt8yXumIbd4NQSy4Uqh4nbY0PTwg=
In-Reply-To: <C42u.1750681341370467311.Q2We@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Rspamd-Queue-Id: 471966CB40E
X-Rspamd-Server: mail.clear-code.com
X-Spamd-Result: default: False [-0.10 / 999.00];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[yoctoproject.org:server fail];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2516, ipnet:240f:100::/24, country:JP];
	RSPAMD_EMAILBL_FAIL(0.00)[ashie.clear-code.com:server fail];
	RCVD_COUNT_ZERO(0.00)[0];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Jun 2025 08:12:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65549

Hi.

On 2025/06/23 21:22, matteo.orlandini via lists.yoctoproject.org wrote:
> I'm searching for a virtual keyboard to use with Yocto Scarthgap and my=
 Python 3.12 application that uses GTK 3. I'm using weston version 12.0.4=
 and I saw that weston keyboard is not compatible with GTK 3.

You can use weston-keyboard with GTK3 on Weston if you install an appropr=
iate IM
module for GTK3 that support text-input-v1 protocol of Wayland.

We are developing such module:

 =C2=A0 https://gitlab.com/clear-code/gtk-wayland-textinputv1

We have also a yocto recipe for it:

https://gitlab.com/clear-code/meta-inputmethod/-/tree/master/recipes-gnom=
e/gtk-wayland-textinputv1

Although it's not support scarthgap yet, not so difficult to port.


> I tried to compile squeekboard but I got this error:

Even if you finally success to build it, probably you can not use it on y=
our system.
It requires some wayland protocols that aren't supported by Weston:
https://github.com/droidian/squeekboard?tab=3Dreadme-ov-file#what-the-com=
positor-has-to-support


We are also developing a virtual keyboad software for Wayland (mainly for=
 Weston):

 =C2=A0 https://github.com/clear-code/fcitx5-virtualkeyboard-ui

Unfortunately we don't publish the yocto recipe for it in some reason.
But creating it based on above meta-inputmethod layer isn't so difficult.

Regards,

--
Takuro Ashie <ashie@clear-code.com>


