Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F2D7E0083D; Wed, 16 Mar 2016 01:43:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2327E007F2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 01:43:51 -0700 (PDT)
Received: by mail-ig0-f180.google.com with SMTP id ig19so37034471igb.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 01:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=docZ3H7ncHWEvjd5NUzdjdCY6vyDhpZ/3fLqzaWIbJo=;
	b=MhPsN3gL/A5YYkCMoobPsGr53MKvyoPhkxbM2vYFybfuNNSVpIC6ugnf/if727wt0l
	xzXm/SftwrbzCtKVwk/7zu6aA9B8TdpR5S/lKrCgs5ht70mplYRcJrp/saddfiRgwWpa
	CiP4T4GVbN5Woifgrcf5iNKYizHhJ5sh1IM/O6LrVPfHuJcZPlVqNkf3PjfklZwasvFp
	V6CMWMBciVmX1Jk+a2SMzIT9TAAr0JJxIV1B4B5g92CeDGl/sb4fEwsJxcg38eAEVvgl
	tqZmVeem7aLT044tvjYrje7Z/QqxthdoOYC3VlNuMW40KciljVYuGSaELsS8Tm6zLqZw
	n4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=docZ3H7ncHWEvjd5NUzdjdCY6vyDhpZ/3fLqzaWIbJo=;
	b=SFVNdi77DgrCPRC+5sFXjToqLMJbRhGporvb2Qb/LeGQ/um/cXDSEhQXpnYKh4BNtU
	B3jIpxMFtnEwXs7hOPzRygJSEFfbDqUUJxIQ2WCMtJvT3cHgqk8l02CjqC7Ze3EFsobl
	/d6/WbJ5awI1bFgOj4xhI6cs9cm8ECEuJvrJEehyH+IJthdjeecFMFIqLKNPCY3QGYhf
	w/h87rOgsafDAkLBZdqsoic29f1MeM1FREWcMqg0Cs2OuKKJEl0mxFm32h4JOJiOEyJk
	Ckjirrb+XRjy9zh9JOCPm4cGnJ7wNYss41CPGg/MZ6Ep9cSMOE8ulN+IPXVJKrstFW4P
	gOdg==
X-Gm-Message-State: AD7BkJJyRho/BF6Wzyj+qUJFONCyGtNL6A0a4wS2zqLctVHftoLmSY+wbR+2Z4W1Do8cbaDgUR6U5wSuZFBjrcyJ
X-Received: by 10.50.147.34 with SMTP id th2mr3510968igb.27.1458117830518;
	Wed, 16 Mar 2016 01:43:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 16 Mar 2016 01:43:31 -0700 (PDT)
In-Reply-To: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
References: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Mar 2016 08:43:31 +0000
Message-ID: <CAJTo0LYXPBRL6KGUtRtgp2h=VLs4e3W-qZV=an6LWHC6gRe6FA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Master or master-next?
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
X-List-Received-Date: Wed, 16 Mar 2016 08:43:53 -0000
Content-Type: multipart/alternative; boundary=089e014952385476cc052e26831a

--089e014952385476cc052e26831a
Content-Type: text/plain; charset=UTF-8

On 15 March 2016 at 22:56, Chris Tapp <opensource@keylevel.com> wrote:

> Should I use master or master-next to track 2.1 release progress?
>

master-next is a guideline of what's due to be merged shortly but patches
will be re-ordered, rebased, partially merged or dropped from it, so only
do that if you're sure.  And double-check that master-next is in fact a
direct child of master (or whatever the correct terminology for git is).
At the moment, master is newer than master-next and rebasing -next onto
master shows that it contains just two patches that are known to be broken
right now.

Ross

--089e014952385476cc052e26831a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 March 2016 at 22:56, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mail=
to:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4ek" class=
=3D"a3s" style=3D"overflow:hidden">Should I use master or master-next to tr=
ack 2.1 release progress?<br></div></blockquote></div><br>master-next is a =
guideline of what&#39;s due to be merged shortly but patches will be re-ord=
ered, rebased, partially merged or dropped from it, so only do that if you&=
#39;re sure.=C2=A0 And double-check that master-next is in fact a direct ch=
ild of master (or whatever the correct terminology for git is).=C2=A0 At th=
e moment, master is newer than master-next and rebasing -next onto master s=
hows that it contains just two patches that are known to be broken right no=
w.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ros=
s</div></div>

--089e014952385476cc052e26831a--
