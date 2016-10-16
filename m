Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDAAFE00DA2; Sun, 16 Oct 2016 15:22:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80243E00C3E
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 15:22:28 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id q126so102856654vkd.2
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 15:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+vJcphkMTEGN1YHKo7aH4ACoOTWhA7UdUYyovVaNR5Y=;
	b=EaZjHzcaamd3+PESy8GGfxcfZBpCseD4QmgFF6cVsx//+UOGgoZy19+6TqwPaBMaPJ
	JO5DH/SDjNxAuAKoxTeM8ceHNCWx1OggEo+/j+1Cw5+JPWNnE1/jKbUhWsRTedydckvg
	N9cQ6A2BFsY1oydWQ9yJaktWlKEpo6ZRN4saMehghy3DBarr3qLzExgBfh7uAwglq6kb
	PT+BpM/ukD94HKlHYwR8Wp92btuI4IGG18JQ+su7vkaC/vi2J2Y9JA2AdARpRACGNiXE
	DT01KeTya+6qkULbmHXxqiRfcGYbTEb+vqQi3sbdBn17T+A6zZoHnOBJ2j957zu8cOX8
	w6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+vJcphkMTEGN1YHKo7aH4ACoOTWhA7UdUYyovVaNR5Y=;
	b=MbEhSbr/7E9q7IQG03ExJH5W+8yFB7RKb4nhu0iV4VO6/HuuY/fFm1xrtxql8LxvW5
	k6KETmxwL5xeZm1Ca8lO2HXsqhCLaLBdy/zBBrehOTvCWWML326/zBBz05fcISv3JKFu
	pHgJ4Bz0J+/EbIr8G5B8JTl16Mgt6DJlX1Wwc/4Gdl7w+WOjOee4MvSnSK01WKYvpZdI
	uSTvTtLlBwxb0vG80EDliHV8MXPVoDoTcWyj7n64mrBOg78XJ0x9KmyShsI70D0Nw12U
	odgij5ilgoaRQ8QrBx7BT1MUBw38qOUMW97nbKYpBISXS8AqxoFyFDo8l8QtO7nScgfQ
	gHcA==
X-Gm-Message-State: AA6/9RnjNmCI4JgsInQhZWa2Sj4YoVDBrz/ytImXNSpn8BwT26LNIGWzm2EAmd4u1Sxo6N45RGkliWgfo3P1Ig==
X-Received: by 10.31.180.132 with SMTP id d126mr15159119vkf.139.1476656548414; 
	Sun, 16 Oct 2016 15:22:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Sun, 16 Oct 2016 15:21:57 -0700 (PDT)
In-Reply-To: <853f6e67657040b5a99e5d3a17fb858e@XCH-RTP-003.cisco.com>
References: <354bb7fd02a644249f3422a333f3f0ec@XCH-RTP-003.cisco.com>
	<CAMKF1sr7R6CiCrKRcmAj6O0UK-vpZs2enWpzNRYc7qXskKprhw@mail.gmail.com>
	<853f6e67657040b5a99e5d3a17fb858e@XCH-RTP-003.cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 16 Oct 2016 15:21:57 -0700
Message-ID: <CAMKF1spKiPLbb+2DEX=24iOApZKBF41bPDbU7DEuCDoMce2kNQ@mail.gmail.com>
To: "Harshal Govind (hgovind)" <hgovind@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building uclibc based image for arm
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
X-List-Received-Date: Sun, 16 Oct 2016 22:22:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 16, 2016 at 1:48 PM, Harshal Govind (hgovind)
<hgovind@cisco.com> wrote:
> Thanks Raj!
>
> I was pulling yocto 1.7.2 and did not add any custom recipe or target. I =
just build core-image-minimal image with enabling uclibc in "meta/conf/dist=
ro/defaultsetup.conf" (#TCLIBC ?=3D "uclibc")
>
> But if I do same thing with yocto 2.0 or 2.1, it goes successful and buil=
ds uclibc based images.
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Saturday, October 15, 2016 8:24 PM
> To: Harshal Govind (hgovind) <hgovind@cisco.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] building uclibc based image for arm
>
> On Wed, Oct 12, 2016 at 6:08 PM, Harshal Govind (hgovind) <hgovind@cisco.=
com> wrote:
>> Hi,
>>
>>
>>
>>
>>
>> I am trying build uclibc based image. But getting following error.
>>
>> Note:
>>
>> -          I am using yocto-1.7.2
>>
>> -          Set TCLIBC ?=3D "uclibc" in distro/defaultsetup.conf
>>
>> -          Building for arm
>>
>>
>>
>> # bitbake core-image-minimal
>>
>>
>>
>> NOTE: Preparing runqueue
>>
>> NOTE: Executing SetScene Tasks
>>
>> NOTE: Executing RunQueue Tasks
>>
>> ERROR: Function failed: do_install (log file is located at
>> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-
>> neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29
>> 445)
>>
>> ERROR: Logfile of failure stored in:
>> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-
>> neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29
>> 445
>>
>> Log data follows:
>>
>> | DEBUG: Executing shell function do_install
>>
>> | ls: cannot access
>> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/=
usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi//us=
r/bin:
>> No such file or directory
>>
>> | ls: cannot access
>> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/=
usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi//us=
r/lib/locale:
>> No such file or directory
>>
>> | cp: cannot stat
>> '/home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc=
/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi/SU=
PPORTED':
>> No such file or directory
>>
>> | WARNING: exit code 1 from a shell command.
>>
>> | ERROR: Function failed: do_install (log file is located at
>> /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-
>> neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29
>> 445)
>>
>> ERROR: Task 1094
>> (/home/hgovind/projects/temp/test-sdk/ap-sdk/sys/yocto-1.7/poky-dizzy-
>> 12.0.2/meta/recipes-core/glibc/glibc-locale_2.20.bb,
>> do_install) failed with exit code '1'
>>
>> NOTE: Tasks Summary: Attempted 780 tasks of which 703 didn't need to
>> be rerun and 1 failed.
>>
>> Waiting for 0 running tasks to finish:
>>
>>
>>
>> Summary: 1 task failed:
>>
>>
>> /home/hgovind/projects/temp/test-sdk/ap-sdk/sys/yocto-1.7/poky-dizzy-1
>> 2.0.2/meta/recipes-core/glibc/glibc-locale_2.20.bb,
>> do_install
>>
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
>>
>>
>>
>>
>>
>> Could you please let me know if I am following correct steps to create
>> uclibc based image?
>>
>
> when using uclibc, it should not pull any glibc components for targets. b=
ut its happening for your case so figure out how this is getting into depen=
dencies. May be you are including it explicitly or its coming via indirect =
deps. you can use bitbake -g to generate dep info and inspect it

its possible that we have bugs in 1.7 and it was long time ago, we did
fix non-glibc builds in later releases so I am not
surprised that you get better results with newer releases. Btw. uclibc
has been deprecated in 2.1 and will be removed from 2.2 release, so
plan to move to musl if you need smaller libc

