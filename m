Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.9911.1604040644343808773
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 23:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=SEEoW5bu;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 209.85.221.52, mailfrom: andrei@gherzan.ro)
Received: by mail-wr1-f52.google.com with SMTP id n18so5229659wrs.5
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2020 23:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding;
        bh=dlxwGel/b0f0axcd6v0adjeLd+O1fN+qKthiVsCPKdk=;
        b=SEEoW5bu32mB2AZNoaLUSrd+TSZWIl13RoGSrKC9LyeSlxyBVkXJ9TK8ShQOkvX/fJ
         LGIDTEgG03qGU9xADNE5zgF7Yv/lQru7rKbQEehb3+iafuzpH9Xf8fjJHXYfEcsnhQj0
         GBwcBmQpRzcYg9YOcU2GoJ5yXIwnpxBL3HMqjEl1H7gfUjFWoVCJhd2CvgjwK1NEfEN6
         6MsCzA+aBsY+e59KgqGx3uXgJESxqRRod/+1nKu0GAe/EgfHR336IclYSOeke36QcWBc
         qqeu4uX6w2NZti0JAAAfHr4FT1qHuWayqKrCp68CVmFsickkrp1sP6cfzkwBx7t7w2Yu
         24QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding;
        bh=dlxwGel/b0f0axcd6v0adjeLd+O1fN+qKthiVsCPKdk=;
        b=E2N3pG475rTfComKSkfH5yRYjTgKstZ8xCqEtJGsDntk5e8DCGWwYM4km4PfX5QS1D
         9CZspqi6X9Ytfx+1Cj3rjZOAahEySrdsDfAgYZwv2A1tvqcwXx2f6SAwMuB4T46AyDGS
         O8ZoyYVDBkWTFxqupa7TkDrVKPvL46p3nAtX3utmUrsQrETfmfVtolVSkEOWEx6vnnCH
         k7NaFKCAtOrYccgJ1Fh+yr/nVHBandoWx39/Tc7W0BHX4p+lKur/g8ZteWeNaS9gqben
         i/7o1INfYEVAkI+KekGGvkarHGNB6lueh3lfpg0my12pQksh/d7y2zqXre/JMfan0TWg
         UaYw==
X-Gm-Message-State: AOAM53246Qr1nBTQH3tafb8DfunxIzGkMcdlFciP0B+BzJ3o7sGdQW7/
	4kzbvmFxtmdPvTgvTgWiPggN8Q==
X-Google-Smtp-Source: ABdhPJwf1KvgmoZEZgiVsv9py45H84EJDfm8S7arTGkvZxIIgTqAbXegbM21Y0ISQ/Ax7VE97CpcQA==
X-Received: by 2002:adf:cc82:: with SMTP id p2mr1085570wrj.177.1604040642812;
        Thu, 29 Oct 2020 23:50:42 -0700 (PDT)
Return-Path: <andrei@gherzan.ro>
Received: from [127.0.0.1] (host86-130-146-50.range86-130.btcentralplus.com. [86.130.146.50])
        by smtp.gmail.com with ESMTPSA id s11sm9113471wrm.56.2020.10.29.23.50.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 23:50:42 -0700 (PDT)
Date: Fri, 30 Oct 2020 06:50:40 +0000 (UTC)
From: "Andrei Gherzan" <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <4e61d5cc-64cf-44b3-bf2b-0ffdeceba85b@gherzan.ro>
In-Reply-To: <CAMKF1srpVu+5xOOV1G3XBngMjnGR3xy3eg8QZeU6P0zZq7uDxg@mail.gmail.com>
References: <CAK18fxFr_Td=9sG=G2npGg4G6Dooff6vOym1_rdkunQj6W3dqQ@mail.gmail.com> <CAMKF1sq_ZbKuu4j2v7DMm7uC-+ABtA4YmeucYR2mkgxrvhF4KA@mail.gmail.com> <CAMKF1srpVu+5xOOV1G3XBngMjnGR3xy3eg8QZeU6P0zZq7uDxg@mail.gmail.com>
Subject: Re: musl and reproducible builds
MIME-Version: 1.0
X-Correlation-ID: <4e61d5cc-64cf-44b3-bf2b-0ffdeceba85b@gherzan.ro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Khem,

30 Oct 2020 05:56:04 Khem Raj <raj.khem@gmail.com>:

> Hi Andrei
>
> I have posted a patch for master, please test it out and let me know
> if it fixes the issue.
> https://patchwork.openembedded.org/patch/177717/

That's exactly what I ended up doing and it works just like glibc. Thanks for pushing the patch.
--

Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

