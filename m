Return-Path: <nxp.ravi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA4CC4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 05:43:27 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.851.1698817400357992549
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 22:43:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ce0XHdgi;
 spf=pass (domain: gmail.com, ip: 209.85.219.178, mailfrom: nxp.ravi@gmail.com)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-d9a6399cf78so518483276.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 22:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698817399; x=1699422199; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g6aDP/EGPH2kLb4PtFvdjj/OBWYrf3y3Rl2bTUI4J3c=;
        b=ce0XHdgigzOUaNbUzyxhjdSFsPbvXUKVOIOb3i8TYwD/EnLjOZlAslbcgCnVuRUucS
         HGPzNS3xylyIpDEhkid907lQ0wePSerIw3bHx/mZ28Trf5YchzcEQxQBEzMobEFtFUW8
         mZhQd7wNZgxYCux+/UlSK2W3EIBdzbwbToeHZTF6NXGeyAM0HFzo0hePWSf5BzH/dC/q
         A3p4Rryj9AOKNrC5vPt5m2kwT4opuo6A4vaKN0J0e1gOK/6PzY0puXGJ/xZC2KSMvZoV
         NCAriW75t7X+JPrKItwuxI9TQDJ21ZjntVSfahgypxDrN1mumPjoCxwGTTdOQI90gzWt
         BvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698817399; x=1699422199;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g6aDP/EGPH2kLb4PtFvdjj/OBWYrf3y3Rl2bTUI4J3c=;
        b=n2FLpvpAy60OoSFFsEp4xSK+6KejRPD60RozmxqCVf8BbIyelBx8GF7mxuTNWSIEjO
         Om2qz/MNOwxlOPKkHdnzPs0+ezMiNVXNh+DCOolNM+TGMEhAIFgKLff1u0rM2dDqWYMz
         RkgAzPLRiLCqrd1G1k1CL57fwi5ya5F6YdHGgFkksdfp4B7RQPdZ/4/gD3qj2EWCelSX
         CeZvDh0oJJoF5FLqMGYshNzjM69h+J8K0ZDeuu0YvFMDVpaKEwC6mLe89NpKFC+ceIDk
         jYunB7cDucVlMEVokE6nfRf9/rtJpITMGLb9fjhMIJ46PaxOOwR2urhURWnh3+kvW2vS
         hwoA==
X-Gm-Message-State: AOJu0YwUvIKQQLUdkFPsSnYPd8rKoAsuae4PVyrwFbmXbQNp/w80b4vp
	ITI6j6VaiQkZGfeIZe+77IbN18XYIcb0bG1l+RfO1AjeUMk=
X-Google-Smtp-Source: AGHT+IFkF8/dAySIiJUke9IZ2+o2h+Lr9L8J36sowvc7qRneLWP0AvrY3AW1FFF0eh34B+o2LF0v5Z611nBrDFZxySo=
X-Received: by 2002:a5b:ec1:0:b0:da0:3a37:61d5 with SMTP id
 a1-20020a5b0ec1000000b00da03a3761d5mr3585365ybs.4.1698817399206; Tue, 31 Oct
 2023 22:43:19 -0700 (PDT)
MIME-Version: 1.0
From: Ravi Kumar <nxp.ravi@gmail.com>
Date: Wed, 1 Nov 2023 11:13:08 +0530
Message-ID: <CACikiw2U8cC86wbK-axSP0nW3BZH4zC-TkfNeD4ePfzf+PiMvA@mail.gmail.com>
Subject: Need comments or plan on User- group guidelines which is making us
 away from commercial products
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 05:43:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61546

Hi team ,
Most of the IOT lines have  been deployed on  Yocto   now the new
trend/requirement  is security .
On yocto we see that we moved away making every  one as root and every
resource on the device tree accessible .
Where it creates  new challenges of creating isolation of  services
and resources .
Making a service to run in low privilege  mode (which is a base
requirement of security ) .
I understand we had always  encouraged  using extrausers and useradd
for creating custom user groups.
[1] https://docs.yoctoproject.org/ref-manual/classes.html#extrausers
[2] https://docs.yoctoproject.org/ref-manual/classes.html#useradd


Following are the problems .
  we add a new UID and  GID and associate the new code , But  open
source service  might still need to be part of this group to access
this.
where adding /covering all the use cases is really not possible .
Re-using of the code  which is already associated with some user group
has to be reworked to make sure the UID and GID is unique .

We see that we are moving aways from commercial product lines in terms
of security. How do we address this or the proposal?

1. Standardization of user /group :
Just like android echo system  uid /gid classification based on
.  <range > to be defined . driver related  / app related / services

2.  Default group to be included by Yocto frameworks .
 like
Radio  -- moden board are by default enable with wifi , BT , GPS
3.  users who are part of special capabilities  groups  like net_admin
/net_raw, reading of /proc
or writing to /sys entries which could do  elevated roles.

 Selinux sort of layer is ontop of DAC (legacy user/groups )  and  we
should be having a robust DAC model to meet the current security
requirements.
Please  let us know if there are any guidelines / plans on this .
Or can we submit a patch for adding  default /user  like raido /
net_admin sort of users.

Regards,
Ravi.

