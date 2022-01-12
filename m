Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00F7CC433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 12:10:51 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by mx.groups.io with SMTP id smtpd.web11.22433.1641989446454301392
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 04:10:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm3 header.b=AC0uFqP5;
 spf=pass (domain: gherzan.com, ip: 66.111.4.25, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 869455C0212
	for <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 07:10:45 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute3.internal (MEProxy); Wed, 12 Jan 2022 07:10:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=Kk5srQ+XIiW+yIlBwUKJjfi1+0WFVCW
	OM46eFKoGyho=; b=AC0uFqP5SDhICqS68BV3SmaiLaAmHFJQFjehnvPf96zqt6d
	zDlzVoGQFLBgoKlwGb4+OVq0LfPAVI3qp9gv0UqVP0vSMeFigOwC84BsgCYOknbn
	yZcyLf1uAgdKhOB3/hldyDLybJGd2/g1kCY+mrMIj98ioeLi+CzMdFAvOXacL8Xl
	hi8h6HpOQ4gB0KwgWa3wgw7iZZlH7j054uKCvh5GNV+EEP3nMBThzhe50lZyYJAE
	TUDER0sREg5SOhEo86YIVFNDlACs9QoRwdGNqbycVtG3n1Lt2OceBKncs6jUAq4/
	2MIJrRDzUc+m2aHHimhxK3vdoA+eu6fu5Ocjvfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Kk5srQ
	+XIiW+yIlBwUKJjfi1+0WFVCWOM46eFKoGyho=; b=WSu3NJXmQrpJKPeVdCpvnn
	wETNnRgpQcFqeroDHYzLvQuOiRLgcMXeEV20yGxJXL8Q8DXJBJxemMJxR/9CoTMw
	rG4wkd0O0U2WwbBmFX+qXiHt3rqp7vGrsUOAIrDQmXbxpXzDjqbKb5CU5impl/hM
	zRG4UuaN/fVIHgLkd12dvPSCDgR8QZ3GR4J/lCkdD//BQrTpkNqcPSCmoVqbJmkB
	co/sRuPq70AQoi6hqz0tM8B9vMenZAMEDBSgi13bHI4bYjPdGBBi2T8FF+X0M97K
	awoHRjvsiHfI00Rfq1heJDucWbiKH1Y+I+Y8LA4LllgGiqT5KqVY2S9URVt447cA
	==
X-ME-Sender: <xms:RcXeYTsWMQeJIbcs6hq7dOHUhDkanRtPzkBE3lDdagD23082xFr2qQ>
    <xme:RcXeYUeVORrgpjaCkS2llEWh7LSjDJXCJxERSA1FzCYzGLCdc3OMaauUneFBWw0Ag
    PrBQkHoOfsgqdNhD6I>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrtddugdduudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrgdtre
    erreertdenucfhrhhomhepfdetnhgurhgvihcuifhhvghriigrnhdfuceorghnughrvghi
    sehghhgvrhiirghnrdgtohhmqeenucggtffrrghtthgvrhhnpeehuefgfeeuhfdtueegff
    ettdejjefgheeugeefgfegffethfdvffejgeefieetgfenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtg
    homh
X-ME-Proxy: <xmx:RcXeYWyxdg3SIUS13Nd3K12bql9Eq1oGj8qn7hzoBwJ0_JxapdEOnw>
    <xmx:RcXeYSP_Y9ubor3zpNITp1h4hmOrXOgNi0cxUw12q7NhwBRg8vVRRQ>
    <xmx:RcXeYT_YVAvl0AS5en5EJcxJ29YyzEIQwujcMAgdHpDSkvzc8KhoFw>
    <xmx:RcXeYWLt-dGwzJ6IG4C8u0hvn6KncOXQd_UP-1MWaOE2lstaMyXQxg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 4A3033C04A9; Wed, 12 Jan 2022 07:10:45 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4569-g891f756243-fm-20220111.001-g891f7562
Mime-Version: 1.0
Message-Id: <77f7efd9-74d8-4d2e-b5f1-9d2791309075@www.fastmail.com>
In-Reply-To: <24621.1641986137841391049@lists.yoctoproject.org>
References: 
 <CA+chaQcM==gPPgvWdkxESaZ2gdP7zb8k_p73PCBQQUZsJJyU_w@mail.gmail.com>
 <24621.1641986137841391049@lists.yoctoproject.org>
Date: Wed, 12 Jan 2022 12:10:26 +0000
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Use protocol=https for all
 github
 SRC_URIs
Content-Type: multipart/alternative;
 boundary=788381480c7e4451b5418c7f6be68d65
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 12:10:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55813

--788381480c7e4451b5418c7f6be68d65
Content-Type: text/plain

Hi,

On Wed, 12 Jan 2022, at 11:15, Janne Kiiskila wrote:
> Hei,
> 
> would not the "easier" approach be to change the bitbake tooling to use https as the default git fetching protocol, rather than modify every single recipe in the world?
Not really. Because this is a GitLab specific behaviour. Changing the default to https would change the general assumptions everyone has in their layers.

Andrei

--788381480c7e4451b5418c7f6be68d65
Content-Type: text/html

<!DOCTYPE html><html><head><title></title><style type="text/css">p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi,<br></div><div><br></div><div>On Wed, 12 Jan 2022, at 11:15, Janne Kiiskila wrote:<br></div><blockquote type="cite" id="qt" style=""><div>Hei,<br></div><div><br></div><div>would not the "easier" approach be to change the bitbake tooling to use https as the default git fetching protocol, rather than modify every single recipe in the world?<br></div></blockquote><div>Not really. Because this is a GitLab specific behaviour. Changing the default to https would change the general assumptions everyone has in their layers.<br></div><div><br></div><div>Andrei<br></div><div><br></div></body></html>
--788381480c7e4451b5418c7f6be68d65--

