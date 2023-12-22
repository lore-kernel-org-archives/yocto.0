Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DE05C41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 16:05:07 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.26438.1703261098633842510
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 08:04:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ngvudPJl;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50e4e3323a6so3020211e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 08:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703261097; x=1703865897; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2KNrotPvUT6vjS5v0pZKBfh6tYgRJ7gfWI6uGn4p06E=;
        b=ngvudPJlUk9IcFykm0+9G7lEc7iHMy7M1c9kDzSNMCrnhSo1+WtNTDdE8M0Czd96bJ
         rH78O4OkD1j8xvS+dCi0vwKxq02GFThl0AeqpBl4jXuFvV2izSIs2bg/dFT8RCLGtZF8
         qoZ7eFXg3rJXo9tasbPi6/qPgUNMhudJFo20Bqf+r8EiOd7jV+3ysFrd/U2cR0Om/oBr
         VEJcqGDNTgHhEpgQ+TfVra2tiMPET4rNIqHXd4gc58cmmJzaE3VeRLGBlO1K3d2gc+pM
         4/LE9Xah7xCVJYj2pSdbWO/jL5HByTD1QTaFJ2+7e6/pJLqOvtdWufLPqyNRD1agzInr
         MoYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703261097; x=1703865897;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2KNrotPvUT6vjS5v0pZKBfh6tYgRJ7gfWI6uGn4p06E=;
        b=QXlBBLV1HHiOH2qWrvNM7cbrujUbznbdHg8IZwG0UyBkKbZNkslzC9Nknj9qVDbPbt
         QIZLBXTuwSI4Um8Hwa25feiciXJAwFATKK949Bcmct1KrX6KLEBaVXOpOl9UpQzjyNHG
         DAMiKQ6JN8GoSOa1fxx49ANC8u6e7GZDVq3gb1mKE+Pbp64j90IoUaD3/6IaBMQ6OJ99
         CuMYFMDfH1bGP4zIdHAODODagOjjKNqKQatTosw10pvifAohG1/KawPG9wBGL08S2f9t
         oNIQ8AEKQvnjRKctb/sFjGE8vGlAYILkgD5lPpSrTBTkzSykV0Bnit7P3UeutTxSEEBl
         r2Hw==
X-Gm-Message-State: AOJu0YxaU5qOFqkzmV9u4lzp14ZPdcsXmKaUkWlIJZ4DvWMh0scGJA2j
	m/XI6BvYs3HP4nj6iQbbYCFXAZzSPc27j5Y4lik=
X-Google-Smtp-Source: AGHT+IHSJWnG0i5Vr4IxxRRpi8SOP7xJC8Mdxvicpziel0hBaUaRTw4UfWWHM7sUworX9KlrOB68atnpBv/iZceH3BY=
X-Received: by 2002:a19:2d42:0:b0:50e:4b79:b825 with SMTP id
 t2-20020a192d42000000b0050e4b79b825mr860229lft.20.1703261096493; Fri, 22 Dec
 2023 08:04:56 -0800 (PST)
MIME-Version: 1.0
References: <20231222131907.816564-1-michael.opdenacker@bootlin.com>
 <CANNYZj-iEw6aV1Ki6BOu-xRVxKSmFvGS-thU_13NS99b8Tt_gA@mail.gmail.com> <e6174a7a-2981-4b88-a24e-e6f72873886b@bootlin.com>
In-Reply-To: <e6174a7a-2981-4b88-a24e-e6f72873886b@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 22 Dec 2023 17:04:45 +0100
Message-ID: <CANNYZj8DWHh2=N+96j8zNosNUC0in-yrbqyUU-7dHWSP=6fhBQ@mail.gmail.com>
Subject: Re: [PATCH yocto-autobuilder-helper v2] config.json: add
 "package-management" to images
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 16:05:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62028

On Fri, 22 Dec 2023 at 16:24, Michael Opdenacker
<michael.opdenacker@bootlin.com> wrote:
> If I understand correctly, even after I define a new
> 'poky-binary-distro' distro in meta-poky (if agreed), I'll still have to
> add a new image to config.json, but indeed not touching existing ones.

You don't need new images, but you would have to define a new builder
entry in config.json that would set DISTRO to poky-binary-distro, and
then build exiting images, and do additional steps (e.g. publish the
package feeds).

Alex

