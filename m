Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
 by mx.groups.io with SMTP id smtpd.web10.3408.1588587784719804745
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 03:23:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=TSjOhQ4E;
 spf=pass (domain: burtonini.com, ip: 209.85.167.65, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f65.google.com with SMTP id 188so9228437lfa.10
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2020 03:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=xZ8PJKu8nV//fpEbIZbkG8h8pqULmcI8aaPfzympyjI=;
        b=TSjOhQ4EBkj49r1kaVVRXJZVz+nxitMAGk/1MTNMgHfg3v09IaSFnABAg32NMpImJf
         fk1OLZnRPdPhXIHsFPvt2DCffy8wTz5HhFkcnO3ELzPyPbEp3lgM0AR6MCK4QvpwV7Dj
         8AfQLfrCYSl+hWjDiMhAkRCIPNRETP2VS27N94IBoslXb0gIykqoX7UIBga0ZyxIewOa
         vuRjqUhTwr/OpZPqh6WVD3A2osrpw4925T0/8/PT7dryWTuiRiM2jVnWhMSf02JIKJJr
         EEPCo1I3l/avR2U6sAq/0oPDrBG4GzL9cIK9H+YidC22sZwY1eFyJmz24ks17uWFW0sl
         IrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=xZ8PJKu8nV//fpEbIZbkG8h8pqULmcI8aaPfzympyjI=;
        b=A4VP8o0EWcxH8VTIhtIXxunuZD8U2XM5RXahrN+/edar5mSZ2XFocNlt4jpjI0Q2J9
         IjNZjScqv339ZBv0hmNNPUmUOUZni8ty+1orjUWhtrJwbRZeEo+73Jqgnx6zitU2K5pq
         xAoFKGTj3v7F2yOT+0JcHFj3an6DiN1rfsyOg3BqpEczMxfnwOWVHvbSt5ruRKu4/GLJ
         4CNMB4pOYvfrf8ES+tAu3A2Uyd7u0j2tF5fUVf/d3OMicg8M1x547aHHC0OIF7KdUdBu
         uVMhRAdNt65NkaYrNlcfcGPhQL/p77izReOFZl9AEnyF/fIoW0eaHLme2C25RuAKi70q
         v55w==
X-Gm-Message-State: AGi0PuYj7QvbuLkLe1SX1GGKfhWrRsnGltAbhGxPxD8yGtv04Ajl1bu/
	rGPBJgZWYHkF9UtJPASqbSU9dXGgZAOe8FI+0dLjoXN2w58=
X-Google-Smtp-Source: APiQypKB/pLQwDIuEbY0NLPAERMiQuU2ozzF0ekjDokwah8fzaYa04pi1B0HCPN3Cb7woEoQK23Nv5liACiRLa7LTek=
X-Received: by 2002:ac2:4248:: with SMTP id m8mr11223154lfl.211.1588587782745;
 Mon, 04 May 2020 03:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <Mmnl.1588569898079183849.jTqF@lists.yoctoproject.org>
In-Reply-To: <Mmnl.1588569898079183849.jTqF@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 4 May 2020 11:22:51 +0100
Message-ID: <CAAnfSTuaRnJhSSakaP4p9_1ykT9a-z+LJbaUb2m6Mb6cpe3HJQ@mail.gmail.com>
Subject: Re: [yocto] BSP layer for Firecracker: Sensible? Advisable? #linux #yocto
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 4 May 2020 at 06:25, <mark@taqtiqa.com> wrote:
> A goal will be to squeeze out maximum performance and/or minimum-size. so=
 I'm wondering would a BSP layer deliver any benefit?  The Firecracker VM h=
as a very small device list, with support for Intel x86_64 and ARM64 CPU's.=
  The devices are: "only 5 emulated devices are available: virtio-net, virt=
io-block, virtio-vsock, serial console, and a minimal keyboard controller u=
sed only to stop the microVM"

In that case a tuned kernel build in a dedicated BSP would make sense, yes.

Ross
