Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79C70C0219D
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 09:54:40 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.7576.1739440477795716742
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 01:54:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AUkmFzqo;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6dd1962a75bso5064856d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 01:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739440477; x=1740045277; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tRIukruhtxFPp7GNbttsxyH2Nu9ZyzqA7pqpxSyu6+A=;
        b=AUkmFzqo6RSZI8eBUnZbFvs9CBMcxomiw5f3kvreoT6gcRzTt0c1LiUpUOFNnHtIIy
         THviTpOSfBZfjuuOxO1pX6/tlKu1qRTexWYAewerydURYguTnYws8d7Z5hsfRWbnYH3F
         k5ge94hGOREgBwlDoDxiMYL/8FWJ3bHcif2UXZUw0uOfEz2wsYCezCrx0pVEbAnDJjCs
         esAMMp3iRn5p9RzpbzcodMOTwh3874SQckgjaqjDAUHSEm40Kw9O1E90xUW48OOjUY85
         jUrkTxLY262UOAs/Dsf6t1KqaG1Lhq85GmE2BFj5zi2QD4x1F7MfJ90nTrGXsuqQDxH5
         aLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739440477; x=1740045277;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tRIukruhtxFPp7GNbttsxyH2Nu9ZyzqA7pqpxSyu6+A=;
        b=Zh/jlcDQ5nFLzZY2ex4iUMIFq7Gs24NlYZUq47y/RiRXTPUaXuZby2BZzwmFisXrEF
         U7S3Ba4z5rNsK0n/79ELKPXoqiKk4oZMVgfg/qKYcab2Wu25OUErTh6KtSzQwjtx+03f
         Lex6PIMZ83swgk5J/O+tNUv+JexT5i2mX6/ADVUL2X2WgTmvt9yvGVnkdI4AZT16Sp8m
         EhJG3lm79l8nU9DwdPQbYqQGRLMfMdsnHiKVJDD46Bt83RH+2fIAxEHhINyGsmhRmhMC
         RHTrhViCdfPmy+L2Znj0HWzDcTnS1usVMIwWeUmE/COsx5puTl8snJYWmf62d9wrGXPJ
         W/cg==
X-Forwarded-Encrypted: i=1; AJvYcCWggvOccfCnvoXrNOaJrdVIZ56MzcCctMq1POE0dZksvF5ODKTAce5V9fF3NiJfyQl5ruB1aA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YykriI+zCOS96eZ1viJPbBN/gCwApQE5DEn5YlLUYFWvQP8PfZm
	Qpowz92pHi4fCnl0x8dRIN5hZmBk63dkjoAeMz1QDVVU2WThTACPzxp6803ZoCJnRYPcHxRS7Hk
	8ZvnxfDTkpCu4yKnV64e9AiFECZs=
X-Gm-Gg: ASbGncv/aiZSJADwBglhGat4yygBfYrNdLkJE5SawWHkA6S/kCsgzPMwjh18XaeMyDK
	fyzkgbaR/z2INLII7RzjSA5n8USmpS3a9Sgp8uSI4/P67jjcQhvy3ADWej6ZgeIeW99oOwcDchu
	D+Wrpo1MC6XpOxpSPUBWDbppCMwXYt5iY=
X-Google-Smtp-Source: AGHT+IFBWHHgVbWtXHE5Wlqeq64h0EU6ghYYqjZfQe0ES9Euxx9Exicw/eCXFRmG8t1CbJdYaMScT3eLCUH6RIrmdAk=
X-Received: by 2002:a05:6214:27c9:b0:6e6:60f6:56cf with SMTP id
 6a1803df08f44-6e660f65961mr5492076d6.5.1739440476861; Thu, 13 Feb 2025
 01:54:36 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
 <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
 <CAMSfU+44qwScnoDP4As37TNHYvwx5mBmTdGEQgq_VVz7woh6sQ@mail.gmail.com>
 <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
 <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com>
 <2c1bcbb1d5b75b925d9af2bd300d376a973e314e.camel@linuxfoundation.org>
 <CANNYZj88RSkyChK6NwJU2OVxmGXzD2W8UcGyYe92ii8v8hdFqQ@mail.gmail.com> <CAMSfU+5Af0=w0N_kK1HLx4nNnQqGOv54C2qC-e7Q0Lm5NQ0Vrw@mail.gmail.com>
In-Reply-To: <CAMSfU+5Af0=w0N_kK1HLx4nNnQqGOv54C2qC-e7Q0Lm5NQ0Vrw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2025 10:54:25 +0100
X-Gm-Features: AWEUYZm_YgjDjWALnOOxRjWVXUFRoquoFmZVEoqxzK97qkS7kS4-Q3OH7JlmlkU
Message-ID: <CANNYZj_8qPoOjhR=uR_7WRZu0V0YdhbcN43fA6mbnQBU5198fw@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: Yoann Congal <yoann.congal@smile.fr>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto Mailing list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 09:54:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64795

On Thu, 13 Feb 2025 at 10:53, Yoann Congal <yoann.congal@smile.fr> wrote:
>> > I don't think the github repo is going to work for either YP or OE
>> > since there are repositories in both that use pull requests and we
>> > can't have a one size fits all message. I think that means we would
>> > have to do this with a .github directory in the repos themselves.

> That would mean to create a ".github/" directory in those. Are we ready to do this?

I think so. RP pretty much confirmed this just above?

Alex

