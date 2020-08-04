Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web12.7801.1596555012276755944
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 08:30:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=abCahCJL;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.177, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f177.google.com with SMTP id v4so34385671ljd.0
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 08:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sGCAkFBEj2HnecQcH63TrLhtuVPVtAiqIgNEt7rMqGQ=;
        b=abCahCJLyEIxhNRxXdEEwcIz1Lh3kT7IZIpcVdymTd3d4HUuJLdyYpoY8QGYGThpLG
         DZk7p5ryhdWYMy2IfwIdXczSXLhyAQie13zf+9hc018PkqLhbTShHjSOJHwzAYP0PDzE
         MoiDfRA/vy+PJwmGt5yapCFWZIpj0X6hYwnluM/+3fstXYOxn2SIu7hN0DhL4zwS5/Xa
         fqllwDBf+g1h5rngRwzBGpzXymAhhhjrUtKsm6AvqHT8XPRQ4cRs1tMnSzM4EyjmSBlp
         tQyrOvjQlv+RfPMRvyz54rh4f0hNuqlhNh8nZU7ugSsxGvdrukUN8754yA7bR1h6BVxp
         CnQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sGCAkFBEj2HnecQcH63TrLhtuVPVtAiqIgNEt7rMqGQ=;
        b=TTsJGbWe9Ne02q6SrcdU6q+75na0wEomEnhVRmvqX3N6aKV+mUYIlcsSg2iDIkZ2N0
         S7WIDOjcqS+HCjn/394rwYcCDuh+jEZtLqMhlckxgWpitTHh1/XvpP2H+GXdzN+1mCjU
         uLock7TexmbP9FPZUqUMG4cEj2fty3aIotI2cjh+WXLzhXidw8pUmColX75MhVsr+WcC
         q9QcQmUKdRL1ptQa16fkTPblZj/mLR94QTYw+60dp+Kp96neD4/n3OuhMjO6/WB1Xq1i
         RsOzIWC8XtbF+Vofebs42VwElLQpGCA6rFYM6AYEQRmLkeqdtpbhdNWGtu3XqQC4myWI
         pG1g==
X-Gm-Message-State: AOAM530aepU0R8CRubAxh5GHMT02BywJAVyfjXMrOidsJHAKfaJc0YRb
	4fFOxhU27KzWI0aepO8khPJ/4MQ366ncn48TK77wmQ==
X-Google-Smtp-Source: ABdhPJzI7V/BrTyUj+hRmhOP9xPPqcIqVDF8Yr4mwnAY0HtEaX7AbzunR+Swfw7G2H0ZBgzMPuuke3U49UgrHBEn+5I=
X-Received: by 2002:a2e:9908:: with SMTP id v8mr5446833lji.410.1596555010218;
 Tue, 04 Aug 2020 08:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com> <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
In-Reply-To: <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 4 Aug 2020 17:29:44 +0200
Message-ID: <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: FLoraVLogs <eripflo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

https://twitter.com/TheYoctoJester/status/1290569609100308480

Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs <eripflo@gmail.com>:
>
> I am seeing the following error:
>
> Gateway Timeout
>
> Server error - server 198.145.29.63 is unreachable at this moment.
>
> Please retry the request or contact your administrator.
>
>
> Kindly help.
>
>
> Regards,
>
>
> Ripu
>
>
> On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>
>> Hi,
>>
>> It seems like Yocto is down again.
>>
>> http://downloads.yoctoproject.org/
>>
>> Could you please help solve this?
>>
>> Regards,
>>
>> Ripu
>>
>> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>
>>> It is working now.
>>>
>>> Thank you
>>>
>>> Regards,
>>>
>>> Ripu
>>>
>>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <mhalstead@linuxfoundation.org> wrote:
>>>>
>>>> There was a brief outage while rebooting a storage device. The error should have been resolved several minutes ago. If you are still seeing this error please let me know.
>>>>
>>>> Michael Halstead
>>>>
>>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>>>
>>>>> Also, I do see:
>>>>>
>>>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection refused.
>>>>>
>>>>>
>>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> I tried to go into the following:
>>>>>> http://downloads.yoctoproject.org/
>>>>>>
>>>>>> I get the following error:
>>>>>>
>>>>>>
>>>>>> Host Not Found
>>>>>>
>>>>>> DNS error (the host name of the page you are looking for does not exist) or Server did not accept the connection.
>>>>>>
>>>>>> Please check that the host name has been spelled correctly.
>>>>>>
>>>>>> Regards,
>>>>>>
>>>>>> Ripu
>>>>>
>>>>>
> 
