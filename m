Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.4195.1578541838680733673
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 19:50:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CHYOil7j;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id f16so2414412qvi.4
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 19:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BuVsjxgU/eorp/cqDkkBQZMSJ30zNMgMx0QexaqKYyE=;
        b=CHYOil7jCn1jLISbsEyLM9jaRD7/h6rzt84a1wVt0C26/Ml/7yt2csNyi8SV02gfTm
         npilXSL2F8rlH3Vqis1edGQ79GV08oES2BlRRgqfToB+5yzKYVpRiRAcS1LpwSrwY1Hx
         wg4USQKiq42P01UNwH6/rtvufVuoTAxH6iXxuSD95QJoyJJLpq0HTKrugJcP45y6lcf7
         rDH5wNcMQwr/yTTY9guk2vh+NiqMWal4lFQ7b+sFZL6Nlzzx/Ixw18mjLHMJZDdApBIV
         JKHtXvoFDkZ1u3nXVVIICxBI9WbLSofgATSKZ1rkB3LJBktKNYVUlyY9kW56pcdjgul7
         7VMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BuVsjxgU/eorp/cqDkkBQZMSJ30zNMgMx0QexaqKYyE=;
        b=hcEH8ibN36Xbs0FVk8ZmSnILRrrqGBTHrEsBs1J6OuqavVeJDQQFSpLHzUzyWmlxWo
         oDJMjfqhMssocAB0aJ8HLT/+zcmLsaLvHgEVfcZjkslz7rNNFJZyA46RYN/bNZzDGTar
         BZ9OuqgBWKXRT9xMl7hUJJHi03CTCIrVlXHGJnUh0/m9W+nZgqRcV9p2C86XNOF3+6NW
         BJUtDEUQ7xS8ePWaEJA5wN/rXEHJfMBIUn+jI7F0zf9TCQ7iy/DE4b8Ygd02uj13r9f6
         bamWkw224+d3YoNcOuSe7M5xmFsq+0MwmTvOu8jG2kCJY7pHzNwpjrfxgXM4EFOrchIx
         ND4g==
X-Gm-Message-State: APjAAAXOcO8pqAGAdP3I8SAkc/BzVUfSh0dou3Evmtr2U0ihvTpW8cq6
	GQ4FhDeZfwYorfmLucijy366fdP1/KNfxRc/DW8=
X-Google-Smtp-Source: APXvYqzxMRHZ0itTPe86F/GEAoB0sHRGduOzkaMp0+h7TDJOklArWAFKwkLc3NSaXZoey26CQPzPhAsE7bXon5Md3qU=
X-Received: by 2002:a0c:fa4b:: with SMTP id k11mr7078946qvo.55.1578541837555;
 Wed, 08 Jan 2020 19:50:37 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
In-Reply-To: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 8 Jan 2020 19:50:10 -0800
Message-ID: <CAMKF1sr6GZr-ESK7XKjMXD=DaBRbKTNzEPqW9a2ODv0Q-ATFDA@mail.gmail.com>
Subject: Re: [yocto] Maintaining patchtest
To: Paul Barker <pbarker@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 8, 2020 at 4:49 AM Paul Barker <pbarker@konsulko.com> wrote:
>
> Hi all,
>
> After discussion on the technical call yesterday I'm looking at
> becoming the maintainer of patchtest
> (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/) and
> patchtest-oe (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/)
> for Yocto Project.
>

thanks for stepping up.

> Aside from a few minor issues I think patchtest is working pretty well
> at the moment so I don't want to rock the boat too much. However I do
> want to extend patchtest in a couple of ways:
>
> * Support testing commits on a branch as well as patches in a
> directory. This will allow integration with merge request workflows as
> well as patches-by-email workflows.
>
> * Support testing patches to other layers as well as oe-core. This
> will require splitting the test cases into a "common" set which apply
> to all layers (e.g. "Signed-off-by" must be present in a patch) and an
> "oe-core specific" set (e.g. bugzilla reference validation which may
> not be relevant for third-party layers). Other layers will then be
> able to include their own test cases.
>
> * Make it easier to run patchtest locally before submitting patches to the list.
>
> I also want to simplify future maintenance of patchtest in a couple of ways:
>
> * Move existing test cases from patchtest-oe into oe-core itself.
> Archive off the old patchtest-oe repository.
>
> * Consider if patchtest itself can be moved into oe-core as a script.
> This is desirable but there would be a few issues to overcome, I need
> to look into how patchtest is actually invoked by patchwork on the
> server side first.

I think this is a good idea. Bringing tools closer to developers and
having the ability to
run it offline, perhaps before submitting patches is going to improve
the submission
quality, I would encourage to pursue this path.

>
> * If patchtest is to remain a separate repository then I'll move
> development to GitLab with git.yoctoproject.org becoming a mirror.
> This will allow automation of a few things like the deployment of new
> patchtest versions to the server after committing to the master
> branch.
>
> I've also still got my eye on other ways we can support merge request
> workflows for layers that want to use this but December got busy.
>
> I'll give this a week for people to reply with feedback and then
> submit patches to update the maintainers files in patchtest &
> patchtest-oe.
>
> Thanks,
> Paul
> 
