Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web09.6609.1605776672537444360
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 01:04:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=nQ+f0KtV;
 spf=pass (domain: konsulko.com, ip: 209.85.210.42, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f42.google.com with SMTP id f16so4588899otl.11
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 01:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wWYOiHfzSCqs41IoGqliG2b6qEM44SdRMWptltDHA0A=;
        b=nQ+f0KtVOsK8xwiU6L/Nv7FlvCIjFw1B8ws4SyxN3Ha6BODajzEnHoyjNBobTeFK1V
         Bx2YPWOwNp4L3vwSTWORapKxzP6AsaG1rd3jeQoWY4Y9BF72dgIe+bb3DhTNySPiFSCW
         4GytPoR18dAxwBW3cWPA2+RQgCz333nxlJbxM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wWYOiHfzSCqs41IoGqliG2b6qEM44SdRMWptltDHA0A=;
        b=GPK1JQnk5hfv5CLkhKV+ccNur2I2wKuMUhx/NHLfB1Ce7Oci6F4ltlqBO/mPDkX2Os
         zqLAL7xfL++6tT5igI+kbBQPDfbUiw+bgAHlsiV+4k6woUck74hONkpA5VjMDoBtSHfN
         EB4S6EXIgSt9NBqhTcLG5PzoNiyH9EFv6z57xPRP7TDrGm5af8bgqYTwlOAvtpDkjyYP
         HeUVYkqLcM2O8frEfjY7fFuPORX4VXl1U4CMKCVtkvZdodRVMI6lE1YE+t/EqUaFhxVo
         BYwR1izmcoGHPJyq0D3RdFpCYyyNM3ZNQ764jTkX5UodGo2VHuupfXQr2eB7+Tgli4V8
         e9Zw==
X-Gm-Message-State: AOAM533K/MRQpx/1+JXVLzIpUp1jvRGpgxAFi/pk4FY3ghVn2yG9RmMk
	Ly5RyRs5LjETpSTjccfLQ90XhiLZgiOK5lH5HR/Dvg==
X-Google-Smtp-Source: ABdhPJyTaqcaWGX7JaG3EhYlgZRPuXLWIPHMvb6101JyvyHhKsd+hMFALFmGcfLsW7ImKGxSZr/AYWpu4CeqDziIyQo=
X-Received: by 2002:a05:6830:831:: with SMTP id t17mr9906890ots.92.1605776671927;
 Thu, 19 Nov 2020 01:04:31 -0800 (PST)
MIME-Version: 1.0
References: <1648D8FA1BEC786F.8629@lists.yoctoproject.org> <CAJw=dJ9p0YbqYgMa_7R0MhaLV+ioxx_p7fxn9w9DmFQA1KQ_Jw@mail.gmail.com>
In-Reply-To: <CAJw=dJ9p0YbqYgMa_7R0MhaLV+ioxx_p7fxn9w9DmFQA1KQ_Jw@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 19 Nov 2020 09:04:21 +0000
Message-ID: <CAM9ZRVv2XjRF4tJijLmRXkDKdOrK7s=fe4H_P_iRgONd+8tocQ@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
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
