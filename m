Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47BAAE00DF7; Wed, 19 Oct 2016 08:41:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15437E00DF1
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 08:41:07 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id r16so18138261pfg.1
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 08:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=7pbdgmqCImCqODgbCm+VH1ilWCEKTC1E059zz7uLLOI=;
	b=W7Knn1OwPrFYns+prrJYkNyXKG69s7iPWISR1nU6E0Ppo+Kpzb0D+iq0F4bWva93GL
	netoEuKSftCiGo0KJwZJZklmH5C6ZFQiU7s5mQAdSZiqEzw5USJ7BSpAkojvr/SNvCa7
	6OthcNrDHGtUS1QbWHyVxuaDF+r2/oB59sWF567pTcTnBNYFZ5jBsEhXLp6FdXFOTwyG
	XdccZc0j9dRJg3Vh8F/H/4Yj0rgh2oKsbv1esIqY5zTtK4XsqjURFu2M9lgvoqtvE44M
	GEHUkrWH0pcYX6MMh/zjhAn8t8ApaWiBSDxIoIuAomGvtPkbjtfp/WcqvHVpgs0A0g8a
	Ar6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=7pbdgmqCImCqODgbCm+VH1ilWCEKTC1E059zz7uLLOI=;
	b=UezIu1sveJUeWRzwGwOZODXDIuYphGw1xjsX43Q/IelxMvm+53xT0ynbdf2vVw5ZDc
	k0AT7tidEFx0fQqtV/SfA/WzTczvet/kTpky3BQE8BXFPs/FkwntwiyfP5F5rIRaMUju
	QdfVo3KDtsnChqicgirZZHTDP200Sp8HPi67WNjB1FbH/43Euj2M88mTWsJxhXPg3weJ
	sZGqxC1YLnc+tYxKKyvWijreAOfuRQyn5YWhnCvboi/UIi/F0ISYTwBoAb7899XrTMV5
	gwUL1GdJIVnhhce36aTBQJ6OHHtSP6S+i0xCaThEGfwTpQobxv98DEKMPuc1lh8Z41x1
	1/rw==
X-Gm-Message-State: AA6/9RmVpaRtihIlsDILsvIHTk2DtQKhovFE6v0FhceKQULXLbNQ3pNLmsTN0DQK9PVchIzb
X-Received: by 10.99.169.25 with SMTP id u25mr10150036pge.6.1476891666994;
	Wed, 19 Oct 2016 08:41:06 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:65fe:afa5:176a:9468?
	([2601:202:4001:9ea0:65fe:afa5:176a:9468])
	by smtp.gmail.com with ESMTPSA id
	133sm56668880pfx.92.2016.10.19.08.41.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Oct 2016 08:41:06 -0700 (PDT)
To: Sona Sarmadi <sona.sarmadi@enea.com>, Khem Raj <raj.khem@gmail.com>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
	<CAMKF1sp_qLfdeFvHzi+VD-6tFbX-f372uiRmKjeXRG3w1WVwkQ@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E48ABE9A5A1@SESTOEX04.enea.se>
From: akuster <akuster@mvista.com>
Message-ID: <6b866b61-731b-a7b0-4da1-6f1b25d66528@mvista.com>
Date: Wed, 19 Oct 2016 08:41:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE9A5A1@SESTOEX04.enea.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Wed, 19 Oct 2016 15:41:11 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/2016 03:42 AM, Sona Sarmadi wrote:
>>>  From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
>>>
>>> General policies:
>>>
>>> Fixes must go into master first unless they are applicable only to the
>>> stable branch; if back-porting to an older stable branch, the fix
>>> should first be applied to the newer stable branches before being
>>> back-ported to the older branch
>>>
>>> Does anyone know the reason for the policy above i.e. why fixes have
>>> to go to master first?
>>>
>>> 1)      It makes more sense at least for users  to get CVE fixes as soon as
>>> possible in the maintenance branches.
>> this is to ensure, that we do not regress next time when we release next
>> version from master. So its important to ensure that the fix has been
>> applied to master sometimes you can assert that the fix has gone into new
>> version of a package that is due to be uprevved in master and will be
>> done soonish. Such information is helpful when making security patches
>> for release branches.
>>
>> Actually there was a suggestion at OEDEM on informing CVE ml that we
>> have as the CVE fixes get applied to metadata. Thats a good suggestion to
>> have implemented.
>
> Thanks everyone for your explanation.
>
> Yes regressions (forgetting to fix bugs in master) are bad.  I believe there
> are other ways to avoid this, Yocto project has a bug reporting system to
> have track of such things, right?
The issue there is if Jethro gets a fix and Krogoth, morty and mater  
need it as well, the bug system implies someone else is going to have to 
do the work.
That is the problem. Not too many people are stepping up to do the work 
in the other branches.

>
> Maintenance branches are likely deployed in production systems, I think
> Fixing security problems here should have higher priority.
You are more than welcome to submit patches for the stable branch you 
are concerned about knowing the patches wont be applied until the parent 
branches are addressed first.

>   Don't you agree?
>
> Perhaps we should discuss this at next OEDEM :)
We have and until more people step up to help, this will be a constant 
issue.

-armin
>
> Cheers //Sona


