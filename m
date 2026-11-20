Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7920.1795187575150754570
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2026 07:12:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google2 header.b=YTJlcHw1;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4a140e7405dso9273575e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2026 07:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google2; t=1795187573; x=1795792373; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aNQcIEfOZzwUgjLalbIQiUHYCcpHJmx8+t10lduspSw=;
        b=YTJlcHw1d5nF4FvpndcQycWQJbLyTIy59pFb3MDPzywiNywTnZPySM/CRUtqovYD+Y
         O6GizDUEOU5SIhH8K4SRGnZ8Vjmcob4d76s/e4t4XDNAYRJWezypi5O2qljI4YqMNUYi
         vrz35HCwcDdRhV6YBv+lpY8uWv5O+BVHybJ1JNvzYuGutVa5r+42gtTASg138SuxKx0t
         3MNVugzykP3RQjfXuln3KB0y2g/zTD1dsUolTK99yC00E+YJCYgChPrbbPJ1FAu3dyKr
         tdX1fWWANzshE+ke2UyocZBARAWpsykrJtH3osTgtxs5/0xRmOGkDXjc4TgVufT4L0Rj
         ZYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795187573; x=1795792373;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=aNQcIEfOZzwUgjLalbIQiUHYCcpHJmx8+t10lduspSw=;
        b=zMWHS0X7Wxxqhd+5U/AfusHK1571Dvrx8O62Tb5huazN+2dap/22AMxlL3/M1DwoTK
         l2FLS3nlEcYdNTs5qRKeiIykQiwpN+uob+uS0SdP+vx0HB6rXKW0iEfPHV4+Kag9ludh
         PGOU5BSmznKYx0FfjYGjhp/ca5x4RluOeGAlmPHAordgz1BTsnBPvn5oNyhU+8/RhyXr
         Iurj3I/AqkMH5s3b4EDns6ux+ziptiEL1vXa49zp5BgGDdnXlSPhahkLYtwWUx5XwLzQ
         y20aGsysFb6Nm7HdBsGIw5IszYeiYtdtOX4S7XRGE9wmeymlKcQWzHGyaaUW9BVTcHvP
         m3og==
X-Forwarded-Encrypted: i=1; AL+hErHaK1AJ5t3LvunWY6kbvIb9SixlX04Q9xbY2M1bjZ1UR58KEUBEVJx7mmXwCpAXM0ZGuFduHA==@lists.yoctoproject.org
X-Gm-Message-State: APuU4Z/DA0Mh/jcn1uvIxUz8/8fcxFM986sA1V1iw3+pGERLko+KbtMx
	BBzAlOWA4UAvzwXkDa/9nVL6H42PeJTuqKVvvbad9gmKjT1BXaCTy/rmKjMRrX4hRVCe86KF/Jn
	6RIg8g0k=
X-Gm-Gg: AYBFou1Mwpw9o667HCE+dxNl+surxiSRyyVQ87kV6DIU9H6wK8kHqnyOnQ+2p8LLRCP
	8eJ8xd7mpuyWYMhh5F7kj8sNvLwFT/RVRsVRnvXtLuco71hPtOpMY9geV2oKF/BsWKBV5HNhAFA
	K5ShTueVXKFTblP8XUnp9QtGPU3FvsJ4FzkcXZ0kSN0TF3FFFO5jjXYRvSNnrO1W2pZp0J/tIse
	7rDs2W/C7tdY+i16YT1ZZpGBXc5bxkvkVMIYmg9R9sQP6Xt1ORykmGzr2HF/jyyQMqDm7KUuulv
	f7QNtka0Y9KjsJxtPMHftjWuMdUEGD6KbvDWH5l1ujjAJMfLAjqq+kmufiQmC4fvvWlDVXsPLXn
	aiphV0CgMqPlZ/2GOktUWHIQGnln+kUlu3FSKJTWzvaQrWSj0ezVgkTpD0UdAqw8Sf053CE2wmw
	bCAvys5L3ykWm2F2W7hZ1KO+bEgFV37lWwpLccVJcX/AG7j8UIcPDcdvfGkhgdytZkrLnIJHw3r
	/+GaJjbsxYmUySPMEXNN1ZD9apbn/h6lLXO8Y1Lp5MZPOo2KFM2DQyhu2/GzxVAPwRSJzEg+f2l
	HaAtwQu7C45ty7QbUw/X0JP68h4fyOg+rXXB3BanV4uAdoJsA8wu/BUChB0V70ZTb6DBMyjfKug
	F7Cj+bU5dGh2PAKnz
X-Received: by 2002:a05:600c:3484:b0:4a2:133:45e1 with SMTP id 5b1f17b1804b1-4bb88812f16mr71744765e9.24.1795187573109;
        Fri, 20 Nov 2026 07:12:53 -0800 (PST)
Return-Path: <yoann.congal@smile.fr>
Received: from localhost (2a01cb001331aa00b03901bd7f693780.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:b039:1bd:7f69:3780])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb895ea0bbsm48551475e9.1.2026.11.20.07.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2026 07:12:52 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Nov 2026 16:12:51 +0100
Message-Id: <DN04VTG979YC.33JEYLQCZAU98@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.5.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <010101a1f96f774d-78432ac4-7ac8-4131-a918-627d037a8112-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a1f96f774d-78432ac4-7ac8-4131-a918-627d037a8112-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2026 15:13:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66809

On Fri Nov 20, 2026 at 3:49 PM CET, Pokybuild User via qa-build-notificatio=
n wrote:
>
>     A build flagged for QA (yocto-6.0.5.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.5.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/5161
>
>     Build hash information:=20
>
>     bitbake: 6e260eb6ab1631607ea414d9ff8ede1155faa5d9
> meta-agl: f5bae8295caf377908099079d810321d3acc2463
> meta-arm: 673e8d7c5dcd14de58092eb73e6ecc5eee5c1735
> meta-aws: a498da240af9a9c80a8a3d4bd494c2e12165c74e
> meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
> meta-intel: fcd2544222aa8e2f6caf100b854971cf1618a8fe
> meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
> meta-openembedded: c0fcd7cca3760ef24e087ac4a31b8f357cb204da
> meta-qcom: baecdeaf8f7fed25f553d4cc8f6ee554f548c6b6
> meta-virtualization: f27e2594ab43f4e596eb8e287e7e446ef4064810
> meta-yocto: e941c69844c28fc40c4f149251f7281207525abe
> mixin-wrynose-linux-firmware: d0fd372d1da9cacca04585f7a1b088fdfb32b77e
> oecore: 16a03ed6c2db2fa1d7edac4f288a74958a00eb9f
> yocto-docs: a361ccfc75eb853805e5acd4ab32b439f6d0af06

This was an "all green" build, so OK to proceed with QA.

Yoann

>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#768): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/768
> Mute This Topic: https://lists.yoctoproject.org/mt/122367495/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS

