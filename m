Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web09.7893.1582723266242142551
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 05:21:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=ZYK+RbZ0;
 spf=pass (domain: konsulko.com, ip: 209.85.167.177, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f177.google.com with SMTP id d62so2947742oia.11
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 05:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=aK6XYe8q1AohsQBOqfrNk/f+5+L0YZ11KN6i03Y6Nfk=;
        b=ZYK+RbZ0PIddatsFV3EOaNEccc8go6CnW0nt32NceNhgi45jGGyDIr24I03mFToNMi
         inlDotQK2MFsPmHZZzmGW9RO1Vi2ZZS3lyQpaqUeLsWLtHQ/MQ9NRpszhscT0TqWBgzT
         RnBCauMSPDggSy/ziR4iipLeRCyqashuIsHAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=aK6XYe8q1AohsQBOqfrNk/f+5+L0YZ11KN6i03Y6Nfk=;
        b=n+Z1SE6kUOq1aE3aO3YRZEZK+JvM8ixVWSxk5iJLtYKVqGb0Z743ztvEkY8eHpGlfv
         2KPv1t2acuzqO88iuOpgohohp4AfiK6Q4BHvyGyugn3VAhhBKGwVzAiLsqcj+hI+TalA
         yuMxtvC7EORSBmR4yUbHAymYRwDlbzalXCfivkHvSUcrkHCr4KlY5Bo4WHerA9LwRF8e
         3XxL7jO6u5FZCL6ws/Mo1PJGQnFD1hGMaGXyv8PbdypuK/DH/ti4kQ/QKmelW3BxhqzQ
         AH6qK6V9M7lec99+pSVT3v72v0AN5fnlXUiKnsH0R/fihyqFs672Nsyb3P+4nTLk102v
         1fGQ==
X-Gm-Message-State: APjAAAVzAuvcYSse0OaM9NUCoQa/NF57WZGgtzyH1XTxT/EqJAdv2ijO
	GemmGzMYSosXGsLmxF4ksksx8zmHvCo50URkgxX/hA==
X-Google-Smtp-Source: APXvYqxaC8S3CuzOX1l/L4FHkX86idDfyD6OI4SC3k9wctqCSKtZNOitOG4JjOC9uZn78o1ETZR7EckFVN4kEpCBH7c=
X-Received: by 2002:aca:d985:: with SMTP id q127mr2921130oig.132.1582723265575;
 Wed, 26 Feb 2020 05:21:05 -0800 (PST)
MIME-Version: 1.0
References: <CAER1B8K5Y9CFjJny8Z-ip+o1=5a3qfUTiFoHBL6zZTx0_sGeUQ@mail.gmail.com>
 <CAM9ZRVtf0=CWs6TXYtiwG4XY7jYL5Bza_euJOgyAgpjT_TP6Ng@mail.gmail.com>
 <CAER1B8K56hz4dxTjbeC1a3KpAg9TYQ4PL=L5tAqtA30eWnkeyw@mail.gmail.com> <CAER1B8LY_oYXv=97y=jnuqByXNuckv01iBHgGrys7A7gzLE+MA@mail.gmail.com>
In-Reply-To: <CAER1B8LY_oYXv=97y=jnuqByXNuckv01iBHgGrys7A7gzLE+MA@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 26 Feb 2020 13:20:53 +0000
Message-ID: <CAM9ZRVud7sNEUnj22BtjNBVb1bgNb-dScCxm1bYcPzLHPP07FQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Top Level Files
To: Mehran Memarnejad <memarnejadm74@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 26 Feb 2020 at 13:17, Mehran Memarnejad <memarnejadm74@gmail.com> w=
rote:
>
> Hi Paul,
> As I know, bitbake parses all recipes to make its database so that it kno=
ws each recipe PROVIDEs what... base on top level files (I guess they are m=
yImage.bb, myMahchine.conf and myDistro.conf), other files are pulled in if=
 they are necessary... For the machine.conf and distro.conf, the files name=
d in MACHINE and DISTRO variables in local.conf are pulled in and the myIma=
ge.bb is pulled in by the user when entering a command like $bitbake myImag=
e
>
> Am I right?

What do you mean by "top level files"?

I'd recommend you look at bitbake.conf so you can see how MACHINE,
DISTRO, etc are handled.
