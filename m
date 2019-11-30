Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.14198.1575154836729309703
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Nov 2019 15:00:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q2F5VRf6;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29D98E010D7; Sat, 30 Nov 2019 15:00:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.42 listed in list.dnswl.org]
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7644DE00E0F
	for <yocto@yoctoproject.org>; Sat, 30 Nov 2019 15:00:33 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id i11so36099014iol.13
        for <yocto@yoctoproject.org>; Sat, 30 Nov 2019 15:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=W/QSaV3IpkMQUXE7+xuy1Llb1McOW/NHdl/7xdTB2rI=;
        b=q2F5VRf6AvMF540EDXt0O11AHY0inxucQBB5FKUNEwHV5coMoEXSUMocZRl7VqPydv
         FEjrDAO/7/mSDfbQttF7RCq107PdgsU+9QlvAoXnyGH9sjpiT9xwKv0eyOAPNxZh5BGd
         U2cY23QK9DGTnf8I/si+oWl+UaUwiFuRrF/+TZ9v427PbXo6d5fNNfyH97BNjiRdKfV+
         ILafnp4ZowDk53C30yWqXdxfJakDsxxGdPa5C1bap987+nOCTJ+hviY7w9NzYl5d0CKY
         7WnD5qGJPWBnO2IDIer9lEf0WU9u4qKljussbfD9Ofq9WjoyLtKI8bTsigqZeb6mM1/e
         ka9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=W/QSaV3IpkMQUXE7+xuy1Llb1McOW/NHdl/7xdTB2rI=;
        b=WqIVYwDoMc8OtAn0LiIv2gMHGSCuXdiI9j8c8Q/t+it1eXxXHoqTswpAQTRkxqt+z+
         n8+rtwmxsN8+gqyiRqwS1nc72IdniPVWFckJnph4XkipgyT4WQU83Qt2jBAWjDIjaX+C
         a1J4WV2IsTQ+ZMcUlb0kIlYi0QlE5IuP/P6sJFcILM5gtZEdIdMa+xUt7ErsqWvWciyM
         O4/J0D1zB5BNO0bSz7OaDoVraYAf6DPnIrNs8SxkMeRwgfx0iqb8MYk3B6EOk+wtcuJ1
         FdTAXja7VzjacGL5Ehzq/BvuExZaQ2QaQnsV1pNl8HN26uJs7+lhzWZRtvlQm68cJ84g
         GISQ==
X-Gm-Message-State: APjAAAUuQqCmKAPm2wPFoOQgdx1btBbudcmy8N8Ul/cl8w0JYoai5rNi
	uOD+OA9XfNc1KLZ9W1O2CMRB/SyAv/Wm4jL4wYeNNg==
X-Google-Smtp-Source: APXvYqxX4dXBHwMUNXz2rkAbhVFK7/dqeMogL5U9fGTguQInHJ1qVeWzKsTQa+Z5r+uj8/2aJGQ2Ylpx+DYq4Fyh2Qs=
X-Received: by 2002:a05:6602:251a:: with SMTP id i26mr11612806ioe.302.1575154832805;
 Sat, 30 Nov 2019 15:00:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:f24e:0:0:0:0:0 with HTTP; Sat, 30 Nov 2019 15:00:32
 -0800 (PST)
In-Reply-To: <d9a95079-1039-443e-87ec-b2d9c27e7296@www.fastmail.com>
References: <CAA=hcWQnC_W636fec-dk5HBqTZDkfa0cWCbBrkV6YwnJG+NMfA@mail.gmail.com>
 <d9a95079-1039-443e-87ec-b2d9c27e7296@www.fastmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Sun, 1 Dec 2019 10:00:32 +1100
Message-ID: <CAA=hcWRBF1SbeFRpPvkAA1yynAHsMsAaAxJrNAEvOdzrCTAhHA@mail.gmail.com>
Subject: Re: [yocto] Mising init and systemd binary files
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks Paul, indeed, what was I missing.

Kind regards,

- jh

On 11/30/19, Paul Barker <paul@betafive.co.uk> wrote:
> On Sat, 30 Nov 2019, at 11:28, JH wrote:
>> Hi,
>>
>> I built a Yocto image, but could not find /init, usually it should be
>> a symbolic link in /init->/sbin/init->/lib/systemd/systemd, In
>> /lib/systemd directory, it only contains a subdirectory system, all
>> other systemd binaries are missing, many system commands in /sbin are
>> also missing. What could I get wrong here to miss out all systemd
>> files?
>
> Are you using an existing image recipe or writing your own? If it's your
> own, do you have packagegroup-core-boot included?
>
> Thanks,
>
> --
> Paul Barker
>
