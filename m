Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C73C636CD
	for <webhook@archiver.kernel.org>; Fri, 10 Feb 2023 09:00:44 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.10129.1676019637081596768
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Feb 2023 01:00:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bKx7UbtN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id by3so3007856wrb.10
        for <yocto@lists.yoctoproject.org>; Fri, 10 Feb 2023 01:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cU/x/NU7Ze2kk5VSObkY4gO+fVHDtZj+liG4JfYiH3I=;
        b=bKx7UbtNzHgm/3TMsx054U+Gs3sLLAZXd8MSmeRdeTE7R43eRefw+MX+Ld1y1tY7PW
         LMnAH9/57Aksmhy4wEjU0pe+VrGNXOD8SNYzvaxK4fJBKUNSePna0hr//klVo7eVTAEY
         bp9uN9RH+8DhpvQS4KLzMcyU27ur3mkHSflzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cU/x/NU7Ze2kk5VSObkY4gO+fVHDtZj+liG4JfYiH3I=;
        b=vsGUSbwXLlzn6RQiwPaqUAchrRcpCq6Q7WXwVKNkbhHTjevAqZnw4nNZLXX+/6RfYq
         fzEmT765Hk1VMk1p4ZhWzmZkAY+9POqUzMWAfri2VZcRCRehG2iRNk53h7Nbo20yGzXe
         30TU7jA8kP26kz1FRqXYMPnzUO1ViypdygOhR2Adx4XW1o+4dMZRifas1De+zWATr6T7
         nX+wa5bOMupQwGTXoSI2iKinERe4WqQqYivufAogzRu3W/LrqFcvB+v7zX8Jg1LH45bJ
         NpPrS36PkHgL4uKu90h2zhd1Ho6JxQEwkvZyQds1sp1JMlvhg2MfQgvqhRxl3VMpGGnW
         zLWA==
X-Gm-Message-State: AO0yUKW1cnFFwN1z+kbs3RMo9DiXYOOZSo+6x2tXFzkdbvIMjvbIgoXm
	OxeCpSDjQ4sYYSb1uYFGIDy3Nw==
X-Google-Smtp-Source: AK7set+ZC3lAyvwZ3+i4adhvxsHuU70tAqzNJIqGrqVjJ7TSNcIH3o0Xe8Q1sSdFa/SpS+OKl8EPsQ==
X-Received: by 2002:a5d:488b:0:b0:2c3:dd9e:8ccc with SMTP id g11-20020a5d488b000000b002c3dd9e8cccmr12657529wrq.64.1676019635204;
        Fri, 10 Feb 2023 01:00:35 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:a607:bfee:2fc2:caf3? ([2001:8b0:aba:5f3c:a607:bfee:2fc2:caf3])
        by smtp.gmail.com with ESMTPSA id m9-20020adfe0c9000000b002c3d29d83d2sm3160008wri.63.2023.02.10.01.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 01:00:34 -0800 (PST)
Message-ID: <59572808cad949863a8c8d730c663078f740ae5f.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-oe][dunfell]nativesdk-postgresql - causing chown:
 invalid user: 'postgres:postgres'
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexander.rodatos@brose.com, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Date: Fri, 10 Feb 2023 09:00:34 +0000
In-Reply-To: <14845.1676013388213194929@lists.yoctoproject.org>
References: 
	<d368d084803c72f68105dd1cefed730bafd40330.camel@linuxfoundation.org>
	 <14845.1676013388213194929@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Feb 2023 09:00:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59208

On Thu, 2023-02-09 at 23:16 -0800, alexander.rodatos@brose.com wrote:
> I integrated the changes of the commit you posted, however i still
> have the same error message coming up. Do i need to make changes in
> the recipe to make the=C2=A0 intercept work?

No, it should have changed PATH in the recipe and used these intercept
scripts. The intercept scripts should have changed the user/group to
"root", which would work under pseudo in the SDK context.

You'll probably have to debug it a little bit, I'd check to see if the
intercept scripts are being called, if so, then check the
substitutions. If not, work out what PATH looks like and why they're
not being called.

That patch is how we fixed the issue on master though so it should be
close, I'm surprised it doesn't work.

Cheers,

Richard

