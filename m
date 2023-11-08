Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B028DC4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Nov 2023 22:59:40 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.107307.1699484376687612549
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 14:59:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=shlZhLn+;
 spf=pass (domain: smile.fr, ip: 209.85.167.49, mailfrom: yoann.congal@smile.fr)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-507bd644a96so302219e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 14:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1699484374; x=1700089174; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WkfMKOvtaArywHhq0gMq1XF9GYgENg2+C4dytFm0RYc=;
        b=shlZhLn+pEq1tcyWnuLW0gf159mqxwKMi3G2HCRmDsD3GV6NVhrSOhf3sKMYCayy1i
         uqkl0hkY6he4Ra/87bfLPOLwLIMUSFvAHGDKskb7eCLPDOj0z+WYSuFUJc6QmPaw/yVD
         Vug0ui2/OBjNcZr2/QYLphupO+mdcpSJQuknxTqC/o8gthvAasZWgKd18CHpOaN63ykJ
         aytC6lDacvhxqFzWi8I40fTnk38oR36fs+ROAwIfmC3zcyjsO+jZKGnrqnUx8oqUwfXD
         vZ1vIpUqj0Z3PmvjW4EmEu4VYXY9CQ3gFU2wMX2T6c9cPpKfTQ2WzftLPPcEofAWFS7Q
         SxIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699484374; x=1700089174;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WkfMKOvtaArywHhq0gMq1XF9GYgENg2+C4dytFm0RYc=;
        b=lyt+JT5UgigJooLFjTZ2Yg9eEL/cStHz4UYJs3fR9LkwfvXV3rSy5rIRirqi0UdEk3
         drcy9zPR0A+nxPtbDOisqNhqkI0t2LqlBrv1glODf26qD7FP4z/jaG2rSn4lhsXdwdHf
         cT0SWTSqQsz4C1FFdiTfD9aOP2+yohwkxM9t2a5md9/939NtfDkp8Z3C8u8TOsIGAwZi
         eDFniCiqGC/X/9UvUunjz2gghhDQExW3HBarIsdfLbbMWhClL2Ty1xZFvnD5FkunumGU
         OWflY5mwYzMYfbTOVYHzzNZn3prV3bFO2vZ5ujDArtfNb9LVBuLOg8pK83EuIumUNKbn
         Qmiw==
X-Gm-Message-State: AOJu0Yy7m/6RfHh7BzAraXCptmxeY3m66uFqoEbWQwfGanmLcI0jI3SH
	BUmiLBHz2bfbrFdgkuaA6pqR6A==
X-Google-Smtp-Source: AGHT+IGNVG/bLUPUGnBPHgfy+KRufwn7pzmi4S/fOUM2XazBVbVMwyeIvqV5uXrHOwqbJjCg/67P5g==
X-Received: by 2002:a2e:bb87:0:b0:2c2:c450:c2d0 with SMTP id y7-20020a2ebb87000000b002c2c450c2d0mr2530574lje.24.1699484373907;
        Wed, 08 Nov 2023 14:59:33 -0800 (PST)
Received: from [192.168.0.23] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id q3-20020a05600c46c300b00405442edc69sm185832wmo.14.2023.11.08.14.59.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 14:59:33 -0800 (PST)
Message-ID: <c307a973-8e76-49d0-aded-3d9c4719537a@smile.fr>
Date: Wed, 8 Nov 2023 23:59:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Devtool fails if SRCREV is set to ${AUTOREV} #kirkstone
 #devtool #yocto
Content-Language: en-US
To: Chris Wyse <chris.wyse@wysechoice.net>, yocto@lists.yoctoproject.org
References: <CANNYZj-sTnUxqyHM2W9TXPJK8-eTwo-5o3V6D3D5wXPNi7Lo=A@mail.gmail.com>
 <30457.1699460933018528490@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <30457.1699460933018528490@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 22:59:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61641

Le 08/11/2023 à 17:28, Chris Wyse a écrit :
> I ran into this problem as well.  It doesn't seem like SRCPV is being set properly before use in the externalsrc.bbclass.  I added the following line before bpn = d.getVar('BPN'), and now it works fine.  Unfortunately, I needed to create another layer that overrides the poky classes to include it in my build.  Here's the added line:
> 
>     srcpv = d.getVar('SRCPV')
> 
> And here's a bit of context:
> 
> python () {
>     externalsrc = d.getVar('EXTERNALSRC')
>     externalsrcbuild = d.getVar('EXTERNALSRC_BUILD')
>  
>     if externalsrc and not externalsrc.startswith("/"):
>         bb.error("EXTERNALSRC must be an absolute path")
>     if externalsrcbuild and not externalsrcbuild.startswith("/"):
>         bb.error("EXTERNALSRC_BUILD must be an absolute path")
>  
>     srcpv = d.getVar('SRCPV')
>  
>     # If this is the base recipe and EXTERNALSRC is set for it or any of its
>     # derivatives, then enable BB_DONT_CACHE to force the recipe to always be
>     # re-parsed so that the file-checksums function for do_compile is run every
>     # time.
>     bpn = d.getVar('BPN')
>     classextend = (d.getVar('BBCLASSEXTEND') or '').split()
>     if bpn == d.getVar('PN') or not classextend:
>         if (externalsrc or
>                 ('native' in classextend and
>                  d.getVar('EXTERNALSRC:pn-%s-native' % bpn)) or
>                 ('nativesdk' in classextend and
>                  d.getVar('EXTERNALSRC:pn-nativesdk-%s' % bpn)) or
>                 ('cross' in classextend and
>                  d.getVar('EXTERNALSRC:pn-%s-cross' % bpn))):
>             d.setVar('BB_DONT_CACHE', '1')
>  
>     if externalsrc:
>         import oe.recipeutils
>         import oe.path
>  
>         d.setVar('S', externalsrc)
>         if externalsrcbuild:
>             d.setVar('B', externalsrcbuild)
>         else:
>             d.setVar('B', '${WORKDIR}/${BPN}-${PV}')
>                                                                                                                                                                                                                    

Hi Chris,

Thanks! This looks really interesting.
I've added your proposed fix to https://bugzilla.yoctoproject.org/show_bug.cgi?id=14918#c3 (the matching bug that does happen to be assigned to me)
I'll try to look at what you sent in the next few days but in the meantime, if you can/want you can always send this patch to the mailing list :)

Regards,
-- 
Yoann Congal
Smile ECS - Tech Expert

