Received: from dkim1.emailarray.com (dkim1.emailarray.com [65.39.216.94])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.120.1792677696582148005
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2026 07:01:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balister.org header.s=eeenuy header.b=A+anE1G5;
 spf=pass (domain: balister.org, ip: 65.39.216.94, mailfrom: philip@balister.org)
Received: (qmail 10875 invoked from network); 22 Oct 2026 14:01:35 -0000
Received: from localhost (HELO dkim1.emailarray.com) (127.0.0.1)
  by dkim1.emailarray.com with ESMTPS (ECDHE-RSA-AES256-GCM-SHA384 encrypted); 22 Oct 2026 14:01:35 -0000
Received: (EmailArray Haraka outbound); Thu, 22 Oct 2026 10:01:33 -0400
Received: from smtp8.emailarray.com ([192.168.1.87])
	by dkim1.emailarray.com (Haraka/2.8.25) with ESMTPS id 59CD748A-49DB-4333-A25D-BB42159F409E.1
	envelope-from <philip@balister.org>
	(cipher=ECDHE-RSA-AES256-GCM-SHA384);
	Thu, 22 Oct 2026 10:01:33 -0400
Received: (qmail 32639 invoked by uid 89); 22 Oct 2026 14:01:32 -0000
X-Orig-Sender: philip@balister.org
Received: from unknown (HELO ?192.168.1.46?) (cGhpbGlwQGJhbGlzdGVyLm9yZ0A3My4xNDcuNy4xNzQ=) (POLARISLOCAL)  
  by smtp8.emailarray.com with SMTP; 22 Oct 2026 14:01:32 -0000
Message-ID: <2f242967-754e-4eaa-9f1d-f1cbddc29bbc@balister.org>
Date: Thu, 22 Oct 2026 10:01:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto Project wiki replaced with a a read-only snapshot
To: yocto@lists.yoctoproject.org, ross.burton@arm.com,
 "mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>
Cc: yocto-infrastructure <yocto-infrastructure@lists.yoctoproject.org>
References: <CADfgfoY-e_Dwh=sEYzREf16iTHynr+2HVeTMLJfJdthUNjj=fw@mail.gmail.com>
 <9B005854-190F-4DE0-A2A5-7F17E4816B1A@arm.com>
Content-Language: en-US
From: Philip Balister <philip@balister.org>
In-Reply-To: <9B005854-190F-4DE0-A2A5-7F17E4816B1A@arm.com>
Content-Transfer-Encoding: 8bit
DKIM-Signature: v=1;a=rsa-sha256;bh=EwZ2346pDy8QV1HuPnd/NWarZUUe1Wx/+cNM6vKTB0w=;c=relaxed/simple;d=balister.org;h=from:subject:date:message-id:to:cc:mime-version;s=eeenuy;b=A+anE1G5yTWZKsnqVZZhwXiY1eNmINUKMyZpng5pLT7n9URuelrkvKUqZm6UMkTt3KnpTdpnbXKbOzLgixdIWYgoTkVlYFQosITo+b8Z2Xd4C+cxzZpkvHcd3WtFxr+L3OQ4p780+VFqYk36BeqpC46449oozXdQJ/RTlLTHnsM=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 14:01:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66782
Content-Type: text/plain; charset="utf-8"; format="flowed"

Do we have any analytics on the wiki pages?

On 10/22/26 9:41 AM, Ross Burton via lists.yoctoproject.org wrote:
> On 21 Oct 2026, at 18:11, Michael Halstead via lists.yoctoproject.org <mhalstead=linuxfoundation.org@lists.yoctoproject.org> wrote:
>> Due to CVE-2026-109618 and CVE-2026-109619, the Yocto Project wiki at https://wiki.yoctoproject.org/wiki/Main_Page has been taken offline and replaced with a read-only snapshot. Efforts to restore and replace the required wiki functionality are currently in progress.
> 
> I think it’s time to admit that a handful of pages are actually edited routinely in the wiki and move away from having an actual wiki.
> 
> The kernel has moved to github+readthedocs+generous write access and decommissioned their wiki, and I expect our friends in LF IT are cursing that our wiki is still live!  As they’ve gone through this process once already I think we should copy their process for ease of deployment.
> 
> I think we need a triage party for every page and categorise them into:
> - archive, historical interest only (eg the Yocto 1.4 release planning)
> - useful, transform to markdown+rtd and put in a git repository (eg any documentation or notes that probably should end up in the real documentation at some point, but are not ready yet)
> - pending, pages that we need a solution for.  We’ve already moved the bugzilla triage out of a mediawiki plugin, but the weekly status archive probably needs a better home (maybe the mailing list is sufficient?)
> 
> Once this has done we have some scope on the problem, at least.
> 
> Ross
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66781): https://lists.yoctoproject.org/g/yocto/message/66781
> Mute This Topic: https://lists.yoctoproject.org/mt/121870580/384425
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [philip@balister.org]
> -=-=-=-=-=-=-=-=-=-=-=-

