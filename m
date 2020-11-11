Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web09.3640.1605080150421701141
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 23:35:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=wTLdfmst;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.171, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f171.google.com with SMTP id q19so936354ljc.10
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 23:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DuTbLDfadqAWbOuCq10KB6jVg18I1NEiCvWQI5OrVhc=;
        b=wTLdfmst1AKOpEZE/7Ad3pUueDAs9HL/g4vtD/gMLlzuLF7QKfWRUG7FQ7SlvqcYhF
         xycRTdzcaoLCseeDNzcUMr0rB181JAwumEHK7Qtx4zMkBR99dZVzuNCcs2yujzeGNlZ7
         dTwJS1IrrlfXAwrxBLWRpv2cScbFj+wWK/I5WOMPjCvHCqMEJh7RM2Akc0Z+nkWOsGeH
         gc8gopUoeH+vG0cimtAPHCXWaq0SXGfxFyXdAilZQt7htmnyr+3OQ1rDebZh480mE/6j
         eTuieua2gXZS8BExPxK6S/3aklSCnN7OmwnjP+uCe49Zil4y2B/7v6Qkzt4Y0PibcNqJ
         9OmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DuTbLDfadqAWbOuCq10KB6jVg18I1NEiCvWQI5OrVhc=;
        b=PYPt7iKmjoaQTfGhjMJW+lQUqumXXP0YCpV/Sef4zJ/xFIACsoZhz4mjrmSlUgyYEv
         xTKNb5aJirLkKdbpP8+t/3FJgF3qooDnvkZVgfxJI5G7290bUcZzcCPYT7HcZ/osWZht
         5KBMBRYUlQR8OoGxuQWRxXtdTdU0howiPo00rB18e/mLsVXsicvlyXY9oxJwdF3Dozek
         ZPSQBfPrStqr3H6A9kIH1UYBLEif3R1a8YBhl+6VmihQuIiWjW1eYrlkuyZltTd5ovz+
         yOWxdqsCEYR5Atsnji1ij0Gjeh9N2zrs3d0HJc6kGWuW8NPMcAq9/S/Vti521Eoqrse0
         3M8w==
X-Gm-Message-State: AOAM531lsFJSCpqT3JcS7lws4F6igemjvE+aTFnT6w/3yXvSTJv06L6/
	HrSdu4B77FbVP0bu+nQ09hZGBSMeT98F+K3LWm3CLQ==
X-Google-Smtp-Source: ABdhPJybHlVYG/w/1XttxiOPTyAVRvcB1kyhC4a3BOtVBizZePgTZYQROTASZK5b/u/xF+Z8U3JZIaFKXHeS7ukuu9I=
X-Received: by 2002:a2e:b805:: with SMTP id u5mr6259321ljo.15.1605080148495;
 Tue, 10 Nov 2020 23:35:48 -0800 (PST)
MIME-Version: 1.0
References: <327508fa-a802-4fe2-b398-fdfa0c608a44@www.fastmail.com> <3223ae35-537c-48dc-1301-5a3c29dafd92@gmail.com>
In-Reply-To: <3223ae35-537c-48dc-1301-5a3c29dafd92@gmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Wed, 11 Nov 2020 08:35:20 +0100
Message-ID: <CAEt6NwoVMRc9-0vromdmoZeXRWthTguREXt8T5kXq+fLDaim+A@mail.gmail.com>
Subject: Re: [yocto] Error when building eSDK for a `docker load`able tarball
To: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Cc: Manuel Wagesreither <ManWag@fastmail.fm>, yocto@lists.yoctoproject.org, 
	Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Howdy!

Am Mi., 11. Nov. 2020 um 08:18 Uhr schrieb Robert Berger@yocto.user
<robert.berger.yocto.user@gmail.com>:
<snip>

> So it looks like it's extensible SDK specific.
>
> Can you please try with the "standard" sdk instead of the extensible sdk
> to see if this works for you?

<snip>

Tried that. Standard SDK works, it's definitely related to the tasks
of the eSDK.

Greetz
