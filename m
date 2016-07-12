Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C267E00CC5; Tue, 12 Jul 2016 07:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45EAFE007B7
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 07:13:17 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id g202so1164401pfb.1
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 07:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=H6InRBjFlaIM4+l7N3I9w3f9ybpRq2DWjB2SDZIU7JI=;
	b=w+bJOhjiomnUY1o7suXqFVQOVtSazbOI9d874X4BMeUUpNqhAu7+Ga2DYdC01oG/Ul
	QaOsJpcPJiEuwYTGbCNMrw70CQna0hzPA+Z8mgPE1+cQ9Xr1LYbK9gkvGq7q3W3+iQyJ
	DL4pjZyQk6yHrdxIO5on5zJfHg+uFGJQAVjT+KbrdB8NF0b8Ja5+3G8+F57/r4DejQMZ
	6W5rMEn0/JQmrbURs+3JX+9/h2bvTrjkrShibkr1KZUrKkFFK1dc5fhRlLt6QhaMD025
	ZkG3WQVk7uhZqTIDUbpn6KE6Eed7q961hDfVnXWpiACen94aQ6woAk7sfaw3mw0p2EhZ
	vPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=H6InRBjFlaIM4+l7N3I9w3f9ybpRq2DWjB2SDZIU7JI=;
	b=lMfELo3umY42ij5134kMFOpZHiSRNG1m2a9hY711YGU7Kz4+nAqKvwt+qI9peYqJvU
	2ZXq2saprm2VARuVjcxJTsq3jcS3QrhCs26PCqOo0h1pzQRRAuxPfDqlbxc7u0ukk8vO
	DyZRn/E83zO12bHPRGeCy2LzDX7axaAWoZFYX7EiTWShFo8rdT6hgTmN9J7y5oM2l6Iq
	28klXI4B4ouoCvxf+GXHS2sBu1eV4+YN0zPIvla7ZIVPLnBpSySt1/X9J6KOuRoyMQ5c
	hRqPHx4LOXglWZap5bUR0glOvPdllX+GYeqoaisOc98K8k85LJLW1SzDxK8ucwURK88Y
	ddDQ==
X-Gm-Message-State: ALyK8tKv9GcI6xu6yvRkwtcBAcXyhUDooRSTWFXteQMULYz/0JsjtPRObYPogd6og38tvg==
X-Received: by 10.98.83.1 with SMTP id h1mr9988488pfb.78.1468332797520;
	Tue, 12 Jul 2016 07:13:17 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:344d:d49:bd5b:9177?
	([2601:202:4001:9ea0:344d:d49:bd5b:9177])
	by smtp.gmail.com with ESMTPSA id 5sm6037289pac.34.2016.07.12.07.13.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Jul 2016 07:13:16 -0700 (PDT)
To: =?UTF-8?Q?Dominic_Sacr=c3=a9?= <dominic.sacre@gmx.de>,
	"Burton, Ross" <ross.burton@intel.com>,
	"Esponde, Joel" <Joel.Esponde@honeywell.com>
References: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
	<CAJTo0LZaU8AOSMe6k9whe=_A6hYgf8Lg1MLmUFs=2SXxypKtGA@mail.gmail.com>
	<5784DE88.3060605@gmx.de>
From: akuster808 <akuster808@gmail.com>
Message-ID: <5784FAFA.1070501@gmail.com>
Date: Tue, 12 Jul 2016 07:13:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <5784DE88.3060605@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: backport of a fix in master to krogoth
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
X-List-Received-Date: Tue, 12 Jul 2016 14:13:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 07/12/2016 05:11 AM, Dominic Sacré wrote:
> On 2016-07-12 11:45, Burton, Ross wrote:
>> On 12 July 2016 at 10:03, Esponde, Joel <Joel.Esponde@honeywell.com
>>      http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=52d130d9e9735af569f018fc9161a54ed198d2d4____
>>
>>      This fix could perfectly apply to krogoth too.____
>>
>>      __ __
>>
>>      Is there so a plan to backport it to krogoth?
>>
>>
>> Certainly.  The fastest way for this to happen would be for you to
>> verify that it applies and works in krogoth and send the patch yourself
>> (with [krogoth] in the patch subject so the relevant maintainer spots it).
> The patch works fine with krogoth, and I originally sent it with both
> master and krogoth in the subject line:
>
> https://patchwork.openembedded.org/patch/123485/
>
> Should I resend the patch for krogoth?

Nay. I got it. Its in my patch bundle but can not see it for some odd 
reason.

I just pulled it into akuster/krogoth-next.

thanks for the reminder.
- armin

>
>
> Dominic


