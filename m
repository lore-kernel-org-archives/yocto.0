Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A0C4C27C5E
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 08:29:50 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.14790.1718008187840844980
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 01:29:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ThW4diJm;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ebdfe262feso12547141fa.2
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 01:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718008186; x=1718612986; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8DQ7cf3TrCopN0VBjp9ZxBtp/PCeiczK6NIgY/caifc=;
        b=ThW4diJmcUJdCb6DhK8i/AStMbNbHB7U04wEQIT9+/5SY2Mto4d/4u4qf5Pz8srPcM
         y3mL/NOV5qLbwvWMAL5HIBSLUpUPwzmaUXVbnSvlOblz0Zy0kYDIxmQ4SCftKXfkzdOL
         FXxnnrETeLb3jT6HY5ZCbfhbIDuGGK9oQhMm5sNr5MIyJ+IIKEsxCoHq36B9rFvymXgZ
         qcNWzW77fPRAmFFv/He2KX1tdLXvBQMyvsk7Q7yfmiIR+rMXyz+BVkILJi/dBi2Lfnla
         hekXXRhWOR/w0dKxleAbXlDOW4F+/ngg8FAPtRN2e9ZQfToLC8h5EfDcW+8s1vcznDqD
         d1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718008186; x=1718612986;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8DQ7cf3TrCopN0VBjp9ZxBtp/PCeiczK6NIgY/caifc=;
        b=GvM9vNIjSnb/SttBYQ+0NzEnVzJBT2ykXWikpTa7k1/D3SR+c/SmKkMYa3/5jnhPzr
         twMfwWcv+lQtvUOBVq2e+6Rip0WxlhyMYlvTsbdnK4boWQqQLx35ZaneutF1CrMt55Rj
         cjP4RIHVEiWWXeeElrWB7F6annUl2Bx/lHlQnFRNsCaHv78lM+ok8rJuiADzmPdCQG2+
         zEkH+BlQW7NEc2rxMbvtabJrmMSLvEddcHf9W0egimBYOm3gsVgHirTTiUqXKE8EeGwz
         A2WxXVPiBJkfV1D8Nzo6t0mZ+AjPoFSCwojYUVx9AxaCtTqVVihrfuDHy3YqswM5iyg0
         V4VQ==
X-Gm-Message-State: AOJu0YyaX1JzucB2bCwQ1EVqqy73ubB9g5eAoc5EDZzkkMiC6//ROYwl
	FA2yaszCcG1R4LIHzxeQtMCQm7PwAIMKaYI32kOvD9uziuej5bG6ujDCRxZrRTdrFccYgTqwXyU
	uBzGhgM6VOLObA9QmMYCkgfeMjPn5K3y+
X-Google-Smtp-Source: AGHT+IEjf/alOLo0IJKaPO718TfMpHP2V/p9NED4gCb5nR3iZoElbY4ouYrusSBoSTzdNXH8OEkK3C7SpNCCmuaYJTA=
X-Received: by 2002:a05:651c:b22:b0:2e0:aaaa:e551 with SMTP id
 38308e7fff4ca-2eadce87bd4mr74274891fa.37.1718008185443; Mon, 10 Jun 2024
 01:29:45 -0700 (PDT)
MIME-Version: 1.0
References: <MJwN.1718002064797768168.zY9M@lists.yoctoproject.org>
In-Reply-To: <MJwN.1718002064797768168.zY9M@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 10 Jun 2024 10:29:33 +0200
Message-ID: <CANNYZj_sYEQ=kk9n-FUEXS2LKL6owD2aMUaDm23syBMws+ERGg@mail.gmail.com>
Subject: Re: [yocto] how to fix "QA Issue: Missing Upstream-Status in patch "
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 08:29:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63300

On Mon, 10 Jun 2024 at 08:47, emailaddress.ashish via
lists.yoctoproject.org
<emailaddress.ashish=gmail.com@lists.yoctoproject.org> wrote:
> 2) Whats the suggested / proper way of adding such patches
>      one way way i create the fix manually and keep them in our custom layer ?
>      or
>      is there any other way to handle patches which are maintained by other team and don't have upstream status

meta-java is open source. You can implement and submit the fix
directly upstream by following the contributions instructions:

https://github.com/meta-java/meta-java/blob/master/CONTRIBUTING.md

Alex

