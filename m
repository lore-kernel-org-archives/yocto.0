Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9469.1579990529415293867
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 14:15:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RhyQhfpg;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0492E01548; Sat, 25 Jan 2020 14:15:28 -0800 (PST)
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
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2E0AE007D4
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2020 14:15:27 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id s24so4360827iog.5
        for <yocto@yoctoproject.org>; Sat, 25 Jan 2020 14:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=VWVmfizEjVLaZuTVBm8M0cCn2Thz9BTw80mygkEXzfk=;
        b=RhyQhfpgolfPCZUc46vUp/mChUhovHY8KBC3iej2sSvx5COJexRqonMBINi5iWXylv
         z5dBSgOPpwXqnhJbnvALpawNp30MYYmAMVnAyiX/S0CGx1misfiKLWVW8NTKSgC1l/Fi
         8OEmlLNpMAmBrdcOQiZP6btIybYFksJtVkDjRFOVF/OPPnlMDZ198pyoGDEeJXHB7Ii8
         o4Qr9BbzAnM+Ot/2x7XVWomO+pHL4Dhjqr9Sel7KDJ6lLwciwbMIYh+gcRpX25zqBIO7
         kauf/n/OBS977KxH/j3fdkIukB90uIOgaFJ5oC1NeOOarBp71zWsFFS96t5Je8G3pQU/
         EUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=VWVmfizEjVLaZuTVBm8M0cCn2Thz9BTw80mygkEXzfk=;
        b=YbbLXyMBpWvtjtNGiyxW6DcvdTduHljIsSV64BDHIeJRKXFhmaIipjTFFqVImKP9cD
         SShbsxwhOQx3HaI5tt+sgNWb4u+bDlcBlyRGspN4wITOYS7AXSwb6SBDJsQeT2XDCSLG
         47Ezm+ny9q/wdZe1A2N7LA8vcDstS2xxDxv0e4+TgZs0XAtyUO7bJqByQhXvS5TGJS32
         WZVGFkMvqbOzWz3+XOCwtArdQ1e90Wf5z8j87sYMX6N5OQBAgNC2jjWRrvwPyyXn7Y+w
         yHYW6IUEwNTYOGjh3B60YPcJ9CwUjctWvky+G6AwkagwFeLx72n2K32PPKGT185Lcv4T
         GxXQ==
X-Gm-Message-State: APjAAAWrUzKmHNQuP8JidAEMwA77iKLAglK+lucxOZp/OzirFdkUZWHh
	hujd73TKH2kX2PpeWNg6Vu0QSkxCAg77Z6XQk0lPqMtU
X-Google-Smtp-Source: APXvYqxMWKUTkSBnz5myUHdP5kfKcDNPjvbOSULeCz/pdGKK0A5PUXFbZ4RfOkF7bG45nJeNkBLlFapSnPXzh+HRhPY=
X-Received: by 2002:a6b:b5cf:: with SMTP id e198mr7176092iof.302.1579990526925;
 Sat, 25 Jan 2020 14:15:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sat, 25 Jan 2020 14:15:26
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sun, 26 Jan 2020 09:15:26 +1100
Message-ID: <CAA=hcWSXZWO8suo5+DNHYUF6yVxH3d3h+FNUfWw1-EMxakKvTw@mail.gmail.com>
Subject: Wrong date
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I build the image from Yocto thud and running it in imx6, usually I
got right the date, but today I got a weird wrong date:

# date
Wed Jan 15 08:13:14 UTC 2020

What could cause that problem and how to fix it? The WiFi also got a
wrong IP address 169.254.124.128, it was because failed DHCP response,
I believe that WiFi issue was also caused by the wrong date.

How does the Yocto sync the date? Does it run NTP to sync the date?

Thank you.

Kind regards,

- jh
