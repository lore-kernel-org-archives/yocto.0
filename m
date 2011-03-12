Return-Path: <raj.khem@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 02CD34C80050
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 11:25:16 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so880909pxi.28
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 09:25:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=EaOVpBXR/vPXaE0AqaNcNzKpBm7mjib2qlCo187OJUI=;
	b=sc8MKl8AfAa3vqlJhelfxgURy87pSAVBDzKnz03E+wFGp7cmbv+qfhnyT5qY46ru3x
	f3esdtRRaaFYFZBhKxcieJ2TLr7TXPmupPzRa3/kSm30zhzoeYysEhS5dyaYnknXgQbO
	nknZf7e0SSZan/p11e42CWX7wPs3fDMUKVgGs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=Owt10h+qD9UhaxWeD2fmBF0G29Aj3xHlTcrEjyWCSnBDFGumF7QE3nnK/d1BAJYNl5
	8fBn7t6Yw1D4zjCCuUov6HNWN9cdAroTEgm3mtNtQfXj7et6aBqgMQGO3D1lvuTB9Jsu
	+MA6NYKTVpOBUh7v6FYr50qeH0kJDVBbKVNe4=
Received: by 10.142.151.4 with SMTP id y4mr8945246wfd.133.1299950715886;
	Sat, 12 Mar 2011 09:25:15 -0800 (PST)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id s41sm7237210wfc.3.2011.03.12.09.25.13
	(version=SSLv3 cipher=OTHER); Sat, 12 Mar 2011 09:25:14 -0800 (PST)
Message-ID: <4D7BAC70.5060401@gmail.com>
Date: Sat, 12 Mar 2011 09:25:04 -0800
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <AANLkTinC_Efgpq8s8QMYvjhmTfTaX-mQSzpafPp27iZh@mail.gmail.com>	<4D7B35CC.3070900@linux.intel.com>	<24F5F982-85A4-413E-BB66-55244E2701D7@dominion.thruhere.net>
	<4D7B9DB4.6070105@linux.intel.com>
In-Reply-To: <4D7B9DB4.6070105@linux.intel.com>
Subject: Re: Please add build ID to bugs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 12 Mar 2011 17:25:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 3/12/2011 8:22 AM, Darren Hart wrote:
>
>
> On 03/12/2011 01:12 AM, Koen Kooi wrote:
>>
>> Op 12 mrt 2011, om 09:58 heeft Darren Hart het volgende geschreven:
>>
>>> On 03/07/2011 11:05 AM, Jeff Osier-Mixon wrote:
>>>> Hi all
>>>>
>>>> I have added the following item to the Bugzilla guidelines:
>>>>
>>>> *IMPORTANT*: please include the build/commit ID as reported by BitBake,

so may be it should be termed as 'Build Configuration' instead
>>>
>>> s/BitBake/git/ I presume?
>>
>> I think he means this one:
>>
>> Build Configuration:
>> BB_VERSION = "1.13.0"
>> METADATA_BRANCH = "org.openembedded.dev"
>> METADATA_REVISION = "0671ad1"
>> TARGET_ARCH = "arm"
>> TARGET_OS = "linux-gnueabi"
>> MACHINE = "beagleboard"
>> DISTRO = "angstrom"
>> DISTRO_VERSION = "v20110312"
>> TARGET_FPU = "hard"
>>
>
> Ah, yes, that makes more sense.
>


