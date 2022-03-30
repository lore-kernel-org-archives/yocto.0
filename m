Return-Path: <cbing@cybernetics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E737C433F5
	for <webhook@archiver.kernel.org>; Wed, 30 Mar 2022 14:05:28 +0000 (UTC)
Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web10.7543.1648649126251538152
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 07:05:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cybernetics.com header.s=mail header.b=HuSpGM5/;
 spf=pass (domain: cybernetics.com, ip: 173.71.130.66,
 mailfrom: btv1==0888fb8067f==cbing@cybernetics.com)
X-ASG-Debug-ID: 1648649123-1cf43917f382bb0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with
 ESMTP id WQqXtvkjwHoEfUFU for <yocto@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 10:05:23 -0400 (EDT)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cybernetics.com; s=mail;
	bh=3IuXMZs6stut1spkXlBxtwHCfo+kgLoHAIzEUelxJXs=;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
	Content-Language:Subject:MIME-Version:Date:Message-ID; b=HuSpGM5/OOFvJ+lOq5OZ
	8Iyy2vZGuVu+RmxwjYqiDgVDmdqtTVBntppmhgit0a+QjZRfMkgmiax6ndseDo94fuyHBGxmYs5oN
	8zr8RQ516eusYlUQXlSjskoiepZXPgtgsB1+Jz62GxM1rrkMc3k7HdGvr1ekKRniuDLZMpyldY=
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 7.1.1)
  with ESMTPS id 11664709 for yocto@lists.yoctoproject.org;
 Wed, 30 Mar 2022 10:05:23 -0400
Message-ID: <2201d640-812d-fdcb-e89a-11bcf6292698@cybernetics.com>
Date: Wed, 30 Mar 2022 10:05:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] SCM usage in source urls and bandwidth
Content-Language: en-US
X-ASG-Orig-Subj: Re: [yocto] SCM usage in source urls and bandwidth
To: yocto@lists.yoctoproject.org
References: 
 <8afc5cc5da4718e87e0c11b3a6ee8df1cca6a404.camel@linuxfoundation.org>
 <YkRg74lxBklzqIpn@piout.net>
From: Claude Bing <cbing@cybernetics.com>
In-Reply-To: <YkRg74lxBklzqIpn@piout.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1648649123
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 2836
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Mar 2022 14:05:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56600

On 3/30/22 09:53, Alexandre Belloni via lists.yoctoproject.org wrote:
> On 30/03/2022 11:42:46+0100, Richard Purdie wrote:
>> [list address fixed, sorry]
>>
>> We've been having bandwidth trouble with downloads.yoctoproject.org so we did
>> some quick analysis to see what the issue is. Basically in speeding up the
>> server which was the rate limit, we hit the limits of the hosting pipe. I'd note
>> a few things:
>>
>> a) it isn't the sstate mirroring, it is nearly all being used by downloads.
>>
>> b) 25% of all our bandwidth is going on "git2_sourceware.org.git.binutils-
>> gdb.git.tar.gz" - i.e. downloading the source mirror binutils tarball
>>
>> c) 15% is on git2_sourceware.org.git.glibc.git.tar.gz i.e. glibc
>>
>> d) OE-Core has downloads.yoctoproject.org as a MIRROR
>>
>> e) poky has it as a PREMIRROR
>>
>> What are our options? As far as I can see we could:
>>
>> a) increase the pipe from downloads.yoctoproject.org but that does come at a
>> non-trivial cost to the project.
>>
>> b) Seek help with hosting some of the larger mirror tarballs from people better
>> able to host them and have that as a first premirror?
>>
>> c) Switch the binutils and glibc recipes to tarballs and patches. I know Khem
>> finds this less convenient and they keep moving back and forward but we keep
>> running into this issue and having to switch back from git.
>>
>> d) To soften the blow of c) we could add devupstream support to the recipes? We
>> could script updating the recipe to add the patches?
>>
>> e) We could drop the PREMIRRORS from poky. This would stop the SCM targets from
>> hitting our mirrors first. That does transfer load to the upstream project SCMs
>> though and I'm not sure that will be appreciated. I did sent that patch, I'm not
>> sure about it though.
> 
> I would simply drop PREMIRRORS, this is actually a privacy concern for
> some of our customers that didn't realize they are leaking the names of
> their internal git repositories to downloads.yoctoproject.org.

Indeed, that would be concerning for us as well. Would it be possible to
ignore PREMIRRORS based on the recipe layer? Alternatively, we could
create blocklists for heavy packages that need to fetch from upstream
first rather than drop PREMIRRORS completely. Sometimes, having a
secondary source could save valuable time when the upstream is not
responsive.

> 
> 
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56599): https://lists.yoctoproject.org/g/yocto/message/56599
> Mute This Topic: https://lists.yoctoproject.org/mt/90128469/4618432
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [cbing@cybernetics.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

