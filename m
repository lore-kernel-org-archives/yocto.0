Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web12.7765.1585300191294359022
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 02:09:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQZ7PnFe;
 spf=pass (domain: gmail.com, ip: 209.85.221.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f182.google.com with SMTP id p123so2492846vkg.1
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2020 02:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bQBvVH1FMGvjhzc0RjnWFJkxDwJbuDotxC4Uz57MB6E=;
        b=lQZ7PnFeofs/UmWvgmHEU/UZ2ApPa5klzSZRXShHa3CgVKWF+jU8O3qoVsImha28dB
         6Tt+/VEMQvX5xjA2C4cK6cL7GjePDgn4iVQ5nk416PKL6vfhIlrntzRHHWuIDbNcNj54
         SehfuyjlgCfEvIE1WUcwfUSsag1hmWNiTeQVgLFIy6DuWpdJOCyxycldX6R3zy0/JjX0
         0Yj/J9nqbn9Q0VkAKtrbEQ93S/15fVB+OiW/+mvNLQucwjeV94ZdT9bdE28X3i0gLcVR
         Wmr2ZLrkO1fFDxp5NBqfDejl9dMF4Kg7bCKvV+Z2ggf8xTqcmIO4Dyo97Fik1lcKFTvG
         fENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bQBvVH1FMGvjhzc0RjnWFJkxDwJbuDotxC4Uz57MB6E=;
        b=bEgP0V02eXY8eedGsedVr1lBlH5RULTKsdJSQluh+7nXk1nFGQvO/iyItR8fqeCfxx
         EsZH8gzGdRmri5JROTH7uWA/rntFW3uZMLFYneCv6ucU98pSyi8fWDfzIHSZnO/VNchF
         VC+4cANkpXB3PvJQcbQdN44/A5xlUCpW3tS+is25olbCdRGuJiEPysZvPjoFeXxfCRjn
         geZqKCSMYmpKANbmyaF6JUGG/CRU31b1w93WPLHRGArwyPxnzbomWr8EW7L+GD0QshVR
         MV8G0XBRmkxEp2vTaGtMNyZ2EqaNh2xIFpXycjKHjIahoQ7AsBcQCy+yut5lMspCnWtK
         LNww==
X-Gm-Message-State: ANhLgQ16fFdBTrjYpqAtnd5oZI60RSVV+jgiGmBEZp1Fy7eTtpToHcoS
	UnYEe1ysRHhhC3WkU4T2+yfiJPTQ5ucVx0fjys4=
X-Google-Smtp-Source: ADFU+vv8wjEELUdZUdA/ErvWV0TKSSYhrVD1V3P6YJy8W3sOWNPDctB+j57RFJV6fiaxlZzlCGHmkmMHeKLpiVuc4DY=
X-Received: by 2002:a1f:ee05:: with SMTP id m5mr10607199vkh.9.1585300190436;
 Fri, 27 Mar 2020 02:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9DCZ4+dNHP9Sy4gSNURHYdbUJ6BUGwEN1GkjKD9AgDKw@mail.gmail.com>
 <15437.1585300012396240460@lists.yoctoproject.org>
In-Reply-To: <15437.1585300012396240460@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 27 Mar 2020 10:09:39 +0100
Message-ID: <CANNYZj9JKutRV2p93WD2p6i31M-jeUJubAaVc7ggms8e_jDpeA@mail.gmail.com>
Subject: Re: [yocto] Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b6a2d505a1d2764a"

--000000000000b6a2d505a1d2764a
Content-Type: text/plain; charset="UTF-8"

Actually, that depends on which package format you use. The script that
executes the postinsts on target can be found in
meta/recipes-devtools/run-postinsts/run-postinsts/run-postinsts.

Alex

On Fri, 27 Mar 2020 at 10:06, <stefan.wenninger@evopro-ag.de> wrote:

> Hi Alex,
> Im not sure if my previous reply got sent/reached you. I apologise in case
> you receive this message twice.
>
> Should there be a script in /etc created from my
> *pkg_postinst_ontarget_${PN}* function? If yes, what would its name be?
>
> Stefan 
>

--000000000000b6a2d505a1d2764a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Actually, that depends on which package format you us=
e. The script that executes the postinsts on target can be found in meta/re=
cipes-devtools/run-postinsts/run-postinsts/run-postinsts.</div><div><br></d=
iv><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, 27 Mar 2020 at 10:06, &lt;<a href=3D"mailto:s=
tefan.wenninger@evopro-ag.de">stefan.wenninger@evopro-ag.de</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Alex,<br>Im n=
ot sure if my previous reply got sent/reached you. I apologise in case you =
receive this message twice.<br><br>Should there be a script in /etc created=
 from my <em>pkg_postinst_ontarget_${PN}</em> function? If yes, what would =
its name be?<br><br>Stefan
<br>
</blockquote></div>

--000000000000b6a2d505a1d2764a--
