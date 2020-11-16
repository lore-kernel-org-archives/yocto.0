Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.32610.1605522627306689816
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 02:30:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=1dyoA46R;
 spf=softfail (domain: burtonini.com, ip: 198.145.29.25, mailfrom: ross@burtonini.com)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 59E5638C06C0
	for <yocto@yoctoproject.org>; Mon, 16 Nov 2020 10:30:26 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id 11so19562044ljf.2
        for <yocto@yoctoproject.org>; Mon, 16 Nov 2020 02:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H0scDiFWCKc7gauzzLVXFhZwYkkyNUTQ9MBq/s0/4CY=;
        b=1dyoA46RVR+RbRw2HBDNkSQ8TQ2xWyoxKP0f3m4grlDjK3od7mJShg6B6KyZx+zaXD
         SBkeZEIEyHWTE37dlSRH055lVWyH6JpWxDag/mne7yohrx5BOfx8RTCn4wOFnq3gu5ey
         C648qIWJCXafBW7Vf2bgrpUE3hk9EuergXE1r7LDPHgW85Ru+NmOxfFWwJNfCtFFQ08G
         QGuCVLMJ17ifG5uHq+FyEQLlCE8A0/OwghgT8q1KnEjU/dOWqfNooLXt6+OIZVxYrZWr
         kN5o5lv2zc+RGmaH69OHoE6s1uJN5eRqW0vtiqQqjBEiVqR8M47BmUH1OVog2E3FgqIH
         cAMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H0scDiFWCKc7gauzzLVXFhZwYkkyNUTQ9MBq/s0/4CY=;
        b=jr5zLhR1ZRebYnB4XWhQPHyIjhDj1ZjmqrwgcRmnf9ul3obk7uZqbX0maAj+CRm99i
         3FCF6qlfHLsNpUAVSdLdIB7JgnWEtQu/igURsaUKoPMtT9UcHkuyPsAABTlTwv8F7o+N
         +fnXIxKV1f54qQAmNVKWdyjYPoYJeChVRwayxroUR1ZJGGtGQY8xqA0j/Jl3C2lbT4QS
         Y9KHOhVRpwjSJLPaoMuOf7baCR+VzekgybLGuJKsH/4vTgo4zmLPsP57DHuWedlyWPCE
         TLmONmJrIIx+z+WbNYE1rXvLjWdmtySHYehzehGt53tuH9dQi5sXRIZhE7QKfFsI1mcL
         fBqQ==
X-Gm-Message-State: AOAM531cK/qdlqv5TxB6DkIkLwS0pcoFwaBxxg93NSBP+X4AXjzLhbVv
	OFVOZy64jo3jRVxJE0D7D0Q7/o+rack8esJDadRpdg==
X-Google-Smtp-Source: ABdhPJzD3yaCDRkTNKt9+7m1HwbgIMHsELeLq0kzntM/KXc0Merp2RfY9I2CnqkUsYcZLdcm7uAVtp8FID2ks3/W+wI=
X-Received: by 2002:a2e:9f08:: with SMTP id u8mr5490236ljk.352.1605522624162;
 Mon, 16 Nov 2020 02:30:24 -0800 (PST)
MIME-Version: 1.0
References: <414b86dd-4b-dc11-b93c-58e556fa2e7@crashcourse.ca>
In-Reply-To: <414b86dd-4b-dc11-b93c-58e556fa2e7@crashcourse.ca>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 16 Nov 2020 10:30:13 +0000
Message-ID: <CAAnfSTt1b0rQUqKpW9rO71kaEh9mXksowwvHsSLEQyyWMwf6Xg@mail.gmail.com>
Subject: Re: [yocto] is there a way to centralize numerous BBCLASSEXTEND settings?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

The best way to centralise them would be to upstream them.

Ross

On Mon, 16 Nov 2020 at 09:08, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>
>   related to something i asked a while back, i have a layer in front
> of me wherein dozens and dozens of .bbappend files exist for no other
> purpose than to contain the single line:
>
>   BBCLASSEXTEND += "nativesdk"
>
>   AFAIK, there is no way to centralize all of that, which would be
> delightful. it's daunting to look at such a layer for the first time,
> be intimidated by the number of bbappends, only to realize that 80% of
> them have a single purpose. personally, i'm tempted to create a new
> directory structure, recipes-nativesdk/whatever/, and populate it with
> just those bbappend files, just to clean out the other directories.
>
>   is there a way to do something like this cleanly? or would it be
> considered poor design?
>
> rday
> x
>
> 
>
