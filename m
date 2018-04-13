Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B001EE00B18; Fri, 13 Apr 2018 08:19:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC742E0086B
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:19:46 -0700 (PDT)
Received: by mail-ot0-f196.google.com with SMTP id m22-v6so10235554otf.8
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1AtQ9HXungXibOjP/9OL+o8Cemlq3H8cb75ko0aA6nE=;
	b=XPlUKBxuY4fgtYszdliLIbyKCN++EY2ng+3MJUGHrdJVNgonQcuDE1x0LPXqx7s9mc
	3QklycSqR+QobGTE+EbN84j8tQMZyz7bA2kViUTBZ6x6WfHy/B9MtlZ5zrySPaxBK6ce
	OJv2QakxcPom9wfkwYb/NhbNp4HAzjLk163eQECXFgmxY8RmADta+s8z8PVJ4mGDi87t
	jjrGhCT9t0Egjft2HfqQkFcXrNFeF2B5bF6iJH4Xo7a7JMbdBpEx3V0mAPqRmf5Isd+M
	zQo1NKyVGpynxNWarCgDY7gOu+UDUR1Ul0G+3As/0NU9fNqZsx/YyAmDp0Y84yyVZ6gV
	dJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1AtQ9HXungXibOjP/9OL+o8Cemlq3H8cb75ko0aA6nE=;
	b=DJxHeN/xuEaKSg4zISgqBM4JsQBnH6ZWaW8lMsjGRc5IutQ/UCwBcjeDuucs80eEFj
	zekMeEmsXpDU4ChGxe0j8DE3M/oHE/UQcyCq7dxvzlBi/rHjanLoc09r5Bx91smYZoWH
	aGeg9jpjOhb7TqQXNTe31tXdzpu/XI5fnbTsfxT7bYwX/f2w1xY2Fl7yIWhW66TnnZ1D
	yobAnOSQTa2TXbG4GxPUTTcmw70cUjirmfUfgYxdve7PCxLZRHqpiRj+b2RL2LIzfE2c
	3YA731QsyMdg3tDt30SiVrvha+ulUDz5SqXdfpVj7e09JO2ZygfCqZw76NQ1IyrcjNE5
	8idg==
X-Gm-Message-State: ALQs6tCs/TJCwyp2azl3iPxevwvRqqD/XeZrSqrHAFL4cZXENLwJ8bDt
	1nbcoC5T4BfnlTM2Dg7GZI0oK3MrmqpjSqoCAHs+tQ==
X-Google-Smtp-Source: AIpwx4/gMe1GnFB13RvmJNSDZZOMJvuj98pVmVb+dvGbG3p+jPw+CLZ719aj1Nq1pm9blUBkMWfNhKZPBukLWWV710k=
X-Received: by 2002:a9d:f29:: with SMTP id 38-v6mr4119761ott.119.1523632786027;
	Fri, 13 Apr 2018 08:19:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Fri, 13 Apr 2018 08:19:25 -0700 (PDT)
In-Reply-To: <6E51916E4A1F32428260031F4C7CD2B64C6A8227@ORSMSX112.amr.corp.intel.com>
References: <1523577311-28620-1-git-send-email-juro.bystricky@intel.com>
	<CAJTo0LaCBSJ1ch7_DuT5xCp8Z79tM4DxQqzeNy7JP9HOoAuF8Q@mail.gmail.com>
	<6E51916E4A1F32428260031F4C7CD2B64C6A8227@ORSMSX112.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Apr 2018 16:19:25 +0100
Message-ID: <CAJTo0LbQhrh+26n5OZKj-Grhrmc=5ANNdPEWgWDfLfKd+QSJew@mail.gmail.com>
To: "Bystricky, Juro" <juro.bystricky@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Juro Bystricky <jurobystricky@hotmail.com>,
	Alistair Francis <alistair.francis@xilinx.com>
Subject: Re: [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken qemu build for mingw
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
X-List-Received-Date: Fri, 13 Apr 2018 15:19:48 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Juro.  I'll remember to keep an eye out for the ifdefs disappearing.

Ross

On 13 April 2018 at 15:46, Bystricky, Juro <juro.bystricky@intel.com> wrote:
> yes, I've done it before:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=sumo&id=bc112b8368eb3842ccb2430fdf17e736ea39a742
>  I'll do it gain. Hopefully it will last longer this time.
>
>
> ________________________________________
> From: Burton, Ross [ross.burton@intel.com]
> Sent: Friday, April 13, 2018 5:50 AM
> To: Bystricky, Juro
> Cc: Yocto-mailing-list; Juro Bystricky; Alistair Francis
> Subject: Re: [yocto] [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken qemu build for mingw
>
> Is it feasible to fix the original patch?
>
> Ross
>
> On 13 April 2018 at 00:55, Juro Bystricky <juro.bystricky@intel.com> wrote:
>> The commit "qemu: Bump to version 2.11.0" in oe-core broke the
>> build of qemu for mingw, due to using "socketpair", which is
>> not supported by mingw. "socketpair" is used in a local patch,
>> not in the qemu upstream code. The original local patch had
>> conditional code to exclude "socketpair" for _WIN32, but the
>> modified patch for qemu 2.11.0 removed this.
>>
>> The fix is to simply remove the offending patch.
>>
>> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
>> ---
>>  recipes-devtools/qemu/qemu_2.11.%.bbappend | 4 ++++
>>  1 file changed, 4 insertions(+)
>>  create mode 100644 recipes-devtools/qemu/qemu_2.11.%.bbappend
>>
>> diff --git a/recipes-devtools/qemu/qemu_2.11.%.bbappend b/recipes-devtools/qemu/qemu_2.11.%.bbappend
>> new file mode 100644
>> index 0000000..764b500
>> --- /dev/null
>> +++ b/recipes-devtools/qemu/qemu_2.11.%.bbappend
>> @@ -0,0 +1,4 @@
>> +
>> +
>> +SRC_URI_remove_mingw32 = "file://chardev-connect-socket-to-a-spawned-command.patch"
>> +
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

