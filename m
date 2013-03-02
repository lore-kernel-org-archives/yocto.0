Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2ECF6E01490
	for <yocto@yoctoproject.org>; Sat,  2 Mar 2013 12:59:01 -0800 (PST)
Received: by mail-qe0-f49.google.com with SMTP id 1so3062811qec.22
	for <yocto@yoctoproject.org>; Sat, 02 Mar 2013 12:59:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:x-gm-message-state;
	bh=RRmszVZm1eu7GfIuMTVmY7aq1j5+A3OSMMAuPFUMLJI=;
	b=KzDWfnmsF5haO820t+T4Ux0zCX+I6Hw9dgm/ITbpLYsopBbs+7c7troZZQb7tinp+X
	UgsFFcbIckU38BVIPV4ej0nNIsHpQ5j9rVV9abdAo4PEbMZQe/pgPEbFJbYlaSGTiply
	N6/wtJwZdb1SytUlMte9l2gSdICpC0D8flfyLtjuxwWMcVG1dw4cqrcFnXfOD8eYHKtr
	4qicW3idN8vfWk8LUb1zQ6l5mYaMp6nra00SI/NSPQdrhHtRjZaOCBGdoc/455fd5smf
	m/2xlxOPUkCHHcq7Uxg2A+1em7cgPgixWHbgPtGaUe1+L8DZyvqanwF16evaHFU0yNJE
	wAuQ==
MIME-Version: 1.0
X-Received: by 10.224.33.140 with SMTP id h12mr26967369qad.73.1362257940025;
	Sat, 02 Mar 2013 12:59:00 -0800 (PST)
Received: by 10.49.35.16 with HTTP; Sat, 2 Mar 2013 12:58:59 -0800 (PST)
In-Reply-To: <CAPhnLPArfbE_-8p=+F4D=Sjkj970B7yuEJmm0Pj8Ca3zohmQfA@mail.gmail.com>
References: <CAPhnLPArfbE_-8p=+F4D=Sjkj970B7yuEJmm0Pj8Ca3zohmQfA@mail.gmail.com>
Date: Sat, 2 Mar 2013 12:58:59 -0800
Message-ID: <CAPhnLPBJVojZTyKNcrP4S251e2Wfq+g0CR6Ui+DeOJoRHMYTzg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkxqV6/t4R+7sZlgcYWYtemrbT3MQ/M9aKTbzO+WdwK5pNlr3Cqo/BwROwNa0+8YdUKt8+9
Subject: Re: Autobuilder downtime.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 02 Mar 2013 20:59:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 1, 2013 at 9:39 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> All,
>
> I'm going to be switching, temporarily, the autobuilder off so I can
> test the new software stack, starting later today, after we get a
> build of master. This switch will continue through til Saturday 10pm
> Pacific. This is needed in order to reduce load on the cluster so I
> can get some decent test results. The current plan is to do a compare
> of the results of the new autobuilder with the old autobuilder, fix
> any bugs found, and then switch the new software over on March 8th.
>
> As people have referenced autobuilder logs in bugzilla, we've a minor
> issue of maintaining those logs. That log move will occur on March
> 8th. Please plan for an all day autobuilder outage on that day.
>
> -b
>

The testing has begun. The main autobuilder infrastructure is down and
will be down into the evening/early tomorrow morning. The main master
page on 8010 is still up however and available for
logs/buildstatus/etc.

-b


> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

