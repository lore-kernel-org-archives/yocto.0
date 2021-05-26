Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.6402.1622030538952848105
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 05:02:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HY3kngF/;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5CF4D38C08AD
	for <yocto@yoctoproject.org>; Wed, 26 May 2021 12:02:17 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id g38so1622375ybi.12
        for <yocto@yoctoproject.org>; Wed, 26 May 2021 05:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e+wU8uKVmHIqSR4QF/Tti8UFjjU/XPOPLuB2lvYjx6c=;
        b=HY3kngF/KWTVbl0OqCXZUMk8r0wlkNHwDiVSniw1W55t/pZu3IJytYz3+WIPM0TFkM
         dcQNkIdVPsFkSt/VbRAMG3BcbYOIyLDSesCuyPoXtu6TdWwJT0/6+k68r/QwM4sMaN7F
         nvRttxd6iEl2QRvRoMKZMdnU9aA1pixJlTOWw1vzsbiUbsgDLxbMMwT9M7nMwem0kATR
         yCoUHlSgaFTksX1rBkGpuAKO5/Bhvci23noyAdt8rRdSqt5gf0KU5FXgpr2tpYBf8/Ts
         MY8bT6Qt1gMOFri+5Ks7C/8QG+zswPZzp7RpSXv6kFFr4lfdQlNz5YkQbTE+zqwO8Wsi
         p6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e+wU8uKVmHIqSR4QF/Tti8UFjjU/XPOPLuB2lvYjx6c=;
        b=gIbhONm/0VCxHnCOXBDeeIp8DziFpCxI296+GbxQG5lOGsN+o0Zd4M1TqDEBz3vYXZ
         QBOfIiSBx2CU7JbpH+qqDQ1HfxWcGqWc09COxJjm0DbVpSV71fVH5X0psuaqlFTTWL0l
         ofAbdWpl/piz+rtQJltz27Nj5BRX+iR24M4tBBotkdhT0twrVbmyy2AXUeFk5XZrSXEl
         QQ8jnBloyLN+GZ0AeXHKpPenPn+mjOh7tOYRsAq/H3UwrnJVd+7mogMYNZiK1RaMhwQt
         /zZFlWBBfRFEMbG32/Ln2z2utQmh/c+5otQNxT/0m5yDJIiQFvPRxNoNJQfyUXWmnuvF
         23lg==
X-Gm-Message-State: AOAM533NIza1MH2BZ5pDqCOuuTyigc8Tn3O8PkvT/o8R8Yle2YfiAuCN
	Bz/VkZexDR9auuPBEw3lmr6LUhbdEMqxbOp3bF4=
X-Google-Smtp-Source: ABdhPJwJRBeLMwURol46Oj3laT8R9aynotn11ujStuccH1mBHSE4/p7xXHm9WzXE2Inu7rqKO36x9VA+3rP+mfT0cG8=
X-Received: by 2002:a25:becf:: with SMTP id k15mr47448586ybm.186.1622030536261;
 Wed, 26 May 2021 05:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36GkdygU1ikgzgKeW93+Lwf92m3t=YEv0Vr_EbBG9S2Cg@mail.gmail.com>
 <CAGAf8Lw+rn=-WBS9R-n+MQ13mo3HtKZm_n+jHC=HRLptn2tr=Q@mail.gmail.com>
In-Reply-To: <CAGAf8Lw+rn=-WBS9R-n+MQ13mo3HtKZm_n+jHC=HRLptn2tr=Q@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 26 May 2021 14:02:04 +0200
Message-ID: <CAAfyv35SiD27qJn25cdBRxH0P=HFiQEMC1NBwZOncAyobV0mdg@mail.gmail.com>
Subject: Re: [yocto] hardknott core-image-weston weston is crashing
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, May 26, 2021 at 1:32 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Seems like this bug has nothing to do with YOCTO, rather with Wayland setup....
>
> https://wayland-devel.freedesktop.narkive.com/6yavoPFZ/i-ve-got-a-question-to-ask-you
>
> My two cent worth attempt,
Well I found this:
https://gitlab.freedesktop.org/wayland/weston/-/issues/314 and then
related patch https://gitlab.freedesktop.org/wayland/weston/-/commit/d171c7b3ba346c4d0bd6494f45ebf0be3c3cc5fb
which I've added but it doesn't help. When booted with plugged mouse
it boots fine :)
> Zoran
> _______

BR,

marek
>
> On Wed, May 26, 2021 at 11:40 AM Marek Belisko <marek.belisko@gmail.com> wrote:
> >
> > Hi,
> >
> > I'm using hardknott poky release and build core-image-weston. When
> > started on display I didn't see wayland screen + terminal just
> > console. Same setup works fine on dunfell release.
> >
> > Output from weston service:
> >
> >                GL_EXT_map_buffer_range GL_KHR_debug
> >                GL_KHR_texture_compression_astc_ldr GL_NV_pixel_buffer_object
> >                GL_OES_required_internalformat GL_OES_surfaceless_context
> >                GL_EXT_separate_shader_objects
> >                GL_EXT_compressed_ETC1_RGB8_sub_texture
> >                GL_EXT_draw_elements_base_vertex GL_EXT_texture_border_clamp
> >                GL_KHR_context_flush_control GL_OES_draw_elements_base_vertex
> >                GL_OES_texture_border_clamp GL_KHR_no_error
> >                GL_KHR_texture_compression_astc_sliced_3d
> >                GL_KHR_parallel_shader_compile GL_MESA_tile_raster_order
> > [09:38:18.885] GL ES 2 renderer features:
> >                read-back format: BGRA
> >                wl_shm sub-image to texture: yes
> >                EGL Wayland extension: yes
> > [09:38:18.899] warning: no input devices on entering Weston. Possible causes:
> >         - no permissions to read /dev/input/event*
> >         - seats misconfigured (Weston backend option 'seat', udev
> > device property ID_SEAT)
> > [09:38:18.899] failed to create input devices
> > Segmentation fault
> >
> > Machine is RPI3. Any ideas?
> >
> > Thanks and BR,
> >
> > marek
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> >
> > 
> >



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
