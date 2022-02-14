Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6741EC433EF
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 12:02:33 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.33124.1644840152246783961
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 04:02:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=bQuyQdOl;
 spf=pass (domain: burtonini.com, ip: 209.85.221.44,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f44.google.com with SMTP id k1so26424336wrd.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 04:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qsRXnlbx4swKy4We3tH6VqKRZmevsws93jCrNofZuIw=;
        b=bQuyQdOlY33TphTKnDvlGZ/d/bXPw9w4wHMucDbF8nWNX/pBG8w+EwFAJgi9FSY6lo
         PQsJcvMjuKW/62rmYHpAXeqC5hkL1v6CCkz62ot5vIWEpaojeuOPVPAlNbG5agKVU1+I
         XWSJofjA9MedBfgvrNb6CQjDKUUt+70f+6cYXXUAQGsWoBGWRttug6eOQ0AsAA2rJAJ8
         BY9dtjQ6K/a0+oDrV9s4zEeF1UK7UpECE28ekveotsysxO1kitOWXwFrGU0h4jJJfD9z
         dpRW1PcIUQ34jxu3qiqiSxIj7MX9pn0kLKbqM7WPzlzdI5ZzaEIoY6SngrTMBl5BGU6x
         ovcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qsRXnlbx4swKy4We3tH6VqKRZmevsws93jCrNofZuIw=;
        b=PUTcq/uV3z4OQf9saaYPgpNjgFF8PwGS850JD/1t6RmEbObIjq3D/s7NHUrYtamPmZ
         2pASSIvXCSeY4wU5NDTiICmWHd4BuaaHWP32jWpTvruILKYlcP/WuYsmj+W0wQWrWeUh
         YHo7pw7RTWC1KqFKG1tR2bJ+6llbfPKcCGPOghA0ETFmTeNqYdT4SDjOEDUgcaB2DYqH
         sZJmBBOAK/ozAe65dAtjsOXNqWWTmzM0Ywu5WawA/96OwexHYnKNdgWFPtMJl0NbYeeL
         VN3bV82H+QDgZ5pmGN1zMvVNJKhiCraWUouaBuGhbcVU0XLxbDi9tbgeE3wapCLlae0Q
         XATA==
X-Gm-Message-State: AOAM531q2vgPwnFA/n3bMFD0dXWu4W/Z2M/NSiTelVi93xzN1CecXFwh
	tJO8UvbvhAY96yPVzAgWpwwrGAGUQrgPkaA/OCttpg==
X-Google-Smtp-Source: 
 ABdhPJzaWAJU3MiW/eedBiKqBYbGj1F+q5zBuuFqyuNeConBjUgDq9uiSRCHyTcHyn+e0rdaqatIMiKhOPRAY6nCZhE=
X-Received: by 2002:a5d:61cc:: with SMTP id
 q12mr10802644wrv.497.1644840150541;
 Mon, 14 Feb 2022 04:02:30 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
 <9B08FA30-5887-4075-AA04-4D1CD39B7E2B@redrectangle.org>
In-Reply-To: <9B08FA30-5887-4075-AA04-4D1CD39B7E2B@redrectangle.org>
From: Ross Burton <ross@burtonini.com>
Date: Mon, 14 Feb 2022 12:02:19 +0000
Message-ID: 
 <CAAnfSTs7GOXCuSwO+VVei4uW4gMVJb=0kfkngtPFXB2vZT1vHg@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on M1 Mac
To: Robert Joslyn <robert.joslyn@redrectangle.org>
Cc: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>,
	Anders Montonen <anders.montonen@iki.fi>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 12:02:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56182

On Mon, 14 Feb 2022 at 00:17, Robert Joslyn
<robert.joslyn@redrectangle.org> wrote:
> On my 2020 M1 MacBook Air (8 cores, 16 GB RAM, docker using 8 cores and 8 GB), the build took 84 minutes. My desktop with an AMD Ryzen 9 3950X (16 cores, 64 GB RAM) it takes 21 minutes.

Try doing the MBA build with the laptop suspended in the air on a
couple of pencils.  As the MBA has no fan you might find that
increasing airflow around the laptop makes a big difference.  And
giving the container more RAM/cores will help, obviously, there's no
reason to limit it to half the power.

Ross

