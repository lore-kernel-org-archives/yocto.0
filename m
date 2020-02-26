Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web12.6824.1582718767847472809
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 04:06:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=rQiZsBYv;
 spf=pass (domain: konsulko.com, ip: 209.85.167.170, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f170.google.com with SMTP id p125so2748526oif.10
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 04:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HAk/SrXLC5nc2KTP89csxhGMxT2nLf2VSWvE3PTWI5I=;
        b=rQiZsBYv+/1UH3qfrpPGBhU8AuqQxnWhuTtvrMyXDh8lF2FfbaGBlTIVvpjUA69tMv
         NnQ6vS0W6nM18q+ZUGqIsHvdLHoxhBfIrZoO6ERRqFpPR6fPnAs6bQKNDid/1Ym9sy4x
         xa6FufraEohIEkjpjhh/wl+TvDGY6FYpIRzDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HAk/SrXLC5nc2KTP89csxhGMxT2nLf2VSWvE3PTWI5I=;
        b=mR0ToNlhd66tyz+B8dnMSP8zw4uNmpAJbtb06qK8OXZmWuimr+e+qOHpb5P1BdFdyj
         Cub1L90IlDjcGpXDdVNyTE1fTe2qf4Pua/cV1DSdog3p4eQOT9jy6H3IcAUmY+PSoCzg
         s94WffUTVQn2c/i3+3pY3ywyyO3QD2o1Gxn1dTw3WniSmEi2f0NU4yRu4nJb28RuM5qk
         +IDCLklD5X1xKl6Nu8ySamNlSOyBk5LPUJ6AGp2JY/vMch6wn0g+akmZ6hMZJ2owzv1Q
         sJbN0pHYOjhEL6XNGd9DI/613ciJ5AulkFo4YEs0Afssv7KbntMZMNTJBO6DrjGbKADM
         HmCw==
X-Gm-Message-State: APjAAAWPyWk5giK4V7FJ5iJd/JRBUcS+HwFCzXq9BSUDJgAH/BwYPlzZ
	nFmqsv376C/4QQb8f4A6HNmfl6fSitmL7wv5jLmN7A==
X-Google-Smtp-Source: APXvYqz3KaHcX1eNgeAh4OFGFRNVt6QXJCZTRjIQOmXl0ZttA5w1JNs+8n3txqXjrdtNjFr4ta8fkVgoiWXGqw6WRIQ=
X-Received: by 2002:aca:ec13:: with SMTP id k19mr2719145oih.22.1582718767231;
 Wed, 26 Feb 2020 04:06:07 -0800 (PST)
MIME-Version: 1.0
References: <CAER1B8K5Y9CFjJny8Z-ip+o1=5a3qfUTiFoHBL6zZTx0_sGeUQ@mail.gmail.com>
In-Reply-To: <CAER1B8K5Y9CFjJny8Z-ip+o1=5a3qfUTiFoHBL6zZTx0_sGeUQ@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 26 Feb 2020 12:05:55 +0000
Message-ID: <CAM9ZRVtf0=CWs6TXYtiwG4XY7jYL5Bza_euJOgyAgpjT_TP6Ng@mail.gmail.com>
Subject: Re: [yocto] Yocto Top Level Files
To: Mehran Memarnejad <memarnejadm74@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 26 Feb 2020 at 12:00, Mehran Memarnejad <memarnejadm74@gmail.com> w=
rote:
>
> Hi,
>
> Working with Yocto Project, Now I am a little confused about which files =
are the top level ones i.e. files that bitbake starts by, and then all othe=
r recipes are used if and only if they are included by some means such as D=
EPENDS, RDEPENDS, IMAGE_INSTALL and so on...
>
> As I understood:
>
> meta*/recipes*/images/myImage.bb which is "hardware independent" and incl=
udes packages to install and etc
> conf/machine/myMachine.conf which is "hardware specific" and includes app=
ropriate Bootloader, kernel, device tree and etc ... i.e. selecting appropr=
iate bootloader, kernel recipes among all others by PREFERRED_PROVIDER mech=
anism
> conf/distro/myDistro.conf which I don't know its usage
>
> Then by setting MACHINE and DISTRO variables in conf/local.conf and calli=
ng bitbake with $ bitbake myImage, finally conf/local.conf is read and "myM=
ahcine.conf and myDistro.conf" will be selected to be used for image creati=
on, and the myImage recipe's tasks will be executed by bitbake... all other=
 recipes, include file and bbclass files are come into play if and only if =
they have been used by some means such as IMAGE_INSATLL, DEPENDS, RDEPENDS,=
 inc, inherit and so on in myImage.bb, myMahchine.conf and myDistro.conf
>
> Question: Is this procedure Right??
>
> Question: So in summary, I guess that top level files are: myImage.bb, my=
Mahchine.conf and myDistro.conf
>
> NOTE: Some other files such as conf/bblayer.conf, bitbake.conf and etc ar=
e read but those are not in my focus for this question

If I've understood the bitbake sources correctly, the parsing looks like th=
is:
1) bblayers.conf
2) bitbake.conf (this pulls in local.conf, your distro conf, your
machine conf, etc)
3) All recipes (even the ones you're not building)

Then the targets given on the command line are resolved to recipes and
those are built.
