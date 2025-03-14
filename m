Return-Path: <peter@berginkonsult.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41CC8C28B2F
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 07:08:03 +0000 (UTC)
Received: from mailrelay3-2.pub.mailoutpod2-cph3.one.com (mailrelay3-2.pub.mailoutpod2-cph3.one.com [46.30.211.184])
 by mx.groups.io with SMTP id smtpd.web11.8326.1741936075227922094
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Mar 2025 00:07:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=rsa2 header.b=HHZCZvNd;
 dkim=pass header.i=@berginkonsult.se header.s=ed2 header.b=ghkOynyz;
 spf=none, err=SPF record not found (domain: berginkonsult.se, ip: 46.30.211.184, mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1741936072; x=1742540872;
	d=berginkonsult.se; s=rsa2;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:to:subject:
	 mime-version:date:message-id:from;
	bh=izY6XvMnNhuabmdIwy4Z86/+8V4PY2phAwXmtJFjGS4=;
	b=HHZCZvNd1P1bqtUvTds21cj/ek97qoiTuB+Iffy9PBbOY+Ceq4/Hg5xkf6iRvo2JKoZYoypoK9zOE
	 41e6ynf2KP3E6wlZyBSRWBd5uNiO4iw49DbJ1EffEoEoA2RfHp78Z9omOgUEzIh4m6RZsqWKxFtJS3
	 MAC67jHF0PE+2Ro2w7BNui7dMnlx60STLlXG706M9WPO04EHAmFyZwVwxouQ3fr4apZ8BFXAZSNk6F
	 Kxc4MDxLJk5V1JbeoyoP1asLCSnkQXTFKxx10mczfKWN8nHXJpqt+3j/1mUB+homMEexTndOaZf0IU
	 vhmVSDUagmyfeVlMztw29O93mBlWjfg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1741936072; x=1742540872;
	d=berginkonsult.se; s=ed2;
	h=content-transfer-encoding:content-type:in-reply-to:from:references:to:subject:
	 mime-version:date:message-id:from;
	bh=izY6XvMnNhuabmdIwy4Z86/+8V4PY2phAwXmtJFjGS4=;
	b=ghkOynyz3ly1HGsdOj9yabExZnmB4e0ePV1Dpl2EWsZLuMTA83yZxBYp559WkhCPt1ZhAo3ytJJfq
	 6ZRIUwfAw==
X-HalOne-ID: 0b7acee8-00a3-11f0-8072-db70b48e0ecf
Received: from [192.168.100.34] (c83-191-168-223.bredband.tele2.se [83.191.168.223])
	by mailrelay3.pub.mailoutpod2-cph3.one.com (Halon) with ESMTPSA
	id 0b7acee8-00a3-11f0-8072-db70b48e0ecf;
	Fri, 14 Mar 2025 07:07:52 +0000 (UTC)
Message-ID: <32cd3d50-7273-41c5-9e0b-808cb7a500e0@berginkonsult.se>
Date: Fri, 14 Mar 2025 08:07:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Workflow with Extensible SDK and rust project
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <093b7c87-b979-4f89-981f-cbc4e49e27db@berginkonsult.se>
 <CANNYZj9pn1jOhtS-uQJ0wr6OuZYWkd34ji2kg4+1YEYPskm9fg@mail.gmail.com>
Content-Language: en-US
From: Peter Bergin <peter@berginkonsult.se>
In-Reply-To: <CANNYZj9pn1jOhtS-uQJ0wr6OuZYWkd34ji2kg4+1YEYPskm9fg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Mar 2025 07:08:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64955

Thank you for the feedback Alex!

On 2025-03-13 12:15, Alexander Kanavin wrote:
> On Wed, 12 Mar 2025 at 22:01, Peter Bergin via lists.yoctoproject.org
> <peter=berginkonsult.se@lists.yoctoproject.org> wrote:
>> But how do I proceed to upgrade my recipe and the '<name>-crates.inc'
>> file? Is there any tooling or way of working around this yet or is it to
>> be developed?
> I am basically encouraging people to move away from esdk bundles into
> 'direct' esdk workflows where you set up a sdk environment from a
> bitbake environment:
>
> https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-extensible-sdk

What are the main reasons for this recommendation?

Best regards,
/Peter


> In such a setup you can run bitbake directly whenever needed.
>
> Alex

