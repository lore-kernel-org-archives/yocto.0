Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.41906.1600694554874406788
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 06:22:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QpWURJCI;
 spf=pass (domain: gmail.com, ip: 209.85.221.41, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f41.google.com with SMTP id z4so12747035wrr.4
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 06:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wkYG6tL+RHPJyZ4yE4rnWiO8JfRPTbtTeNEZJiUfRQM=;
        b=QpWURJCICJ4ANIi0BH040mQE4Gf/u+vziqvHYLEX4KTulCJFIN5cNnMvEO/A2uJnhI
         jBagzLDTwFYVvQzgM1zWH/MF/DCglV+n6swVwKxlT3ZqR7Fe5MthBXPfLWEzP5yf8ytR
         VfHhwKxC4YOcrs4KFH53zLQF1jzrZjh+yVxqMfPab3uaxvI93mGyPxkgwNMAnDkNqLjL
         d/uMIEb4vRAmj9wwoEdyHENgaCaj44+iuLu4rwKlmWu7CrSvliNUNBgTLlRGl7MS6/UL
         AO5ZRbjrnRBhdOEOFmkfbvhehygxYSID9n9w4mN/RvvzoT7DMxx9b3WnpHj7Cyi56hHA
         UE9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wkYG6tL+RHPJyZ4yE4rnWiO8JfRPTbtTeNEZJiUfRQM=;
        b=ax+3LeSfOX4NitKqgDHBLA2ukFRJTvOvvqhgkc4KDClEQobiE5JK6fi9bTHQCC/rpr
         b8PxgdUlGoiIJTQzxsTyOz/PIFAL1MKcz8kCHYwp6upHAq1Zb815cgRSCC1wYR6lc3Wa
         NB/+5sd/HlI0qHUrepmgFW9Z1VcBNc0jO6MWPRysxng4/Cv5HRFgBmahHsA/3Tcex2Fh
         GR/uxBl11JVFlOgnhzDT6Mkua6szRJbkPMHTwpH2LLSDsJ8pbBf/j/8R126OnMiAbIf6
         4IJDlG/mpsBHnhJ5gf+JQdjSZYvcn0jcPfBiPPVHb1IlCmPM5y1PFjTM/Nb6NUnl99CX
         H6cw==
X-Gm-Message-State: AOAM533o4Ugvf/g2mjiBjuDW3ODv5gTBqPksjR3QVWQOJRy4yxYs6aXr
	24q6qSioaSLMUnox87VYLFMZzTyN+ulyyOlbnqA=
X-Google-Smtp-Source: ABdhPJw4lZzzm9Uy7vIM5zy0eK7Mm7gs7Kpgo0LZoZ4RN7Jr82F5+SVYOPWGKO+bk3E2WfikMvyUeHQlDOqlpB62j4I=
X-Received: by 2002:adf:e488:: with SMTP id i8mr55745933wrm.116.1600694553055;
 Mon, 21 Sep 2020 06:22:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Ly1TKgL5JLo41Bi7MKp-TosaRCFr1NMa3DaL5HBMkX=Bg@mail.gmail.com>
 <31646.1600521150609834192@lists.yoctoproject.org>
In-Reply-To: <31646.1600521150609834192@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 21 Sep 2020 15:22:21 +0200
Message-ID: <CAGAf8LxAjPEwNLYGdjbPDN7uCqdGfMNZH8ar6DZmshud9NH5SQ@mail.gmail.com>
Subject: Re: [yocto] #yocto systemd not able to start sshd after a reboot
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> There was a sshd.socket file in /lib/systemd/system which had the followi=
ng line in it.

Interesting... Pushed/forced me to think.

There is no formal dependency between sshd.service and sshd.socket!

[vuser@fedora32-ssd systemd]$ systemctl list-dependencies sshd.service
| grep ssh
sshd.service
=E2=97=8F =E2=94=9C=E2=94=80sshd-keygen.target
=E2=97=8F =E2=94=82 =E2=94=9C=E2=94=80sshd-keygen@ecdsa.service
=E2=97=8F =E2=94=82 =E2=94=9C=E2=94=80sshd-keygen@ed25519.service
=E2=97=8F =E2=94=82 =E2=94=94=E2=94=80sshd-keygen@rsa.service
[vuser@fedora32-ssd systemd]$ systemctl list-dependencies sshd.service
| grep socket
=E2=97=8F   =E2=94=9C=E2=94=80lvm2-lvmetad.socket
=E2=97=8F   =E2=94=9C=E2=94=80lvm2-lvmpolld.socket
[vuser@fedora32-ssd systemd]$ systemctl list-dependencies sshd.socket
| grep sshd
sshd.socket

Strange... Isn't it?!

Zoran
_______

On Sat, Sep 19, 2020 at 3:37 PM <srijan.nandi@gmail.com> wrote:
>
> Hello All,
>
> I finally got it to work!!!
>
> There was a sshd.socket file in /lib/systemd/system which had the follow=
ing line in it.
>
> Conflicts=3Dsshd.service
>
> I remove it and added the following two lines:
>
> After=3Dnetwork.target
> Before=3Dsshd.service
>
> And that did the trick. Now sshd service starts on every boot.
>
> Thanks,
> -=3DSrijan Nandi
>=20
>
