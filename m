Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 878ADE00498
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 09:42:08 -0800 (PST)
Received: from mail-yh0-f69.google.com ([209.85.213.69])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 18 Dec 2012 09:42:07 -0800
Received: by mail-yh0-f69.google.com with SMTP id 3so1360969yhp.8
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 09:42:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=NCzEIOTq1jeEV8HihpDlqrwhENbChzU6BclUop1pEgk=;
	b=UIj05X/R10sRpH1H7ZixRQvTZanXoJGvB2laP+LvuzgEKqCbec9mwYTW+otde8br4C
	3XbUaMZIuXaKVbMozsX5MtUeqWI8LAEjikDeGX3KRGE3npiF154toPXtChdcJicW73Rb
	RobXXWu8TpoceoOGt8rzpAnwfj/7bl3+zXk4uP42K9OSdIcEJ3x47qkoScJ3pKVFYA36
	skHltAhwHEDqnz2oJimexyaoi/hjUd4FVIND9QIwky0+748U5oOKzLOHQunv87Kvem/U
	7Te0FUdl5bjm4CFLTC4orp4OxhJbJZxUM3QbMZQ6GUbXe0BMgd2aD1G+jpjsx7gxpTRN
	Qu7g==
X-Received: by 10.49.73.105 with SMTP id k9mr1341846qev.6.1355852526854;
	Tue, 18 Dec 2012 09:42:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.73.105 with SMTP id k9mr1341839qev.6.1355852526633; Tue, 18
	Dec 2012 09:42:06 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Tue, 18 Dec 2012 09:42:06 -0800 (PST)
In-Reply-To: <20121215132238.503DC201C62@gemini.denx.de>
References: <20121215132238.503DC201C62@gemini.denx.de>
Date: Tue, 18 Dec 2012 09:42:06 -0800
Message-ID: <CAPhnLPBXsYcNDeKsW6xBLjSrJunHUDtkRohR_aHtU9PysQMLhg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Wolfgang Denk <wd@denx.de>
X-Gm-Message-State: ALoCoQkJsuTGejgWlStV4wiAYQ05cS5BDYOW0cocEMZbMOrbSdsYUIIZambxS0cs5+hRPM2aMqIKWRVlh576mq1rOC+lePXx9c4rRon+Czwl/ysKpIT5D3V9urw5sQys8D41V//pw2B/tQjbCAMIT8+c9o6ROvvUAg==
Cc: yocto@yoctoproject.org
Subject: Re: Git tag systematics ?
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
X-List-Received-Date: Tue, 18 Dec 2012 17:42:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Dec 15, 2012 at 5:22 AM, Wolfgang Denk <wd@denx.de> wrote:
> Hi,
>
> can anybody explain to me the systematics of the git tags ysed to mark
> the Yocto / Poky releases?
>
> For example, for Yocto 1.2 and before, we have release tags like
> denzil-7.0, edison-6.0, bernard-5.0, laverne-4.0, etc.
>
> Some parts of the current 1.3 Yocto release refer to it as "Poky 8.0"
> or Version "8.0 Danny", see for example here:
> https://www.yoctoproject.org/download/yocto-project-13-poky-80
>
> However, there is no such release tag as "danny-8.0".

You are correct. That was an oversight on my part. I've corrected it.

>
> Instead, there is a tag "1.3" - but there are no similar tags as "1.1"
> or "1.2" for the earlier releases?
>
>
> What is the system in this numbering / tagging?
>
>

Milestones: 1.x_My.rcz
Major releases: 1.x and they should also get the name-x.y.z tag

> Releated:  is there any document which explains the branch names being
> used for development.  for example, how can I find out ("officially")
> what the branch name for Yocto 1.4 will be / is ?

When Richard tells me :)

>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> A committee is a group that keeps the minutes and loses hours.
>                                                       -- Milton Berle
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

