Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C74FC433EF
	for <webhook@archiver.kernel.org>; Fri, 15 Oct 2021 10:04:09 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
 [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.7320.1634292248708665259
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Oct 2021 03:04:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Pyh9Y+D1;
 spf=pass (domain: gmail.com, ip: 209.85.219.174,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id s4so21433698ybs.8
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Oct 2021 03:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=m68685j7l1T35ySngL+qjMUI6OKwiWXIInXfwnukVkE=;
        b=Pyh9Y+D12LOReYimvhXwQgFXtQ/1XUW/qlI7g4w0MTkOZ37/bot6v9pY+iMRA8aB44
         CxKv+eU1QeBHSp04+okBjxlFClCL5ykj3R2t+OrJHRj7KFAFtlU1kYc+fL5stN8mQcKW
         e1MrjSmYoiaXjRmK14SKb9Ymbb5Cck+7oc7tBAMICGWHFIHa9M9WE8ln6OwR/GpaeckU
         4T5gvL9BXQrMEGPlNldszPaVS6I9oA5awWDDFY0kdrNhJoPgQGzjMo+W0a/BXUdpPiOT
         OlH5d23AiNveZ/LnOzrqSSG3rH5yfwpI3vlp/BRtswXe7qlOBWvQVJaCL4kFqYOzk2Kv
         UqFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m68685j7l1T35ySngL+qjMUI6OKwiWXIInXfwnukVkE=;
        b=vTmstIGvRdFGreGZOcm029HbYoOfYrCkaioPPiBkc0u9WGFwjvq8uHHAhY/+PEHsPw
         0P9Y6L0ljW/+m2rSvgYUZVe5iEziOc88AdiWYzFJwGppZUTQ3Zor0K6oQpdz1crY9DBz
         8ddDXzh4iBCssvZBIZkclpfxodsfEx673ddCM1AIoY5xn6jM8MYiJHnAbsyLVmxmOUV1
         vXNOg5xPAWXAcytA5KlPI2lvTO6Uz8B79WnZmoQqCzf5gn3Ntx1aNDIaa3pBTsZbKAoT
         sXH3ZEmE0BwRowMOvnJnK9ktlwXlbu6jqTJ2qd5dSSL4Wtg+MCC/RNmpDSTaaJMuEiQ3
         J0Rg==
X-Gm-Message-State: AOAM5332X9k6ZjcYHOmi5As1ZajpQcK5w5Y76kR/JUn4BkSQIJUJVt15
	JEQeZEroZBE5PRzVCNlie9Q3jpwAFDQGvsUk6wYInwfzW6g=
X-Google-Smtp-Source: 
 ABdhPJzNDG1NrTYBDYi96YPPVySDVAQ9rcd4ENNmokkiBNQIvZRe77UHqiYK8VE70ndRwTPa6KHf8fjRo8kmFsg4U4M=
X-Received: by 2002:a25:d0ce:: with SMTP id
 h197mr11596420ybg.153.1634292247485;
 Fri, 15 Oct 2021 03:04:07 -0700 (PDT)
MIME-Version: 1.0
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Fri, 15 Oct 2021 03:03:56 -0700
Message-ID: 
 <CAB=6tBSqYakp12-xZXk_d58HX+gQbkPz04RMfcKgqJp9r0=3jw@mail.gmail.com>
Subject: SRC_URI Directory Change
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000dee22705ce615009"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Oct 2021 10:04:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55082

--000000000000dee22705ce615009
Content-Type: text/plain; charset="UTF-8"

Is there a recommended strategy to get do_fetch to invalidate on directory
path changes in paths pointed to by file:// URLs in SRC_URI?

Example:

SRC_URI += "file://src;subdir=${S}"

A file at src/foo/bar/baz is recognized just fine. But then a directory
change to something like src/foo/bar2/baz is not recognized and does not
invalidate any tasks in subsequent builds.

Use case is a recipe that has a fair bit of metadata that is not even
remotely amenable to the typical flat layout expected of a set of patches.

..Ch:W..

P.S. I attempted to do this with an event handler that was run when
bb.event.RecipePreFinalise is is fired. It would compare directory trees
and set do_fetch[nostamp] = "1" to invalidate the fetcher task. But I got
really spotty behavior. It seems like event handlers are cached like tasks.


-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000dee22705ce615009
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a recommended strategy to get do_fetch to invalid=
ate on=20
directory path changes in paths pointed to by file:// URLs in SRC_URI?<br c=
lear=3D"all"><div><br></div><div>Example:</div><div><br></div><div>SRC_URI =
+=3D &quot;file://src;subdir=3D${S}&quot;<br></div><div><br></div><div>A
 file at src/foo/bar/baz is recognized just fine. But then a directory=20
change to something like src/foo/bar2/baz is not recognized and does not
 invalidate any tasks in subsequent builds.</div><div><br></div><div>Use
 case is a recipe that has a fair bit of metadata that is not even=20
remotely amenable to the typical flat layout expected of a set of=20
patches.<br></div><div><br></div><div>..Ch:W..</div><div><br></div><div>P.S=
.
 I attempted to do this with an event handler that was run when=20
bb.event.RecipePreFinalise is is fired. It would compare directory trees
 and set do_fetch[nostamp] =3D &quot;1&quot; to invalidate the fetcher task=
. But I=20
got really spotty behavior. It seems like event handlers are cached=20
like tasks.</div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><b><=
span style=3D"font-family:monospace">&quot;Perfection must be reached by de=
grees; she requires the slow hand of time.&quot; - Voltaire</span></b></div=
></div></div></div>

--000000000000dee22705ce615009--

