Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web12.16645.1598527143988643012
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 04:19:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XDC/SV+k;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id a65so4791753wme.5
        for <yocto@lists.yoctoproject.org>; Thu, 27 Aug 2020 04:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=+bZYQM++uL9yOOFwsthSaR6A39+I3LNYnQNSFpw2tmY=;
        b=XDC/SV+kgw96Mtms7FllymQ0isPvSNTWJGc+FikFSjvvRt9bEceXT3lccXwlgu8/Lj
         DRJw6jBt72TWIqNwT+QL9QxfQ6/A+IpMqmINxbCPoleLEyWYKsFg8Lj2FJxyhsw6AMmF
         9yTmYxQaU2LcuV0kB17pK2ga6CbYkU3ZUnTe8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=+bZYQM++uL9yOOFwsthSaR6A39+I3LNYnQNSFpw2tmY=;
        b=IqdS5Afl3Xe/+VI59XyCZxpBW9cIpJ4LwAO/g7uerCHePgd6+AqQN6fOfIx97TVFxE
         6wPi8eZJKcQXtG4Tdqtg+DO+E8Ovph1E5ug0Y3GrF+mBgyKruxDK1zEy5/l0Owx5wamC
         NKK47pfcfkiB7WaO+b4hZXKy7mVOt2KkDHKrJcz9CU+BpiOtdDzd4vtl3/Y++Zz1Th68
         jqUnpxOBUO9XWUj+vStaYhr9xKbQ5yg+PCClJ3Nm10d1Wq74rdpZMXqgS6+soNQ97c9p
         pY/0A9YoWFGrlm5drFZ+CrS9OKK81trt0hYGTrrNTWpIEJPFM0igS5ccWXmIzZTBWEmZ
         zcFA==
X-Gm-Message-State: AOAM533Bt9AENBkHATGDUUcBYlzdi2MSIFHwHT+BMYaY5cNeyNrgJ/MW
	a7U4VrtyefWutPtnz7zBYQt4Zg==
X-Google-Smtp-Source: ABdhPJykukT4MMTGOF0B0RwUGsIOpcs+PqTcX0IjNiR8eL1QRZtXeQ/KJKIO2idqymnTQhvu+dJB/g==
X-Received: by 2002:a05:600c:2246:: with SMTP id a6mr11790559wmm.71.1598527142350;
        Thu, 27 Aug 2020 04:19:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.9.b.8.7.0.d.0.8.3.5.0.7.0.4.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c407:538:d07:8b9d])
        by smtp.gmail.com with ESMTPSA id q7sm5813969wra.56.2020.08.27.04.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 04:19:01 -0700 (PDT)
Message-ID: <d4c1cbf006037d60c74cca86029c4e1fc23cd0b1.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add binutils to images where it's required by tests
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Thu, 27 Aug 2020 12:19:00 +0100
In-Reply-To: <CANNYZj_p0MiLb8LM-ZdZs8tyaDEcovrxNUz5SMXeECWvdT7Teg@mail.gmail.com>
References: <20200826155433.16346-1-alex.kanavin@gmail.com>
	 <75a92bc5a9b597f0610987d5ab4b7de9b53f79ba.camel@linuxfoundation.org>
	 <CANNYZj-Fg0aiqK2QM__OC+3r2N5-THnsUYX5Pgtt+mjWDDq5zg@mail.gmail.com>
	 <2fcbd0f884b6b53a4cdc7002c278eef3a7868c06.camel@linuxfoundation.org>
	 <CANNYZj_p0MiLb8LM-ZdZs8tyaDEcovrxNUz5SMXeECWvdT7Teg@mail.gmail.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-08-27 at 13:01 +0200, Alexander Kanavin wrote:
> On Wed, 26 Aug 2020 at 23:03, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > >  I didn't write either of the tests, but yes - I can work on this
> > > tomorrow.
> > 
> > Right, I didn't write them either, they're rather old. I'm just
> > thinking whilst we've gotten this far we may as well fix this
> > properly
> > and stop it being copy and pasted onward. I appreciate the help!
> 
> And done, patches sent :) Bonus fix: one of the multilib tests was
> erroneously always skipped.

Thanks, much appreciated!

I had a question on the skipped test. I think its only applicable to
one specific multilib test case...

Cheers,

Richard

