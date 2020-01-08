Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web12.8148.1578492184262762584
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 06:03:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=d9zcj6Xs;
 spf=pass (domain: konsulko.com, ip: 209.85.210.52, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f52.google.com with SMTP id i15so3689929oto.2
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 06:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=xAdz4m9SmQDPtyrqWNFCqAau84xtRhudCQV5GMwK97M=;
        b=d9zcj6XsHgY6yrcdgcCZJyKhl3uTjhAVecUbAzBLvNfdeawoAOcqj2/twZFzBvm+ha
         8Y89vQxCHSQlE75G9+PTr2bMxdwfMcnfuovZmYuKnpVbqJxkPN35nj1ulBmIx5IiYYlF
         s1C1oIRTSUprGqaILv55AtHu9RjUY0+8reLa4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xAdz4m9SmQDPtyrqWNFCqAau84xtRhudCQV5GMwK97M=;
        b=HHzie35iUJzR1SGM6BkYt59Z4nQ6nNv8hc1cFazQZgqbVYbq1lrgzuW/8gfG3CldDY
         vWX1iKlhvMwjLX8v+v2tRV0Lih2tT9S3FdsRqFIp3/WFZkhhl3fhJFDxJaO3GxTkjE6+
         ZYIBRK7AG/4ZzgfLB2RdIaBtgCUMLEKYQd2uIZS3YpyHpC4el2miNrXIPDZNwy6DXtQs
         1hB/ltgDa7jdN3b+2TojzulRONxVt8vW48423ZjNAV6Xzk1C+PKsN+Vc64YqLaDZR9My
         dxCoWCGDXps+IvvP/jAJNVViCM/gZdO5yxxZNFQZzMXKIxFidmIjuABXXQEhZ8TIO+HF
         m6PA==
X-Gm-Message-State: APjAAAWC03hvfHQPSr+enYB/jiHRJhoDq5t8fI5k2LJrxjaFBawKO8vJ
	IsHtcQHDxt8OKhTzU4MN01r3CkvAfiEcJxKeOlv+UKFd3X9A9LAy
X-Google-Smtp-Source: APXvYqw0RjOSeB+t7kXdCB0OQepdxdGYfnhKF6cdVJQKjwf2+2kHC8YFvargsye4HtygnoTvKRtuGjA/Z2wGSPt0M78=
X-Received: by 2002:a9d:470a:: with SMTP id a10mr4373006otf.370.1578492183360;
 Wed, 08 Jan 2020 06:03:03 -0800 (PST)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 8 Jan 2020 14:02:53 +0000
Message-ID: <CAM9ZRVvru2LaypQk337KMmT1DsxRAuA4-9peU21PSMRf2o43Hg@mail.gmail.com>
Subject: OpenEmbedded at FOSDEM 2020: Request for volunteers and demos
To: yocto@lists.yoctoproject.org, openembedded-core@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"

Hey folks,

We've got a stand for OpenEmbedded at FOSDEM 2020
(https://fosdem.org/2020/stands/). For anyone who hasn't been to
FOSDEM before, it's the Free and Open Source Developers' European
Meeting at ULB in Brussels, Belgium on Feb 1st and 2nd. FOSDEM is free
to attend conference with dozens of stands, hundreds of talks and
thousands of attendees. I highly recommend coming along if you're able
to!

I'll be able to look after the stand for most of the weekend but will
need some assistance and some cover so that I can take breaks when
needed. I'm looking for volunteers to help with the following:
* Setup from 09:00 on Saturday morning.
* Running the stand and discussing the project with attendees from
10:00 to 17:00 Saturday and Sunday.
* Tidy up from 17:00 on Sunday.

I'm also looking for demos that can show off the project. I'll have my
laptop with me to show toaster, the layer index, how builds work, etc
but I won't be bringing any hardware devices as I'm travelling on
after FOSDEM. We'll need a couple of hardware demos to show off the
project well. The table is 180x80 cm.

If anyone can print up some flyers with info about the project that
would also be excellent.

Thanks,
Paul
