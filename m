Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web10.1568.1610098101167033539
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 01:28:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=bcFCJ0ch;
 spf=pass (domain: konsulko.com, ip: 209.85.210.44, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f44.google.com with SMTP id d8so9095985otq.6
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 01:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sO3+QzXHHVvXFMnuGk/HGQezhERj2HILh1qFwy5nxOk=;
        b=bcFCJ0chFMwyNzPsyT9M8NJ3PIrbngNVepg7yePnkN/ucXnXdJ/6id4Sl3U5grYaoX
         hptMwLS5YBT92cUxqacp92YhB/AcAyZdJ2e4jTrIQKX+4f3AmjrLCe7QOeMO4u/SQ9K0
         RRrw89pftAh7C92mJWnW0/jjCQE3os27EEcxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sO3+QzXHHVvXFMnuGk/HGQezhERj2HILh1qFwy5nxOk=;
        b=Q1fZWYY5ffxVxtHnq2SCci5eNhRPC6PXRqT7vCy5YU0pjWt0/kAaHf9NMbZIAmge+1
         wzJltWkFNRvhyXYdx0nriaFakBMW3tBMl0MeNe+TfqGIs3ve/IfZ8wq+0OU+kYtRCrC0
         ISW3eggMH7uysZRTj6WmMqtOFS+7ilaZd66I+MKSLAw57WKrNYFvshe1C3osnO7IM5EU
         2Hag2XV4lthYwMKeZpq3r6VxP81kaETKIqxugOf+/NLsM++xT0U2RCbC0wSI5pgjC4y9
         IrxI8aKHIKvyHIJPKyljC6MnEKXV6KbOqHiZLtSV4+MRoB5FeXHkJLvpObDm+4Wv01Qk
         whtg==
X-Gm-Message-State: AOAM5305mDsd9WOKiReE2O/kyUktEhsNtBy33/kr2q2o40hvlrIFxPz1
	Lpsm9IJZOZApT+ziAmwlfQX8MaobQnqkalbKf2vKcg==
X-Google-Smtp-Source: ABdhPJyisWvkdgVILwLvN0HrAMN3VOV3RKXQ+H8XWPlmbLnFl4gZl1lqfSz2jfiMRcNQADLB51Yh9HftMl6vaP0kc1c=
X-Received: by 2002:a9d:1725:: with SMTP id i37mr1907320ota.258.1610098100524;
 Fri, 08 Jan 2021 01:28:20 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVs9ywVZ2i9q5k5YUei9QUncZEez9C187XXdnADZk4e0uQ@mail.gmail.com>
 <7869.1610097591233364461@lists.yoctoproject.org>
In-Reply-To: <7869.1610097591233364461@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 8 Jan 2021 09:28:10 +0000
Message-ID: <CAM9ZRVtYh3hF91C8Beh9LBLkPavrAVtFOYf8yhfTopeyXPtGTg@mail.gmail.com>
Subject: Re: [yocto] Unable to extract tar file #dunfell #yocto
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 8 Jan 2021 at 09:20, Vijay Rakesh Munganda
<vijayrakeshmunganda@gmail.com> wrote:
>
> Hi Paul Barker,
>
> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed. I can only see it in the downloads directory.
>
> I'm Yocto Project Dunfell version.

What I mean is, do you see the file
"libopentok_linux_llvm_arm64-2.18.1.tgz" itself under ${WORKDIR}? i.e.
has it been copied instead of extracted?

Also, please quote the email you're replying to for the benefit of
others on the mailing list. Replying inline like this is preferred.

Thanks,

-- 
Paul Barker
Konsulko Group
