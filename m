Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web11.9611.1578497965450313493
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 07:39:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hi3oIlKO;
 spf=pass (domain: gmail.com, ip: 209.85.166.68, mailfrom: schnitzeltony@gmail.com)
Received: by mail-io1-f68.google.com with SMTP id n11so3629417iom.9
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 07:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=es/gjwV6pDw626adUuglohvarG/wck8jTbnLY0nuyAo=;
        b=hi3oIlKOo7PoSjq1CBKCk9IVrDF5UWJULFEAH77UqSLxKnaTvgQqX5/JoVE6qKG+A1
         JF5h45O63mrpSPCRA5OyhjTi19uEt/ujr4v9bJCz/uZm9BptKTo+pwMv6jj8qma4FgJc
         d8sxN9jLJtbZGCK/qIdh7sAEPIC2fFJwsVCNA2hAqbTep8c9J69tYY/vj6N5HAzq2HAz
         osWuWfnwePzwbMznAc3itG49QYNkH6gINUbw3bPGXrF4yCQYjTmjgpWuhpPj/8HZVzUF
         3znxP/GstMF+mKDsiUQ65Artv3K5M3FC8nr08qKOIA21IdZXTkRR+5KEXeYFKSDW6gYI
         6f8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=es/gjwV6pDw626adUuglohvarG/wck8jTbnLY0nuyAo=;
        b=R3cGACv7LK5x/qrSPMp8WJ+HQLLrJyt8VW5eqpU97NhHeVAFL5KRGvsuXCvBlKmoHN
         wMUHBV1g74SikxVmMusymmIJhJSJW0hcAo0cqkaCVEiQzyQV1WnJDE2mgfgD1mPIg7c6
         p8h4U9UhArHbEL/ZCkFLy+sHFfSUxi84YPv8nClJT+ZDDVMG0fR0DTBTt3QxKaeyaonv
         +lI2gLJ+Lhv4hNfV64j1TlJzoP7EWhS7zNdKf+2WG++JN1RuYvTy/LMb3MzHwDACkZAF
         yzm+4/VbJS3XQzrfLGeIvANnLrEp4Yozehz+JClVSnkAEJKhxpWFCEOnRjPI2rUsN+1K
         7kyQ==
X-Gm-Message-State: APjAAAXZb0926H9q662+3ICXkUrSpvCzOshRD/6DUxHpOdIMYwjwt/zq
	7sbK0OmuuQ3//LaBlhUAzWcPM7CQgcguoPFa/vw=
X-Google-Smtp-Source: APXvYqzrG/vdUtvpgFmHxgrK+zJ2J12YFYZaUJu0hyBGuY2QdokN9vzAUIJ5jesjHU8LicsFIrtCobflSBXo7in/Atw=
X-Received: by 2002:a5d:9ecc:: with SMTP id a12mr3815112ioe.267.1578497964813;
 Wed, 08 Jan 2020 07:39:24 -0800 (PST)
MIME-Version: 1.0
References: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
 <CANNYZj8PnbOQO6CM1tdKBuHpVFUBj9MG8o0bQb1W04HDMM9mkQ@mail.gmail.com>
In-Reply-To: <CANNYZj8PnbOQO6CM1tdKBuHpVFUBj9MG8o0bQb1W04HDMM9mkQ@mail.gmail.com>
From: "Andreas M?ller" <schnitzeltony@gmail.com>
Date: Wed, 8 Jan 2020 16:39:12 +0100
Message-ID: <CALbNGRQ9m9b3xXaNU-GDk94U1-3QA_He0Bbyr0n2=8S3j9hj6g@mail.gmail.com>
Subject: Re: [yocto] Maintaining patchtest
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Paul Barker <pbarker@konsulko.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 8, 2020 at 1:59 PM Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> Thanks Paul, maintenance work is always greatly appreciated.
>
> Alex
>
> On Wed, 8 Jan 2020 at 13:49, Paul Barker <pbarker@konsulko.com> wrote:
>>
>> Hi all,
>>
>> After discussion on the technical call yesterday I'm looking at
>> becoming the maintainer of patchtest
>> (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/) and
>> patchtest-oe (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/)
>> for Yocto Project.
>>
>> Aside from a few minor issues I think patchtest is working pretty well
>> at the moment so I don't want to rock the boat too much. However I do
>> want to extend patchtest in a couple of ways:
>>
>> * Support testing commits on a branch as well as patches in a
>> directory. This will allow integration with merge request workflows as
>> well as patches-by-email workflows.
>>
>> * Support testing patches to other layers as well as oe-core. This
>> will require splitting the test cases into a "common" set which apply
>> to all layers (e.g. "Signed-off-by" must be present in a patch) and an
>> "oe-core specific" set (e.g. bugzilla reference validation which may
>> not be relevant for third-party layers). Other layers will then be
>> able to include their own test cases.
>>
>> * Make it easier to run patchtest locally before submitting patches to the list.
>>
>> I also want to simplify future maintenance of patchtest in a couple of ways:
>>
>> * Move existing test cases from patchtest-oe into oe-core itself.
>> Archive off the old patchtest-oe repository.
>>
>> * Consider if patchtest itself can be moved into oe-core as a script.
>> This is desirable but there would be a few issues to overcome, I need
>> to look into how patchtest is actually invoked by patchwork on the
>> server side first.
>>
>> * If patchtest is to remain a separate repository then I'll move
>> development to GitLab with git.yoctoproject.org becoming a mirror.
>> This will allow automation of a few things like the deployment of new
>> patchtest versions to the server after committing to the master
>> branch.
>>
>> I've also still got my eye on other ways we can support merge request
>> workflows for layers that want to use this but December got busy.
>>
>> I'll give this a week for people to reply with feedback and then
>> submit patches to update the maintainers files in patchtest &
>> patchtest-oe.
>>
>> Thanks,
>> Paul
Suggestions made sound like major enhancements to me. My favourites
are: extend to other layers and local operation :)

Thanks for taking care

Andreas
