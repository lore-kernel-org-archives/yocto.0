Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB571E007B4; Sun, 17 Aug 2014 01:12:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F6DE004F5
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 01:12:52 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id h18so5254760igc.6
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 01:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nORdq+0EFdIPIO0soMRDNLv9nDrD4/pHlBf+gaehh6E=;
	b=ZbX6FcVNQ69XA+VrKOzxlkRbWb0Nwb9rrFbBbv5QMezgPGIn6jDecDaGVT7jgu3BgU
	x11s34/TmhnH5yx2pElXKls+h5R/YWcrqsiPLXVvNlCw5y7fX5CU0yWBiOZ7ie5B8opy
	VcKotvL/3G9oLVAx4syoJxcJUC8Y94p4IysFwl9WHqK/fiA2KI70LUyzP1Ltk8SXnhe4
	ti369v3l3PD0W8DqrPw2UXCZ3F9hoFJCkN7+aCLMZPsuJDtmGV66HqlaDjpPduxo24bn
	KG6nO7dFM8fTIWfx0FMNZSnTnWFE+4bf2UXnnMWSOv26vkwKyni0PY3tAaKpFNwOHfGN
	ZPFg==
MIME-Version: 1.0
X-Received: by 10.50.66.197 with SMTP id h5mr77866224igt.34.1408263171730;
	Sun, 17 Aug 2014 01:12:51 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Sun, 17 Aug 2014 01:12:51 -0700 (PDT)
In-Reply-To: <53ECC169.6000200@windriver.com>
References: <70c818031fe4471ea683fc552b9ad1b5@HKNPR03MB354.apcprd03.prod.outlook.com>
	<d83d174900974afe9e993337abf55b35@HKNPR03MB354.apcprd03.prod.outlook.com>
	<CAH21_vFThtJ6WtBzT8CMd8grdNwbXOGNAsO79cZB5f_SOx6_cw@mail.gmail.com>
	<53ECC169.6000200@windriver.com>
Date: Sun, 17 Aug 2014 13:42:51 +0530
Message-ID: <CAH21_vH-UUrjqmMT-zedVOM=ZGJyudmF59SeVeqREVVzFqveOA@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building toolchain(meta-toolchain) issue for mips
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
X-List-Received-Date: Sun, 17 Aug 2014 08:12:57 -0000
Content-Type: text/plain; charset=UTF-8

Hi Mark,

Thanks for your valuable suggestion.
But could you please let me know how to work around this issue.

Thanks and regards,
Atul

On 14/08/2014, Mark Hatle <mark.hatle@windriver.com> wrote:
> On 8/14/14, 7:39 AM, atulkumar singh wrote:
>> Hi Folks,
>>
>> I am trying to build toolchain, but while building I am getting following
>> warning:
>>
>>                  WARNING: QA Issue: gcc-cross-canadian-mips64-n32: found
>> library
>> in wrong location:
>> /usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0.0.0
>>
>> gcc-cross-canadian-mips64-n32: found library in wrong location:
>> /usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so
>>
>> gcc-cross-canadian-mips64-n32: found library in wrong location:
>> /usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0
>> [libdir]
>
> The above QA warnings indicate that a library was found at a non-standard
> (/lib,
> /usr/lib) location.  This is an issue if a user links to the library and
> it's
> not available in the standard ld.so load path.
>
>>                  Matched in
>> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips64.populate_sysroot
>>
>> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sysroot
>>
>>
>> /data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/share/gdb/syscalls/mips-n32-linux.xml
>>
>>     Matched in
>> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips64.populate_sysroot
>>
>> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sysroot
>>
>>
>> /data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/share/gdb/syscalls/arm-linux.xml
>
> The above indicates two packages, x86_64-nativesdk-gdb-cross-canadian-mips64
> and
> x86_64-nativesdk-gdb-cross-canadian-mips32r2 both provided the same file at
> the
> same installation path.  While not always, this is often times an indication
> of
> a bug in the system.
>
> As long as both packages could be used separately, and the contents of the
> two
> files are identical this can be ignored.
>
> --Mark
>
>> Thanks and Regards,
>>
>> ATUL KUMAR SINGH
>>
>> This message contains information that may be privileged or confidential
>> and is
>> the property of the KPIT Technologies Ltd. It is intended only for the
>> person to
>> whom it is addressed. If you are not the intended recipient, you are not
>> authorized to read, print, retain copy, disseminate, distribute, or use
>> this
>> message or any part thereof. If you receive this message in error, please
>> notify
>> the sender immediately and delete all copies of this message. KPIT
>> Technologies
>> Ltd. does not accept any liability for virus infected mails.
>>
>>
>>
>
>


-- 
*
Thanks and  regards,
ATUL KUMAR SINGH
E-mail Id- atul.singh008@gmail.com
Mob. no.-08055440486(R)*

