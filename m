Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCB28E00D2C; Thu, 25 Feb 2016 18:54:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F33E00D25
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 18:54:14 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id o6so27564038qkc.2
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 18:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=thTEIoXIAGrsfK2Ac3DGmgyZXlDuqd31SExStqlWlow=;
	b=ZKJjIroZyHKiPPSRwdThRbPMRYKyCWLEYxk4WF0Hhrw0fX/HSZTIi/MhG+uO9hmN/m
	xPNK3g4AovJQCjHVKv59bejHigBidksQoX90SaRld9+dh9DJep5jY2/U0IGV6u0yqcMY
	02lGaeEqKM20YvmKkCzu/udQFkyeO15D2793uFFeUT/pHohZZ0KeAwcV6tru1rJSWujJ
	9u+GK5YI5Zb2li3nQ2wOh9a/5Co5qTIJWbpRflNmQhJivKnijBfJpEZBZY5er3McO7YJ
	wUxSTNg+y9Za6pV9rhCziMrSp46OtjChA5W03TJExxVOixeNHAreKT0zi5ssUxGkgnH3
	RcfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=thTEIoXIAGrsfK2Ac3DGmgyZXlDuqd31SExStqlWlow=;
	b=EVovNSve4TECvwrsOAOH5aJub7+EMRsZCjHVyg4NsV9fr1XUa40HnS/6xv1ORpvIxc
	TKzVgNh8II/X1v58725erkSi6hvhz0J31M7EONhiT8JD+cIF37xCZFRR5Onbc+6JXR4Z
	Y06qCyW1NpX0a71SCCPN+V7yGDeLsNvXU7DqsMJEWyBp88UCldlv1FP3/C4Cb40rMgG+
	WZE0l2uek/FVKH3XfS8w0T/Avvs2rcTqR5z3CCd6HfwdnH6bz+/1ClxogL3Truiv7yfm
	2XbXOe1kXbiQd5MTgs2D+/FF4QVrwR8zjqrlGfSUKZTDjxZgphnAI4//CHC0JUVNtqGt
	WYqw==
X-Gm-Message-State: AG10YOTRCad1DkkRRpIb15NsisMqLHSZFTlqAuqvHJGiUQHXpEXSLv3a1f3bWXtHcC4HR+xpkst4gBPZM+VIgA==
MIME-Version: 1.0
X-Received: by 10.55.74.197 with SMTP id x188mr61144279qka.104.1456455254162; 
	Thu, 25 Feb 2016 18:54:14 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Thu, 25 Feb 2016 18:54:14 -0800 (PST)
Received: by 10.55.130.196 with HTTP; Thu, 25 Feb 2016 18:54:14 -0800 (PST)
In-Reply-To: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 25 Feb 2016 18:54:14 -0800
Message-ID: <CAMKF1spgKSosWNxwUM1suPRZD2VRbNVDsFjr55sv6GMYWCVGtw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Brian Avery <brian.avery@intel.com>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Removing Hob for 2.1
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
X-List-Received-Date: Fri, 26 Feb 2016 02:54:15 -0000
Content-Type: multipart/alternative; boundary=001a114a8b9c0e48e8052ca36a70

--001a114a8b9c0e48e8052ca36a70
Content-Type: text/plain; charset=UTF-8

Go ahead
On Feb 25, 2016 6:50 PM, "Paul Eggleton" <paul.eggleton@linux.intel.com>
wrote:

> Hi folks,
>
> So we've been gearing up the Toaster web UI to replace the Hob (GTK+
> based) UI
> for some time now; Hob has basically been on life support for the past few
> releases. As of late last month in master, Toaster has the capability to
> select the packages in an image, removing the last thing that Hob could do
> that Toaster couldn't. This means it's about time we looked at removing
> Hob -
> particularly if we want to do so for the upcoming 2.1 release as we should
> really do so within the M3 development timeframe which is almost over.
>
> To recap, the reasons why Hob ought to be removed include:
>
> - The code is tightly woven into BitBake, making it fragile. This means it
> needs significant QA and maintenance on an ongoing basis.
>
> - Some of the implementation is not ideal; we'll be able to remove some
> cruft
> from BitBake and OE-Core at the same time.
>
> - It's GTK+ 2 based, not the current GTK+ 3.
>
> - Toaster is now a much more capable UI and is being actively maintained
>
> I'm maintaining a list of things we would drop together with Hob, so I
> could
> probably come up with a patchset - I just wanted to give people a heads up
> and
> double check that this is something we indeed want to do in 2.1. Any
> comments?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
>

--001a114a8b9c0e48e8052ca36a70
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Go ahead</p>
<div class=3D"gmail_quote">On Feb 25, 2016 6:50 PM, &quot;Paul Eggleton&quo=
t; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux=
.intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Hi folks,<br>
<br>
So we&#39;ve been gearing up the Toaster web UI to replace the Hob (GTK+ ba=
sed) UI<br>
for some time now; Hob has basically been on life support for the past few<=
br>
releases. As of late last month in master, Toaster has the capability to<br=
>
select the packages in an image, removing the last thing that Hob could do<=
br>
that Toaster couldn&#39;t. This means it&#39;s about time we looked at remo=
ving Hob -<br>
particularly if we want to do so for the upcoming 2.1 release as we should<=
br>
really do so within the M3 development timeframe which is almost over.<br>
<br>
To recap, the reasons why Hob ought to be removed include:<br>
<br>
- The code is tightly woven into BitBake, making it fragile. This means it<=
br>
needs significant QA and maintenance on an ongoing basis.<br>
<br>
- Some of the implementation is not ideal; we&#39;ll be able to remove some=
 cruft<br>
from BitBake and OE-Core at the same time.<br>
<br>
- It&#39;s GTK+ 2 based, not the current GTK+ 3.<br>
<br>
- Toaster is now a much more capable UI and is being actively maintained<br=
>
<br>
I&#39;m maintaining a list of things we would drop together with Hob, so I =
could<br>
probably come up with a patchset - I just wanted to give people a heads up =
and<br>
double check that this is something we indeed want to do in 2.1. Any commen=
ts?<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
_______________________________________________<br>
Openembedded-architecture mailing list<br>
<a href=3D"mailto:Openembedded-architecture@lists.openembedded.org">Openemb=
edded-architecture@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.or=
g/mailman/listinfo/openembedded-architecture</a><br>
</blockquote></div>

--001a114a8b9c0e48e8052ca36a70--
