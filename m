Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F73C10F1A
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 07:29:18 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.11449.1714030155753250032
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Apr 2024 00:29:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PeEkiUCL;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-51bae805c56so727754e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 00:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714030154; x=1714634954; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sG6J4EFtxdbjyb4nQjPL+s7n4rIeyF/qe592dv57sbg=;
        b=PeEkiUCLS0q6c3OMoV6D3ovt7x/0jU4hIplGmPxdTYxcXT/Hd9X8KfIGn9OVXFdAoU
         TJjKbSBwozGuDT5ajW0xT+WT/JZVBwdNv4cG4KibSuGYsQuypLGRb+v4cLfTos4t9t8l
         JIRMxwg0CGhSNTulPzMtY5pyvxb9KGPYTgZ1/mb24aMtf8eTSEyIV58d0dZb8IuedDLW
         vxiWLPDw8OUNrXX6oetdBxsh/RzPo9niWMtvgoNlGq+xaARpEu+j8JSbR8MWtzLjUxzI
         DGu1rQYBvcvgjQSpY6WMxaWlZ8EyEM4KlUygsAcFcZK44L/rVrKcYgm2tIG4B3fgtMta
         QpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714030154; x=1714634954;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sG6J4EFtxdbjyb4nQjPL+s7n4rIeyF/qe592dv57sbg=;
        b=jjkDVwg4SW+7phpq919RfMmnsVf5cMDh3lEQ1AAkmbSFfQ7moJ46V3E/Lbkc1K1DO+
         9vwOHXyC8W3xB61GKNhWUKTpB2cQGZ/OWz70yTiB2O1aKqt1WXIWPQ5CuE54Ve/k0LMi
         O4V1FEvuIFB0chbTpFqssP56G4NCL9vnaQJUn7TO21NrP0Q4ihBQozV360aCr/KCCJ6Y
         hx6tU86s55bzbap2OXbhha9RLA1TMH/6Y0VippiKQmzb/533fyCgtL+C5LxKNyc9NAGG
         v/jmQmu+6lAxJwJMy+ToZfJnG7QcLQTKZZe2IOQ8xYKRFfN3dxUkIpeuzrFG35dhGRCZ
         AhBQ==
X-Gm-Message-State: AOJu0Yw9fcta2/Dff3LsDZBboD2U7d3zj5gCrDpSIiOIbCCyJXhffE7E
	5ErzdxpKYEulg4wFh6US7aZ+bdoYAtzQ6ZS36sv+cRh33OXnCBsgE9/Unwpv/5fJjckwhskAXSY
	Pbk6CRCrY29L9LaVatkO2CNtxe7DYeg==
X-Google-Smtp-Source: AGHT+IGqxLzr52Ult9thJCNkXTC6l5umP5r815921Q+1OLbxbA398TK+YKEtvb5NqBpZ5J3RHnWzb5AzOxFNQaeHU+g=
X-Received: by 2002:ac2:4c2c:0:b0:518:d212:75dd with SMTP id
 u12-20020ac24c2c000000b00518d21275ddmr3102003lfq.35.1714030153471; Thu, 25
 Apr 2024 00:29:13 -0700 (PDT)
MIME-Version: 1.0
References: <f6GB.1713970791763030669.6DXp@lists.yoctoproject.org>
In-Reply-To: <f6GB.1713970791763030669.6DXp@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 25 Apr 2024 09:29:02 +0200
Message-ID: <CANNYZj__fSRwHRNhg8pL3wr8C7GK5RHxMymLgvzBXyOobVocbQ@mail.gmail.com>
Subject: Re: [yocto] Installing Multiple Versions of the Same Library with a
 single recipe
To: yocto@lists.yoctoproject.org, Salahaldeen.Altous@leica-camera.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 07:29:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62997

You should find out why people want same that library in different
versions in the first place. This indicates some kind of dysfunction
in the product development process.

Alex

On Wed, 24 Apr 2024 at 16:59, Altous, Salahaldeen via
lists.yoctoproject.org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> can I install Multiple Versions of the Same shared Library with single recipe? by provide different tag
>
> or should i make a new recipe for every lib version?
>
> Regards,
>
> Salahaldeen
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62995): https://lists.yoctoproject.org/g/yocto/message/62995
> Mute This Topic: https://lists.yoctoproject.org/mt/105711657/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

