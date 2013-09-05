Return-Path: <jc@vtkloud.com>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCD0E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 02:07:18 -0700 (PDT)
Received: by mail-bk0-f46.google.com with SMTP id 6so616874bkj.19
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 02:07:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=GrhP+MQQkxlTOXicySDJhMMOGN8eKzrTgCUghXZlj7s=;
	b=iSC8I7sjf0DvRjrbE91xrS0B/FFqztNRLbibQGs3ZyS+hj15r966I5EFT8VA+YVDBu
	i4DnrvoKjV/tDMPSYi/Xt//ywc26ziPOo80V1qkzaWDVb8H0Ocre+cfgAyBh4HuRGdyg
	hsRiN38ebYOI5kBqu9EDQC0OS/hDyp5Gg/SaeWdWRXg8TQTiaAEoTXnkgkVbzblO2AVa
	ig5H9nUzbgHGOoeEyHMuifb7Hj2HMMdY+JvmfUakLVr7OB1slKCmcCKStGOMJ03whGII
	H/dW3mTqx3anN6XRf6cQ+0zUie24qtozFeVS1iiIrbokPtp4jw+/xPxOZuhJGeFXKuVW
	sB9A==
X-Gm-Message-State: ALoCoQl0p6dsenXLJF3+sHzyrVYBnQPdsIbLsCRttafjNLbCxXs9VftPQ41xfP+tvhvaC+8+0jOW
X-Received: by 10.205.14.197 with SMTP id pr5mr6157777bkb.25.1378372037449;
	Thu, 05 Sep 2013 02:07:17 -0700 (PDT)
Received: from [172.24.63.121] ([94.103.137.126])
	by mx.google.com with ESMTPSA id on10sm391862bkb.13.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 02:07:16 -0700 (PDT)
Message-ID: <522849C1.7050205@vtkloud.com>
Date: Thu, 05 Sep 2013 11:07:13 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <5227629A.5090505@vtkloud.com>
	<CANyK_8c=yXSFuaU7JT2i5PP7K=QfoVe0x62mh9Ax+KQk9shvVg@mail.gmail.com>
	<52283ED9.2070708@vtkloud.com> <2442307.vOx7EiO6Oc@helios>
In-Reply-To: <2442307.vOx7EiO6Oc@helios>
Cc: yocto@yoctoproject.org
Subject: Re: raspberry layer
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
X-List-Received-Date: Thu, 05 Sep 2013 09:07:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul

On 05/09/2013 10:28, Paul Eggleton wrote:
> Hi Jay,
>
> On Thursday 05 September 2013 10:20:41 JC wrote:
>> ERROR: ParseError at
>> /media/yocto/yocto/meta-openembedded/meta-oe/recipes-devtools/libgee/libgee.
>> inc:12: Could not inherit file classes/vala.bbclass
>> ERROR: Command execution failed: Exited with 1
>>
>>
>> If this is not something you get with a head checkout of poky,
>> meta-raspberrypi and meta-openembedded, I can retry a new fresh git
>> clone to test again...
> This looks to me like the branch you have checked out of meta-oe does not
> match up with the branch of poky. If you are using the "dylan" branch of poky
> you need to be using the "dylan" branch of meta-oe and meta-raspberrypi.
>

I re-checked out all of the gits with -b dylan, now the bitbake goes 
further.. Let's see where/if it fails :)

Thanks !!!

Jay



