Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6BEFE006B7; Mon, 14 Jul 2014 12:21:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB27FE00524
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 12:20:56 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id fb1so5833947pad.14
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 12:20:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=mAgtknsNNexk5X+8VMUwGEnYbNUrcaWZwJM4OSU24+0=;
	b=cBTQSbCUj3xMw2v1stctUga/a2yR0qZhIdePTm5sj5kmmW6GF9sWVkezXD3o61kzqZ
	zffNDWdli/7xAq7RTWS7V4TMSVseBYRuBhj7l7ROGDywjJtzevCLyzoRStLEJ1VLyzFR
	1JqgozE69XUtANhKMlN1TEZuQujmHly/ln8oBp3Yub3VQdiKx2Vgoh0v7AzA/rHWYWZ7
	MzpgrpCsyv13QeQmBSdgvqGN3PQHUkWD1aZaxbDsMNLRCFlzGD0B8+itu9Q3rZW4ndQk
	FKiEPexb5PSIW98W+LVof7ZS9PPYPumSJRET5Ni4vbsKq1FDPQKgVJ/Ctglb5N2h2cr8
	Cidw==
X-Gm-Message-State: ALoCoQlJbIOqILoPTQxrffi+qefd/4uJi//5cxv1G8Azooai8LUDGTuFLMY4TUDeY/HBBQQ9Rjk5
X-Received: by 10.70.43.3 with SMTP id s3mr17939511pdl.11.1405365655942;
	Mon, 14 Jul 2014 12:20:55 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	xx6sm48402444pab.34.2014.07.14.12.20.54 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 14 Jul 2014 12:20:55 -0700 (PDT)
Message-ID: <53C42D95.1020105@mvista.com>
Date: Mon, 14 Jul 2014 12:20:53 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
 yocto@yoctoproject.org
References: <1405002633-2125-1-git-send-email-akuster@mvista.com>
	<1405002633-2125-4-git-send-email-akuster@mvista.com>
	<3052948.H5WysJTnrO@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3052948.H5WysJTnrO@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: [meta-security][PATCH 3/3] distro: Add distro
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
X-List-Received-Date: Mon, 14 Jul 2014 19:21:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Paul,

On 07/14/2014 04:31 AM, Paul Eggleton wrote:
> Hi Armin,
>
> On Thursday 10 July 2014 07:30:33 Armin Kuster wrote:
>> This allows us to include security_flags.inc
>>
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>> ---
>>   conf/distro/poky-security.conf | 4 ++++
>>   1 file changed, 4 insertions(+)
>>   create mode 100644 conf/distro/poky-security.conf
>>
>> diff --git a/conf/distro/poky-security.conf b/conf/distro/poky-security.conf
>> new file mode 100644
>> index 0000000..5092dfa
>> --- /dev/null
>> +++ b/conf/distro/poky-security.conf
>> @@ -0,0 +1,4 @@
>> +require conf/distro/poky.conf
>> +require conf/distro/include/security_flags.inc
>> +
>> +DISTRO = "poky-security"
> AIUI, meta-security is supposed to be simply a layer providing additional
> recipes; thus adding a distro config to this wouldn't really be right.

Sure the distro config patch can be dropped.

Thanks for the feedback.

regards,
Armin


>
> Cheers,
> Paul
>


