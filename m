Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web08.1392.1617091346474779815
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 01:02:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=C8AweMjX;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.47, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f47.google.com with SMTP id q29so22342806lfb.4
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 01:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KNX9yvu6ShUxy3GgdUeVtFDwW8CfIRKRbHRikSq45Q4=;
        b=C8AweMjXXUnLw1awEsB+u5ihW3Vo9iZR6A/kpgzYz7Uv81lyV1enYW9ARNUY8CBsw1
         ONHtMKEZl64gywWLDRa7mhT66p5yX3p5z01TjmagrpEuXyEjh01BrLAP7jC5PO3rvxpw
         avF0H2HzNSh/hrmfCryiHtLRB5xxh1AtXQ0D7d/DjV4s0cqppKSVRQzjZ/sjIlQkTrCv
         j1H8V5jXsNkh4ZiiUv6tvHUM7CwqYbrjiLyoIv5+d3Sf/bttkc//Pfd20judusXR+pQb
         nxtsV0A/5GJTsJJYkoV9beyr5lmsyY6B/8mulTwey89iT4fnqTR/2ybu+OvGkcROFLhw
         F4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KNX9yvu6ShUxy3GgdUeVtFDwW8CfIRKRbHRikSq45Q4=;
        b=A7tzjlIb5ln44N5zSwUhzaGm6HdVrfcNWP5Pnb76CeYx7n49L91/ZtaYkYn7HObTCt
         0ae/7P0XtSFuuqVwzVcKf6y66gMqorx3ZvxYHZBzScxfWhuo8LxRTDHXO5E1gnow7JYJ
         mUi8wKNF5oyYmL6fiCrDG5iJYPkxSLiwLyLvufKkp1hJBKu0WYvUGOh0P8mPdvPfvjv5
         yPotWwfLA8wyGu8w5q1hAAks5ZLA2GFVvMrGq1F9YMlgEb0nmnPNpmv08tPjH+xQyr4V
         LQtI8gaX6edWrW90MlUEYOQTS3jxE/AF9bG0Zwm4y2MMZ0ZOYeBbF8xO2Ppq9SaOO7g8
         dSEA==
X-Gm-Message-State: AOAM531uMW2u5etltd6ZoJBcjvnQCpK9nwGtrBgBBn9HXFVeIxSlbNAI
	RxtqmdMKs93ZpZ+LfgOy1/xrflxOAUwQY2JscGfPUg==
X-Google-Smtp-Source: ABdhPJxKkVfmO90XK7t+13KIWJvsYAv+e3DSGu/v4md7168YmqVshb1p9JLVpivp0x4/04sf/pyzpiA+Wm8gVASMqTs=
X-Received: by 2002:a05:6512:c0b:: with SMTP id z11mr19450797lfu.586.1617091344562;
 Tue, 30 Mar 2021 01:02:24 -0700 (PDT)
MIME-Version: 1.0
References: <4Qxn.1617074544212136798.2egN@lists.yoctoproject.org>
In-Reply-To: <4Qxn.1617074544212136798.2egN@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Tue, 30 Mar 2021 10:01:58 +0200
Message-ID: <CAEt6NwotWrmAwXcFsD2asp0LUG42pn1J_6WzW4vDAF+RvrA3ig@mail.gmail.com>
Subject: Re: [yocto] eula-downloads.yoctoproject.org down???
To: anthony.l@axxin.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Am Di., 30. M=C3=A4rz 2021 um 05:22 Uhr schrieb anthony.l via
lists.yoctoproject.org <anthony.l=3Daxxin.com@lists.yoctoproject.org>:
>
> Getting a message today
> Fetcher failure for URL: 'https://eula-downloads.yoctoproject.org/index.=
php'. URL https://eula-downloads.yoctoproject.org/index.php doesn't work. P=
lease ensure your network is configured correctly.
>
> Can't ping the url?  Anyone have an ETA on this being back up?  Just try=
ing to get some urgent builds done today.

Please see https://www.yoctoproject.org/pipermail/poky/2016-January/010357=
.html

If you are experiencing problems, you can override the connectivity
check, and then please revisit your versions and/or third party
layers.

Greetz

>
> Many thanks.
> Anthony
>=20
>
