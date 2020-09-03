Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.8534.1599117749674976898
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Sep 2020 00:22:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dq8iR4GY;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: marek.belisko@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id a12so1561005eds.13
        for <yocto@lists.yoctoproject.org>; Thu, 03 Sep 2020 00:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pBcCcgZtNdDdjwKDwEAzbv/Fj7ELYc81byS0+6VHGGI=;
        b=Dq8iR4GYY7lS72DLBpokqGm5jgXSMxRRIwpGEPuAs2Qs3OunReR+i6QwVvmRf3KliX
         j0mK/TmFOquKCF6hvadjPC8ejs0XRMDR6rZVcRmdq0qNmJ/IYRfDDKzD0WCC1BdDk+Zm
         YfC40tPxHR1d6n57zn+9lOQ7KmU3oLy3fzrO3hXli1EJPMlb6LlYNNrB0j0COGZdhM1m
         +JIuB/U6xs4AhJDWJB0VpNoE49MbZtIsywSDYg/dxucIbW02buDbgD4E4LtefUFWPUn+
         snE0spLiqQqU/FKXd8R6eVSo2UDKWLiPOewPwj9yjdqkUATjIl744YxYRqW0OyEqXlD2
         QH0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pBcCcgZtNdDdjwKDwEAzbv/Fj7ELYc81byS0+6VHGGI=;
        b=sPdOPDxirW8k5cOJZ/YT6qJ6zzbnAMxXwp4Z6vPJ+ER1eiIM/leB1N0KbuM4lLNjgO
         hLkkWL5qNVOd1jpUydnBwkpXbw7N9WT7qEQMmRdnJr7preymlJ0szacuVdcuqFZ2BdzZ
         dkNYQ+2/4zFq8GgcWoaib6eo+pmTEjtziJAVRCfchOkrO+lrkasyqTD+zRxPim+mXVIa
         Yb8TStxeSIgdSmPd+8jS97WNXrSpN8J0l5JdnG6elQgAx0hz7MPhn0OFeR7WW3yt4Td4
         Fg/Dg5KM6AFKBZjSWgxLHeakPWiDULqbNYUkzC7y6xlmr3WuolsN9DubzT7094eyU33u
         2D7w==
X-Gm-Message-State: AOAM531sPeSh4j0FDft3Rqq7HOCpOugTlvNfCCuSeWXyDAWJqQmC6PMF
	Rrnp27gY5hC3jVJVxpnODB854qgepRUPoFIjCtY=
X-Google-Smtp-Source: ABdhPJwsbCJWLAlWCUFHMOGuVEhrmjeuTZudKPwekHZY1fXu9ucN68W0wOpKm8VnSrpp8tb6S1leONzN+W4w8DDAQ5I=
X-Received: by 2002:a05:6402:1c91:: with SMTP id cy17mr1732037edb.366.1599117748069;
 Thu, 03 Sep 2020 00:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1somZ-N0nEGxbixbF6oDD4P2F=ez8MHS4wdUu8uN4Djohg@mail.gmail.com>
 <16886.1599116165817202571@lists.yoctoproject.org>
In-Reply-To: <16886.1599116165817202571@lists.yoctoproject.org>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 3 Sep 2020 09:22:16 +0200
Message-ID: <CAAfyv35Fy-HeWwfwVhyHSuMji0JuMqxefE9OAyYBEizHSgri3A@mail.gmail.com>
Subject: Re: [yocto] How to integrate kernel-module in yocto-dunfell? #yocto #dunfell #apt #tx2 #kernel
To: kilian.brandt@tu-dresden.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 3, 2020 at 8:56 AM <kilian.brandt@tu-dresden.de> wrote:
>
> Hi Khem, thanks for your reply! Now I am a bit confused. Marek has sent me another recipe:
Shared recipe should be the same as one from meta-oe :). So you can
include it in your image and it should be build then.
>
>  LICENSE = "GPLv2"
>
> LIC_FILES_CHKSUM = "file://COPYING;md5=72d977d697c3c05830fdff00a7448931"
>
> SRCREV = "6003f9997587e6a563cebf1f246bcd0eb6deff3d"
>
> PV = "1.0+git${SRCPV}"
>
>
>
> SRC_URI = "git://github.com/hartkopp/can-isotp.git;protocol=https"
>
>
>
> S = "${WORKDIR}/git"
>
>
>
> inherit module
>
>
>
> EXTRA_OEMAKE += "KERNELDIR=${STAGING_KERNEL_DIR}"
>
>
> Do you know if that is allready fixed for kernel 5,2+ ?
>
> Best regards!
>
> 

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
