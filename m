Return-Path: <nxp.ravi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C2FC4332F
	for <webhook@archiver.kernel.org>; Mon,  6 Nov 2023 05:44:27 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web11.47889.1699249461086486375
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Nov 2023 21:44:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MiP+gB3a;
 spf=pass (domain: gmail.com, ip: 209.85.128.173, mailfrom: nxp.ravi@gmail.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5a87ac9d245so48996637b3.3;
        Sun, 05 Nov 2023 21:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699249460; x=1699854260; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TgOUkuocdFfqPHjVhLVDHCALuVQ7PpdZQ18J58kTtUY=;
        b=MiP+gB3acfCFq7yR4PnA+T+eIgM+5cPba1kbkfqT9ayJY6Ka0Jcw5EMkRoIbzTYQN8
         ILZvZv4gbR9GMQEUKX7NEen6rY+TMmTw1LkeQNBR4d6DJU8cn5TbCFFyyP8jbzWATLop
         SY7XZOYSPqZGdi9eu5ROY3loBpwOJyf3reli0zvCpELCWpQZrQzrsaFlNBn7OWideVQI
         fshjKjLBK5YiFGUNW9Q8kDIYh2n7g1BmrvanlQBxbRtliblZAX/iFfu5X8vZFkRoBtyr
         3G8/t1StVysur2j0uFgWD1bbavChVaLwmpXdDZtp/PgOetPJR2oUfTXwCRwx7CONOwTY
         /ArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699249460; x=1699854260;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TgOUkuocdFfqPHjVhLVDHCALuVQ7PpdZQ18J58kTtUY=;
        b=fYpDudYBYsYji+h3dRFlnZqK6UvIEp6RE98hYUgva5gZ/dATvOaMHvPVZlf07ObJKH
         Z11uoG7Aahz57iFchW5UoqVATBx+CGvyCAhwsahysYaiq+ULGN6tuV0Y7/x6U9Ky87WE
         iCLjGlqiqD9K4xZg73jgWKCe+SH4WN8+QzZsmzogpQXPiRvYMH88SoNMkcNk1vpmesUS
         0uOPlmnlEc6XzUSvzCPIKmrbCuUGd2AKCHvvFWBi9/QXSxwjVz57MASt/l3nm5FqpdPE
         q4teznpk8xld7hXv+esQi/8KXlElhBcg+SuHzwhIIA62OIxHv15PQqkUf7b48PKBu4uE
         rC4Q==
X-Gm-Message-State: AOJu0YxVEn2aXI5gJKjA31ysHASzl4rJZvGagtvFZgHAgS+CywD1lcFR
	Hr7MrPncBz+weK5JRoro6/LKjsYgDlfG3Uw40N8=
X-Google-Smtp-Source: AGHT+IEtFPrN5Jov3+c1TpITbhgWEpXvCBGCBvVuhK7bndEdmUpylITowLR1HsRYdDNJwzKgZ4POfLQbpo3zjWTQ3So=
X-Received: by 2002:a81:84ce:0:b0:5a7:baac:7b34 with SMTP id
 u197-20020a8184ce000000b005a7baac7b34mr10393353ywf.28.1699249460147; Sun, 05
 Nov 2023 21:44:20 -0800 (PST)
MIME-Version: 1.0
References: <CACikiw2U8cC86wbK-axSP0nW3BZH4zC-TkfNeD4ePfzf+PiMvA@mail.gmail.com>
 <CAApg2=QsOsJCehkY7jopkkgvsEE954Sj-SjauvT0vERCJzGqzg@mail.gmail.com>
In-Reply-To: <CAApg2=QsOsJCehkY7jopkkgvsEE954Sj-SjauvT0vERCJzGqzg@mail.gmail.com>
From: Ravi Kumar <nxp.ravi@gmail.com>
Date: Mon, 6 Nov 2023 11:14:08 +0530
Message-ID: <CACikiw0Dgy+eJ3on1JZhyppAmd2e44KaH9N8RJuCCgxhh5XafQ@mail.gmail.com>
Subject: Re: [yocto] Need comments or plan on User- group guidelines which is
 making us away from commercial products
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto-security@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Nov 2023 05:44:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61621

Hi team ,

I had  received a couple of  offline emails on this topic , Asking why
we need this group ?  are this really needed?
So I thought of writing this in detail  on the advantages that we get .

1. As this is not controlled by our yocto , we are moving aways from
security requirements and products are getting deployed with root as a
normal user for all services .
any security flaw can lead to overall system gain . Bigger risk in
today's world .

2. Why don't the customization of adding user/group be done by our
developers ( deployers )
Yes they can do that but the problem is half of the stack  services
are from our Yocto which are running as root and getting them into the
"Least privilege security model"  is a big challenge where security
requirements are half baked .

3. Why  ubuntu / other distro  don't have this many groups ?
Most of them have role based and security LSM which will safeguard .
In  our case most of the time we have  single user login  or there is
no concept of Role based
non-root sort of  idea , only fewer groups .

4. What are the expectations from this email ?
   + Guideline on  numbering to be used for users and groups .
   + Define standard groups that are typically seen on the system so
that contributors / Developers can start adapting this
   + Create a new group that can be used  by services which are not
root but less privileged users .  Some like android has "system " or
root vs admin(lesser) ,
   + Defining the  privilege user  chart   can  be used for much more
security control. Any flaw in any one  driver will still not give full
access .

Team please  comment  so that we can  get a wider view  if this should
be done at our end or  at the deployer end .

Regards,
Ravi

On Wed, Nov 1, 2023 at 11:38=E2=80=AFAM Marta Rybczynska <rybczynska@gmail.=
com> wrote:
>
> On Wed, Nov 1, 2023 at 6:43=E2=80=AFAM Ravi Kumar <nxp.ravi@gmail.com> wr=
ote:
> >
> > Hi team ,
> > Most of the IOT lines have  been deployed on  Yocto   now the new
> > trend/requirement  is security .
> > On yocto we see that we moved away making every  one as root and every
> > resource on the device tree accessible .
> > Where it creates  new challenges of creating isolation of  services
> > and resources .
> > Making a service to run in low privilege  mode (which is a base
> > requirement of security ) .
> > I understand we had always  encouraged  using extrausers and useradd
> > for creating custom user groups.
> > [1] https://docs.yoctoproject.org/ref-manual/classes.html#extrausers
> > [2] https://docs.yoctoproject.org/ref-manual/classes.html#useradd
> >
> >
> > Following are the problems .
> >   we add a new UID and  GID and associate the new code , But  open
> > source service  might still need to be part of this group to access
> > this.
> > where adding /covering all the use cases is really not possible .
> > Re-using of the code  which is already associated with some user group
> > has to be reworked to make sure the UID and GID is unique .
> >
> > We see that we are moving aways from commercial product lines in terms
> > of security. How do we address this or the proposal?
> >
> > 1. Standardization of user /group :
> > Just like android echo system  uid /gid classification based on
> > .  <range > to be defined . driver related  / app related / services
> >
> > 2.  Default group to be included by Yocto frameworks .
> >  like
> > Radio  -- moden board are by default enable with wifi , BT , GPS
> > 3.  users who are part of special capabilities  groups  like net_admin
> > /net_raw, reading of /proc
> > or writing to /sys entries which could do  elevated roles.
> >
> >  Selinux sort of layer is ontop of DAC (legacy user/groups )  and  we
> > should be having a robust DAC model to meet the current security
> > requirements.
> > Please  let us know if there are any guidelines / plans on this .
> > Or can we submit a patch for adding  default /user  like raido /
> > net_admin sort of users.
> >
>
> Hello Ravi,
> Thank you for the message. I'm not aware of a recent discussion
> on the subjet, and the question is relavant. I'm adding the yocto-securit=
y@
> mailing list in copy.
>
> Kind regards,
> Marta

