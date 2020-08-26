Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9402.1598437096536741460
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 03:18:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fo0RZjnc;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1657BE0209C; Wed, 26 Aug 2020 03:18:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25B34E0205B
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 03:18:13 -0700 (PDT)
Received: by mail-ej1-f49.google.com with SMTP id oz20so2075621ejb.5
        for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 03:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Wm0Loj1U4ELKCfLC0tZ6wE0NXuLOzgR/aGkY5HBNck8=;
        b=fo0RZjncD8V0BmZHDYS2sjUQ4vJnXGx+xD0TXv6hLS0iZDCIFQ9V89ZDLZYN/iX6So
         L5N37IQ6IfIupJ3MMmBGW9MjZOyDsJSIF0VJ9BpBypQa/hhgTl71BTcVtf6pNvpusICS
         +kVH0xxM/f9mGWfUIS5mkFpS5ScKxhdCN7r9IuT42EaPH5OW1ZkTqSeCMAaUDg5ZGGzZ
         2j8Rc7df+D/u55kjYH9Xwxkrdz0M0AoqBNolimkG92HFS1HRE5TMkGYlCPOjGha55eJK
         ku3PxRgsJSrqMo7vtae/sYus7+YCzagDhKuOMqOP9/HGxlzR3A1sIW0OhQfHB6uPSQLM
         46fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Wm0Loj1U4ELKCfLC0tZ6wE0NXuLOzgR/aGkY5HBNck8=;
        b=Inenswqz9CybLjsIhg8ZxRW2kdyPVDEcYMyNr2TIZt6qm2uvAg4Rg32jlb8eRVmsRA
         WxzZmhaRLn+wN5b04QL2jIyoeLmhtZpH9Mu7+WL1iwE3RCH7OMdUxK3IImRzE2GyRlLX
         prBeghChCJeZk2DldFRsAiE21gZC/WzECJkYS3Lf+0kmG4vpLKTiiq1xvIpDnyG6ZPzU
         qWwqBP7/ndr5fQUYaARkVeb7vhQu/5DzJLXW3bZOvmPKmPRJFmxvdQKblh4eeMNBcEN+
         PAL31tW6bNEtw7md+r4LvIM/ap/QyOQq+YS/auNdUq1BNYx4n0q1TB9rRKkabR9eOQ15
         eqHg==
X-Gm-Message-State: AOAM5301Hcpn48rykaska5VxlQp1CD7CTd/g8ZE6mBD6843SvzBSMhHF
	DrqKLw9G4iLMaf1xev7TDjulBBBpbe1edW889sA=
X-Google-Smtp-Source: ABdhPJyH7Z51+jN2gvP5KRMIqmwS2oMnNBshy6ymUx6EhbIIw3+IJmZvNNYIQTyfhHlfm/QmL3M0aBYKHW68vOxv/s4=
X-Received: by 2002:a17:906:388a:: with SMTP id q10mr1099013ejd.416.1598437092901;
 Wed, 26 Aug 2020 03:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37Ak_W5My6m22Lv2iLEJBTDKqJU5HK52MON5siHf0NDNA@mail.gmail.com>
 <CANNYZj9eT1KUxM4EuKK2jX1N2S5FO0bdbw_9h79PUivdjf0fSw@mail.gmail.com>
In-Reply-To: <CANNYZj9eT1KUxM4EuKK2jX1N2S5FO0bdbw_9h79PUivdjf0fSw@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 26 Aug 2020 12:18:02 +0200
Message-ID: <CAAfyv35QiL2Q6Py9qFyBb2q0d0QTW5WRiPC61JB0aE3zX_CN7w@mail.gmail.com>
Subject: Re: [yocto] meson cuda compilation
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 26, 2020 at 12:09 PM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> You probably need to adjust meson.cross which is written out by meson.bbclass.
I checked gstreamer1.0 which also use meson for compilation and it's doing same:
Source dir: /home/marek/projects/project/test/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.16.2-r0/gstreamer-1.16.2
Build dir: /home/marek/projects/project/test/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.16.2-r0/build
Build type: cross build
Project name: gstreamer
Project version: 1.16.2
No CFLAGS in the environment, not changing global flags.
No LDFLAGS in the environment, not changing global flags.
No CPPFLAGS in the environment, not changing global flags.
Sanity testing C compiler: gcc
Is cross compiler: False.
Sanity check compiler command line: gcc
/home/marek/projects/project/test/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.16.2-r0/build/meson-private/sanitycheckc.c
-o /home/marek/projects/project/test/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.16.2-r0/build/meson-private/sanitycheckc.exe
-pipe -D_FILE_OFFSET_BITS=64
Sanity check compile stdout:

-----
Sanity check compile stderr:

-----
Running test binary command:
/home/marek/projects/project/test/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.16.2-r0/build/meson-private/sanitycheckc.exe
C compiler for the build machine: gcc (gcc 5.4.0 "gcc (Ubuntu
5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609")
C linker for the build machine: gcc ld.bfd 2.26.1
Sanity testing C compiler: aarch64-poky-linux-gcc -march=armv8-a+crc
-fstack-protector-strong -D_FORTIFY_SOURCE=2 -Wformat
-Wformat-security -Werror=format-security
--sysroot=/home/marek/projects/project/test/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.16.2-r0/recipe-sysroot
Is cross compiler: True.

first check build with my local gcc and then continue with cross
compilation. Can we somehow skip or redirect for checking
native-sysroot gcc from yocto? I can then add cuda-nvcc-native as
dependency.

Also in meson.cross this part looks odd to me:

[host_machine]
system = 'linux'
cpu_family = 'aarch64'
cpu = 'aarch64'
endian = 'little'

[target_machine]
system = 'linux'
cpu_family = 'aarch64'
cpu = 'aarch64'
endian = 'little'

shouldn't be host_machine set to x86?

Marek

> Alex
>
> On Wed, 26 Aug 2020 at 11:58, Marek Belisko <marek.belisko@gmail.com> wrote:
>>
>> Hi,
>>
>> I'm trying to compile a simple cuda application which is built using
>> the meson build system. I have an issue that meson looks for nvcc
>> compiler on my host and I don't have installed cuda-nvcc compiler
>> (just use cuda-nvcc-native as dependency). Can we somehow force meson
>> not to search the local host for compilers?
>>
>> Thanks and regards,
>>
>> marek
>>
>> --
>> as simple and primitive as possible
>> -------------------------------------------------
>> Marek Belisko - OPEN-NANDRA
>> Freelance Developer
>>
>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> Tel: +421 915 052 184
>> skype: marekwhite
>> twitter: #opennandra
>> web: http://open-nandra.com
>> 
