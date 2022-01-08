Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8C6C433EF
	for <webhook@archiver.kernel.org>; Sat,  8 Jan 2022 02:13:22 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.1372.1641608001294167868
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jan 2022 18:13:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OZ6LrvjP;
 spf=pass (domain: gmail.com, ip: 209.85.222.177,
 mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id l11so7821503qke.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jan 2022 18:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JQzT4p0BGjvwL/xAZNZWrEGY+O6VRa1mA+rWUpKK4tc=;
        b=OZ6LrvjPeC3nf0PmnVm1q8W6obcm4j/0jKkFXKjmDlBj3eN/LIfTlKNdbxbr6aze4R
         DgZef/gM2qTavxxrYs3cokLdV6JndRjrVedfqbOXUl+uoR/4PJjsJ82SC4Xdk2XeDTep
         +ByGmlD0Uc4M2wItRL98eK3aJKRigGUDSy6eCQm13V7Quicb9Dw5PvMcVNFFBUwcy3ia
         LTmBLA0ar4peOPo1VRttOj3/c0qDQkueQkrL9042c43SPAlR7yQpxeMYQUHGRWXMF0bt
         J95yMeOf4jXipmWo+GBpAGqZOorMXCZ6fVUc+SgIrt9TH5YPn/UjnD9z89aOE7+SPWnh
         8WFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=JQzT4p0BGjvwL/xAZNZWrEGY+O6VRa1mA+rWUpKK4tc=;
        b=vs6isfzjVVaetgLhor/oYgkMSNm+iiYtY9feMUck+bpU5m4/ehGvMinB/FOh1VRsfm
         kgT17PuVtaqy6XwlHt+UzvMt+Il0Tw/NRIR2D0mf7PUAI+tflT+z448MaixZU+CiDcPz
         669/VrgvqNNuek8s0SWMwshbDPUU/ooMZUFfz/5CYKyjQ+xANdxo7RyBGH8BgU2LhJn8
         SIveXPVowPZ1Disdq/wi31Lw6RfRpLbuxGva/1uWCT2+43pJWFZ/tGUdEZgBS+oWNNYz
         zIyLYDQs7nm/s5DSdYXftf8WcYRH9VTdlJhGSdH8NgNUN/14xc49gY7wWyceckXEfHgE
         EijQ==
X-Gm-Message-State: AOAM532kUAONpwcGL+v9nhXfGrjIQqpu4yOfZNu50H4bWu7V4Vu9KHwB
	yLefnF9zhW0+fzQ+nPH0KMQ=
X-Google-Smtp-Source: 
 ABdhPJzyKlW7WNWMZNRkWyEPmN/H0QDTDLfnawS7L2uaph5vM6guWp4t4Txoxe8W9W2HEQ+smNLk3g==
X-Received: by 2002:a37:4250:: with SMTP id
 p77mr46694083qka.430.1641608000413;
        Fri, 07 Jan 2022 18:13:20 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 f141sm247211qke.92.2022.01.07.18.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 18:13:19 -0800 (PST)
Date: Fri, 7 Jan 2022 21:13:17 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss+yocto@0leil.net>
Cc: yocto@lists.yoctoproject.org, kas-devel <kas-devel@googlegroups.com>
Subject: Re: [yocto] pseudo error building master with kas-container
Message-ID: <20220108021317.GA38052@localhost>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
 <20220106135047.GA15963@localhost>
 <E46D1565-EFA6-448E-95EC-DBB010C444BE@0leil.net>
 <20220107201240.GA13417@localhost>
 <2AF48BF0-EE03-4443-878C-EB2CB52C8E64@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2AF48BF0-EE03-4443-878C-EB2CB52C8E64@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Jan 2022 02:13:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55763

On Fri 2022-01-07 @ 11:21:38 PM, Quentin Schulz wrote:
> On January 7, 2022 9:12:41 PM GMT+01:00, Trevor Woerner <twoerner@gmail.com> wrote:
> >In my experiments it seems like all I need is the update to kas-container to
> >add "--tmpfs /tmp" to KAS_RUNTIME_ARGS (around line 125). Are you going to
> >submit a patch to kas upstream?
> 
> Feel free to do it, I don't use kas-container, I use the kas container
> from ghcr.io directly so this won't impact me and I wouldn't be able to
> "maintain" this part and see if something breaks it. I anyway have as many
> clues as you have on why this fixes pseudo issues so I wouldn't be able to
> write a better commit log than you'd do.

Okay. Can I add your SOB line to the patch?

