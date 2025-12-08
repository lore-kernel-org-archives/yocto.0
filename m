Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C00BD3B7DE
	for <webhook@archiver.kernel.org>; Mon,  8 Dec 2025 10:32:01 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5457.1765189920511160750
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Dec 2025 02:32:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QiB/N04/;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-882399d60baso38416586d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 08 Dec 2025 02:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765189919; x=1765794719; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u+hCXlP/9g8z7qly2i9qD3h1gK8dQCM4RzmawBWdWOw=;
        b=QiB/N04/Yu5oAtq1vd1/NiO3tr1Sue/585VTkbY+I6kVaJOo3IPUPHZFt/JAhdBUfe
         xXvL5J7XCmg7q39QmVmjwkLCAaRBXiktp7jxa5AHuoVTrhpEpXmG+6J0Al6R4e43bMus
         hOnkMGU4Jm9LutIPCPHvLajnau5GhtaFfE0hlx0eusb1KDC8vS1XsW2eGIeHcikzQZ0K
         IdFBv2OqrfjoFYZ9N1WBHHTMUbZMB6JKTxAvU+I/7Tldjffwr53QLU8qb7O5ReCqP1av
         oycpEf8h2csZ6ywqNftWzvMkjT9Sx/17FFAXgA9+9BSugmpFi+htMeaw5hA/MuexV+tu
         3jKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765189919; x=1765794719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u+hCXlP/9g8z7qly2i9qD3h1gK8dQCM4RzmawBWdWOw=;
        b=okAksiVJVxvPTR0lfoTxIyE9hLDW6tkeNWRwSR/O+V7xoy2JFWXtuR8X3IpVEpvFqk
         efjlrrQc3PJpdMj4isiDJ8pir5rTCZRgFu1TTAhKH8ppjWvndba1Faha9V/cR6MDLo/s
         g4bGh69eGRNYH3yz1+S6FYZEg/nQHD4sjsNxb46tcYTkxe3QhoxnvBgiQ9ovQq5cdrBL
         S29ucHpFZN6VZxZWYs9C8y7VyX7A8bVSnDNZ+ue1wROM75cy0g9zbTQqVrC0u8iDGeKD
         Q9DZsQ7EoyTSBcEORISojv86NeeQO5bdehe5U+F0iCnuQpkkOomoSFHk1S11TlsbBgnU
         TLbg==
X-Gm-Message-State: AOJu0YybdqGUqD9LecgM9ysSydKEeijrcZuf4W4VEY3Ddglc691y8FNh
	zFlFNnln5qWjrG7b8h00seH5MZHUjeP1q00QuuH0L4dQ8yZgM1Qx2brFYQO7qvrCE+iE/S1gkXn
	yydkMQR5Dpne5wdC/mqludvdkp7aFxJNoZQ==
X-Gm-Gg: ASbGncvfgvBXY5Grjg1QS5hG6rrKgxZyp9qsHqsbaB5ig1SnfDgkxmIiZpf3ZzlhUnv
	6W128jfGzsDKoi4XrrH6LBH1SmOLEuALuCHWpVkP/m4kumZ9KwLQ6UW7etHxiMuI8sPzx3OYJ1t
	sm0KxnwBAoahU2/om1QriPI7zZG7i6gaukNAc+s6uOvDBtlH9o9oeRf5QSGNWOvHm887W2pjUUn
	eA1qLjjPnbDdQCosChocmRhMPC7T6FN+C01G08jrnxXalzQQOGKDyFC9KtkxtYo5AlU2qvxitaA
	wrho37r7Sqeu1008/gtIu5WMOCZyxnGe7q1W4M0y
X-Google-Smtp-Source: AGHT+IGDRcx5W4Gf6KsDSQvJRtn4K/FmlN9ijXjITi1zvTuo0aOiyOrSSLkoc40niNXzcZUJYqTm/scJwMNBcSFn+hc=
X-Received: by 2002:a05:6214:f2d:b0:880:501f:5dd with SMTP id
 6a1803df08f44-8883db686f7mr141094266d6.14.1765189919349; Mon, 08 Dec 2025
 02:31:59 -0800 (PST)
MIME-Version: 1.0
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
 <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com> <96936.1764884505239996619@lists.yoctoproject.org>
 <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com> <CANNYZj8A46=oc3sD=F2H=A33rjmue=tVhTtVBJTabfO3EJLuDQ@mail.gmail.com>
 <96c47e76-9e94-4d53-90a1-57488b165612@gmail.com>
In-Reply-To: <96c47e76-9e94-4d53-90a1-57488b165612@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 8 Dec 2025 11:31:48 +0100
X-Gm-Features: AQt7F2pD_fE3iMUbFL4dWCokHWis_sMph6cuLICDByXaUSC73Jgdr88xBbxhySA
Message-ID: <CANNYZj-x+c_QTSaLPSwMkLPBpG16UdOcNcQCREnBYK3a=11WmA@mail.gmail.com>
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: yocto@lists.yoctoproject.org
Cc: christian.leeb@hitachienergy.com, Gyorgy Sarvari <skandigraun@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Dec 2025 10:32:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66098

On Fri, 5 Dec 2025 at 19:12, Gyorgy Sarvari <skandigraun@gmail.com> wrote:
> >> If fetch is deemed successful, it is stored in the shared state cache,
> >> and then it is not repeated until the relevant signature changes - I
> >> think this is the metadata reference you found.
> >> However as long as the download folder's content is only modified by one
> >> project only, it supposed keep track of it fine.
> >>
> >> One question about the DL_DIR: is it possible that it is shared between
> >> multiple projects, while keeping separate shared state cache? Or that
> >> the DL_DIR's content modified manually?
> >> The shared state cache supposed to keep track of what is downloaded by
> >> bitbake and what is not, but if the DL_DIR's content is changed without
> >> bitbake (or by a separate bitbake), that can break the shared state, and
> >> cause such issues.
> > This is not correct. Shared state does not track what is downloaded.
> It depends on how you interpret it. Sstate does track the do_fetch task,
> and does know if it needs to re-executed or not.

The process by which bitbake determines which tasks need to be
executed, and in which order, is well defined, and it is not like
that.

This is how it is:
1. Bitbake unrolls the target specified on a command line into a
directed graph, where nodes are tasks and edges are task dependencies.
Each task is given a signature with a hash.
2. For each task bitbake checks if there's a stamp in the build
directory with a matching hash (meaning the build directory already
has the outcome of the task), and if so, the task, and everything it
depends on, is pruned from the graph.
3. For each task that is sstate-enabled (neither fetch nor unpack
tasks are in that set), bitbake checks if sstate contains an object
matching the task signature. If so, everything that the task depends
on is pruned from the graph, and the task is replaced with its
setscene variant that unpacks the sstate.
4. Remaining tasks are executed in order that respects their dependencies.

Sstate cache (or code that manages it) does not track tasks, it only
stores and retrieves sstate objects, and it does not know anything
about what tasks in a particular build need to be executed.

> > It is also fine to share DL_DIR between multiple builds and projects.
>
> I did not write that it is not fine to share DL_DIR, but but you need to
> know some caveats. If you run bitbake -c cleanall in one project, you
> are up for a good time in the other one, if they use the same recipe.

That is fine to do as well, as long as no other builds are running at
the same time as cleanall. The other project either does not need to
run fetch/unpack and won't notice sources are absent, or it will run
fetch, fetch will notice the sources are absent in DL_DIR, and then it
will simply re-fetch them.

Alex

