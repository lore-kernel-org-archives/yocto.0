Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EEE4E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 08:30:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkvi18 with SMTP id i18so869158bkv.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 08:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=imK84VkEmAwr6YnLGyIATVGuFycoCByBvLafhmD4W4s=;
	b=q0Wx6zcm3zCUmwIL7ufi0KTuy0HHdqS7Km9GTXzh0MFH++1wzxnsymmI11LLJql/20
	v9GonSRO2XaTOVkB9Rb51dPkQGveAwOOzOOIQjQSvFpE6hdQs9x6mo34oYiLK8ccGgtD
	IsoRUPwBJudaJ+W6zI6eN2Q165LBtJAZ5/uCk=
MIME-Version: 1.0
Received: by 10.204.146.79 with SMTP id g15mr9911275bkv.121.1326299399879;
	Wed, 11 Jan 2012 08:29:59 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 11 Jan 2012 08:29:59 -0800 (PST)
In-Reply-To: <4F0DAACB.3010603@windriver.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
	<4F0DAACB.3010603@windriver.com>
Date: Wed, 11 Jan 2012 11:29:59 -0500
Message-ID: <CAFZh4h_DC6Sk58Mw7_ixyTTz9p5iwMk5+6Ey1kD+oTnHG+KEFw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 16:30:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 11, 2012 at 10:29 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> Just so I'm clear. You are asking about the switch to 3.0 as the
> default ? If so, that was only done in master for the upcoming 1.2
> release and not on the edison branch, so you wouldn't pick it up
> by pulling.

Thanks!  I did a git checkout -b master origin/master and will try again.

Regards,

Brian

