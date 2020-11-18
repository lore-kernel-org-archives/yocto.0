Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web09.13330.1605809319273860836
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:08:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=aANLkdYt;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Wed, 18 Nov 2020 08:33:55 +0000
X-Sender: bounce+53643+51416+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 6109
X-Received: by 127.0.0.2 with SMTP id VQvFYY3619394xhJE4YtWH0I; Wed, 18 Nov 2020 00:32:31 -0800
X-Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web11.21406.1605686749244252514
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 00:05:50 -0800
X-Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Wed, 18 Nov 2020 07:57:58 +0000
X-Sender: bounce+53643+51414+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 5023
X-Received: by 127.0.0.2 with SMTP id 4qxEYY3619394xLmqrqWVhKr; Tue, 17 Nov 2020 22:07:19 -0800
X-Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web11.20507.1605678037866479777
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 21:40:38 -0800
X-Received: by mail-qk1-f182.google.com with SMTP id y197so754371qkb.7
        for <yocto@lists.yoctoproject.org>; Tue, 17 Nov 2020 21:40:37 -0800 (PST)
X-Gm-Message-State: 9nfkhdJbNFwFQxko1nwSfFsZx3618059AA=
X-Google-Smtp-Source: ABdhPJwt3IMXMiWqyypq9XXvKuTrz820T2mGre0iX+O93FqqzlXFZE2qA9/TovhAsOmsbpal2+sJyrbcWfmHwGcg07k=
X-Received: by 2002:a37:9441:: with SMTP id w62mr3313091qkd.474.1605678036940;
 Tue, 17 Nov 2020 21:40:36 -0800 (PST)
MIME-Version: 1.0
References: <aWty.1605668341566593814.GDqu@lists.yoctoproject.org>
In-Reply-To: <aWty.1605668341566593814.GDqu@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 17 Nov 2020 21:40:10 -0800
X-OldMsgId: <CAMKF1sriFvsJbpDYGdQOxTuMtXLBBCbDNxO=c+E2zcxPSp_ogA@mail.gmail.com>
Subject: Re: [yocto] qtwayland compile issue 5.15 #dunfell
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
X-OldMsgId: <b5f609cdf1f546aaa23f421e8d8cafee@Exchange.sewerin.de>
X-OldMsgId: <MADEUP.16488B9785EAF15B.27344@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605688351;
 bh=zzRjU87y5whcZNfJXpRIa8/2uTCAuHEwIj+vEQLdJXs=;
 h=Cc:Content-Type:Date:From:Subject:To;
 b=aANLkdYtBucscMHzWrO4FGyHt+Li9k6Bo6x5Jtt7DSIbR2AmPAdK5m7XdrfT3kxk1dS
 Eho0HXCnnvjCN08K5OivrhhQ+pjkUhRdwLrQHcS34Ua/cSFRE67xO7NsAAUV1+qQyxV/V
 CH5ry604bBxZcCi10BkQXPy4jURtm5DatvQ=
Return-Path: bounce+53643+51416+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Message-ID: <42b4d5f43fd74a1c9305ff2c8bc11250@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="eBXPotGsSunCrOAZtXnl"

--eBXPotGsSunCrOAZtXnl
Content-Type: text/plain; charset="UTF-8"

Find  QSizeF

newSize(qMax(width, 1.0), qMax(height, 1.0));

in src/compositor/extensions/qwaylandxdgshellv5.cpp

and change it to
newSize(qMax((double)width, 1.0), qMax((double)height, 1.0));

and see if it helps.

On Tue, Nov 17, 2020 at 6:59 PM sateesh m <sateesh0457@gmail.com> wrote:
>
> Hi Guys,
>
>               I am getting qtwayland building issue using dunfell version. can  anybody help me to solve this issue.
>
>
>
> Regards,
> Sateesh
> 
>







--eBXPotGsSunCrOAZtXnl--
