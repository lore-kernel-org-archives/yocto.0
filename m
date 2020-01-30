Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web11.1483.1580417469821721824
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2020 12:51:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=TXiuPwTY;
 spf=pass (domain: konsulko.com, ip: 209.85.167.172, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f172.google.com with SMTP id l136so5055646oig.1
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2020 12:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=m8px4xij1P+pfYwE8ctp06RR0z5tv6FX0EoTQCOA8qc=;
        b=TXiuPwTYEY3puQnfcbcJYZKmB2nmlvHQ/doa04jQukeSW7enzo0hBnXfqKcaUBBXsA
         20uZN5rf6IzdiLd5pmEsYqgbzrVQv+d0aAaYAXaZQgI9EF8vYTKgDyKvBH8RoazsqTnt
         x0/jfXZ2NRrhBvJ2AwcXVlOUpIc383/0WNbek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=m8px4xij1P+pfYwE8ctp06RR0z5tv6FX0EoTQCOA8qc=;
        b=p+Ea5rmUdJAvG+FY+kX+UwLbYVt73f1+1ILUYLt2ywP4YDo3yp3rm9Eyx514Ao8XLo
         Hd8qHMW4FnNXgyCApgbh/sv7i0EhETkb4POLx68/YVBVr4DpF5/gK4ck+iKPVjyd/EBJ
         jN+59AcaYuSM7crq6Q5uVG8Em/wELZFaFfcF+ymWE2a8glYHIMBVb3QDDURbG3Tu8+L1
         /9jakXk708N72uDsM6m3Skg2LpIcH1GkYFP/uzpVdrjeXhZs9UQePnhn0rh8f4jC0bYx
         MGdBchxeKgVJBsjVOzi/++2Yu5AzNULrWDeaCLho/w2KtSCpkE+ywucaXrcwdo5zCZpw
         vtFw==
X-Gm-Message-State: APjAAAUAwi8EvUeqpSuaqngfYr7UWtPBpYhPk+3+hh0bMgJY+xuoAoTX
	jiyULuaJPd+xfoxgVn2k4OP+dMCY8oc4fmdmJA+zXOL06sHb+g==
X-Google-Smtp-Source: APXvYqyw+qsHxd/SZNg2HHk7FX5dQXhPa7afy0CZY1MnGqrHdjGLVkPdGrnpW1meIViFJCqkejHH7Kea/EMJCJRZHI4=
X-Received: by 2002:aca:ec13:: with SMTP id k19mr4069552oih.22.1580417468603;
 Thu, 30 Jan 2020 12:51:08 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVvru2LaypQk337KMmT1DsxRAuA4-9peU21PSMRf2o43Hg@mail.gmail.com>
In-Reply-To: <CAM9ZRVvru2LaypQk337KMmT1DsxRAuA4-9peU21PSMRf2o43Hg@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 30 Jan 2020 20:50:57 +0000
Message-ID: <CAM9ZRVsoGUKeCEDxiNQOBBRYf6eHb7M2zK0BLbOKVprjHUV3dQ@mail.gmail.com>
Subject: Re: OpenEmbedded at FOSDEM 2020: Request for volunteers and demos
To: yocto@lists.yoctoproject.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hey folks,

We've now got a couple of demos planned for the OE stand at FOSDEM
this weekend but some more volunteers to help out at the stand would
be really good! If you're at FOSDEM and can spare even an hour or two
please drop me an email :)

Even if you're not available to volunteer, we look forward to saying
hello at the stand!

Thanks,
Paul

On Wed, 8 Jan 2020 at 14:02, Paul Barker <pbarker@konsulko.com> wrote:
>
> Hey folks,
>
> We've got a stand for OpenEmbedded at FOSDEM 2020
> (https://fosdem.org/2020/stands/). For anyone who hasn't been to
> FOSDEM before, it's the Free and Open Source Developers' European
> Meeting at ULB in Brussels, Belgium on Feb 1st and 2nd. FOSDEM is free
> to attend conference with dozens of stands, hundreds of talks and
> thousands of attendees. I highly recommend coming along if you're able
> to!
>
> I'll be able to look after the stand for most of the weekend but will
> need some assistance and some cover so that I can take breaks when
> needed. I'm looking for volunteers to help with the following:
> * Setup from 09:00 on Saturday morning.
> * Running the stand and discussing the project with attendees from
> 10:00 to 17:00 Saturday and Sunday.
> * Tidy up from 17:00 on Sunday.
>
> I'm also looking for demos that can show off the project. I'll have my
> laptop with me to show toaster, the layer index, how builds work, etc
> but I won't be bringing any hardware devices as I'm travelling on
> after FOSDEM. We'll need a couple of hardware demos to show off the
> project well. The table is 180x80 cm.
>
> If anyone can print up some flyers with info about the project that
> would also be excellent.
>
> Thanks,
> Paul
