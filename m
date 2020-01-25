Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.10588.1579994946138053130
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 15:29:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fisaWACf;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E0EAE01548; Sat, 25 Jan 2020 15:29:05 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B1AE00CA1
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2020 15:29:02 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id t26so5971095ioi.13
        for <yocto@yoctoproject.org>; Sat, 25 Jan 2020 15:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=fxZxzkCJU+UXR6lAkds7ANdK7ycYGb6KDoeraykO5sM=;
        b=fisaWACfXN1i3tUPnpAvtlYruuhozQHuf2HCtlq4OLP5yeWKqz4DR10kv2G4C8q2tK
         kPKhlIrjlDy+1nJB4N6kyc9Gzowf6AHD8gNE2FNnzQ8+7oOaeEgaxurl0gPSPU1nhnvt
         G+uELZBEUemruNTqikfLO7ZaPIxq+dQx9elfiofL63/bou25h1d5fW0VfvBC6OQN13Wg
         XDzd247WMSplFehkayPxaW++Hfk6gbgZsnG8bxOPPf8eVTQxZvkIYOnqbodmIalJV6LI
         9l0Nx/OcfEDyviJYM+0r7pOos0hbsAFbQfsJmWamrR6uO/6pvpuFGGB3rOBoi7Eb38+G
         KKBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=fxZxzkCJU+UXR6lAkds7ANdK7ycYGb6KDoeraykO5sM=;
        b=qmbB1qLVMeqy3Q7ODbYEaNSrMlujqoAfl1GuHgP1ugVB0KwGuR1qpwZZGDCxil27H1
         fuhnGu+QdlpUJHqy+uGVO4VdC9wSETvKmAJDfpDTGxjKBG88kHf4tjAzJ4/ZTLvaGGBy
         vnDTLRA4keA1jdhIA4+/LEN4Klb/lSI5WmtlTVVljO/0E0RbFTNEx/FK757zzPLaH/+K
         L7LZrrLWY4Aq1wcNEDIR46OUQs+ktauyQSNVmHdkIcpoD7LK10IMfuiPQ2nnqve0D79s
         7zZvyNkHmahavdl7FzoI8RZeZei0i9Cat0y39FoNwmyIrZ/3sLmkZDAV0/WqWvHzrWva
         m8CA==
X-Gm-Message-State: APjAAAUSIOVClysVLs2B+QQKv89K9NVzQOOi/fFAJbv0lXWD97s1GN0Q
	vWSr7LKxzXHp2XtRdRKdpXFNbOPbcojr5kSWNvKyDVGp
X-Google-Smtp-Source: APXvYqy+im/nep9tchwKxCRh9m8S3gPTiEHY3zLBvBS3RivDgGVVfY6p2DqnlNy8QPQo0s5PqeLOrA/XaH0SmOrGoX8=
X-Received: by 2002:a5d:8043:: with SMTP id b3mr2671524ior.192.1579994942412;
 Sat, 25 Jan 2020 15:29:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sat, 25 Jan 2020 15:29:01
 -0800 (PST)
In-Reply-To: <CAA=hcWSXZWO8suo5+DNHYUF6yVxH3d3h+FNUfWw1-EMxakKvTw@mail.gmail.com>
References: <CAA=hcWSXZWO8suo5+DNHYUF6yVxH3d3h+FNUfWw1-EMxakKvTw@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Sun, 26 Jan 2020 10:29:01 +1100
Message-ID: <CAA=hcWQhv+z9Nv2Q+QeccJu4K9bWqwfz_EBC5QdhJ6zGUZLf5Q@mail.gmail.com>
Subject: Re: Wrong date
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"

It failed to start systemd-timesyncd.service:

# systemctl status systemd-timesyncd.service -l
* systemd-timesyncd.service - Network Time Synchronization
   Loaded: loaded
(8;;file://solar/lib/systemd/system/systemd-timesyncd.service/lib/systemd/system/systemd-timesyncd.service8;;;
enabled;)
   Active: failed (Result: exit-code) since Sat 2020-01-25 23:26:12 UTC; 10s ago
     Docs: 8;;man:systemd-timesyncd.service(8)man:systemd-timesyncd.service(8)8;;
  Process: 11799 ExecStart=/lib/systemd/systemd-timesyncd
(code=exited, status=238/STATE_DIRECTORY)
 Main PID: 11799 (code=exited, status=238/STATE_DIRECTORY)

Jan 25 23:26:12 solar systemd[1]: systemd-timesyncd.service: Service
has no hold-off time (RestartSec=0), scheduling restart.
Jan 25 23:26:12 solar systemd[1]: systemd-timesyncd.service: Scheduled
restart job, restart counter is at 5.
Jan 25 23:26:12 solar systemd[1]: Stopped Network Time Synchronization.
Jan 25 23:26:12 solar systemd[1]: systemd-timesyncd.service: Start
request repeated too quickly.
Jan 25 23:26:12 solar systemd[1]: systemd-timesyncd.service: Failed
with result 'exit-code'.
Jan 25 23:26:12 solar systemd[1]: Failed to start Network Time Synchronization.
root@solar:~# [ 1825.848150] mwifiex_sdio mmc0:0001:1: CMD_RESP: cmd
0x23f error, result=0x2

Manually corrected the date, but the WiFi IP address is still got
wrong IP address

On 1/26/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I build the image from Yocto thud and running it in imx6, usually I
> got right the date, but today I got a weird wrong date:
>
> # date
> Wed Jan 15 08:13:14 UTC 2020
>
> What could cause that problem and how to fix it? The WiFi also got a
> wrong IP address 169.254.124.128, it was because failed DHCP response,
> I believe that WiFi issue was also caused by the wrong date.
>
> How does the Yocto sync the date? Does it run NTP to sync the date?
>
> Thank you.
>
> Kind regards,
>
> - jh
>
