Return-Path: <alistair23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B67CE00C75; Fri, 13 Apr 2018 08:24:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB0FE00CA1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:24:46 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id e5-v6so13154510lfb.7
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 08:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=tbraDSMidTdLgwz0v55c6UlSDxBpE0c2H6Efj5G10dM=;
	b=qsdotNbZZP3ydUEM5KJaD2fump9Q/LjLDckYeO724FJ2aZoMT+za12zw32N4dC1iCG
	dMIEMDAQCdKcg3dEh2wzSTTSkaWW4o11im2xpDMMAnDbLtePTk+S0GfMeyWw5Lf93nuX
	PBpUu806DjW9DDUk0fn0yChuRXV/s8ON7IiBnnh3Au3I1Gnz49LIzQqU+8uq5B1Zd47t
	zfVfcyJKGyIp8wQYEeKdeuAjDCAHioQGU1F8JznIU6bTN9ox7Zc6YIz2qci24hO9N1rt
	1pDzo2kcoF0grm0uLALxdb62Yc0BdDSf3wph3JlGlpomyLVyFzCk3Ctdn6fhBtRg5+cr
	D4ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=tbraDSMidTdLgwz0v55c6UlSDxBpE0c2H6Efj5G10dM=;
	b=e/695e+HOWEgs6VHHUSkTdtsUZijvBTdYwD7OV+bo0q6ZXpgGRq4oVNSUdUh8wN5dr
	Z4d+dxEEuXN0pQ9k09SqqtwgjT+3nctdXg+3pIqCXoAfoKkYcIdi1H9Up+QEeCZiKMCH
	oGr0CwgWUZb8V4TOkWZTMUVL1tob20FU/YptUckJx+5A9SilDMMBpIkXLn28t4WBS/Vq
	t5X7RBtCe9ZvLvPopAHrZxXvm2J2dJRWUeWB5zuzQrKJfhWofceIvAIYtG5C3FTolYjC
	o8YKSgc9OLrSS1+haK4+8GKWgH75Oa7wtqDllGUpCBYXcRcanD+mJGmSYQhMwouj3YL5
	TJtQ==
X-Gm-Message-State: ALQs6tBJsucGu2lfg+9DrzE4s8AutLtKinNxO+E1Bk+g8g7BZuVlXcNz
	pDGPXic4wbgEgpnnc+oKjDbtCppAhDG1vw8HJPc=
X-Google-Smtp-Source: AIpwx4+ZT+BPU/mPKnRW7ToFofmgCz/hHOPvdoO/2nZuYsRoe/ajSdQUUNQUOIVLaZnWlJgn6WE19Vrx6izFSec5wkk=
X-Received: by 10.46.25.134 with SMTP id 6mr3564500ljz.14.1523633085635; Fri,
	13 Apr 2018 08:24:45 -0700 (PDT)
MIME-Version: 1.0
Sender: alistair23@gmail.com
Received: by 10.46.42.66 with HTTP; Fri, 13 Apr 2018 08:24:14 -0700 (PDT)
In-Reply-To: <CAJTo0LbQhrh+26n5OZKj-Grhrmc=5ANNdPEWgWDfLfKd+QSJew@mail.gmail.com>
References: <1523577311-28620-1-git-send-email-juro.bystricky@intel.com>
	<CAJTo0LaCBSJ1ch7_DuT5xCp8Z79tM4DxQqzeNy7JP9HOoAuF8Q@mail.gmail.com>
	<6E51916E4A1F32428260031F4C7CD2B64C6A8227@ORSMSX112.amr.corp.intel.com>
	<CAJTo0LbQhrh+26n5OZKj-Grhrmc=5ANNdPEWgWDfLfKd+QSJew@mail.gmail.com>
From: Alistair Francis <alistair.francis@xilinx.com>
Date: Fri, 13 Apr 2018 08:24:14 -0700
X-Google-Sender-Auth: CkJ09GK4b4hOTSuVqvSUxDgrCKU
Message-ID: <CAKmqyKPUg-krQkdGWKg=niVkojgixkXLJpkMV8TXAsZXJtXP6g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Fri, 13 Apr 2018 15:24:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 13, 2018 at 8:19 AM, Burton, Ross <ross.burton@intel.com> wrote:
> Thanks Juro.  I'll remember to keep an eye out for the ifdefs disappearing.

Maybe add some comments in the patch to ensure whoever is working with
it knows why they are there.

Alistair

>
> Ross
>
> On 13 April 2018 at 15:46, Bystricky, Juro <juro.bystricky@intel.com> wrote:
>> yes, I've done it before:
>> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=sumo&id=bc112b8368eb3842ccb2430fdf17e736ea39a742
>>  I'll do it gain. Hopefully it will last longer this time.
>>
>>
>> ________________________________________
>> From: Burton, Ross [ross.burton@intel.com]
>> Sent: Friday, April 13, 2018 5:50 AM
>> To: Bystricky, Juro
>> Cc: Yocto-mailing-list; Juro Bystricky; Alistair Francis
>> Subject: Re: [yocto] [meta-mingw][PATCH] qemu_2.11.%.bbappend: fix broken qemu build for mingw
>>
>> Is it feasible to fix the original patch?
>>
>> Ross
>>
>> On 13 April 2018 at 00:55, Juro Bystricky <juro.bystricky@intel.com> wrote:
>>> The commit "qemu: Bump to version 2.11.0" in oe-core broke the
>>> build of qemu for mingw, due to using "socketpair", which is
>>> not supported by mingw. "socketpair" is used in a local patch,
>>> not in the qemu upstream code. The original local patch had
>>> conditional code to exclude "socketpair" for _WIN32, but the
>>> modified patch for qemu 2.11.0 removed this.
>>>
>>> The fix is to simply remove the offending patch.
>>>
>>> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
>>> ---
>>>  recipes-devtools/qemu/qemu_2.11.%.bbappend | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>  create mode 100644 recipes-devtools/qemu/qemu_2.11.%.bbappend
>>>
>>> diff --git a/recipes-devtools/qemu/qemu_2.11.%.bbappend b/recipes-devtools/qemu/qemu_2.11.%.bbappend
>>> new file mode 100644
>>> index 0000000..764b500
>>> --- /dev/null
>>> +++ b/recipes-devtools/qemu/qemu_2.11.%.bbappend
>>> @@ -0,0 +1,4 @@
>>> +
>>> +
>>> +SRC_URI_remove_mingw32 = "file://chardev-connect-socket-to-a-spawned-command.patch"
>>> +
>>> --
>>> 2.7.4
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

