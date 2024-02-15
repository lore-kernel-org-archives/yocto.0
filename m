Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A038C4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 19:20:32 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.1352.1708024822371654640
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 11:20:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mTOHoEyw;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6868823be58so5240926d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 11:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708024821; x=1708629621; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iwV1uak61x1WY9dFv6XJGKinDc1pQICVQJ+Z1ZSeB94=;
        b=mTOHoEywvbqfIuh/50omnKmRRg7m/D5pqug0cRQYKqKgrPoLBHoflCoTJWR4nPmt1Q
         jhY6QsMIhTaF/lq/PTqDp9et/mj0QJ0vyvsj3NL9H8xeJetC5HecDGdRNwLUiTm6mAPb
         Wes/MBIDyOx89pP/IlVSpGuVUbHCNKFZbuaUrpgyJ73pSxTyHW6E7xrjD/lMwrg9rGXW
         gqhEu40ep7CCHKbW0YZJk6sKSxABGhkl8YF4/vMLrkwVOXC8bCyo9igp+emINldEwwnT
         mgGrCrUky+HNw4eVCnV1ArtBwdYtpAOofnuqOlAIMK/KJgHJ9VlLPnwrjC9YxtkR7HRf
         KkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708024821; x=1708629621;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iwV1uak61x1WY9dFv6XJGKinDc1pQICVQJ+Z1ZSeB94=;
        b=V//sK+so+EVFV3m48M8ceRwcS5PWnqbf8YkGBZL5dXySFz2XQyQdSP6AQgslqPRdzS
         hReb+LFxQdZXrGmYe5Gsh0JB8HzlFrdO6FCWYffKEoM/TT5FgVUlcXdWxSy1WYtfyN/3
         KcL29+7XNqGgo54LL1ByUM4mYHOubXcNvgf0tX2NLCoA0hZaaEr+xRGSoSr2Wop9ek4x
         avHZ+uOCjRDHU3D6TI7lmddoF9O+JiJrhwfSVDSqsVlUndY7aLxCHyxvU9JO3u/VTU36
         L5madxmCUl4jIEim8aL/BubKKT2R/FUnUaUZbiJNvhdSpN8JxyCQlC7NrYtaflggP+MF
         WnDQ==
X-Gm-Message-State: AOJu0YzZWP2BFuxWrBoQMLhnEEv0i5hnpaZnvtF6FfV7YCp+udZUc5y1
	roV6qXY969tOy1lT5JNpekaUKc0ArADfDG0IghpRWOiX/IAjaeuO
X-Google-Smtp-Source: AGHT+IEB+xh6mNgwNyvObxEkzZrDfyG+xYnoGUaUe/AE0F6+/AWpmLE8WzCcKN5giiaLStL2KcugKg==
X-Received: by 2002:a0c:e3cb:0:b0:68c:e521:4af6 with SMTP id e11-20020a0ce3cb000000b0068ce5214af6mr2567043qvl.40.1708024821319;
        Thu, 15 Feb 2024 11:20:21 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qj9-20020a056214320900b0068ef74687adsm955294qvb.41.2024.02.15.11.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 11:20:20 -0800 (PST)
Date: Thu, 15 Feb 2024 14:20:18 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 2/4] rockchip.wks: add all
 Rockchip partitions
Message-ID: <20240215192018.GA7766@localhost>
References: <20240212202342.37778-1-twoerner@gmail.com>
 <20240212202342.37778-2-twoerner@gmail.com>
 <20297b5e-af8b-4bce-a192-9bf799d8a36a@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20297b5e-af8b-4bce-a192-9bf799d8a36a@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 19:20:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62503

On Thu 2024-02-15 @ 06:06:42 PM, Quentin Schulz wrote:
> Hi Trevor,
> 
> On 2/12/24 21:23, Trevor Woerner via lists.yoctoproject.org wrote:
> > Rockchip defines the expected layout/map of the default storage device.
> > Fill out the wks description so it matches.
> > 
> > 	https://opensource.rock-chips.com/wiki_Partitions
> > 
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >   wic/rockchip.wks | 18 ++++++++++++------
> >   1 file changed, 12 insertions(+), 6 deletions(-)
> > 
> > diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> > index b14ec0d1690a..8dc4d20f2f54 100644
> > --- a/wic/rockchip.wks
> > +++ b/wic/rockchip.wks
> > @@ -9,16 +9,22 @@
> >   # wic uses 1KB blocks. The following table uses 512 byte sectors:
> >   #
> >   #   Partition   Start Sector    Number of Sectors
> > -#   loader1     64              8000        (idbloader / U-Boot SPL)
> > -#   reserved1   8064            128
> > -#   reserved2   8192            8192
> > +#   loader1     64              7104        (idbloader / U-Boot SPL)
> > +#   vstorage    7168            512         (serial number, MAC address, etc)
> > +#   reserved    7680            384         (not used)
> > +#   reserved1   8064            64          (legacy DRM key)
> > +#   uboot_env   8128            64          (U-Boot environment)
> > +#   reserved2   8192            8192        (legacy parameters, ATAGS, etc)
> >   #   loader2     16384           8192        (U-Boot proper)
> > -#   atf         24576           8192
> > +#   atf         24576           8192        (trusted OS e.g. ATR, OP-TEE, etc)
> >   #   boot        32768           229376
> >   #   root        262144          -           (suggested)
> > -part loader1    --offset 32     --fixed-size 4000K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> > -part reserved1  --offset 4032   --fixed-size 64K      --fstype=none
> > +part loader1    --offset 32     --fixed-size 3552K    --fstype=none            --source rawcopy                                   --sourceparams="file=${SPL_BINARY}"
> > +part vstorage   --offset 3584   --fixed-size 256K     --fstype=none
> > +part reserved   --offset 3840   --fixed-size 192K     --fstype=none
> > +part reserved1  --offset 4032   --fixed-size 32K      --fstype=none
> > +part uboot_env  --offset 4064   --fixed-size 32K      --fstype=none
> >   part reserved2  --offset 4096   --fixed-size 4096K    --fstype=none
> >   part loader2    --offset 8192   --fixed-size 4096K    --fstype=none            --source rawcopy                                   --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> >   part atf        --offset 12288  --fixed-size 4096K    --fstype=none
> > 
> 
> This is... quite dangerous. I assume people access raw partitions via their
> index number, and now they would be changed, making it harder to do partial
> updates. It depends how one sees this file, but could be seen as immutable
> for existing partitions to avoid backward compatibility issues.

I don't think that's a huge problem, but I could be wrong. People will see
their builds fail, investigate, update, and move on?

But I think I saw something in wic about not adding a partition to the table,
or not giving it a number? So it might be possible to define these partitions
and not change the numbers? I could look into it a bit more.


> I was wondering whether there is support for partition labels or something
> like that for raw partitions, but doesn't seem like it. Which is quite odd,
> wouldn't that kind of information be stored in the partition table for
> example?

Yes, I noticed some things that should probably be there and aren't, such as
the label thing you point out. Also not formatting raw partitions; or not
requiring an explicit fstype on raw partitions to keep from formatting them.

> Also, maybe use sectors for offsets and fixed-sizes since you document them
> this way? S is the suffix for it.
> 
> Random thought, but we could probably also get the env from U-Boot recipe
> (or any other recipe that generates one) (if one is generated) and install
> it into uboot_env partition?

That's exactly where I'm going with this. I already have a spreadsheet
listing all the rockchip devices, and their U-Boot environment configurations
(location, size, etc) to see which ones come with environment configurations,
and to make sure they're all the correct location and size for those that do
(they are). I also already have Yocto pieces generating and placing
the U-Boot environment in the U-Boot environment partition (via wic) but
haven't submitted the patches yet (as well as generating a correct
/etc/fw_env.config file. My next step is to add in env support in U-Boot for
those missing it.

