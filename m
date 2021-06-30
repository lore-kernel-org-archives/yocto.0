Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web12.6700.1625063239722648090
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 07:27:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f4c6Qj5O;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: marek.belisko@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id r135so5383757ybc.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 07:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ll3R9EF8110b3ZRstXrq0BearyYCPX9Z7W0nFjmiTN4=;
        b=f4c6Qj5OuwfGR4pQS/qBuF6w7MUtO56UuBaZWKHBRVEFsF4jSMczivfy5WeRweZSfB
         gytH1nxd2Kw7XPEk2edXB7WzwGfgbF15dmU/dh5EywxmrfZ36lKApnMoN3m0eihqYZgB
         WX+MXinNCRQb5udjTZSSVXMGZnynmVJFVdMUs+RI/CLzQKi98uS15LdQDWYBrVM5KC/h
         HNsXBtszWVAUTW6MSYZHhfrYetXd9hlJq6Z/z8MHDJ8Kw2oGAcMUmUUCMLy2nDlfOYY7
         sAXiYcxE97DfoSzzSCdUdN+qlrzX8yl5DTP8eT/dtSuNJsf7wqgBFLL/OZKaQmd4Uhc+
         bYPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ll3R9EF8110b3ZRstXrq0BearyYCPX9Z7W0nFjmiTN4=;
        b=IGEXob0oD0a2kkOdv0pyyZYWQRLi8phlolYRhqvLy8bWXBrePTO2+Zao9l/7SWeDq3
         Hb7ZfI60d63S0/NDU4wuHmvqhAfbXu70kjFX3zf9M4B+ThsKgQW+ml4W9RgdBEiONgy1
         sx5E1BVizchKVcGb/nIrzErGmyEnfXCiDV3r/0Y1jpzXul5powtbDAwEFbCx4CGd6BL7
         xjzshW/hGSPB4J5LXRLg37ILMhiPQk6qp5aqGGHrotJ8DurzsFdt3IhHBob+MSE2iz/B
         lIN9ldOI+ownNP+EyNPhiLW3rTaYg/dDYA7yJSy3yMXg8KrYjvbzmWGGBQQVbQ7Xi1Mw
         IiTw==
X-Gm-Message-State: AOAM532N0P49de5+uCiU6bQiozm1y6/XYmT8M1ZwQF2qZQIi/mP3vfup
	kCpe9QXwdWgM5C6NYsfehrnNiNoeP05qqc2dY6k=
X-Google-Smtp-Source: ABdhPJxdfx/kWXQ7GTTdiRmW7E3bdUr+Clnuznbq5C2CG3E24hNeBS01QshslTnpmL/Pex8xiL2RMyOwhykH8RzE4tU=
X-Received: by 2002:a25:5388:: with SMTP id h130mr40970103ybb.236.1625063238961;
 Wed, 30 Jun 2021 07:27:18 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1Z-qW8hbz3tA0EvUGPR2AaO4BrcBaVN1jbqyia-peMY2w@mail.gmail.com>
In-Reply-To: <CANVQz1Z-qW8hbz3tA0EvUGPR2AaO4BrcBaVN1jbqyia-peMY2w@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 30 Jun 2021 16:27:08 +0200
Message-ID: <CAAfyv37cno92RXqi7KPjhxUTqn2JN4D6XsO3n6xx=f9mCikoXQ@mail.gmail.com>
Subject: Re: [yocto] Python2 in Gatesgarth
To: Aashik Aswin <thisisaash9698@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Aashik,

On Wed, Jun 30, 2021 at 4:25 PM Aashik Aswin <thisisaash9698@gmail.com> wrote:
>
> Hello Developers,
>
> We are migrating our platforms from Zeus to Gatesgarth, We could see that the native Python2 bb file and core modules have been removed.
>
>  As much of our platform code is in Python2, I was wondering if there is some way we can re-enable python2 support in our yocto environment to compile/run python2 scripts ?
You can use meta-python2 [0] layer
>
> Thanks in Advance,
>
> Thanks & Regards
> Aashik
>
> 
>

[0] - https://git.openembedded.org/meta-python2

marek
