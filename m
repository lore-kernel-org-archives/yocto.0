Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web12.5197.1589288599417776637
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2020 06:03:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=KMvPSr3u;
 spf=pass (domain: konsulko.com, ip: 209.85.210.42, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f42.google.com with SMTP id z17so10391980oto.4
        for <yocto@lists.yoctoproject.org>; Tue, 12 May 2020 06:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=eH6kmQyfBZjGc49oswxgZJVCqchiy9h/y8jS47s9ams=;
        b=KMvPSr3uSvbDm4gfDAraZIxpgzDzOYONnYhFZjd7SygzpJ3z84OVm/88HWqTAVPMcH
         u3qIpJhzOOablUcF9RrE3pOWcyKiMAuL7CJGn0EOcv/KFLJm+3nKWk/54FxuR14vABJr
         XiYeEC4vYoidQB4d/TuF7WkgNTD0sN3lkN/QY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=eH6kmQyfBZjGc49oswxgZJVCqchiy9h/y8jS47s9ams=;
        b=YgTrJyoTop1pTRKnuDFr7nJxAF0R2aK/jrQmG+dRNT4kNm1x0MWoCwpbimyaS3HitF
         UG/70mlOgTkFgJQqT/spbzOS1gkYauM2TPyXUXMswX7CdCxqql3b3ERd9D306vd8KLp6
         jQYmsNqL5qiUC2+Edh4qMHDw7oAUhSI36y7QpVYBYljXgvYHFPdyjct2GQzVQ6r5Hj1z
         6MB+GKSrVNIbGkcj448CPpqh62wLk0YTJIqhlEU4qGzs3y33cShaWq5nSIznIlKYM+Zr
         rdelxlerzbPKYxwpu8CBI13RwiyUuM3AdAzJTuyfL0RJTuQIuG1Fb26C2KRoCS5+T6RI
         DQ5w==
X-Gm-Message-State: AGi0Pub4zxcduYyE0nQv3shLn6xDvbfLaMX6Ru2NtuEtI0jDqtyAY57j
	g4LniVVgUkhd7zcjqdxVkTzF6pudhpmi9orIvnsu9yl+6VRZsg==
X-Google-Smtp-Source: APiQypIER8svmSCsg89kYeE8ZfX6BwSvjQrqo691+pEHrjy7V/g1oKnQPsoRScBJu7836K+hRap4BsZH3h+2a6FyV80=
X-Received: by 2002:a05:6830:54f:: with SMTP id l15mr15060758otb.305.1589288598699;
 Tue, 12 May 2020 06:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <d23b8000b1134098a15a5e47be20b920@rittmeyer.com>
In-Reply-To: <d23b8000b1134098a15a5e47be20b920@rittmeyer.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 12 May 2020 14:03:07 +0100
Message-ID: <CAM9ZRVuXJhVv6TojXmgmTdD12KzeEacZgYd6gaewtMy16e9s4Q@mail.gmail.com>
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
To: Zwicker Severin <severin.zwicker@rittmeyer.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 12 May 2020 at 13:36, Zwicker Severin
<severin.zwicker@rittmeyer.com> wrote:
>
> I can=E2=80=99t reach http://downloads.yoctoproject.org/ to download http=
://downloads.yoctoproject.org/releases/uninative/2.7/x86_64-nativesdk-libc.=
tar.xz .
>
>
>
> Did somebody know anything?

Yes, it currently appears to be down. The relevant folks will be
looking at it but it's still early in the US timezones.
