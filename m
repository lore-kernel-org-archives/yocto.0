Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5199.1622022037231172816
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 02:40:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gMmBcx1v;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E537938C0602
	for <yocto@yoctoproject.org>; Wed, 26 May 2021 09:40:35 +0000 (UTC)
Received: by mail-yb1-f175.google.com with SMTP id r7so1127283ybs.10
        for <yocto@yoctoproject.org>; Wed, 26 May 2021 02:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=JZ1+u3AqYmQpKM4V6SgMXForm+VdAskrI7ijyV0uk80=;
        b=gMmBcx1vPY107avQlh0squs4quTFBWXffJnEVe5IA5ooH63GnhjWLeDR32UnrZVTRi
         CRH1N5CNZfEOgYYcSmcPuTcHeJOhZ/+qsi+kTAhKut3WPaOS+EIFcWCwASMvULLz/cWN
         F/VQITImjYxvLfE8cob3Hu+4++VvOCnE1CuHrFyTGCUuD0RHNvQTLsxNg3JypTwZkkIT
         zbcpm9NAE8Qi6YitfG32YKsEevGcyYeX06BlpLXi5b51TklBbXQFKqP8Tr1DWFcZuuGJ
         u/YrzSL/P1gUIs3477btTppQq3ynbqxWILuZiH9zMY7wjcrJiv+Qt/YLmsoF0/yfS3sR
         HPDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JZ1+u3AqYmQpKM4V6SgMXForm+VdAskrI7ijyV0uk80=;
        b=cVH1cml9vTSx0tqayEGjP0Mek3kd/dw1UlkWwO/F4uHBmI5gAQjMM7KoIK9rM12nCk
         1SefNhIPFLF3bucqLzi/msSz4wFzLPYfmjvrb2iEoa5zuPlyeEOv6CcETicotTYLkDpi
         HHkWwVpvhvRKn//hgMkI0dJrlA1/5HsqvsqP84RHod1TkGTeyHwuPxt6ev4lCVLksRqB
         Ap+pGJ9MdT9SUaFIkin8wqUX0x/HfrN31F4v/BzGaNeJq6DKJNuOXM6/Sr8r+XaqL3UC
         SO514spMgaLWlb/6p+hdYLBoIdsw92PuEjmwvyzGasnGRWtV7pr7DH6V9NcCfGDurWoK
         NvHw==
X-Gm-Message-State: AOAM533lnDWtTgRWwfJv7xyEUbSJEkM/Bx5JAV2O45A+Bbs3GmntcqLl
	G6EPNljW/s+Te9nCGtA1lVnMpAUdADf6BROApBUG8PuWlGIOk49z
X-Google-Smtp-Source: ABdhPJyQCdqlCMzXwXsV1lcLiQTG8eysweQ6SdLqzFSDEXOa6ONzlMmbNOoSQfvEpNak3X58GjDIYVMzxR65205Lm58=
X-Received: by 2002:a25:becf:: with SMTP id k15mr46725594ybm.186.1622022034727;
 Wed, 26 May 2021 02:40:34 -0700 (PDT)
MIME-Version: 1.0
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 26 May 2021 11:40:23 +0200
Message-ID: <CAAfyv36GkdygU1ikgzgKeW93+Lwf92m3t=YEv0Vr_EbBG9S2Cg@mail.gmail.com>
Subject: hardknott core-image-weston weston is crashing
To: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using hardknott poky release and build core-image-weston. When
started on display I didn't see wayland screen + terminal just
console. Same setup works fine on dunfell release.

Output from weston service:

               GL_EXT_map_buffer_range GL_KHR_debug
               GL_KHR_texture_compression_astc_ldr GL_NV_pixel_buffer_object
               GL_OES_required_internalformat GL_OES_surfaceless_context
               GL_EXT_separate_shader_objects
               GL_EXT_compressed_ETC1_RGB8_sub_texture
               GL_EXT_draw_elements_base_vertex GL_EXT_texture_border_clamp
               GL_KHR_context_flush_control GL_OES_draw_elements_base_vertex
               GL_OES_texture_border_clamp GL_KHR_no_error
               GL_KHR_texture_compression_astc_sliced_3d
               GL_KHR_parallel_shader_compile GL_MESA_tile_raster_order
[09:38:18.885] GL ES 2 renderer features:
               read-back format: BGRA
               wl_shm sub-image to texture: yes
               EGL Wayland extension: yes
[09:38:18.899] warning: no input devices on entering Weston. Possible causes:
        - no permissions to read /dev/input/event*
        - seats misconfigured (Weston backend option 'seat', udev
device property ID_SEAT)
[09:38:18.899] failed to create input devices
Segmentation fault

Machine is RPI3. Any ideas?

Thanks and BR,

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
