Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03B7FE013B8
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 01:16:32 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id x14so3284300vbb.6
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 01:16:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=K6IPIfeeirHeFnJ7yXbtlihxs45PMEJKjQwEqAba4yM=;
	b=dprWDZKIPzJeYeF2A5fGOpqFEOLxKrUnTGSRVxkMaGI/G8hLOIRxO+TcuNK30a6oa6
	HtX9ZXQ938SkkP3G/T2nyNpwFhh+MPgGi2vfPS9MbniDzpVyAe9mcHAfva7upaaPlPfN
	AQhe4Nr6w2jRrqhomOV+3AmQCZyA9XLU83KchG5IiSL6+y0ZuFUSa9JV/HmNgtFOeBeI
	MeCrvkRpUkXsL39+MDPG2W5YoZLE3ouwDLY2SVT7lglYARhD8Ajcffbs2DJSMVqOgk1P
	CYvExC0l100/HUar4bm5d4Nf2rJM+igg8jj00UGJ9Wwm+rrJGkxOHC0PRAKC6mRAvUzf
	O/Nw==
X-Received: by 10.220.192.4 with SMTP id do4mr9095087vcb.91.1372666591835;
	Mon, 01 Jul 2013 01:16:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 1 Jul 2013 01:16:11 -0700 (PDT)
In-Reply-To: <CAPhnLPA1beCo03kmSq-T61ZgY_ouTp5n5DCKeFcM=DF-qQb1LA@mail.gmail.com>
References: <CAPhnLPA1beCo03kmSq-T61ZgY_ouTp5n5DCKeFcM=DF-qQb1LA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jul 2013 09:16:11 +0100
Message-ID: <CAJTo0LZQ+vVN5ddfBF1pTBATOmsFARRQmPqbqSf7hhk_D7vEyw@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
X-Gm-Message-State: ALoCoQlrIXxxWDaHQpJDXvorGF3KNI1JHiGGpF6IDrJctS/HDvYgan6LKOAz+Qq42/FH/Ef3iKo/
Cc: yocto@yoctoproject.org
Subject: Re: Recent autobuilder changes
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
X-List-Received-Date: Mon, 01 Jul 2013 08:16:34 -0000
Content-Type: text/plain; charset=UTF-8

On 30 June 2013 23:40, Flanagan, Elizabeth <elizabeth.flanagan@intel.com> wrote:
> This weekend I brought down the autobuilder to implement the new build
> failure email formatter. This *should* provide a bit more detailed
> information in a much easier to read format. Please, let me know of
> any tweaks people might like to see in the message format.

Much improved!  The one thing I'd love to see though is the relevant
branch_* values right at the top, so it's trivial to spot a master vs
MUT vs 1.4.1 build.

Cheers,
Ross

