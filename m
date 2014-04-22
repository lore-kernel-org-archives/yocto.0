Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F31A9E00474
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 13:01:19 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id as1so5781880iec.11
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 13:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vyuaQjV7jeCiy8x0PnTQGMRxe1uV11qp6vf69qrP0Bk=;
	b=z07CNro8rtMoMzcmqToyH/SzM+SHHIREh4bXikwlq0EZN8IUs8OsA6g9UoH+n34LQk
	0nJVVf2lU7Qq5tGPSCvxPhvJMwzlaqOqoI/crwpq5D/dZ2EBokuy4Ao3WZV4h+EQ2swM
	JkJgn27AHJWrofeIOm+cmY7sIlMOhCcMpzcsk+aHUb0HWZUksmqW0E4RqwZabqAFVmTO
	l+XMIwwmwCPKBty/EgYmOVTHXqi4Nz+hN8DdauZVo4f+UE6+jDok3DVWrMbv6qpPHxYW
	+72lG9UdfaG9JPGDS0Y0nhVeAydUABJ0iVb6ABw5O2PHCpzX6MgwG3hiWLna3lQqhKOB
	6UtQ==
MIME-Version: 1.0
X-Received: by 10.42.20.6 with SMTP id e6mr37459646icb.29.1398196879118; Tue,
	22 Apr 2014 13:01:19 -0700 (PDT)
Received: by 10.50.229.14 with HTTP; Tue, 22 Apr 2014 13:01:19 -0700 (PDT)
Received: by 10.50.229.14 with HTTP; Tue, 22 Apr 2014 13:01:19 -0700 (PDT)
In-Reply-To: <CAAKMwioYCwPRP94j-N3UBELJxX2uSmf_yOjGCCaLuZRWsouiCw@mail.gmail.com>
References: <CAAKMwiouz+=PX1A=Z8x61C7VcOaVQCCVf8P_kvY9HEaK-PHDPQ@mail.gmail.com>
	<CAMKF1srqDaZ_JkdBZLST-rSsCP70m0Q6xuifY3Qxg+cm8v+JAQ@mail.gmail.com>
	<CAAKMwioYCwPRP94j-N3UBELJxX2uSmf_yOjGCCaLuZRWsouiCw@mail.gmail.com>
Date: Tue, 22 Apr 2014 13:01:19 -0700
Message-ID: <CAMKF1sr6sSdinsXyA6SFKkCfnyBAK=iwWX=3fMKtV_mQ9hcKAQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: kaiu@gmx.de
Cc: yocto@yoctoproject.org
Subject: Re: eglibc-2.18 is not compiling
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
X-List-Received-Date: Tue, 22 Apr 2014 20:01:20 -0000
Content-Type: multipart/alternative; boundary=f46d04190e624e55b104f7a714d3

--f46d04190e624e55b104f7a714d3
Content-Type: text/plain; charset=UTF-8

On Apr 22, 2014 12:47 PM, "Kai Ulrich" <kaiu@gmx.de> wrote:
>
> thanx for your interest
> yes, it seams all right
> gcc-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5)
> make-Version GNU Make 3.82 Built for x86_64-pc-linux-gnu
>
>
>
> 2014-04-22 18:10 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
>
>> On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich <kaiu@gmx.de> wrote:
>> >
tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:
>> > syntax error
>> > collect2: error: ld returned 1 exit status
>> > make[2]: ***
>> >
[/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/libc.so]
>> > Error 1
>> > make[2]: Leaving directory
>> >
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf'
>> > make[1]: *** [elf/subdir_lib] Error 2
>> > make[1]: Leaving directory
>> >
`/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc'
>> > make: *** [all] Error 2
>>
>>
>> whats the make version on your build host which is being used here. I
>> hope its 3.82 or newer.
>
>

and you are using gawk and not mawk or something else

--f46d04190e624e55b104f7a714d3
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On Apr 22, 2014 12:47 PM, &quot;Kai Ulrich&quot; &lt;<a href="mailto:kaiu@gmx.de">kaiu@gmx.de</a>&gt; wrote:<br>
&gt;<br>
&gt; thanx for your interest <br>
&gt; yes, it seams all right<br>
&gt; gcc-Version 4.7.3 (Gentoo 4.7.3-r1 p1.4, pie-0.5.5) <br>
&gt; make-Version GNU Make 3.82 Built for x86_64-pc-linux-gnu<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2014-04-22 18:10 GMT+02:00 Khem Raj &lt;<a href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;:<br>
&gt;<br>
&gt;&gt; On Tue, Apr 22, 2014 at 7:08 AM, Kai Ulrich &lt;<a href="mailto:kaiu@gmx.de">kaiu@gmx.de</a>&gt; wrote:<br>
&gt;&gt; &gt; tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/shlib.lds:150:<br>
&gt;&gt; &gt; syntax error<br>
&gt;&gt; &gt; collect2: error: ld returned 1 exit status<br>
&gt;&gt; &gt; make[2]: ***<br>
&gt;&gt; &gt; [/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/build-arm-poky-linux-gnueabi/libc.so]<br>
&gt;&gt; &gt; Error 1<br>
&gt;&gt; &gt; make[2]: Leaving directory<br>
&gt;&gt; &gt; `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc/elf&#39;<br>
&gt;&gt; &gt; make[1]: *** [elf/subdir_lib] Error 2<br>
&gt;&gt; &gt; make[1]: Leaving directory<br>
&gt;&gt; &gt; `/home/kulrich/Development/yocto_dora/poky/build_beagle_xm_ml/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/eglibc/2.18-r0/eglibc-2.18/libc&#39;<br>
&gt;&gt; &gt; make: *** [all] Error 2<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; whats the make version on your build host which is being used here. I<br>
&gt;&gt; hope its 3.82 or newer.<br>
&gt;<br>
&gt;</p>
<p dir="ltr">and you are using gawk and not mawk or something else</p>

--f46d04190e624e55b104f7a714d3--
