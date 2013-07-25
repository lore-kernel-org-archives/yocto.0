Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 415A0E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 17:55:36 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id bg4so1312057pad.18
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 17:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=ns4HIxg+UCaFDNKBKZK4YUEVzYIr35EmTsp5mXUrbpw=;
	b=mFX4BoZxYfTajb60/2LilVr5dpea4yaWT+dh1+Rch4u0To5LIK00OuTGZSb36xJ9PY
	ZP04PEeBqVdaKoR/C5Y83Yw7q6l5j+/pQAh/VEw/4g98MBz/4zm4YdfnF4voRfOt+W0C
	wxoddCQkqrbeRvSNQwLKdohze3qL0MbRTf6VgaBh860RfiYS8FfZwXwIB8/yk2HU2j7u
	eeTiACyfiKgWogAdL4Uiz1M1MX92JMcOFpDTXx36aua1hRFLJCQSH9F4+8QvQZ9bZ+IY
	bEiz11MLR+e+05O49kQvkn+8JTUkTQRnwe2CPWfEj/+jf8s8A2hVHRhalcTqxR1u/rKA
	BxPw==
X-Received: by 10.66.246.66 with SMTP id xu2mr46520229pac.134.1374713735813;
	Wed, 24 Jul 2013 17:55:35 -0700 (PDT)
Received: from krys-red.trunet.local ([210.48.94.225])
	by mx.google.com with ESMTPSA id
	qh10sm10607508pbb.33.2013.07.24.17.55.33 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 24 Jul 2013 17:55:34 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <51F07782.9070107@gna.org>
Date: Thu, 25 Jul 2013 12:55:30 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
References: <51EF4137.80107@gna.org> <51EF82D3.1010305@linux.intel.com>
In-Reply-To: <51EF82D3.1010305@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Generating an image with systemd and connman
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
X-List-Received-Date: Thu, 25 Jul 2013 00:55:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/07/13 19:31, Jukka Rissanen wrote:
> Hi Christian,
>
> On 24.07.2013 05:51, Christian Gagneraud wrote:
>> Hi there,
>>
>> I have successfully generated Dylan core-image-minimal with the meta-ti
>> layer. I would like to know what is the procedure to select systemd for
>> the init process and connman as the network manager.
>>
>> It seems to me that systemd can be selected using EXTRA_IMAGE_FEATURES
>> from local.conf (at least with the poky distro)
>> The Yocto dev manual mention using DISTRO_FEATURES_append but it is
>> usable when creating a custom distro.
>
> I have
>
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = ""
> DISTRO_FEATURES_append = " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED="sysvinit"
>
> in my distro conf file and after that the generated system does only
> systemd. But I am creating a custom distro so I am not sure if these
> settings are any help for you.

Thanks, I might have to go this way at some point anyway.
Are you using the meta-systemd layer? If so, could you give me more 
details about your setup please?

Chris

>
>
> Cheers,
> Jukka
>


