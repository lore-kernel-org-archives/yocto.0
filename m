Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web11.13418.1605809180709065325
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:06:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=CIPPeqe9;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 09:12:03 +0000
X-Sender: bounce+53643+51429+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 4939
X-Received: by 127.0.0.2 with SMTP id vusvYY3619394xFAaK83keLe; Thu, 19 Nov 2020 01:04:39 -0800
X-Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web09.6609.1605776672537444360
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 01:04:32 -0800
X-Received: by mail-ot1-f42.google.com with SMTP id f16so4588899otl.11
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 01:04:32 -0800 (PST)
X-Gm-Message-State: RAiPOiy9IxL9pAcHjVT5oF8wx3618059AA=
X-Google-Smtp-Source: ABdhPJyTaqcaWGX7JaG3EhYlgZRPuXLWIPHMvb6101JyvyHhKsd+hMFALFmGcfLsW7ImKGxSZr/AYWpu4CeqDziIyQo=
X-Received: by 2002:a05:6830:831:: with SMTP id t17mr9906890ots.92.1605776671927;
 Thu, 19 Nov 2020 01:04:31 -0800 (PST)
MIME-Version: 1.0
References: <1648D8FA1BEC786F.8629@lists.yoctoproject.org>
 <CAJw=dJ9p0YbqYgMa_7R0MhaLV+ioxx_p7fxn9w9DmFQA1KQ_Jw@mail.gmail.com>
In-Reply-To: <CAJw=dJ9p0YbqYgMa_7R0MhaLV+ioxx_p7fxn9w9DmFQA1KQ_Jw@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 19 Nov 2020 09:04:21 +0000
X-OldMsgId: <CAM9ZRVv2XjRF4tJijLmRXkDKdOrK7s=fe4H_P_iRgONd+8tocQ@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605776679;
 bh=H3TnUNynYGeAJ4thqi12kmXAidsu91iRrT/afQ+nMiI=;
 h=Cc:Content-Type:Date:From:Subject:To;
 b=CIPPeqe9N+skUW5r7iVKz3rwTrrC7LV5q1+qD+2UXhWLE4MyJbcOdUEKTXFxhLJerjr
 +wHMLbRlDtPPXiGCpzpDzDXZ2RKHvUp6mdbhsNLmkLV5l64dhc4bdL1nzXGbOQqRPUJrb
 XKm3+PUuVphrNh7xiIUulVpSKalwzpYmNjQ=
Return-Path: bounce+53643+51429+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <641be352d5804d959fbff1246b356641@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="nNRK7cbM3p4ezcDEBfEr"

--nNRK7cbM3p4ezcDEBfEr
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Nov 2020 at 08:40, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>
> Hi ,
>     If anyone know , please help on these .

It looks like your original email was sent less than an hour ago, give
people some time.

I also recommend looking at the docs yourself.

Thanks,

-- 
Paul Barker
Konsulko Group




--nNRK7cbM3p4ezcDEBfEr--
