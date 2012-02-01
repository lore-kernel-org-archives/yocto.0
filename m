Return-Path: <bewithsathish@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DC3E00303
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 02:14:58 -0800 (PST)
Received: by dadp13 with SMTP id p13so940377dad.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 02:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type:content-transfer-encoding;
	bh=wdB/6y6PYVkeX/Ti2W+F9Diw2bt6iI+L6stbt7nPDrc=;
	b=yEFcnoCoO74rf+peK/ChIXKhP0Cfvcen5OGvHm3G1nI3uPI1480poavcS01Tzzyh74
	9eSvTJ5X9RUSmQU9fGKAbSH53gYbk+oCeS0W7sZNee7Tili5IV1pYkOdB4cIHPOKHqwE
	jqvpuspOCJ88pJB9Zv4umaSZbasvzRLrq94cY=
MIME-Version: 1.0
Received: by 10.68.73.100 with SMTP id k4mr58962270pbv.55.1328091298509; Wed,
	01 Feb 2012 02:14:58 -0800 (PST)
Received: by 10.68.232.5 with HTTP; Wed, 1 Feb 2012 02:14:58 -0800 (PST)
In-Reply-To: <4F28DBE3.4010107@linux.intel.com>
References: <CA+FcS-zVQJq=r-Fgn1Y8NC0M3EAobMwYPoDK2V7Q0jD40b_n6Q@mail.gmail.com>
	<4F28DBE3.4010107@linux.intel.com>
Date: Wed, 1 Feb 2012 15:44:58 +0530
Message-ID: <CANJvwR-+LgCHHd+SywzD2yri6h_dg-a7rnQfdGN7UT=LxQy-yw@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Feb 2012 10:14:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 1, 2012 at 11:59 AM, Joshua Lock <josh@linux.intel.com> wrote:
> Hi James,
>
>
> On 31/01/12 22:20, James W. wrote:
>>
>> hi all:
>> i am new comer.
>> i meet =A0a error:
>>
>> NOTE: package pciutils-3.1.9-r0: task do_configure: Started
>> ERROR: Function failed: do_configure (see
>>
>> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/=
log.do_configure.9978
>> for further information)
>> ERROR: Logfile of failure stored in:
>>
>> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/=
log.do_configure.9978
>> Log data follows:
>> | ERROR: Function failed: do_configure (see
>>
>> /home/jwang5/poky-build/tmp/work/i586-poky-linux/pciutils-3.1.9-r0/temp/=
log.do_configure.9978
>> for further information)
>> | Configuring libpci for your system..../configure: 1: Syntax error:
>> Unterminated quoted string
>
>
> I cam across this error today also, I'd be willing to bet the OS you're
> building on is using the dash shell (Ubuntu)?

Well, if this error is because of dash, please use the following
comments to change to bash,

$sudo rm /usr/bin/sh
$sudo ln -s /usr/bin/bash /usr/bin/sh

There is also, other way to change to dash to bash through package
configure. But any way, above will done through automated scripts. So,
above is good. You can also make sure you are working on bash shell,
by simply, ls -al /usr/bin/sh, which shows whether the link is
pointing to bash or dash.
--=20
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

