Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2601E00B74; Wed, 14 May 2014 19:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f45.google.com (unknown [209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A1F0E00724
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 19:39:03 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id ey11so426163pad.4
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 19:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=cBNVdlnbyP1l6xSE23yK/QX8d+/PvvkRFGZeZP8APQo=;
	b=pibww0MjISZLi1mArKnWy4GTgEk5b3Kq5PR/zByiyhyikqTx7sQqeTQKhiBMXmaiKU
	XXsz7tSl3abK1ApLLS/GR4+woFYixiO5JTAwLsOCJt6kYAmlOLKnK241pR3qf8W3XRvl
	HPTBF7+VaZHnEcyqRIVzVWLvXg0SbhiklXseYm5nM9IGk+70qm7lzelXofmv9V1ZvKrR
	nNyseXjepiszE0dK80Or7tpMa9lzHzFbBnB93vAyTD5kDrgu5uCmoAou5USkVR8GU+f/
	3KHy5c6q2Z8d61FMiB+oC0WhLWrpKu5LpjEGEVP99kg/INq8AOXT6P2Bzn2lFovSDLgk
	7jcA==
X-Received: by 10.68.202.194 with SMTP id kk2mr8968588pbc.156.1400121542960;
	Wed, 14 May 2014 19:39:02 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id uy2sm6033122pbc.4.2014.05.14.19.39.00
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 14 May 2014 19:39:01 -0700 (PDT)
Message-ID: <537428C3.6050004@gmail.com>
Date: Wed, 14 May 2014 19:38:59 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
	<1400106263-25100-3-git-send-email-akuster808@gmail.com>
	<CAMKF1sq9ZT2qgU47+WmzPYTNVMN0Jff2wY+oHcZafQ_Uerieyw@mail.gmail.com>
In-Reply-To: <CAMKF1sq9ZT2qgU47+WmzPYTNVMN0Jff2wY+oHcZafQ_Uerieyw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/9] Use wildcard in mesa bbappend name
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
X-List-Received-Date: Thu, 15 May 2014 02:39:04 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 05/14/2014 05:45 PM, Khem Raj wrote:
> On Wed, May 14, 2014 at 3:24 PM, Armin Kuster <akuster808@gmail.com> wrote:
>>      mesa: Use wildcard in version to minimize keeping in-sync
>>      with Poky
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   recipes-graphics/mesa/mesa_9.2.%.bbappend | 6 ++++++
>>   recipes-graphics/mesa/mesa_9.2.2.bbappend | 6 ------
>>   2 files changed, 6 insertions(+), 6 deletions(-)
>>   create mode 100644 recipes-graphics/mesa/mesa_9.2.%.bbappend
>>   delete mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend
> mesa 10 is on its way
I will resubmit when it gets push.

thanks.

>
>> diff --git a/recipes-graphics/mesa/mesa_9.2.%.bbappend b/recipes-graphics/mesa/mesa_9.2.%.bbappend
>> new file mode 100644
>> index 0000000..0004f71
>> --- /dev/null
>> +++ b/recipes-graphics/mesa/mesa_9.2.%.bbappend
>> @@ -0,0 +1,6 @@
>> +inherit enable-selinux
>> +
>> +# But wait!  There's more!  mesa builds a host program named builtin_compiler
>> +# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
>> +#
>> +PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
>> diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
>> deleted file mode 100644
>> index 0004f71..0000000
>> --- a/recipes-graphics/mesa/mesa_9.2.2.bbappend
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -inherit enable-selinux
>> -
>> -# But wait!  There's more!  mesa builds a host program named builtin_compiler
>> -# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
>> -#
>> -PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


