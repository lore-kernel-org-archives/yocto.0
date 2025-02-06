Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9686FC02198
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 08:23:43 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.35537.1738830223033688536
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 00:23:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B8vASRuB;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6d8e8445219so5262766d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 00:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738830222; x=1739435022; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LliXX0guBGwSMl10eGvtZplOeDbASYiBws5WPMFZmZs=;
        b=B8vASRuBDit3M/WWurKPO2PYRnk6UgKtkbAxjSI8jOWMVsaErraL3K9oXU5Cl74evn
         hqrjKFYQbeQRhXvGWD/uQdAXMt1WUagYt4oh9rxTlcX1zXPOrtYiF9/k0mPxjFEdDQci
         3xAQ1UK/UETysjRm7JRiRJRJpVAsYvgYl7czKs9lNdRvTDjirS1h+w4sd8b/e4G8ypk9
         4E8pGyiLro+2zq5bSIh8YDcoutrRbltgwcapaMgkBmAFv204S8KcLWmJ3UKL+2kF0e2U
         sA366Gbhx2BlWW3Rt6xjWPmms30XE7xR2myqzUw2p2KpYElmcC2A3HcwBWA6ZfKm1Lwj
         kHiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738830222; x=1739435022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LliXX0guBGwSMl10eGvtZplOeDbASYiBws5WPMFZmZs=;
        b=ogM53gc/0TBLNTBMuSDn4S3ZRrEfBqPR5+YiQoZpRfDQQ6fQIcrc+LazKV7FADT8qv
         wpvmqlbHHi+SqYXKjRGd4JZBWPjT6kXBJweTls5EPpnnh7r5kGhnkQXLXxqAmEEsd3qy
         AeFk22oDSYEqr1lQII0A8mjdXRdkxT06g+Y9abq42gYrKPqMHT82fW/QU7k8KOehUSS1
         jhhuijOMrHjg4mmgfrV1JTF3qi4/eu5/NxZmVvKQhutDsTgzx0595neEncC7uRaTFZ6L
         VXOqWPWpwGCISbYP+sF28qDzOG5WV/Kv2RNuROlu+codHgyIe49hddZrW6mBNO4B3HQu
         qixA==
X-Gm-Message-State: AOJu0Ywzp0RpijOFYYeKBP9Ib+etlz+m0D9SLpB7ULpVHSqjZT8hWAZU
	O4HAa9gncwWB6Dc+dHUb5iSGK/b3KqdIt3L4m1i8EH9TC0ScrZyxEYo0Db9NQ6kQSQmL/qBaEVR
	Xi+9nmk9nPf2713suV1e5nGNrWVkwBg==
X-Gm-Gg: ASbGncuLK54KW2ttMdxKuc819j9wdHjSYAH3igd0X9b8if3UilDjggoBy0wtz/+arMX
	86fysnjvLjT98kLHDMJmTdYngbrX9aUMkRxsh3fMZAzIYKrnJ2ZKePS92wdUULlLA4nppispTRM
	Zjqq4M+6VP4D2SwoaAj77iHHFdUXX4pmc=
X-Google-Smtp-Source: AGHT+IHvs9EoowMlsovQfiUKAYuTGpiWwKEH9JCRWQCPaAhqondeTnOeZq3gmUJIa3rMRCNZLtWAZeSl9v9VCT0fsXM=
X-Received: by 2002:ad4:4ee8:0:b0:6d8:a754:9647 with SMTP id
 6a1803df08f44-6e42fbb8be9mr83126566d6.17.1738830221992; Thu, 06 Feb 2025
 00:23:41 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBngfbf3h-ARD1O441VMG5PZtrfcGNDN-QGmgi7TYySw2mw@mail.gmail.com>
 <CAMKF1soeaC5uVJLBcHCO0oMVP4Gubcq6po35XUdwwM4eFAkUYw@mail.gmail.com>
In-Reply-To: <CAMKF1soeaC5uVJLBcHCO0oMVP4Gubcq6po35XUdwwM4eFAkUYw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 6 Feb 2025 09:23:31 +0100
X-Gm-Features: AWEUYZmOF_jz0ni0ISLg3HMLMujRNN2IviOTnmfK2e2Gn6GQXsTHmlHOQ1BLpQE
Message-ID: <CANNYZj8XuaGFVtq34ODWc7pobc-_g30-VEc=B=ZnXPZdz9cKKg@mail.gmail.com>
Subject: Re: [yocto] Upgrading node version from 16 to 20 in yocto kirkstone
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Cc: raj.khem@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 08:23:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64723

On Thu, 6 Feb 2025 at 06:35, Khem Raj via lists.yoctoproject.org
<raj.khem=gmail.com@lists.yoctoproject.org> wrote:
> It is possible, but success and effort will vary depending upon how
> complex the package is and how hairy the dependencies
> are. you will have to see if you need  to adjust for yocto syntax
> changes, new tools, new host tools, new target dependencies etc. so it
> can be quite a lot or in best
> cases it will be sticking a backport and it compiling without any other changes.

I'd say the greater chance of success would be moving your setup from
kirkstone to scarthgap.

Alex

