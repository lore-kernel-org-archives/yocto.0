Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.3329.1575363069296516837
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 00:51:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melangex-com.20150623.gappssmtp.com header.s=20150623 header.b=fEFxBv1C;
 spf=none, err=permanent DNS error (domain: melangex.com, ip: 209.85.167.50, mailfrom: morne.lamprecht@melangex.com)
Received: by mail-lf1-f50.google.com with SMTP id r14so2245296lfm.5
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 00:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melangex-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=iRyg/wgmsyJvdV+6o/vG7C2oXLUrUP13qlrLlEH+Dt0=;
        b=fEFxBv1ChINLYld1jlTnXU3Vi2mi4zzoVhCYcZcG74lOUF+01WAFW2/NMVE+M9Qdsa
         wZAuOMA5E6Go9FmAa6wPoX1D5wJ5OYHvB5Gtcf7Ij1Zhs4NKlfgGrZftBxf73o0FufHw
         ix0mJIU3G+7MGen2oK0sXnMyiOVSHo4E3ApbS5nitFUjZhOeKbyFAnjn9s9/2mrD0uun
         52PtSLFK+T9EpkOuc466XDxoXMd5K/vxM2UbsKF4BBcu0hkb83XZVheD6rbkXCVn7a3t
         xQ9V1fylUzcjfnK3KneKVxQf12u1gkjtzXvBctTjjbFozANG382mOjdljo0Rd73Nq7FY
         8j2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=iRyg/wgmsyJvdV+6o/vG7C2oXLUrUP13qlrLlEH+Dt0=;
        b=ru5fFWMSE6JFwm5LRd1vFuNQHTThDnwe7ty3wbXgVnx+MKvlagL64Z+8usKVVf2Z5m
         IOAzIaeuKKiWZA3wwqcTNaKOwBsakBsI39qXVKhMDUJ+g7/Fl687gQGn2aPBIWyK9UUF
         LtVHgyITi38fYXTqif1J+yq505e1fmUBm9WM7FVEmDbiJ6P3QseomTF1RrYYJi9s/evk
         QcU0Ik87sH+n5rXhKNbvyhmCGU1MkdkTKHkPSG9+AWnnuKN3Jnr/xVLccj1a51JH8Rz4
         kRW2Smpi5ZzP5NogWbJfMKsu6r/I/FygCRVPn5gnRRKFkkDrl58X3Uh8zYz1d8hLg8S1
         xzyg==
X-Gm-Message-State: APjAAAUJoPX/fom5Zzabzch8lgSJidzNHJF6oYUGOSKEEe7pyRQzabBu
	jp/tL3r4ky+imIQrtqXmXSq4MDp+QaE=
X-Google-Smtp-Source: APXvYqxJL1HuRM5Y3VdkT6qeYmqCFrVz9ePV6bfem0AfUKNm+++BexTeaSyIaNKtj0v391V0uIWyEw==
X-Received: by 2002:ac2:44a2:: with SMTP id c2mr2034305lfm.105.1575363066850;
        Tue, 03 Dec 2019 00:51:06 -0800 (PST)
Return-Path: <morne.lamprecht@melangex.com>
Received: from localhost ([209.203.60.70])
        by smtp.gmail.com with ESMTPSA id o8sm881830lfb.89.2019.12.03.00.51.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 00:51:05 -0800 (PST)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Tue, 3 Dec 2019 10:51:02 +0200
From: "Morne" <morne@linux.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Message-ID: <20191203085102.GE1625@archworkstation>
Mail-Followup-To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
 <20191202200153.GD1625@archworkstation>
 <MRXP264MB0807D883F3D9EC4C43CC23D385420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <MRXP264MB0807D883F3D9EC4C43CC23D385420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.12.2 (2019-09-21)
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>I'm looking for a trigger to handle both tftp deamons (tftpd and tftp-hpa) but 
>could we have an YP image embedding these 2 tftp servers ? You said Yes.
>If it's handling could be done through a simple U-Boot configuration then 
>itanswers to my question, but what could this trigger be at the runtime ?

I think I misunderstood your original question...Can you explain in detail again 
exactly what you are trying to accomplish ?

		- Morné
