Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.44858.1606175383306392274
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 15:49:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ht/7qWiZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: coder.callahan@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id d17so26252602lfq.10
        for <yocto@lists.yoctoproject.org>; Mon, 23 Nov 2020 15:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0Vb8VaDTXfbK3d16fh/0l8/Uv4iCZtXnI0uKIzWQlPQ=;
        b=Ht/7qWiZWWuN+sE3XEYpY+38dEP778O1LxmmCo2UKRyoxBujAXG3wBM4uPt7quYtkh
         8WysaL8dW3Wj6llVn8H4dlTvQIV8Ps88JwTbp4WdrgiiHMJldlxaUh6XVfEqG+VwhBc2
         ed7SGZDpV7EIeL1o+qrdhLiaTwP/V94ibzMWtjDfAswjAe6jn76Ctsd6WaXjkTV40Q7s
         IiR0ycm4q1HsXkshRLSReIs3qQvEUtuuPWuzpB/C2KRTTDUHR+GngoyhkBB7z+mrDL8p
         jv19CAlDpTJOYJvSG6S+woeS1pMDHGtYQUgYJAOxBVGj728HlqIw3CbzUCd2mbjYoYb5
         K8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0Vb8VaDTXfbK3d16fh/0l8/Uv4iCZtXnI0uKIzWQlPQ=;
        b=sUZFo7jk66gWNAdH1umMNd6a5bxLKgb622UnM2tRJWC6UzW0iboO7aIjTFNhu4Dhcl
         uMDSZsZ52BhEM0CGcML+jb2oHdm9YX+9Vx7JyIPj0qO4yUQrY9KHAuzMMsiTel9J441l
         qLVaN1s7xjN3DwvyK/PxKqgIahEFyMMblIzFyNyi1TQrbz4harJycprlRhDWUmQ87lbV
         eZUa3upHYPYMj6GpN84krIYEB8r2aSiePxXzZKCTE2qqs+0UOPvu2ECjAqYkKD1Z754+
         VaTBIV42sVKbvBTSBs7pu1zHEDKc6P0hbvzu/JyoX78WmWnRd1zDrF9AiB1lZ0MVPmwJ
         0hoQ==
X-Gm-Message-State: AOAM5314nk6H0PZC6kBhx7hoXbcyVALiepYz/0CFvFyABrbfodJUrq1d
	2mc227ya4y9bN3fUaEO2N6/uKSSJVekS2XqmoPY=
X-Google-Smtp-Source: ABdhPJxBXkWp/FOJzBZffcBkwmGDE4bDy9fRxw7603gv30njm22+reAoY6wwYgR1ALGI62NwtSKUG9jYX7wkaH5/oDI=
X-Received: by 2002:a19:4193:: with SMTP id o141mr572511lfa.119.1606175381436;
 Mon, 23 Nov 2020 15:49:41 -0800 (PST)
MIME-Version: 1.0
References: <CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
 <CAMKF1sp_-3CR-Nc1x1DELdp22NKDkGV7t-tfqKYtoQEj7arHqA@mail.gmail.com>
In-Reply-To: <CAMKF1sp_-3CR-Nc1x1DELdp22NKDkGV7t-tfqKYtoQEj7arHqA@mail.gmail.com>
From: "Michael Callahan" <coder.callahan@gmail.com>
Date: Mon, 23 Nov 2020 16:49:30 -0700
Message-ID: <CADm5WxP=uGt5oLVe-QpL7guq2nhn2AEsLvPSv0y8A+BLQEyTnQ@mail.gmail.com>
Subject: Re: [yocto] Python function caching question
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I do not want do_compile to run again, it rebuilds the whole image.
What is the best way to always run find_version?

On Sun, Nov 22, 2020 at 7:53 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Sun, Nov 22, 2020 at 6:17 PM Michael Callahan
> <coder.callahan@gmail.com> wrote:
> >
> > I am having trouble with sstate caching of my os-release.bbappend and
> > am stuck.  The simple example file looks like something below, where I
> > am setting a variable from a computed python function.  What's the magic
> > to make the find_version(d) always run but do_compile to only run if
> > VERSION changes?  I basically want something like
> > `find_version[nostamp]="1"` but that seems to only work for tasks.
> >
> > def find_version(d):
> >     import subprocess
> >     cmd = "git describe --long"
> >     return subprocess.check_output(cmd).rstrip().decode('utf-8')
> >
> > VERSION = "${@find_version(d)}"
> > # do_compile uses $VERSION
> >
>
> perhaps mark the task which is using this variable as nostamp.
>
> > 
> >
