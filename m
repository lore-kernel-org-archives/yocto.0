Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.344.1575417080852124584
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 15:51:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kjg8EcQM;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: bruce.ashfield@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455FBE00EBC; Tue,  3 Dec 2019 15:51:20 -0800 (PST)
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
	*      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.52 listed in list.dnswl.org]
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F3F2E0049C
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 15:51:17 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id s10so4912641edi.5
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 15:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gC1WmCW8ToK7uwE5M9YhX/+aSOXiubq67f82uaibKuM=;
        b=Kjg8EcQMVy+egziYQ0kVcsR3RneO5YQxTPNvayREfFH8CZnHItN5kce47x2QiqBQyn
         JISwTcgMoW1gCTXHfuXk55J4Qh8RziXRVo9yYBewOvonYbwDQkdVy9JWHSdrZSiB+oIQ
         3IDdT4v9+BIi/x9hyloDyAhZlG+8hVM9BjoryJqKKmt0YBbvl6ASUR6ui3xKVq02V/u4
         LYKmI7X85P5zzkyLsBqLOhjlutuQYGZMu/dVNq6fcalu2li2CxTZML/C4x3DkUk/brcj
         1KmsBdFq8TnnR7feapyzfpXa1OkwIVBtM5S2VDnJX7+qDagCwRJ6x6m1U9F3IvdCck4V
         +Otw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gC1WmCW8ToK7uwE5M9YhX/+aSOXiubq67f82uaibKuM=;
        b=TcH5+To6qF0p7CyzqyXANMXE3CilMZ4a7MSWIrzdnJDR7mBoBadjN7CJAWqULm94c7
         Izv/4AhPY5P88cUdEvrv2AQunqpGNLrZGUyKWdnMzVROTj0rsSGmSPH0kpsSu3ZmfgTx
         CTRilHJHunaraDYlVbBgrd1GCPYmHxWfmruuhASHrtBave8OKdONBqLWQVtuwbG8GuGY
         qVGhesxGBKWMlxoIzSub5WuBjUgdwhJiprOIsOQqLabAphVN/muVzccl9zlu3/G/uVsQ
         rLEUP3Iwpw8Jv3rGRE+nY4obNfw2i7N8OO7iBadFyo8YEeGI0NkMwNLiFG6+LA5JYG0N
         PaeA==
X-Gm-Message-State: APjAAAWVlYK7Fziu7a0C7HAb38lXa/SB3vHeZ6UO7JHTdiyVpZv4lG4x
	yHI3ivLmZzJrHH0mwqpLQEJNuG8LssReBVXpRyw=
X-Google-Smtp-Source: APXvYqwF6aqnN4MHJbOuf5XFvv4NmpMCJZKfQMqmpMBH5WSD7AB2pF+D5m3cLTnPCny4p1qu0J0rZbGfj7qHlHVCO7g=
X-Received: by 2002:a05:6402:311b:: with SMTP id dc27mr956017edb.106.1575417076669;
 Tue, 03 Dec 2019 15:51:16 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37gsECtx7eAfCQmnB4wqYSQVGoN7YMqKcvKra-er1wA8w@mail.gmail.com>
In-Reply-To: <CAAfyv37gsECtx7eAfCQmnB4wqYSQVGoN7YMqKcvKra-er1wA8w@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 3 Dec 2019 18:51:05 -0500
Message-ID: <CADkTA4OJtSqCZbR2qw+bDeqEmVnkmouZ0t9U7Rd3P6F9kpr5iw@mail.gmail.com>
Subject: Re: [yocto] zeus issues with fetching linux-yocto for beaglebone
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 3, 2019 at 2:54 PM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm building yocto-beagle machine on poky zeus branch and linux-yocto
> cannot be fetched. It still retry and start from beginning with
> warning like;
>
> linux-yocto-5.2.17+gitAUTOINC+bd0762cd13_25b14cdf96-r0 do_fetch:
> Failed to fetch URL
> git://git.yoctoproject.org/linux-yocto.git;name=machine;branch=v5.2/standard/beaglebone;,
> attempting MIRRORS if available

I'm guessing it was temporary, since the repo is where I'd expect it:

git ls-remote git://git.yoctoproject.org/linux-yocto -b v5.2/standard/beaglebone
e134f08ae95bca12eacd64834145d21faa54f097
refs/heads/v5.2/standard/beaglebone

Bruce

>
> It's just temporary hickup or? Thanks.
>
> BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47531): https://lists.yoctoproject.org/g/yocto/message/47531
> Mute This Topic: https://lists.yoctoproject.org/mt/65872262/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
