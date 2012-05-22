Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6652E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 11:25:06 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga11.intel.com with ESMTP/TLS/RC4-MD5; 22 May 2012 11:25:06 -0700
Received: by dano14 with SMTP id o14so8671795dan.25
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 11:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=jUFbj1kDIs9kPz8xb00ftpihjx7vqJ0Gffo//ARap/o=;
	b=jRUsubP7FnGlfiJ6lDFNrMNusOHFL1isSNhUm9Q3KqPq7B7HSt7VPxVrOFeTtoY43J
	jVsyUdnoBUSmTTgM4YGcBC5f8trABiyJVQIOsES+rhgIYq/+5VDoca0b1sngb4ESA5KS
	oB5VC/Pwe7be6u7+TDbNLw2u/3HKtsCW1msqCi0JHmRp5YKIjf0x0oBWOsiaJb1WxWCo
	N2vdZHbZrMlEqpjlRbAmUoGnZtFaCtD8jcUInR+RwzppBsbIK7T2hIgEQPkAeHSIQsn8
	TKJwjhQAk83Y7tfEsA5WqKXsz84K02TgRUBe4FnGc29X71vgYsR0JeKfo98QjlZeeb+/
	rwBw==
Received: by 10.68.196.201 with SMTP id io9mr993629pbc.126.1337711106106;
	Tue, 22 May 2012 11:25:06 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id x1sm27450615pbp.50.2012.05.22.11.25.04
	(version=SSLv3 cipher=OTHER); Tue, 22 May 2012 11:25:05 -0700 (PDT)
Message-ID: <4FBBDA04.7020600@intel.com>
Date: Tue, 22 May 2012 11:25:08 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FBB7BDE.4090008@gmail.com>
	<CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
	<CANFv2Ek7Fim1tDVQcxu99GL0jriOFo=_zHCz-b7BUACXfjwyng@mail.gmail.com>
	<4FBBC712.404@intel.com>
	<CANFv2EnvW6E_MfQ7FM8gOEo19qz1ACA57brMTMedUqkxo-DcLQ@mail.gmail.com>
	<4FBBD014.2060407@intel.com> <4FBBD0B5.5020207@gmail.com>
In-Reply-To: <4FBBD0B5.5020207@gmail.com>
X-Gm-Message-State: ALoCoQlAsAyQackb8OFnpQI8hXlrXVEQ0Fxro7qpfLiyOwcV1Pg7LB43UYbKFGc27FY9HfUhfT89
Subject: Re: runqemu qemux86
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
X-List-Received-Date: Tue, 22 May 2012 18:25:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2012 10:45 AM, jfabernathy wrote:
>>> https://bugzilla.yoctoproject.__org/show_bug.cgi?id=2329
>>> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=2329>
>>>
>>> Scott
>>>
>>> So if I read this right, I don't need any route or bridge commands to
>>> make this work. If the bug gets fixed runqemu qemux86 should setup the
>>> environment correctly so the web-webkit should get out to the internet
>>> via the host machine connection?
>>> JIm A
>>
>> Correct.
>>
>> I'm hesitant to say this, but I'm hoping to have the bug fixed and
>> patch submitted by the end of this week. Hopefully I haven't just
>> jinxed myself. :)
>>
>
> I did try it out on core-image-minimal and I can ping anything I have
> the IP for. Not sure how you get the DNS connections working in qeum.

Since we use a static IP configuration for the QEMU sessions, 
/etc/resolv.conf isn't populated with a nameserver. If you enter one, it 
should work.

I'm not sure if there is something we can/should use as a default DNS 
setup that would work for all our end users. OpenDNS? Google's nameservers?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

