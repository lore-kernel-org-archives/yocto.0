Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0144AC10F1A
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 22:15:15 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.4269.1715292907056510058
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 15:15:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=GqzwHGdl;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.176, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4df3da90b6cso474551e0c.2
        for <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 15:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715292906; x=1715897706; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KvqLVlhBAi+NFK98M1mBC+flxGcaSYmv+HtbWIUxSww=;
        b=GqzwHGdlye60LEHCMdkIZDXxarTZKkn4Twrs8O0C/R7ky3HHGRhPcpytpW9egn2ZmC
         i9kUSJRCtgpd1HEwxNDxG31cZNNevwt5G9ruR1SszRgmjPNbt5Fla7zV8Kq8ZhgvIA0V
         bpDHwhISHWyF1ttvonTySgrSIgTUhtzskrDmG6CA/n0+g7iwd0wNp8LhhXGjd/pWSZf+
         fQUYeIhtvq5FmarS1yIEyROKYqXcAMuuqHssaGOgvA2P8HAWsofm9XVpVb9G+rzr5LRy
         ugGUGsFfRQptAPHFtEqmFOmKAItT86yLkLYWJJqfLWtPtvZgw9BYVdB3Lz6dzqQSSwlK
         JC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715292906; x=1715897706;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KvqLVlhBAi+NFK98M1mBC+flxGcaSYmv+HtbWIUxSww=;
        b=xP1kolmWr7FmZs5I6csqNmbOm+l/6q+yRhr7xUBvqbb/uOPzvYjLcww+tj/f0YQXHc
         kc3+vdfyQythf5MBTrT8/wYnt2dKQ2zguhWYiMfNzNrGUFD8TICW8D7YcsNTmzi913o5
         u5zNPNp4aP/Pl4VayKKEqpcNfNarPtoJeflefkz+ntSuYIEp8khfr6uqUZ2q2Xt/mDSM
         aFzjXYSsxxwPjx5gBY3K0jOZUuHGa6+plyZZBfVFHXsnSLNftuVAwZKjIHSB9i3N4la3
         ufBKa+0dWXwovHH4UTziW8IQyX7731cdEEi8kQlsRRJYCuJPKJqmBx7D6YgZl5nxyx0m
         yWbQ==
X-Gm-Message-State: AOJu0YxIdf2x8gzpik7FEbMj5UnR9q9t9llqCO1yex7sRAU7Y+gKMdub
	Old7aR/76uf22v4t1bXOyTF25bklAsZTC+5pwCBdph72oPGqGoJjzLF9A8YEUSs6hj74YRqmrj4
	seFc7I9Lh4p8L6HIjxowJjQVTGo4cZwQjsbtpVB7dvQFsLqBp1Gc=
X-Google-Smtp-Source: AGHT+IE9CmhMf2NQx9HnWnVJ8XXXES2FX/H46mxFYXlaDVgimjycTdiIsGO16wjekf36vY35wNGy1JfyQ+UB6JhF428=
X-Received: by 2002:a05:6122:328f:b0:4d8:74cb:e3c2 with SMTP id
 71dfb90a1353d-4df882e92femr1189464e0c.9.1715292905752; Thu, 09 May 2024
 15:15:05 -0700 (PDT)
MIME-Version: 1.0
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 10 May 2024 10:14:54 +1200
Message-ID: <CANuMBWHyvD37i3bvOGacrfKC0-q9-d+P1=AjW46QehF0PLUuAQ@mail.gmail.com>
Subject: Some dead links
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000556d8f06180cc022"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 22:15:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63068

--000000000000556d8f06180cc022
Content-Type: text/plain; charset="UTF-8"

The terms of service that you are supposed to read to sign up for the Wiki
is https://www.yoctoproject.org/about/terms-of-service  and is a 404

From the page: https://wiki.yoctoproject.org/wiki/Newcomers

"Rudi Streif gave a great talk <https://www.youtube.com/watch?v=cy-eyYMbEhM>
at the Embedded Linux Conference in 2015."

The link to the talk is a youtube page saying "This video isn't available
any more"


Worik

--000000000000556d8f06180cc022
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The terms of service that you are supposed to read to=
 sign up for the Wiki is <a href=3D"https://www.yoctoproject.org/about/term=
s-of-service">https://www.yoctoproject.org/about/terms-of-service</a>=C2=A0=
 and is a 404</div><div><br></div><div>From the page: <a href=3D"https://wi=
ki.yoctoproject.org/wiki/Newcomers">https://wiki.yoctoproject.org/wiki/Newc=
omers</a></div><div><br></div><div><p>&quot;Rudi Streif gave a <a rel=3D"no=
follow" class=3D"external gmail-text" href=3D"https://www.youtube.com/watch=
?v=3Dcy-eyYMbEhM">great talk</a> at the Embedded Linux Conference in 2015.&=
quot;</p><p>The link to the talk is a youtube page saying &quot;This video =
isn&#39;t available any more&quot;</p><p><br></p><p>Worik<br></p><p><br></p=
></div></div>

--000000000000556d8f06180cc022--

