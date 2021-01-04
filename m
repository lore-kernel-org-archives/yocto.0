Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web09.12310.1609760772192191790
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 03:46:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=kn6O20VQ;
 spf=pass (domain: burtonini.com, ip: 209.85.167.45, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f45.google.com with SMTP id o19so63656446lfo.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Jan 2021 03:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GxEXas2g0bPyRx5rVlqlLcqQUcqBkuRjghbNvyEnzbk=;
        b=kn6O20VQ0XPYe8/H/GVLuj9rYaK369K7g9ynjX7nHLoQmnwo0X7MaeE96RnLd/shCh
         xGuM/Nifysnruu0x0HU6l6JBgK7qLwK9JRMv4RLb1V3V2/fRZ0EPPm6NI+LxROVgTtZI
         aqMYEDM0IaknwtaaKbLuALtM8PfEDuU7Urc4oSX5WUVY/19ouS+1XYifrF3S4Won6266
         pgKEtDi7yIK6HLyyXZzZDuhBPhxJYpTUtAly+6jBdkS9Gg/ZG/2h681mY9xvLNpiZ3eZ
         YaKr0hWOWZd0PNoMaGqB+mnlndARJ8JztMnRI2Os9zjGsL+QgT23BzJ6f2xb5TVYS4t/
         6eQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GxEXas2g0bPyRx5rVlqlLcqQUcqBkuRjghbNvyEnzbk=;
        b=CIMdEMP4w5wEnOeFo4FxH6O0KxpSbZ61CZUOjoUXKq2/1cjThfPYLk/2t/pzkscT3d
         nTbuTQ3fJr3yT8kuHLTJOP7AIkT9M4zsRgaScHSt5CY2sLqV/+a4oeQrxLWAQCse+m0t
         xpRZShEKgnu7Un1fBgOx7thBfXxpwIe47y00DkUgK7zyuUy7IhCSQk2qmDCbBoipc8eG
         TGr+BVvFEspeY8jNpJKlTQFPtD5MNoxxBtphaaJlZ9Pb7Vi8d6RKD9613PrsJTjCpuYL
         jvJ84VqKiJZfsYo5SjheOlersJplxnYnt6MlAr8O+6Nhw1WdDn2PlH5bVUf6BqH2GW9s
         Z3Gw==
X-Gm-Message-State: AOAM533xbnmUt8WG82d0yfHyZRgti8HoS0pIQ47mGvNE5xZPCsaw25ZX
	VqJ40guWPfmX5UFltXcCFDYlByq12HL5KwCCUE0xZw==
X-Google-Smtp-Source: ABdhPJxdLYydH70VkxnjggBEVQvy4Ju9zHVRs8UQcRP5ExobNtBOPCgQ0G+JB1Ny9rfzOnBXbJk4srDNCf8VfLAoIWc=
X-Received: by 2002:a2e:a377:: with SMTP id i23mr37977597ljn.103.1609760770144;
 Mon, 04 Jan 2021 03:46:10 -0800 (PST)
MIME-Version: 1.0
References: <AM9PR09MB47399E93D60FF11A88E243ADA8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
In-Reply-To: <AM9PR09MB47399E93D60FF11A88E243ADA8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 4 Jan 2021 11:45:58 +0000
Message-ID: <CAAnfSTtZT-gsp7qaisSJiqJmKNYiNiL4NjYzs_9+wU8GCEvUfw@mail.gmail.com>
Subject: Re: [yocto] oeqa: test cases at the end of the test suite
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 4 Jan 2021 at 10:50, Konrad Weihmann <kweihmann@outlook.com> wrote:
> I have a few oeqa test cases, which always should run last in a test
> suite (log and file collectors for instance).

Those are not test cases then, surely.  If you want to run actions
after test cases to collect log files then I'd implement that as a
decorator on the test cases.

Ross
