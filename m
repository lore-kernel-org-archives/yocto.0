Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 041A9E007CE; Mon, 28 Jul 2014 17:29:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A94C9E00769
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 17:28:52 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id fp1so10784178pdb.13
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 17:28:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=pZ+lYBetlGxgpCuSccTYDVn1CtpP1vBWwRMtQcPQFLs=;
	b=inLMrykWYzJT0i4nb5amctUD+OuYYy/3CuZE68ZeNUmR97Y6jn7Nwg0STycGRIKM9a
	Lm6ttc6VhUz4g5WIw7SII1TgkRgofYh5tNC5zU6qUeXI2mp4fegyb/X2ZUIItybirJ1p
	uXvg1E5iHl+xeBY6tockTZFtJ5Z0bxazefYoei1h/JcKFuyydMXb50qSSm9pNsRx5bq6
	AUns5azNQjdU4H49X/Thtq8wLCHpQLoqszJnA1GCyy4neL0+NZyrbs/3M7zlyTekotyV
	IodvybV+KnWtXubo9QWPDM7PpffLh4VLvrzs2P+JTq+GFXiOkQ8/WYRBSTAOfZORkBRx
	p43g==
X-Gm-Message-State: ALoCoQkxLgIQkci9k22rk6gIQmYD547IFsErkrU3OsmiNUipKfWdca6Yvb71dsZAZea0OfRdK0Ce
X-Received: by 10.68.139.194 with SMTP id ra2mr41756313pbb.20.1406593731995;
	Mon, 28 Jul 2014 17:28:51 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:d0e4:20cd:a8cf:9a4a?
	([2601:c:9380:601:d0e4:20cd:a8cf:9a4a])
	by mx.google.com with ESMTPSA id
	eh4sm18899957pbc.79.2014.07.28.17.28.50 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Jul 2014 17:28:51 -0700 (PDT)
Message-ID: <53D6EAC1.2030802@mvista.com>
Date: Mon, 28 Jul 2014 17:28:49 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>, Khem Raj <raj.khem@gmail.com>
References: <53D2DE13.9010007@mvista.com>
	<CAMKF1son3T9fsuF9X0Px4hirfk7Ezguy4s5Zit6-0JvfmXDV5A@mail.gmail.com>
	<53D65F40.7010701@windriver.com>
In-Reply-To: <53D65F40.7010701@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] libpcap-ng
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
X-List-Received-Date: Tue, 29 Jul 2014 00:29:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 07/28/2014 07:33 AM, Mark Hatle wrote:
> On 7/25/14, 10:02 PM, Khem Raj wrote:
>> On Fri, Jul 25, 2014 at 3:45 PM, akuster <akuster@mvista.com> wrote:
>>> Meta-security and Meta-selinux both have libcap-ng. Instead of
>>> maintaining
>>> the same package in both places, can we get it into OE where libcap
>>> resides?
>>
>> I think at very least you can propose it for meta-oe if not or-core.

I think core libcap-ng recipe belongs in a common layer and not 
maintained in two places.

>> But I also wonder why meta-selinux is not a sub-layer under
>> meta-security,
>>
>
> meta-selinux existed first... no other reason.
>
>
> The last time I looked at meta-security (well over a year ago), it
> wasn't terribly useful.

Well when a security package like 'snort' and maybe others are in other 
locations, I can see why meta-security won't be very useful.

  It was just a random collection of
> security-like packages, some worked, some didn't.

Hopefully that will change.

- Armin

>
> If it has grown since then to be more of a cohesive set of packages,
> then meta-selinux being part of it may make sense.
>
> --Mark

