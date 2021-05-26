Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.698.1622051226953562425
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 10:47:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ij+jfnwt;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2316838C0316
	for <yocto@yoctoproject.org>; Wed, 26 May 2021 17:47:06 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id ep16-20020a17090ae650b029015d00f578a8so784754pjb.2
        for <yocto@yoctoproject.org>; Wed, 26 May 2021 10:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DR3mB4EVYmX4kr12DnIxykcYmbOSFWwc1XkoTl91+fU=;
        b=Ij+jfnwtWUkvVOcv1W7E2We0DHMs2Y98HqrqSNsgkkA8Gmom8ksDCXw6Gz3D9Rbx5I
         uzKNbLnWtlmn5mnIbX4HxeiYMvnFEu9V7u3fqRG+uqYf+BH1iY51ajqx18XYTnx4glBc
         TPqboyzC5wAbzgCX3l+SduYygQbP7nptpmQH+0b3UrO6WnivfHSdVyZeHd84f7tv9CRn
         R9TEOa+gF68kxiAkcuC9Yc2RR0kPB5M7uxKgn0q+qzNGtAYj+dRvvH3gFwAW5+SRKHXJ
         isdOkmu/tYaKMt2XPTiwZhB6IcRIh9B8RChQIhFmPEI/mzMzem8t5gAwOqTntPYnzYvM
         4bxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=DR3mB4EVYmX4kr12DnIxykcYmbOSFWwc1XkoTl91+fU=;
        b=LADi4G1BBxBWc5djthVs6UlS8jEnBbVxGpSHyM63FytdJ8OqkuWrId8FoFQjYXyPRm
         RAIpjIPf/9mwL/HetQLrYUcm52aQHezyF9OFNPRSDs/uxi7DYt2Clf0cgKoDHkR1vSUk
         XCqqA2ZCFwqwN5EWGbm+Ag6KRk65MPW4MrGjpzZQCPjYTxB4S2OItlaDcm11hpU/ytPd
         LFuBlSSlG4Ie8is+5xSZ+UzEkl+3rhM9UcwCro+9xq1BsN/GQbx1Vf012MssO6lf2/rl
         2QXMIzYDVU4/xmo6O176fEUc7DDk64wO16QAj1Mzb4blLiR96Ure7Xsm1+0ZdEnfzZPO
         lSWA==
X-Gm-Message-State: AOAM5339zOLIhsLkqyqSUDSvAzBzNDmo0NeeIM4I/r65IgEr+YlSOGFz
	FA2gf2A9unD2xVXuwSUr1V2WRfbTVYuQng==
X-Google-Smtp-Source: ABdhPJwXiZTPPo7r+aGcYFBNFsOAuXuIAmxO8mmHFdLVLr3uF9LHKLv7Tyt5wL5GgdqZlLytXRKgrA==
X-Received: by 2002:a17:902:bd90:b029:f2:c88c:5b2c with SMTP id q16-20020a170902bd90b02900f2c88c5b2cmr37012309pls.8.1622051225008;
        Wed, 26 May 2021 10:47:05 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0:1d7:355f:d5bb:1bea? ([2601:646:9200:a0f0:1d7:355f:d5bb:1bea])
        by smtp.gmail.com with ESMTPSA id u8sm6513pgg.51.2021.05.26.10.47.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 10:47:04 -0700 (PDT)
Subject: Re: [yocto] hardknott core-image-weston weston is crashing
To: Marek Belisko <marek.belisko@gmail.com>,
 Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
References: <CAAfyv36GkdygU1ikgzgKeW93+Lwf92m3t=YEv0Vr_EbBG9S2Cg@mail.gmail.com>
 <CAGAf8Lw+rn=-WBS9R-n+MQ13mo3HtKZm_n+jHC=HRLptn2tr=Q@mail.gmail.com>
 <CAAfyv35SiD27qJn25cdBRxH0P=HFiQEMC1NBwZOncAyobV0mdg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <4218747e-82bd-c051-f3e5-bacd645932a3@gmail.com>
Date: Wed, 26 May 2021 10:47:03 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <CAAfyv35SiD27qJn25cdBRxH0P=HFiQEMC1NBwZOncAyobV0mdg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/26/21 5:02 AM, Marek Belisko wrote:
> Hi,
> 
> On Wed, May 26, 2021 at 1:32 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>>
>> Seems like this bug has nothing to do with YOCTO, rather with Wayland setup....
>>
>> https://wayland-devel.freedesktop.narkive.com/6yavoPFZ/i-ve-got-a-question-to-ask-you
>>
>> My two cent worth attempt,
> Well I found this:
> https://gitlab.freedesktop.org/wayland/weston/-/issues/314 and then
> related patch https://gitlab.freedesktop.org/wayland/weston/-/commit/d171c7b3ba346c4d0bd6494f45ebf0be3c3cc5fb
> which I've added but it doesn't help. When booted with plugged mouse
> it boots fine :)

there is similar segv I see on master, Can you test this patch on master 
and see if that works?

secondly, also try master branch of weston and see if it fixed it then 
we can narrow down needed backports

>> Zoran
>> _______
> 
> BR,
> 
> marek
>>
>> On Wed, May 26, 2021 at 11:40 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>>>
>>> Hi,
>>>
>>> I'm using hardknott poky release and build core-image-weston. When
>>> started on display I didn't see wayland screen + terminal just
>>> console. Same setup works fine on dunfell release.
>>>
>>> Output from weston service:
>>>
>>>                 GL_EXT_map_buffer_range GL_KHR_debug
>>>                 GL_KHR_texture_compression_astc_ldr GL_NV_pixel_buffer_object
>>>                 GL_OES_required_internalformat GL_OES_surfaceless_context
>>>                 GL_EXT_separate_shader_objects
>>>                 GL_EXT_compressed_ETC1_RGB8_sub_texture
>>>                 GL_EXT_draw_elements_base_vertex GL_EXT_texture_border_clamp
>>>                 GL_KHR_context_flush_control GL_OES_draw_elements_base_vertex
>>>                 GL_OES_texture_border_clamp GL_KHR_no_error
>>>                 GL_KHR_texture_compression_astc_sliced_3d
>>>                 GL_KHR_parallel_shader_compile GL_MESA_tile_raster_order
>>> [09:38:18.885] GL ES 2 renderer features:
>>>                 read-back format: BGRA
>>>                 wl_shm sub-image to texture: yes
>>>                 EGL Wayland extension: yes
>>> [09:38:18.899] warning: no input devices on entering Weston. Possible causes:
>>>          - no permissions to read /dev/input/event*
>>>          - seats misconfigured (Weston backend option 'seat', udev
>>> device property ID_SEAT)
>>> [09:38:18.899] failed to create input devices
>>> Segmentation fault
>>>
>>> Machine is RPI3. Any ideas?
>>>
>>> Thanks and BR,
>>>
>>> marek
>>>
>>> --
>>> as simple and primitive as possible
>>> -------------------------------------------------
>>> Marek Belisko - OPEN-NANDRA
>>> Freelance Developer
>>>
>>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>> Tel: +421 915 052 184
>>> skype: marekwhite
>>> twitter: #opennandra
>>> web: http://open-nandra.com
>>>
>>>
>>>
> 
> 
> 
> 
> 
> 
> 
