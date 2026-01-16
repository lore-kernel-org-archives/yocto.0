Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD008D47CD0
	for <webhook@archiver.kernel.org>; Fri, 16 Jan 2026 10:30:15 +0000 (UTC)
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3092.1768559411618643767
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jan 2026 02:30:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=BCMH0qSX;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.181, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2ae5af476e1so926594eec.1
        for <yocto@lists.yoctoproject.org>; Fri, 16 Jan 2026 02:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1768559411; x=1769164211; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hB+Ueav/leIcdou1/F8CqUnMUsVQJomw5RSJBhAkUU=;
        b=BCMH0qSX7kTa17q5eOAfdDukIOERJ/tsK6MuWs8ODb10nqiNLn7laxfssedr0QZzXK
         nQqO8UU+aAsNXTX/lh48BcvwmvFIekA6EM/X0bvQ2AbjzfY0kUSGyrn6aBhFfrj5dL/G
         qisFOElmDgx0raSEWKEF+S6KxKKRFbk0YHD7oXlchqDIDZOa26YkwBdgAlYlRdoAZslt
         4zBLyKkxKnCfrpIR0S2rpxyDByYlwmcxXdumnKKym5MxEeSyH+VNTxihiTtico7WWeQs
         L0BhQ0DmAcHsZtFosDUSLN+4chZ6FblfL5K9yyhG/tTE4HeU5gOHq+0aUERZ/NOvDSV0
         VIyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768559411; x=1769164211;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6hB+Ueav/leIcdou1/F8CqUnMUsVQJomw5RSJBhAkUU=;
        b=qXt0Ie3vV9vdHhGGzpCfuVeJFGfOO9nKZmdaH2ijawtZQhk7ZnD2iCeAbhH2Xj6RTv
         j/k81ResRKc7JBjIiQhakbO74OWPPprq5SOZAd9PfZ3LM9tJtUxOGd+OEWRf/M46sYLH
         ZQkLDFQn4XIr9ulBxe6HOfhzgzA8qHuKGvEogc7n9Pi9BJKHjwwHksmw4Ag69KeMhrqt
         /QR2KKMITvsmCqYwYdcawFN8JrUpcmaG/detRpzLF8bkcdLpHl+xBJ/EO+wC3tIkTRj4
         fPjaR2XHDQeHRFjaseLM8A9kyqlqHZEGAOyYbkfBWIRWdDyFJDtieeeKuM69zqloV9of
         +miQ==
X-Gm-Message-State: AOJu0YxYImei45m6aArcoht4Adm4W0p581g/UaSFxujx5Hm2ZUa21+gv
	Hmm7S92Ijxp3T6YMXUSXbR+Z0yHyO4l7/oXbmPWLJsThjVaJnTCr27r9zBMEv0S9lai9NeKwsMM
	PhnqomT39JO0yyMb/Kbxf0RYrD36hJA7kkQ2KCPgW7nCXu5RII+abh/s=
X-Gm-Gg: AY/fxX6DKnTkaa7k7kVxct2ggBoGbo1Swa//ljGvUBuJBG1qJbikIWcB5KaQESD6/MQ
	JQU0y553EFyn9NzmbATV+rqW6ugbMTxdjmFCU50rxdenxe8Zny7blzRprjaBy9RcZiJ2I63Z+OS
	PEdZcfFWu6BpGkZ3Kq0sp8/q+T+2QitSHxJzE9P4wkEfY4jb3pTuHHgxeXH0Z0U+3pp9Ny5CrJ2
	athCQtxIcKmbGihAShot/dGgc8N/+R6e0/+DSAYsrPqSb3ALqThOu+Tb4gIUMUv+uQC7bpWnnqH
	Uk1utpSs5re0/94pUFinQSLvJYZ/7A==
X-Received: by 2002:a05:7300:f60b:b0:2ae:5022:fe7c with SMTP id
 5a478bee46e88-2b65b8c27b9mr6303810eec.1.1768559410545; Fri, 16 Jan 2026
 02:30:10 -0800 (PST)
MIME-Version: 1.0
References: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
In-Reply-To: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 16 Jan 2026 11:29:43 +0100
X-Gm-Features: AZwV_QhI_KrLX8Pev1kDkkOVZ96AQUUa5oj6o2mXZS8_O8VrlFPJLr_XKHIxEME
Message-ID: <CAEt6Nwo=Feq4d_1USjT6E4Q0LNueuxM6hxWw73VY4DBNM9y3RQ@mail.gmail.com>
Subject: Re: [yocto] Want to select a SoC with good Yocto support, please advise
To: yocto@lists.yoctoproject.org, ManWag@fastmail.fm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jan 2026 10:30:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66152

Howdy!

On Thu, Jan 15, 2026 at 3:54=E2=80=AFPM Manuel Wagesreither via
lists.yoctoproject.org <ManWag=3DFastMail.FM@lists.yoctoproject.org>
wrote:
> * Texas Instruments AM62x

meta-ti is one of the least painful BSP platforms that I have worked
with so far. Your board vendor might (probably) not stay up to date,
but it's a super solid starting point.

> * NXP i.MX9

iMX6, 7, 8 were solid workhorses under Yocto, but with iMX9 and the
move to meta-imx I found the BSPs to be a lot more painful to use,
sadly. Still it depends a lot on what your board vendor makes of it.

> * MediaTek Genio

No hands-on experience, cannot comment.

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66151): https://lists.yoctoproject.org/g/yocto/messag=
e/66151
> Mute This Topic: https://lists.yoctoproject.org/mt/117280167/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoct=
ojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

