Return-Path: <wmat@alphatroop.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCB72E0146E
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 09:02:17 -0700 (PDT)
Received: by mail-vc0-f174.google.com with SMTP id kw10so4019807vcb.33
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 09:02:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=uMFUnxr4rjpFQ6o9QDukCpfjRbCMZOpJZuUoiZdRv/0=;
	b=N2jCYLUmp5vyE13NZXh/XF7RtxAPZJaOsR1yDM5fmJhlud0Bw57ds2Qlvat1gmFsaM
	r6VhZz/pNfR1CVXqAzbTuxF72Mln43Z+1faTm8SEmtrvAoCxiX1DCtdQqP6JaWLG2XEl
	DFFt7Gu30tPoFsfNnnxYTMpbDwgox9s1CGEeZwnnqOmatazGSb41+A8ION/uuX5rYwJE
	m2afVfeyRVFNB1xQukS5fFffW1FhbyEhA5PShBU1NEK3ANBt/Bs/3i93wPmRBUY2XxAH
	4YZ88dICBC2EJf2mxeJCy41fT1SDmX4jYA2upjKtJZbWgulTEJ4s8zfe8ZmKceMugPK7
	CL+w==
X-Received: by 10.58.12.69 with SMTP id w5mr12079199veb.16.1366387337098; Fri,
	19 Apr 2013 09:02:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.58.4 with HTTP; Fri, 19 Apr 2013 09:01:56 -0700 (PDT)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <1735326.q5ElvD3frK@helios>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123796FCF66BA@ORSMSX104.amr.corp.intel.com>
	<alpine.DEB.2.02.1304171135470.12898@oneiric>
	<1735326.q5ElvD3frK@helios>
From: "William M.A. Traynor" <wmat@alphatroop.com>
Date: Fri, 19 Apr 2013 12:01:56 -0400
Message-ID: <CAGfZjq6vSOy4Fkiv4MxYviqjq+aBnuZAmv4FEN6Mx+HBcCV0Kw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQk+Z2kP6yYMusC6RvwFvzgc+5nzExmrH2A63N4V9HzspvILDrMj0x4Ya00pX+5ZARrfwR3A
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Fri, 19 Apr 2013 16:02:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 17, 2013 at 11:42 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 17 April 2013 11:39:09 Robert P. J. Day wrote:
>> p.s.  i think one of the manuals should mention chris larson's
>> "bitbake-env" utility, which i use for debugging and explanations all
>> the time.
>
> I'd rather wait until we actually integrate that into BitBake (i.e. provide it
> with the BitBake source, which I hope we can look at within the next
> development cycle).

Is it as simple as including it in the contrib directory?

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

