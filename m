Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
 by mx.groups.io with SMTP id smtpd.web12.9709.1607360696962638061
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 09:04:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=XHNzi3eQ;
 spf=pass (domain: konsulko.com, ip: 209.85.210.47, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f47.google.com with SMTP id b18so13146625ots.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 09:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=89OAWLjQ3nXt3GNsKfOxETjFdK0sCggBZiwxyzB8zX0=;
        b=XHNzi3eQ9Fh91WPSOozFsYwatzlmauZKygK5BdpPeJKNVdkr7NtFE7QcbvTurSFM91
         24EAomb6QFTxu85MPCZ9YAWgLtQkFqrj4kz8rK+iLOXgimiAvRsGAFfVZf5OVOnjfDp9
         KIDvsYf9SXpJKjM84kX+R/KWi37G4wMqwFgJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=89OAWLjQ3nXt3GNsKfOxETjFdK0sCggBZiwxyzB8zX0=;
        b=Hh2/B03TEKbyhFYyKP20zQhWQkBAemRuau7/ujvpItfuvpbb/8Z+ulWTP+CWqcbJi8
         7LPISMxURi7rN9+YJgYextuZaN8IqekJZkUwjNbcN3scvZDIPvCGjg3KAJhluksfBTc1
         PmU9Irwvn1ZmF+TLM+yDzxVn/KPa/gBSFqs2/4UMkGOAMgb9Zhq6c6HV2JkFP80O45r4
         vB2A59W1hgMihZOnq/e3L/AaMWyJPBOB3oJGXBnMhvMkseBRStXEm78Qhg+oS+uY8SFy
         gYjnMEwmg3/pmIk4AguJI0ecXiR86HoAvqybmC3mJPVy9VwFPQvZteDGkYe/Dz/r5JIh
         QU+Q==
X-Gm-Message-State: AOAM53394UiF/Lhpev+er5DbSd8egNLruP3sCsQcSZuBEpqznJjC840v
	uGKfns2z546vw6LrOmyiiFSvqsxEh2tysAX1P72RishSs+/Q8w==
X-Google-Smtp-Source: ABdhPJzuH7v0olXy1BlzgTooUlfl25mb7lINhOmr6/XIamfE/AfBi/ktb3PbvunUSVglmPbeEwctI9wo9OsvyJxW5YA=
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr10000886otm.305.1607360695969;
 Mon, 07 Dec 2020 09:04:55 -0800 (PST)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 7 Dec 2020 17:04:45 +0000
Message-ID: <CAM9ZRVvx7=t-iOvm-=phpMkVy82dBPE5hG-1VHdc0cUKf3p8hw@mail.gmail.com>
Subject: meta-kernel -> meta-linux-mainline
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi all,

Just a quick announcement. The meta-kernel layer has been renamed to
meta-linux-mainline to avoid any confusion. The new URL for the layer
is https://gitlab.com/openembedded/community/meta-linux-mainline. The
old URL (https://gitlab.com/openembedded/community/meta-kernel) will
still work as a redirect.

For the dunfell and gatesgarth branches I will not be changing the
contents of layer.conf so the layer will continue to be known as
"meta-kernel" internally on those branches. This, coupled with the URL
redirect, should ensure that builds continue to work for the released
branches.

For the master branch, layer.conf has been updated and the layer is
now known as "meta-linux-mainline" internally. If you have
"meta-kernel" in LAYERDEPENDS, you'll need to update it to
"meta-linux-mainline".

Thanks,

-- 
Paul Barker
Konsulko Group
