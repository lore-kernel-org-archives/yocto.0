Received: from mail.koansoftware.com (mail.koansoftware.com [178.79.174.16])
 by mx.groups.io with SMTP id smtpd.web12.7311.1574702298442048652
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 09:18:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: koansoftware.com, ip: 178.79.174.16, mailfrom: m.salvini@koansoftware.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.koansoftware.com (Postfix) with ESMTP id 547523E980
	for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2019 18:18:17 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.koansoftware.com ([127.0.0.1])
	by localhost (mail.koansoftware.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AWBrYuoCAPTp for <yocto@lists.yoctoproject.org>;
	Mon, 25 Nov 2019 18:18:15 +0100 (CET)
Subject: Re: [yocto] Yocto build to add root password
To: yocto@lists.yoctoproject.org
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
 <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com>
From: "Mauro" <m.salvini@koansoftware.com>
Message-ID: <cb99f223-9a19-3c88-b1a3-e67d6b7a6654@koansoftware.com>
Date: Mon, 25 Nov 2019 18:18:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bc70cb07-37c8-3078-7c02-d7be487035fd@ibeeto.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 25/11/19 17:24, Rudolf J Streif wrote:
> Hi,
> 
> That's done via the extrausers class in an image recipe. Add this to 
> your image recipe:
> 
>  >>>>>>
> inherit extrausers
> 
> ROOT_PASSWORD = "secret"
> 
> EXTRA_USERS_PARAMS = "usermod -p `openssl passwd ${ROOT_PASSWORD}` root;"
> 
> <<<<<<
> 
> Make sure you use the backticks (`).
> 
> :rjs
> 
> On 11/23/19 2:25 PM, JH wrote:
> 
>> Hi,
>>
>> I built a Yocto image and I could log into the root without password,
>> how could I set up the Yocto build in a receipt to set password for
>> logging?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>

Hi,

pay attention that "openssl passwd ${ROOT_PASSWORD}" command handles 
only passwords up to 8 characters (the extra characters will be 
truncated and the generated hash is for the first eight).

If you want to use more than 8 characters in the password, use another 
password algorithm instead of the default one. You can see other 
supported algorithms typing "openssl help passwd".

For example, command could become

     openssl passwd -6 ${ROOT_PASSWORD}


Regards

-- 
Mauro Salvini | KOAN sas | Bergamo - Italia
embedded software engineering
Phone: +39 035-255235
http://KoanSoftware.com
