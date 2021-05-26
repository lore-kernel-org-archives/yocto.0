Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.6077.1622028764673310214
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 04:32:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NwbMYkCw;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: zoran.stojsavljevic@gmail.com)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7089938C06EA
	for <yocto@yoctoproject.org>; Wed, 26 May 2021 11:32:43 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id m190so709988pga.2
        for <yocto@yoctoproject.org>; Wed, 26 May 2021 04:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=br2r/xYKHwYrvhbrIcYAN67D9DBix6fEM7gGUI+nlA8=;
        b=NwbMYkCw8q0dayhWlIvwA+ktaqBqH1sYGiHSLLMzqzhr1RlYxNGuUX6eIUfOc4525n
         rYux6sjQWBGwPWK0mjdeDmzPWwbEdLX22Iib4AzDYNf5QdQphPzFU4OvxILWEqPklMHA
         BpAH4o9CSstrCgc5qMVo9GB5Hf91cNmYV/SPMre30WKRRVEjTzIuN1BiBb6t7MuLI6d4
         tmY8OaxGdZAYUcpt36TuG6g2Xy/4vkSumXfeUAykW/QUcJ3d0938vmtWzTQl4Ij9D6FJ
         +0U22GSbXolMzPauijYJ/WRi40BGGUqWtXgDJi4fK9p6axvcgTqZemeVMXzxfCDXMUDW
         9/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=br2r/xYKHwYrvhbrIcYAN67D9DBix6fEM7gGUI+nlA8=;
        b=MfsMjH6qDm/tBj9npAOk+QirXEt2r58jqpNuI1XQYD7gG+NlDgol1NIPiHEflz3Pt8
         VAP3pSFfl5kP5n9sAjv2L1fSJgmr3dEz56hz0iBph4jEmo7QqE3No9H012F489swItAg
         hfmug7ywQuwKiotlUER+ln0aTx18SXvM0cebTphRDkbR2tWeMOF4nyPMuJd7D3oWHECe
         FPIvrcrF4eQqoCV8Bbn46iPjWfigtj2/cfmhOqqfLMaah1DnEiiFzjIXGcCuv6Sts6Fa
         s3a03y9CWwcd+1+v+62FdSGJLUXMqpJPkfINaeKL89GDfI5uQ1ikHeP2otCY5FLmGixq
         QTIQ==
X-Gm-Message-State: AOAM531EhsKvwfYEDE7IDBPOMlinIxMpMTthom794hFCT6c5GTkeANcs
	BU6BlKlc3CEwO6yEW10MSIT9dQRzOLD5556qLGg=
X-Google-Smtp-Source: ABdhPJzj5nwZQuREOSHUDbOr7ftmZOvg7INGWkcttf3iGScBiYAVGrEtJriIHpOwhoo1gzmIhaQ4qpUEr1wwS4Abx1U=
X-Received: by 2002:a63:fd44:: with SMTP id m4mr25000153pgj.396.1622028762595;
 Wed, 26 May 2021 04:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36GkdygU1ikgzgKeW93+Lwf92m3t=YEv0Vr_EbBG9S2Cg@mail.gmail.com>
In-Reply-To: <CAAfyv36GkdygU1ikgzgKeW93+Lwf92m3t=YEv0Vr_EbBG9S2Cg@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 26 May 2021 13:32:30 +0200
Message-ID: <CAGAf8Lw+rn=-WBS9R-n+MQ13mo3HtKZm_n+jHC=HRLptn2tr=Q@mail.gmail.com>
Subject: Re: [yocto] hardknott core-image-weston weston is crashing
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Seems like this bug has nothing to do with YOCTO, rather with Wayland setup....

https://wayland-devel.freedesktop.narkive.com/6yavoPFZ/i-ve-got-a-question-to-ask-you

My two cent worth attempt,
Zoran
_______

On Wed, May 26, 2021 at 11:40 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I'm using hardknott poky release and build core-image-weston. When
> started on display I didn't see wayland screen + terminal just
> console. Same setup works fine on dunfell release.
>
> Output from weston service:
>
>                GL_EXT_map_buffer_range GL_KHR_debug
>                GL_KHR_texture_compression_astc_ldr GL_NV_pixel_buffer_object
>                GL_OES_required_internalformat GL_OES_surfaceless_context
>                GL_EXT_separate_shader_objects
>                GL_EXT_compressed_ETC1_RGB8_sub_texture
>                GL_EXT_draw_elements_base_vertex GL_EXT_texture_border_clamp
>                GL_KHR_context_flush_control GL_OES_draw_elements_base_vertex
>                GL_OES_texture_border_clamp GL_KHR_no_error
>                GL_KHR_texture_compression_astc_sliced_3d
>                GL_KHR_parallel_shader_compile GL_MESA_tile_raster_order
> [09:38:18.885] GL ES 2 renderer features:
>                read-back format: BGRA
>                wl_shm sub-image to texture: yes
>                EGL Wayland extension: yes
> [09:38:18.899] warning: no input devices on entering Weston. Possible causes:
>         - no permissions to read /dev/input/event*
>         - seats misconfigured (Weston backend option 'seat', udev
> device property ID_SEAT)
> [09:38:18.899] failed to create input devices
> Segmentation fault
>
> Machine is RPI3. Any ideas?
>
> Thanks and BR,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> 
>
