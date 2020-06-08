Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.23489.1591592425569144742
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Jun 2020 22:00:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MWL5loSC;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: maillinglists18@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id mb16so16762235ejb.4
        for <yocto@lists.yoctoproject.org>; Sun, 07 Jun 2020 22:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=2Abn6Gmzt6NnY33COuDSfki7EleWvotXJlIURnjqGYc=;
        b=MWL5loSClwEVROO/hhbnz0Jd/UweJPpgJUrbDvw+FTlGdPc6A+JcSjo70Yrdot3UMH
         5/heTsTwMhwU3If6pze+SGBV/Gy2OljsGvQOsyw/CqA1b9lWEMfjN416PgYMaJew7QTk
         RG1Q5SWtD7mwypncKJG6CbLNmKlB3JhGTbhw+bptr4mgrOPX0xLo/3I4c8R/fBIIzkyf
         F9Wu3yRv40vKKDG9isoPG+AzRdcs5uDWK7Ae+ALJE+vtFdOpdJC3lb20UySRcniHLnpH
         OGFeUCXgeo2fBVz9XtMz2xoNwNO/Y7p//eN0fHzfs9oAbZdk8D3RUA49dMVCXXDg7awO
         q95A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2Abn6Gmzt6NnY33COuDSfki7EleWvotXJlIURnjqGYc=;
        b=D8OqFDtx2AXTgxUdD4AjaxuEP4yUJU1JdNpfiB4eQviPtvZ6hQYBRrVXwBRhSESHXD
         0dO9xlrvr+6T0gC5KLo+pVSiGI7vUPDj4s1TD5XSefR1TIK8TSO6KBVAm+rYfasXjQny
         B0dmNSA6jIJhR01avB4jDDbd3tYBwRnz3/Pl5PGtMM/7ntSxXLtUL5qWvFmv4McTzL3q
         0jdk9Br/nQm2JCIGNiYtaHEvOr1TtpcxXyvuBwkl+bQYgSkPRswvrpzzAyg0boKTEaXD
         +dkoCpVwo8WpbZTSSuWRQaL/8qdJ6TAwzwyyOdEaJdbHzFLZxOwaeS7h6dir6XHFLUCG
         nAGQ==
X-Gm-Message-State: AOAM5320mm55ONEZKB0DkWu0vzO0Uk8iT6q0UhT0X9VJ/qFjZH8cnjCt
	+EYc28Hkbh4MCx9VC2mObPw0GbmlhehlKTHEfXUTgDMb
X-Google-Smtp-Source: ABdhPJx7NelB3IwKiCCOt4D68Rcl98e+JtIFQXKtHfitag6W7EvpPjIG1GG5bczgv/TEzFefcF7s29XHgjbn+Q63a9g=
X-Received: by 2002:a17:906:11c4:: with SMTP id o4mr19974945eja.163.1591592424119;
 Sun, 07 Jun 2020 22:00:24 -0700 (PDT)
MIME-Version: 1.0
From: "Teemu K." <maillinglists18@gmail.com>
Date: Mon, 8 Jun 2020 08:00:14 +0300
Message-ID: <CAAmVmroLgP+YOcJCHQWhobVbkHw=jipUj4TCZHc_eMoDGepCSg@mail.gmail.com>
Subject: License files path
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there a way to determine where the license files are stored? It
would help a lot in automatizing build system when you'd know where to
copy licenses from.

They go to build/tmp/deploy/licenses, but then license.manifest
containing list of all the licenses in an image is under that
directory on directory that changes pretty much every time image is
built. Sometimes also the latest directory contains only
image_license.manifest, but license.manifest and package.manifest is
missing. I haven't been able to track down that issue either.

So  is there way to determine which path the licenses were stored in?
And how to generate image so that it will always generate
license.manifest and package.manifest as well?

I noticed that in that licenses - directory there is directory with
image name, but it's not link to latest directory so I can't use that.
Seems that it only lists license/version info for image recipe.

-Teemu
