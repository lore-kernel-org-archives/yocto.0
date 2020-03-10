Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.1843.1583831587814727820
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 02:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uFfB39c3;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: marek.belisko@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id g19so15343281eds.11
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2020 02:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=etYT9aV+80ZbPq0Rhxhx3FQ2UmsrIbqvWImjl2UngE4=;
        b=uFfB39c3sxeSHVJZiidJV1Hb7mJ0dyOmIn8ibsuRqFcrf6ZYBeq02CRSs35+ceghL6
         0K4KZBS+trnwU+hC2h1g7AvVBViyyYg+BEhbrOKOVW4LhbxdvdE2W5tLeXSGD8MpAIq7
         vpLJgmX9v0DMiRrJGIuamXHQl4lQyPBQpKui52RfALytT4bzm8Kh5XDQAkn0tJDp/uQ+
         UFEKj5vMDxQcPHg1PDbIG5Gg3SQZ/zZEZkIaCqtEhPAhNdYe3e+9+YO4ZRnOj3ZvpTnJ
         rgu59OC/6c0XPKd9pvsqEo0KiJifaf0xaJMYMxe7yGItJCoFVB37HMqQWkgMbLHDIiGK
         vRIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=etYT9aV+80ZbPq0Rhxhx3FQ2UmsrIbqvWImjl2UngE4=;
        b=DPP/7noX72LjWAo9Twa+CTh824KSOw8axNSmHF35V/TWt7akGZ9ove2xdXAvcglPNe
         VIljwrFPSs/u+8ctwZfk3s2ikXgtq37wRXwDmfbVtFC5ngsar57CxybuGPddWX/sQI17
         HvLcJX1fcfCbU4w6nsR8hePsdcbb4YBBnjWm6B2lVSgNh9VRh4b0g40JE6g1OgX6payZ
         IpIKmWLdqoHm3Eay7Qjz84cCfbcTaHBSLhG1W4RZNBQ5DzkGKZziTyCuQioxmXl7/ix5
         ToiGA85kAOCBCuepWVhZ9X/y8k/OUS99x3VmqCTleJOOm4QaIzTLcVYL42CpaSPtC2d6
         6eMA==
X-Gm-Message-State: ANhLgQ15DYgavH/MD8G7GTtptT5Zj4cGQ293rSTA+oLQO0L8MjRsWKxr
	ZN/DCmGfXM7f9azCglt0RBcrhZWXB9FWt7yDy2o=
X-Google-Smtp-Source: ADFU+vvkfvAlWXFb+d836HUaxp3AQjuZaHH7Ji2mKhVRN/dLFh7J9NzY6BMTh4N2++0HF1CNFM9HewX9qqwE+SIg6Bs=
X-Received: by 2002:a50:e69a:: with SMTP id z26mr6729470edm.9.1583831586153;
 Tue, 10 Mar 2020 02:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37jKciEwgCZ362VgHK5r7poixgu3tqONxopJ8rWsJYvyA@mail.gmail.com>
 <53405c57-f54e-f625-08b6-87e9b5d190d3@gmail.com>
In-Reply-To: <53405c57-f54e-f625-08b6-87e9b5d190d3@gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 10 Mar 2020 10:12:55 +0100
Message-ID: <CAAfyv36qDWiCijkR9K2yDZKmH=+h7G7TitMT_X+7pRH1J4JKvg@mail.gmail.com>
Subject: Re: [yocto] do_rootfs task took long time to finish
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 19, 2020 at 11:01 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>
>
> On 2/17/20 11:55 PM, Marek Belisko wrote:
> > Hi,
> >
> > I'm debugging strange issue that do_rootfs task took ~50 minutes. I
> > enabled buildstats and from that I learned it's quite long. Any ideas
> > how to debug this issue? My idea was to add timestamp to do_rootfs
> > tasks but I'm not sure if it's even possible. Thanks.
> >
>
> how big is the image its creating, might affect the time. Secondly
> use some system perf monitor to see which tool is taking so long.
Image is ~1GB so I would say quite
I can see that python3 took ~75-100% cpu when doing do_rootfs. We
tested on 16.04 + 18.04 Ubuntu server it's same.
Which perf monitor you had in mind? Thanks.
>
> > BR,
> >
> > marek
> >
> >
> >
> >
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
