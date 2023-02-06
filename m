Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AA7C636CD
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 00:13:10 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.42334.1675642383061577304
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Feb 2023 16:13:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=W9PUUW+F;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id n13so7557146wmr.4
        for <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 16:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3yFl6qWVR5ZIhYPXAlqJF31KJCD2rkoCgtT2QjLdzRw=;
        b=W9PUUW+FAWLk5Cqu+fypaCEEo8rQoRTnfZBK7rrvHJ+DT21moVSxp2jMBdOSHEXIoz
         zSb2sUbekZubwXWUss8ZdJZy4oKoRmtNbCULo4QGYZ9WCV1WZnR4S03LNBRJlMVpSRXU
         dTYW4vw0B0TDsFdW9ueNGGe2mP47fZpIGbU/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3yFl6qWVR5ZIhYPXAlqJF31KJCD2rkoCgtT2QjLdzRw=;
        b=NsAwthg+p2fG2oSG/E6xJQ7noEB3AcCgg6E6PzCDq7eyg/e5f6IKIcrySNjdeDmA3V
         lhF8MsJkeI+TQeUpWs+UKDUT//JzZDAsHtaYWMTjlNwgsAqa+Z4icFdfKZiYMopSkBLs
         2mOBuwLMwjuXTXRB3DF93OxDUt5ua0dhTzfTKcF4aHWxxZHlUeTy8pmMByz6JY0TwpAU
         FwM7tIvUAtGAy9NHk2Vjl0Ej0o+KScVPCJ5h185zBRN9bsgfjyv5MEZGVpsjqIA4Z2w3
         2eOu8szp2n7LrViELBO9KM3YF7FSbvawEXtwl9IuyxUpdPV964gWstxlFtwlMEOBJqUJ
         p/Lw==
X-Gm-Message-State: AO0yUKUftGU57ppFiLvkvcwWX52y1AP6TgjDp/mdIBa/q5E0YYvoR0a9
	xHxBR9rbHssIPSpW88mVH+HoeQ==
X-Google-Smtp-Source: AK7set/b4AaUPt3wO9gwKDmsl0a7YgS5gqHyvNOmE14IH5Jav7Y6plJQcgBj7O0Qlsp7fZUzAPQ4+Q==
X-Received: by 2002:a05:600c:5011:b0:3dc:555c:dd30 with SMTP id n17-20020a05600c501100b003dc555cdd30mr16689332wmr.27.1675642381338;
        Sun, 05 Feb 2023 16:13:01 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:512e:205c:f28a:2b5b? ([2001:8b0:aba:5f3c:512e:205c:f28a:2b5b])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c4fc500b003e001119927sm1670538wmq.24.2023.02.05.16.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Feb 2023 16:13:00 -0800 (PST)
Message-ID: <2304c6f228db24096ac44b1e14132bb70981986b.camel@linuxfoundation.org>
Subject: Re: [yocto] error when try to use sudo command in recipe
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: SIMON BABY <simonkbaby@gmail.com>, yocto@lists.yoctoproject.org
Date: Mon, 06 Feb 2023 00:13:00 +0000
In-Reply-To: <32073.1675641651799643620@lists.yoctoproject.org>
References: 
	<39760b676a3d2a628a446e3031724b53c8941a88.camel@linuxfoundation.org>
	 <32073.1675641651799643620@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 00:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59174

On Sun, 2023-02-05 at 16:00 -0800, SIMON BABY wrote:
> Hi Richard,
>=20
> I added extra code in the recipe to print the sudo permissions to
> compare with actual permissions.

I'll ask for the third time.

Are you running bitbake directly?

I'd like to understand the environment bitbake is being run in.
Something is breaking the ownership/permissions and I guess it is some
kind of container.


Cheers,

Richard

