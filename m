Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web12.3996.1610804082577262354
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Jan 2021 05:34:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=GtWSl3fu;
 spf=pass (domain: konsulko.com, ip: 209.85.210.48, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f48.google.com with SMTP id x13so11474550oto.8
        for <yocto@lists.yoctoproject.org>; Sat, 16 Jan 2021 05:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sZPpBKHeD9GyMw67Ffz/McsbM+fuMVbwGuVKQVLOZOU=;
        b=GtWSl3fuf0cjM+tf0zE8tq4e3egTBEyBQxwZ1hIzIfNHQfaSqdfe/PkxgpZGOby1r1
         AFHlkCRPiCfecYBBCnlbRQUrOgtpT0DtJA/oKe16zx/u+LWiHj9MGu4LryrVXAOmzjBa
         3YJunvXHE+2R4OhWVzK5Yd+NSd1BCgSCniHwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sZPpBKHeD9GyMw67Ffz/McsbM+fuMVbwGuVKQVLOZOU=;
        b=um7qUhwHPUw5NZrpJQu3QwSmrPW9C/QyiV+nnJoJpk6K7Fc+NM6Lsotx4p16dekMjW
         6MJiDqU9JIb05u6OxJRX3Xe/Hm9JOt5IXQq+0VQy4lcJ1gGOwA5SMouMIALyAjuHb3qh
         DYgMh5MNput4IqVXegbQjr5RtM7iqBRmC80xwMmUaJzYU24292rGwboEVii0MnrDkLwL
         TxYDFhBC/CLFHXHtsI/aI7d0LlApJKP+9B9ZD2i6H6GoK//at04PoA10UK/L2K7GjN/1
         euPTfkp9r1ZQxbuvaaxybfhm0mCWWv5BWoc9Vo/4j/USfFwU1+j/yPtcUmZ8EjHEKBMQ
         WnMA==
X-Gm-Message-State: AOAM530Sv5kGgMjCTI5dUyXE1yqFTX0ZTtnay0s9violDgNSBqUJtVKI
	XxycMXm7QW26AcDTFkHCDkCAr9PmQxLAgWx+3IDFBQ==
X-Google-Smtp-Source: ABdhPJx0+uMrwDO4v1eh26kBy0fdAwn+P+oW3jMILpvVxNckd87oGfjUHtp5qDd8eUJEY8ycXghDp8hkvLmb+sjYqMg=
X-Received: by 2002:a9d:12e3:: with SMTP id g90mr128377otg.92.1610804081943;
 Sat, 16 Jan 2021 05:34:41 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dXuJXuns3neB1rw9OrdBRuu+eNJsFXzCQSrPfmdSakpBQ@mail.gmail.com>
 <CBB8C2B0-0870-42DA-A47A-23E0D03672D0@gmail.com>
In-Reply-To: <CBB8C2B0-0870-42DA-A47A-23E0D03672D0@gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Sat, 16 Jan 2021 13:34:31 +0000
Message-ID: <CAM9ZRVvTt8LAbXC3W3ROSCKbKPXUFe_Rdp9nrhK=bGnpugdZNA@mail.gmail.com>
Subject: Re: [yocto] requesting help
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: U RAVI KUMAR <uppadaravi2511@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, 16 Jan 2021 at 04:12, Vijay Rakesh Munganda
<vijayrakeshmunganda@gmail.com> wrote:
>
> Hi Ravi,
>
> Below links might help you, choose one of the them you need. Download and add this recipe into the your build and recipe name to IMAGE_INSTALL_append in local.conf file.
>
> https://layers.openembedded.org/layerindex/recipe/67001/
>
> https://layers.openembedded.org/layerindex/recipe/61209/

Hi Vijay,

I hate to be rude but this is terrible advice. That recipe likely has
dependencies on other recipes and before you know it you'd be
assembling a completely untested mess of copy & pasted recipes with no
clean upgrade path.

I recommend looking at the project documentation, watch Josef's
excellent live coding videos
(https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj),
maybe check out a book or work through a tutorial. Once you understand
the layer system you'll see that it's easy to add the required layers
properly.

Thanks,

-- 
Paul Barker
Konsulko Group
