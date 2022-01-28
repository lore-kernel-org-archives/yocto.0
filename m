Return-Path: <erik.boto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B619C433F5
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 12:33:21 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web08.6278.1643373199421178847
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 04:33:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ql/nzaz1;
 spf=pass (domain: gmail.com, ip: 209.85.167.52,
 mailfrom: erik.boto@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id bu18so11489703lfb.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 04:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3m1N7dshEnclGK6TaQtoaucsQQt8IkZl//C1LnoRJ8w=;
        b=Ql/nzaz1pT8N0AgeTgxjtOCCuDYQOo7Sc16ReSYI2v7oP2DTbe6fIag5X1KcXAeeg/
         oy4DtF5uUb63L4/qP+FioOnO8yQ7IKkafKsqYLRJHMrxfLTiAZzPDxwV1cKKFIfsuvRs
         WAQ62iiNJVshX2TYvbGpRBMyIB9LoWXpndp9M8t789SE2myv4XoXMbodV26kqUG11se6
         Wa03e3gzqP7hkVYUNfrRerk4xLvlrC+td404fBzto16WWYkZJkKXFh1brHoDXa3HVjIb
         pE5xoiCsubwtqgUrttnnTXKvUd6eeZHWIv0UKuDk9daon1+Lu/OfgawH96KHfgTh3z0N
         dvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3m1N7dshEnclGK6TaQtoaucsQQt8IkZl//C1LnoRJ8w=;
        b=4eRGIHOG5wmiv9d3aI/tNxnZ2evg6m8MLFwSwubhhe/ubxFR/heub99ojj3Dteya8b
         ofSSifW24IM45RXHLG8hPXYohmFDDeHZYVfVoy2eR0299E1Qyz9Ll7/JFepi/2Uo8YEi
         umqVVwJAyHrjKNQ7ZjeeGqs4nRuorqC6vO7JB6uKNi04QwHtfVtLGhxywHz6Zv7OVcHf
         zSkJpLyOXwwPrBF8zaFpDq8EdAqI1WfMeIDsxnGaQl2ev/TY10nqgGo8nipwmn2EHXps
         hkVakRdWlDxaW9V9XFeCSqssk9yy1J8H6qNeXKypXMZBvrBQAjpAbhdyU6CEC2l9Jpx5
         hXHA==
X-Gm-Message-State: AOAM531vy4AZhOA1TGG4VehBnuY/QzpAf0oVu7Y5KnnLKrNVUGGCf7nw
	iqhY1PRjLxy1GUgshKGzabMpR6OpnukRJ8xCsTQ=
X-Google-Smtp-Source: 
 ABdhPJxfevKA8yoC5LR2ErZCk0vBlb3O4LfwfZyBmpTVTt2nvl+9nMSTgGX55iaeIuvNhB7ftlZvHi92haUts4l2e28=
X-Received: by 2002:a05:6512:1592:: with SMTP id
 bp18mr6271408lfb.314.1643373197199;
 Fri, 28 Jan 2022 04:33:17 -0800 (PST)
MIME-Version: 1.0
References: <uhQ4.1643181389477081324.P09X@lists.yoctoproject.org>
 <664d7ef6f28584b0d7310774ad48660437562589.camel@delisys.ch>
 <CADYjeSsxC=LzFMLGTZy1u4m_MfNsHJ3Nq3Y+zYwY_toJYZFhMg@mail.gmail.com>
 <79aff859cb334b3f83a8c5c16cea7bc8@vivavis.com>
 <90997c2cb92ea9700451b0e5d9afaeef64f4662c.camel@delisys.ch>
In-Reply-To: <90997c2cb92ea9700451b0e5d9afaeef64f4662c.camel@delisys.ch>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Fri, 28 Jan 2022 13:33:05 +0100
Message-ID: 
 <CALNvYWM+E4huNkdZL5MNnDiC3D9aVy7SvziooFfqRR5Qr-TXnA@mail.gmail.com>
Subject: Re: [yocto] Fetch private gitlab repo using ssh with Yocto recipe
 #bitbake
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: VIVAVIS AG <embedded@vivavis.com>, Sourabh Hegde <hrsourabh011@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 12:33:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56010

On Fri, Jan 28, 2022 at 11:50 AM Nicolas Jeker <n.jeker@delisys.ch> wrote:
>
> On Fri, 2022-01-28 at 10:27 +0000, VIVAVIS AG wrote:
> > Hi,
> >
> > > Von: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> Im
> > > Auftrag von Sourabh Hegde
> > > Gesendet: Freitag, 28. Januar 2022 10:47
> > >
> > > Can you please let me know how to "forward SSH_AGENT into it to be
> > > able
> > > to fetch from internal projects without the need to mount the key
> > > into the container."? I never did that before.
> >
> > I use the following options within the Docker run command:
> >   -v $SSH_AUTH_SOCK:/ssh.socket \
> >   -e SSH_AUTH_SOCK=/ssh.socket \
> >
>
> That's pretty much what I use.
>
> > Furthermore, I had to mount the .ssh folder into the container to
> > make it working (be aware of security risk).
> > Additionally, you should check that uid, gid of the user in the
> > container is the same on the host.
>
> I do something similar, my "problem" was that ssh needs the
> .ssh/known_hosts file with a matching entry in addition to your
> key/agent, but mounting the .ssh folder was not possible for me because
> of permissions. Currently, I just created a little script that wraps
> "oe-init-build-env" and populates the known_hosts file accordingly.
>
> mkdir -p ~/.ssh
>
> cat <<EOF >> ~/.ssh/known_hosts
> git.example.com ssh-ed25519 <base64key>
> EOF
>

I use my own Dockerfile based on crops/poky where I do the following,
which might be helpful if you also use this. It sets up the config
changes in /etc/skel/ since it creates users "on the fly" with
matching uid.

# Remove strict host key checking for ssh
# This is needed since the build will pull source over git-ssh
RUN mkdir -p /etc/skel/.ssh/
COPY ci-scripts/docker-stuff/config /etc/skel/.ssh/
RUN echo 'export GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null
-o StrictHostKeyChecking=no"' >> /etc/skel/.bashrc


The ci-scripts/docker-stuff/config file contains:
Host *
   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null

Now it was ages ago I set this up, and right now I can't really
understand why I basically do the same thing twice. So you'd have to
check which of the two things that actually solves the issue :-)

Cheers,
Erik


> > Regards,
> >
> > Carsten
> >
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56009): https://lists.yoctoproject.org/g/yocto/message/56009
> Mute This Topic: https://lists.yoctoproject.org/mt/88691891/3618217
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [erik.boto@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

