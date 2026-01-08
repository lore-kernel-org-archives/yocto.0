Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FAD3D185C2
	for <webhook@archiver.kernel.org>; Thu,  8 Jan 2026 10:39:31 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3832.1767868762556522783
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jan 2026 02:39:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DpgdeirG;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-88a2d21427dso30826086d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 08 Jan 2026 02:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767868761; x=1768473561; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w4+tWvOdHTxAR7hf3YINKOd2IqxkmkiinUbhSlkqruk=;
        b=DpgdeirGmQZ3tg/mUuqkK4+zqltJntgPsf474EGIsb+sDQjo2pEGzTVr+tgcA09SdD
         LZh29Yupw+6thjZ0+zqXy1XGrcOUfAQqo7wNItqZ0f5SnWM+ZY5tNly42UnKDt/ZzeII
         oemR466IRTqxl7sIJnjvc8pHGnvwAWLQUuMVkmOgggqgF3LC8YRI848IqTs/DbRFbbDB
         tyGV58xAU8jmDomYZ3DYK3N83FrI7NnnvgFi13JXcCzIxgf9O3Ho7V0sPrnqNRxBmYFe
         3jEQJnSNUwIDGCaR09JPAQmlnojv8Bf3jX10MSqhUezvaZ06NoZhiCouaugkKaulDZQG
         x9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767868761; x=1768473561;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w4+tWvOdHTxAR7hf3YINKOd2IqxkmkiinUbhSlkqruk=;
        b=fWR1po+PRTdMGdrH05vTALl/553hRpVGOIKl8L9CRcA4wP2NsMx/uQg47+AC+ohmd6
         yyp3Y7AIQaFNXlSGKpUwlYbxmh6MrphAAuLafk3tjAq/kAsamVj8iHRQWiFaXFWlpIjS
         fDSB8Qs0CwYopp4WhPgf1dQSaP3up96meDxFW8gWh/yNZPGeMm8YdDKNJa6G7Y5Yy73D
         HgvoYqInCh1Lp6GK+K77z457tP8ZF1AVCpOGREjkocmrnfN1CYnyGKB8H3bZLscc198R
         AgVWpC6QNcGohwunC5gS9dQtMNjG1znKjkQQG8KlZa6a9r2QS5aiKB3vhUqgirD1FsJ+
         V52g==
X-Gm-Message-State: AOJu0YzAb5Ix2xI1BvsDB1pgE7pffEvU783Z9PyfXdPkncAP7/gXCs53
	GqGAQLAOptYjJVDQwRXaF58OHyS1kBvdX/ue1+3IrW9hEHO7MW1XfUD5p7teq0UmweTkmCtREou
	f09k8XQ3CRWpqOIMsmVDl94wzHI9+La/bGg==
X-Gm-Gg: AY/fxX6jPwR2y+GKRxy/8y5/3SY9I8i4PuAuGn2dXTXtra7tw9kHx4ms/GoReZRPt11
	rNSFli5VTg4/Q46Q+/P+IHX/HEp4NACcBIj0maNni73rjbS1aE7U3IJ5qWqkRoa9LEBZ/Oi7+Wh
	kZsgjge7jeGzzvpQc8Ic6vUG8+xKrqUQ3IjOzksgg+ZFO0K1ZuZGgL5Nkeextwm/KJUZ9Y0P05c
	p+mPmBCc1s1n+NpR8KSg+r0CmHLtwKDAzadEgy4vn5MxAC4GaO9W5bgJbMBwplIJIn5ANDlYzcV
	gpbOhyIXQrx7jWtsl4jqlea+N1ziwg==
X-Google-Smtp-Source: AGHT+IGXkOVDAK/IZte+psk0fQOXVF7NiIBkm+huq7Z022990Hrx7/FpZdlqiY3RU1e4GnqAEkdyLzxKjbRpMQjRAAk=
X-Received: by 2002:a05:6214:2f0a:b0:890:2bf3:c67f with SMTP id
 6a1803df08f44-89084179d61mr92877456d6.13.1767868761439; Thu, 08 Jan 2026
 02:39:21 -0800 (PST)
MIME-Version: 1.0
References: <QrFW.1767868629280061069.Q3fC@lists.yoctoproject.org>
In-Reply-To: <QrFW.1767868629280061069.Q3fC@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 8 Jan 2026 11:39:10 +0100
X-Gm-Features: AQt7F2rgze7WMI3oYoRqzts6eZ2Jjg3yXNm8ZtdMUb8dhv2x_YRllOAZZICqVMA
Message-ID: <CANNYZj9-2NvrTgdRF-jZpFAFUdg-vA0r-aU4Enr8=nVf0S68wg@mail.gmail.com>
Subject: Re: [yocto] Best practice: Howto update/modify a patch?
To: yocto@lists.yoctoproject.org, H.Wulff@kruss.de
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jan 2026 10:39:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66138

On Thu, 8 Jan 2026 at 11:37, H. Wulff via lists.yoctoproject.org
<H.Wulff=kruss.de@lists.yoctoproject.org> wrote:
> From time to time I get in the situation to update/modify an existing patch. When I use devtool, the old patches will be applied, and results in an additional patch. The newly created patch modifies the same code area(s) as the old patch(es). OK.
>
> So, I wonder whether there exists best practice to update/modify an existing patch?

You need to run 'git rebase -i' to rearrange/squash patches as needed
inside the component's source tree in devtool's workspace. Then
'devtool finish' will figure out what needs to be
replaced/modified/removed/added in the layer.

Alex

