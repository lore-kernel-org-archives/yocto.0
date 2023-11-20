Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 364F3C197A0
	for <webhook@archiver.kernel.org>; Mon, 20 Nov 2023 11:27:29 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.48228.1700479643793929417
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Nov 2023 03:27:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ilm1t1sP;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-9fd893c2938so20375966b.0
        for <yocto@lists.yoctoproject.org>; Mon, 20 Nov 2023 03:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700479642; x=1701084442; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dj2Mn/gpDs2Z8g7OxxfAWfSzCUuVx7LEKCsYispXhrk=;
        b=ilm1t1sPt45nV6GSCyWwb/JYziAfR/jN3Yzyry38/R9LxPa1ypJmgZ+HVIeCOG1CNm
         xnjAbpxfpduEks/GQNuym4N9h58x0O1njkPYm1M1u6EK9RpBqnwabXqVnk9gMhuqmdUy
         gPWgcej+pXxxFPoFKo6MTWInd9G9i3TP7aNs9M7TDUBbeF0kHtVSc/wdxsRIfcQyyTeH
         6IKBAmJkZOAYcqWc/6s6AoYog1Rsgkp14tIRPUR1vljHiDfs+jKON17tpVxr/zVj56Ho
         tzYF+rVEIYrGD/Bzu9etNd8cIxZH+VfDDVljlCJk1TmXmysuuwRkvZi+/X4ZozxBJl8A
         b4/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700479642; x=1701084442;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dj2Mn/gpDs2Z8g7OxxfAWfSzCUuVx7LEKCsYispXhrk=;
        b=jZxQbF7bp5jMOFMBXVAez+RSZahc2LJoOO22/pkBT5sINIQBIDQwYUrWXu6fMZbXx4
         Wk8YM2StETz6dG+nf6efyikf4/RAvCCrukt7CTebMGQT1CD4RCkvnEQdavFIRG2MewzX
         5SJR0DF6MVaryAykKi2z5B4afXdQNoaSz7RcVrJgeZo8WAyEHIVlMdZ1U6gW0VQ+XY2L
         K6xqRHAfWCG4mkFWV6LXytBkjfo4ngyuYLRR+X2Yofm4/yIGpJOXU/LXyxE34LXlUk+d
         gebEnG+8h4KNaKTS+12xzWitQazKbUiKSLBukhmpu8/rjVDBvwEr6NSFo2lULiChum2k
         7cnA==
X-Gm-Message-State: AOJu0YwNRvQLJsxAPVAgE3rgf5h+cbDfbBK1S1JPu9nc3PKcYqGUCMw+
	5I3rngZA9pvg57LrcLRtEDtVwmXpEmc=
X-Google-Smtp-Source: AGHT+IGP6LCnZCx87u/Qzozx30onwsfV06avkxubkw9r6MIBsGAfCsYQ1eqOvmw4SMwrTGNBZbllyw==
X-Received: by 2002:a17:906:a101:b0:a00:1acf:6fe5 with SMTP id t1-20020a170906a10100b00a001acf6fe5mr634748ejy.1.1700479641821;
        Mon, 20 Nov 2023 03:27:21 -0800 (PST)
Received: from [192.168.1.64] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id lz2-20020a170906fb0200b0099d798a6bb5sm3809850ejb.67.2023.11.20.03.27.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 03:27:21 -0800 (PST)
Message-ID: <39572e15-0dce-499f-82fb-b29f6b876e7f@gmail.com>
Date: Mon, 20 Nov 2023 12:27:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] wlroots needs 'gbm' ['>=17.1.0']?
To: yocto@lists.yoctoproject.org
References: <CAMNEDzV0_UCQ+vVMqHzo3WmNsLLL8GPufSsPVUnKRvt4V71NtQ@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAMNEDzV0_UCQ+vVMqHzo3WmNsLLL8GPufSsPVUnKRvt4V71NtQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Nov 2023 11:27:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61719

> 
> Can anyone help me out on how to resolve this conflict?
> 

meta-wayland[1] layer has a more up-to-date wlroots (the one in your 
recipe has been archived 2 years ago). The newer version doesn't seem to 
have this dependency (FWIW I build it out of the box without any 
problems in my pet-projects).

1: https://github.com/MarkusVolk/meta-wayland/

