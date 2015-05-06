Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A063E007B6; Wed,  6 May 2015 12:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F71EE00306
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 12:53:26 -0700 (PDT)
Received: by pdea3 with SMTP id a3so18995116pde.3
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 12:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=lyKqtVyUiNCaGggPzqOtCrYylnjpRS9FeaUQJ4diZZc=;
	b=e3AlbBY4/YpRt72DTHuqtTXfqB0PTkEWgekM+q4seElPWaP6vAuht9cTbywjRdPuGo
	KWy6CWNxNOwIyH5eytDmmPJT4gwFYH8dO1PPL7ML/o8Q8mCY71vxKzNeN+FrnazFujQ7
	cB5jhe6Rbhkwo+yOyqtm+lVUrLFUKC/EYV3CrCbd4zgJ+bIusRIlIt0jK7lT7F/3x2fs
	tvX8uaAoIccABm5Luw2jCu3tOk7XqUQ0wL/F01QReFlA3I83SpkmjQQ2AILhTd9mNnSB
	mhbfyNmeL+Ub8ZUaedAZr5XfbdPCw7T/CRAm7sND3DcNscCB4lCPYL+TDz+sonARbmY9
	7iug==
X-Gm-Message-State: ALoCoQnxTXzJ7ZZhEnYd5tgJ3KNB99fus6Jv67AXO0lLpSTuTOQFoW6dLI4SP5YyuPT/lirXrEKb
X-Received: by 10.68.170.133 with SMTP id am5mr711454pbc.42.1430942005541;
	Wed, 06 May 2015 12:53:25 -0700 (PDT)
Received: from [10.22.11.251] (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id u8sm2663281pdj.46.2015.05.06.12.53.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 May 2015 12:53:24 -0700 (PDT)
Message-ID: <554A7133.10403@mvista.com>
Date: Wed, 06 May 2015 12:53:23 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E554A5F69@fmsmsx111.amr.corp.intel.com>
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E554A5F69@fmsmsx111.amr.corp.intel.com>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 5, 2015 8:00 AM US Pacific Time
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 May 2015 19:53:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Stephen,

For the next agenda or reply.

1) Yocto version after 1.9. is it 1.10 or 2.0?

2) I heard at OEDAM that there is a bug triage meeting. Is there 
information on this somewhere?

regards,
Armin.


On 05/05/2015 08:13 AM, Jolley, Stephen K wrote:
> Attendees: Stephen, Armin, Jussi, Sona, Michael, Mark, Richard, Denys,
> Alex V., Saul, Cristian,
>
> *AR: Stephen – Insure Benjamin knows he has SWAT.*
>
> Agenda:
>
> * Opens collection - 5 min (Stephen)
>
> * Yocto Project status - 5 min (Stephen/team)
>
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.9_Status
>
> https://wiki.yoctoproject.org/wiki/Yocto_1.9_Schedule
>
> https://wiki.yoctoproject.org/wiki/Yocto_1.9_Features
>
> ·YP 1.9 Planning is still in progress; but mostly done.
>
> ·YP 1.9 M1 Cut off is June 23, 2015.
>
> ·YP 1.7.2 rc3 should be out of QA by EOW.
>
> ·Meta-Intel should start QA as soon as 1.7.2 is done.
>
> ·YP 1.6.3 should start as soon as meta-intel comes out of QA.
>
> * SWAT team rotation: Randy -> Benjamin
>
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
>
> * Opens - 10 min
>
> * Team Sharing - 10 min
>
> Richard – Due to new items being added and improvements made in YP,
> build performance is slowing increasing.  If anyone has ideas on how to
> improve on this, it would be welcome.
>
> Cristian – Switch to bluez 5 from bluez 4 might cause some errors.
> Please report anything that becomes an issue.
>
> Thanks,
>
> */Stephen K. Jolley/**//*
>
> *Yocto Project Program Manager*
>
> *INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124 *
>
> (*Work Telephone*: (503) 712-0534
>
> (*Cell*: (208) 244-4460
>
> * *Email*:_stephen.k.jolley@intel.com_
>
>
>

