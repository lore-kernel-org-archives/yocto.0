Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B2C02183
	for <webhook@archiver.kernel.org>; Thu, 16 Jan 2025 09:45:59 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.45039.1737020751492596770
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2025 01:45:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hjo2XYh/;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6dce7263beaso7623566d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2025 01:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737020750; x=1737625550; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Lkd+jmvK9VLY5nuTeLHwJTARbeegUZMMh31uiP09qOE=;
        b=hjo2XYh/dpH2jGdj3XKKCP1B3QxIMYgGf+Qucja2035Cb+0GKzxKA/apswFMHrUVfz
         7y56bZ6rlhXeDY+g/31GLaco4we2sL/UvTHKyV6jmgoAQ5T8ZhwKuooFnWUTwPjWbw4V
         xt1mrJFi9F6iBMg6m8qpbY9vnXqNwyflBWRNa+LyisD/riRCIb/9whKoPaqyxEXZ6CKk
         7kYQhRunW7r3SpQNzkSH6ODOeGYkbLAkXBDVRXa93M4dm4GGyJnlza5hCoLMjUfhqpcX
         8v1jXMfELFfoEkY2VVbdyHtU9BZV9ce/MxZxSJ4ffwlyDTp9cr5lgZGRuglqMI0MNoc9
         Mmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737020750; x=1737625550;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lkd+jmvK9VLY5nuTeLHwJTARbeegUZMMh31uiP09qOE=;
        b=giKLq2sWuS40xv5574kg9VuyEsGGpRd4oUCAOFHmXh+98tYzWvYWCh7bHaKj8doUNr
         JTVHy96qpGX45ATjGc9yq2Co3GAhZxlUxZfRrUXLIvsLE4ItTUb1mwoNACIgB92PPfIX
         WRXvLPHs11pBdD79aYjA0/PD47FyGfWBlJgeKA/wPJZxGx39aQM1DvWZb8jICko0pRMH
         mP5D8vubyDNceWUWTVk77jtZ6J8/3kdi3wOYpuBPV2HYwEOlRgl5EWg2Faz9N58MXS6y
         beavVqYMcqYPsVCr/tbT+ir41kaK8aDexQjLqqu5rByiGDWcC2mGA/eGUqsfMDyDx3YL
         3KQg==
X-Gm-Message-State: AOJu0Yzh259gK2KvT8VE49zCmtaTccYUJZx4sCGQxnoSDypuPWjouwDi
	Tk6NG+zHJgKqVZQOcF+vQjHr/QhxMm9NbKCzqiNU6Ug6t9/EtEEWfA9yRU/SqwN6CSxh6mAu6cR
	8N1XHsJq89tYq1pvI+6/BXs3uJcA=
X-Gm-Gg: ASbGncteWVGRF1yUrxg22jwB2vKDkI4/E2Rm8n0/t8SWUQxcymSUFr3gpJ/6ZKl5KLo
	W/TkVSBiwK4erkM4RQlsieXDnVMEq3shy8Jqr5HQeycCf4lnUdVF+8RDV+GRm2P2N4DKYcsNw
X-Google-Smtp-Source: AGHT+IFMZVdtYXKlvqeb8XojJqaMOpTpqtRbONLMX/dO8sy4pOh0d14KUN28gMjh6z2mpAiRe9lbgVpQshJwivwclaw=
X-Received: by 2002:a05:6214:2f8e:b0:6d8:9c92:654a with SMTP id
 6a1803df08f44-6df9b1b9147mr597883726d6.10.1737020749059; Thu, 16 Jan 2025
 01:45:49 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8gFR=kFT-sJVLwqi9P1vi-fyiYv0mZGyETKArBK8b4Mw@mail.gmail.com>
 <1047.1736999963325021011@lists.yoctoproject.org>
In-Reply-To: <1047.1736999963325021011@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 16 Jan 2025 10:45:37 +0100
X-Gm-Features: AbW1kvbC1OHZ_T8lL8ymtNz06yoY4FxuiMv1fMEzttmunQleNu6hgboYpmFMiSs
Message-ID: <CANNYZj9cYfB6KGWfqJB-re3GTCv0zdbxgmb8oV9KLs-uXry1SA@mail.gmail.com>
Subject: Re: [yocto] [HELP]
To: ganesh.manoj.mahajan@signify.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2025 09:45:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64567

On Thu, 16 Jan 2025 at 04:59, Ganesh Mahajan via
Lists.Yoctoproject.Org
<ganesh.manoj.mahajan=signify.com@lists.yoctoproject.org> wrote:
> build@ubuntu-bionic:~/project$ cd meta-eaton/conf/templates/template-name/
>
> build@ubuntu-bionic:~/project/meta-eaton/conf/templates/template-name$ ls
> bblayers.conf.sample  layer.conf  local.conf.sample  templateconf.cfg

layer.conf is in here, and it shouldn't be. Was it moved from
~/project/meta-eaton/conf/ ? Can you list the contents of that
directory please, just to double check?

Alex

