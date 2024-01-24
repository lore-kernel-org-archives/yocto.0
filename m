Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B18AC47E49
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 17:24:20 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.29006.1706117054157336110
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 09:24:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=Km/sEQwD;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.42, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-55cdaa96f34so738733a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 09:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1706117052; x=1706721852; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Df2Q33/9CEgIgSoxE6XI4p8yriQO5DLHgyTrIpRn6+c=;
        b=Km/sEQwDU2vIf4uW3uLpaRzgJ1+LDhb8d+liCgsSpJCWVddrt7ymgPCfMuxzrTUcoX
         BnUWk4U65+e/4Opg9j9oF8kdiFfH2Wnyv5NoYCu5Gl6kMnOwckEYJrtFJjVz3k0sHbY9
         X/bg/gNYnmct+kFIHMBulwHiZAMGneVuSyD4f08XaSWhmxgzN23xN7yJUzaB0wbSZRey
         7KS+eiJu7gsFiAnKbHYViBnh+T7yOmO/MY4jYKNIHNFtkqsEwMtQYnW7YJQgptIc/EWU
         f9Rl7HMzZyg0PrnprEthb1PII7pXuGxeEqQqcCalpsR8NiGvMm40yf6Vl6SNv3042sYk
         2CoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706117052; x=1706721852;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Df2Q33/9CEgIgSoxE6XI4p8yriQO5DLHgyTrIpRn6+c=;
        b=trHoOZzyMyDOAtLOavJqotKAu8c0wasPIKFLlZfosxGuLfQ2dP8glnAiKJdfFJlMGC
         +lfPxrIvfXgQg7AiNyN//2Kc0sUX3lQgy2lh/XN2GV5c2MhqgddwLxStV3aHn4nMSEtN
         wSGCb+NmFCr7bGtnp9AZFvaDiAsCobSo+xBwa2oKDEgLHjIiBe8WU+f4DvLzN8ku6HH+
         xTc4MFr3GB1Z7Gbw9Q+Ii/IztxKXMC9OKl+eVCu0XFnPX/XHCb2214dUUKeTozQ2fw4w
         DzOykN8lOAVgR2JhtJycBCwv6rFA/TZdBOVmNUwrUIUxj22dfuYM9/5aKt7tXv+Kn8zb
         U2ew==
X-Gm-Message-State: AOJu0YzVldcStV9eQPSWdPlyqOJKIq38TA96bC42MV5afeEHWYLzRVXo
	RiYWX8hITl6hVINijb1oFmUqdvg4JvGHtQE5TJj+AmmjIvh86JS7IM8dYhiuRj2ducz+cKDSI+i
	LGJFPI+DGGOOz+O/k/mXXL6o8ckL63KeFtcaeetC9cNZ49htxLpk=
X-Google-Smtp-Source: AGHT+IEIm8hxVb9SjdaRBAOLUVWBkG4CJryVX6g3kjBd9bZUN2v0JeLY9BTHLHXvWjpdB6stf7nizYavoo/mKybWfdc=
X-Received: by 2002:a05:6402:5145:b0:55c:7415:ece5 with SMTP id
 n5-20020a056402514500b0055c7415ece5mr1584997edd.6.1706117052254; Wed, 24 Jan
 2024 09:24:12 -0800 (PST)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 24 Jan 2024 18:23:46 +0100
Message-ID: <CAEt6NwqasJzzj46gJ3Jr=NZebW2Gue7gs8Ze2BH+UMLzdnsV+w@mail.gmail.com>
Subject: OE Workshop in Brussels on February 5th - Monday after FOSDEM
To: openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, members@lists.openembedded.org
Content-Type: multipart/alternative; boundary="000000000000d85b25060fb45452"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 17:24:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62259

--000000000000d85b25060fb45452
Content-Type: text/plain; charset="UTF-8"

Hi you!

Yes, exactly you!

Didn't you want to grab a seat at the OE Workshop in Brussels, the Monday
right after FOSDEM? It's time to hurry up now, there are just a couple of
seats remaining by now. So head over to
https://pretix.eu/OpenEmbedded/OEW24/ and make sure you get one now, or you
might miss out.

And that would be sad, right?

Greets,
Josef

--000000000000d85b25060fb45452
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi you!<div><br></div><div>Yes, exactly you!</div><div><br=
></div><div>Didn&#39;t you want to grab a seat at the OE Workshop in Brusse=
ls, the Monday right after FOSDEM? It&#39;s time to hurry up now, there are=
 just a couple of seats remaining by now. So head over to=C2=A0<a href=3D"h=
ttps://pretix.eu/OpenEmbedded/OEW24/">https://pretix.eu/OpenEmbedded/OEW24/=
</a> and make sure you get one now, or you might miss out.</div><div><br></=
div><div>And that would be sad, right?</div><div><br></div><div>Greets,</di=
v><div>Josef</div></div>

--000000000000d85b25060fb45452--

