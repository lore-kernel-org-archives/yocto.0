Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B9A2E00D98; Sun, 18 Sep 2016 14:22:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E7EE00D8A
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 14:22:07 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 21so4808480pfy.1
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 14:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=Z1uqfD+x+Qz2AWFN1r9UsI/yzhVfPOhkZdKgFvgOD3g=;
	b=NWI0r+svO8JWifidTqWktilRGE3b11kowXdCAmAUEJgBP+XHSNznVkpMeRda3JhTOq
	jUDQU32gAeQsA5az48dcODZ3MA4x4C3gscedS72xFPu+J12hsWKgtMKygpi5CfhioV9T
	JleZ2zl8A2S5s72Ghm/uxyKkCCg+Hk9vxghAqWmNGy8qZOacoQ0p68mm7DU0tlD5eN/0
	kKjGq5v7rit6sADclOkkSXPVYXIEkPuz9z9FcWH7uaMSHsleNkl9oxxJU2vOMoTbhtwv
	D1W3zs9dQ36/u+6kl7f2j0LKdmlKNjUMEZigkX5PM4H60UOPJQmQZ8lWrhEqVIogs/zj
	6l5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Z1uqfD+x+Qz2AWFN1r9UsI/yzhVfPOhkZdKgFvgOD3g=;
	b=PCNfGKWts9FGFm8Qb7LS1gcT1r5GHBcPwFM2wVCB4E51lrasGoRT7sLQnknQzTosmc
	EPlvjDC6n9Crt3K0rrByXGZw+kvGfn85fEPwxfo4yy7Us36kNsAJiEzHDyEVv3M20iL7
	86BcKNntmWtLL0TSzsx7amyWh3O+7jl9Bhar7FI2t8PGxZkjOe+ayYhG6U38KudMsEOR
	0Km2ClAERcwlKdWtTmc5bJdLb6gokEIWi3kQcVDdFvWkDzjadTilQeTLjTMH6IqXyRPv
	VJ/1b4H69EapFuyeSGLTBurpVKHUdKbTxWlbHch0pQH7OTlBSwWl0cRGzuZ60rOKG0ie
	zq3A==
X-Gm-Message-State: AE9vXwPstz7DqjcEjwvRU4fejE15A/a4oRGc2sGEiJI9zYplGdwvXncvcRHnG7U4Q5ATbg==
X-Received: by 10.98.98.193 with SMTP id w184mr41243654pfb.120.1474233727452; 
	Sun, 18 Sep 2016 14:22:07 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:64bb:faf9:2b9d:369a?
	([2601:202:4001:9ea0:64bb:faf9:2b9d:369a])
	by smtp.gmail.com with ESMTPSA id
	p74sm66140968pfk.68.2016.09.18.14.22.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Sep 2016 14:22:06 -0700 (PDT)
To: Joshua Lock <joshua.g.lock@linux.intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>, yocto@yoctoproject.org
References: <1474002500-29602-1-git-send-email-tracy.graydon@intel.com>
	<1474027656.2923.0.camel@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <c463add6-4cc0-d7a6-71fe-73452af2bfce@gmail.com>
Date: Sun, 18 Sep 2016 14:22:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1474027656.2923.0.camel@linux.intel.com>
Subject: Re: [yocto-autobuilder][PATCH] /buildset-config.controller/eclipse-plugin-*
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
X-List-Received-Date: Sun, 18 Sep 2016 21:22:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Are these eclipse  versions supported by Krogoth or Jethro?

- armin

On 09/16/2016 05:07 AM, Joshua Lock wrote:
> On Thu, 2016-09-15 at 22:08 -0700, Graydon, Tracy wrote:
>> We are no longer supporting kepler or luna. Remove the build set for
>> those and
>> remove luna from yoctoAB.conf.
> Pushed to master, thanks!
>
>> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
>> ---
>>   buildset-config.controller/eclipse-plugin-kepler.conf | 10 -------
>> ---
>>   buildset-config.controller/eclipse-plugin-luna.conf   | 11 -------
>> ----
>>   buildset-config.controller/yoctoAB.conf               |  1 -
>>   3 files changed, 22 deletions(-)
>>   delete mode 100644 buildset-config.controller/eclipse-plugin-
>> kepler.conf
>>   delete mode 100644 buildset-config.controller/eclipse-plugin-
>> luna.conf
>>
>> diff --git a/buildset-config.controller/eclipse-plugin-kepler.conf
>> b/buildset-config.controller/eclipse-plugin-kepler.conf
>> deleted file mode 100644
>> index 9948852..0000000
>> --- a/buildset-config.controller/eclipse-plugin-kepler.conf
>> +++ /dev/null
>> @@ -1,10 +0,0 @@
>> -[eclipse-plugin-kepler]
>> -builders: 'example-worker'
>> -repos: [{'eclipse-poky-kepler':
>> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>> -             'branch':'kepler-master'}}]
>> -steps: [{'SetDest':{}},
>> -        {'CheckOutLayers': {}},
>> -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
>> kepler'}},
>> -        {'PublishLayerTarballs':{}},
>> -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
>> kepler']}}]
>> diff --git a/buildset-config.controller/eclipse-plugin-luna.conf
>> b/buildset-config.controller/eclipse-plugin-luna.conf
>> deleted file mode 100644
>> index d745af3..0000000
>> --- a/buildset-config.controller/eclipse-plugin-luna.conf
>> +++ /dev/null
>> @@ -1,11 +0,0 @@
>> -[eclipse-plugin-luna]
>> -builders: 'example-worker'
>> -repos: [{'eclipse-poky-luna':
>> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>> -             'branch':'luna-master' }}]
>> -steps: [{'SetDest':{}},
>> -        {'CheckOutLayers': {}},
>> -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-luna'}},
>> -        {'PublishLayerTarballs':{}},
>> -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
>> luna']}}]
>> -
>> diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-
>> config.controller/yoctoAB.conf
>> index fe9750b..309a5ab 100644
>> --- a/buildset-config.controller/yoctoAB.conf
>> +++ b/buildset-config.controller/yoctoAB.conf
>> @@ -1,6 +1,5 @@
>>   [BuildSets]
>>   order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars',
>> -        'eclipse-plugin-luna',
>>           'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb',
>>           'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb',
>>           'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
>> -- 
>> 2.7.0
>>


