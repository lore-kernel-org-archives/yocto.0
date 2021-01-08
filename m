Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web10.1475.1610097081457578922
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 01:11:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Doqo5QoO;
 spf=pass (domain: konsulko.com, ip: 209.85.210.49, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f49.google.com with SMTP id x13so9044567oto.8
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 01:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=hOVCoUEDQ2JbLDeaBTV9QnoBKJlnA9gbZEU+bBBJ8Dk=;
        b=Doqo5QoORdPMOgMHQryCgH0OB7tAUuog+oVSbRcTxF3rKli+Ksrqvp7vOONr6yFgdS
         ZrL/bsBfu9LW1FoDShaDUrcd7F1BMag8NR6cJRTfZA580VKtXRZAFJtEYdUhIpuZI+5v
         0GI34pznw2EjkCu+l1BhetN3K0IZvp9/3l9jo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=hOVCoUEDQ2JbLDeaBTV9QnoBKJlnA9gbZEU+bBBJ8Dk=;
        b=ITLjDDc1BZ2lTQgx6r6MUcd0FS14eBuexAnw0om/oO18gryqsReRhAvuu5K+tConVt
         mXhS4Kfxz05KB4lx5xYkwjXGhKBbYlKeZgK3DfkcXkG3F31sylejGYS5VvIcmo/4Kvtj
         6j49K/22m1jEmvWAeWulokByiKvbxmI+0MVhXCGhmuPo1GgfnhB6Z4Pe9/e1af9zV5K7
         Nwq1Xi49hJ/RiEdoNSh9L9ixJJfwH78snbJeWaUL51lrHU3BdpQtQHdXKTawSn3Ybnoz
         uhSKnTnzBI7wrEnLfNl3bTJWlB404jdM8y/K8bOFzgi7bjKn2SMZLwPM170wkdN3J6Sf
         6QVQ==
X-Gm-Message-State: AOAM533nij1FnQGXPKtKyS9ySA9lqRu0XScOn51xmvP0rSzRocLrJRbe
	/+5hGKL/gmZlpYdGJ7tD/qIipZy1chCldIjXFajgdg==
X-Google-Smtp-Source: ABdhPJz8HtM8rgjJ5axF8+VVL3LmgWosY3HPhHLPhCldJKD+dtFwFKaogZlWdqurdZ+xjnkjJTAtnrAhRO4V1UDazd4=
X-Received: by 2002:a9d:1725:: with SMTP id i37mr1873551ota.258.1610097080784;
 Fri, 08 Jan 2021 01:11:20 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8Lx4TLQ98rk+BQBoFGWrBf57ST_EywDeKKvpsWdNb5RvSA@mail.gmail.com>
 <11979.1610095764150569039@lists.yoctoproject.org>
In-Reply-To: <11979.1610095764150569039@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 8 Jan 2021 09:11:10 +0000
Message-ID: <CAM9ZRVs9ywVZ2i9q5k5YUei9QUncZEez9C187XXdnADZk4e0uQ@mail.gmail.com>
Subject: Re: [yocto] Unable to extract tar file #dunfell #yocto
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 8 Jan 2021 at 08:49, Vijay Rakesh Munganda
<vijayrakeshmunganda@gmail.com> wrote:
>
> Hi Zoran,
>
> Thanks for the reply. The reason behind CMakeLists.txt does not appear is=
 because tgz file is getting extracted into the source folder, it is empty =
when I checked. My recipe is unable to extract the tgz file which is downlo=
ad in the downloads directory. Do I need to write something specifically fo=
r extracting tgz file in the recipe?

Does the .tgz file get placed in ${WORKDIR} without being extracted?

Also, which Yocto Project version/branch are you using?

Thanks,

--=20
Paul Barker
Konsulko Group
