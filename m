Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web10.7301.1578487747840007958
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 04:49:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=DGXOS4iP;
 spf=pass (domain: konsulko.com, ip: 209.85.167.177, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f177.google.com with SMTP id p125so2459048oif.10
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 04:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=6VkdhAnAFV0YNBurwwKi6o+QxlGElhPQzcgiFbAyKV0=;
        b=DGXOS4iPLliEx+uK1Nxmk3woFozN7+/FP5lg6hYeh69fGF4zz7+ZAV5KkHRGXQvE55
         LDfBMOD4wre2W6ATtu52UEGCXuT4ibnBDYHm+28DDVFsSJNTqAHWpjIwcR201HYBK3sT
         PVfe2aMEhrLzQGRbCIIbliEGVPPtESu13lvgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6VkdhAnAFV0YNBurwwKi6o+QxlGElhPQzcgiFbAyKV0=;
        b=Hino5oy3bATglB/PY3Axnc0A4rOasY2MQ40FiPhOb8FSyLAIhux20gwrFpix788vqn
         MLGuyNOZIFJzX/qn8OUL3X6lpqXW/4vyzIrq5YpAr55jc6wdiWo18iTOMrhbJWwxyebm
         kYMp9jXN4GWZT1W9L5oCcg8pk1oc7PZoUQgb50Vk1xka0h0Nv/15EmmNSf98sUj1w9x1
         KteINzc66tA1la+LZOTizhYcPbh8hxwT0ZgW3FtHwswsOTekJ3XaNZUkXBNyod5eSQ0u
         Y+j3CJYfPTCxi0nZISi5yiOBcAXLlmOCD7jm4idF/fgrDUn6QO+1OrTEiPZbTmDattWK
         967Q==
X-Gm-Message-State: APjAAAVbXJvsUFi56WPQg9GHFR+hqAVG9gBn7pJ8o7wJu+whdNmmzSs2
	/vlWwE6hKVZ7K5TeaK6GRqTsrBIB3hldHNEX3svGQf1yWuV+RooK
X-Google-Smtp-Source: APXvYqw6A6mM2HCw0VB4xq4mBPqpqb6/9Rqfyrc3vhXNW+lfT+SQYPg+4dVi+DT3bQlfadH2qUc38xLc+PIfZD3c8gw=
X-Received: by 2002:a05:6808:2c4:: with SMTP id a4mr2714515oid.22.1578487746929;
 Wed, 08 Jan 2020 04:49:06 -0800 (PST)
MIME-Version: 1.0
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 8 Jan 2020 12:48:56 +0000
Message-ID: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
Subject: Maintaining patchtest
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi all,

After discussion on the technical call yesterday I'm looking at
becoming the maintainer of patchtest
(http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/) and
patchtest-oe (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/)
for Yocto Project.

Aside from a few minor issues I think patchtest is working pretty well
at the moment so I don't want to rock the boat too much. However I do
want to extend patchtest in a couple of ways:

* Support testing commits on a branch as well as patches in a
directory. This will allow integration with merge request workflows as
well as patches-by-email workflows.

* Support testing patches to other layers as well as oe-core. This
will require splitting the test cases into a "common" set which apply
to all layers (e.g. "Signed-off-by" must be present in a patch) and an
"oe-core specific" set (e.g. bugzilla reference validation which may
not be relevant for third-party layers). Other layers will then be
able to include their own test cases.

* Make it easier to run patchtest locally before submitting patches to the list.

I also want to simplify future maintenance of patchtest in a couple of ways:

* Move existing test cases from patchtest-oe into oe-core itself.
Archive off the old patchtest-oe repository.

* Consider if patchtest itself can be moved into oe-core as a script.
This is desirable but there would be a few issues to overcome, I need
to look into how patchtest is actually invoked by patchwork on the
server side first.

* If patchtest is to remain a separate repository then I'll move
development to GitLab with git.yoctoproject.org becoming a mirror.
This will allow automation of a few things like the deployment of new
patchtest versions to the server after committing to the master
branch.

I've also still got my eye on other ways we can support merge request
workflows for layers that want to use this but December got busy.

I'll give this a week for people to reply with feedback and then
submit patches to update the maintainers files in patchtest &
patchtest-oe.

Thanks,
Paul
