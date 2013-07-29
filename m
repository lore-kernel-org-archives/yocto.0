Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f52.google.com (mail-vb0-f52.google.com
	[209.85.212.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 734E5E013DE
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 12:06:15 -0700 (PDT)
Received: by mail-vb0-f52.google.com with SMTP id f12so633961vbg.39
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 12:06:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=TJ40wo7yoe79i7BEuHPSZ/Z6oS7EoHDB0HH8zyaMwWw=;
	b=SNQHOV647GajnTYFfscpdOjZVM+W248o1H6nOCiVJHOCwPR6pvjtJ7pp4u84v0CqM0
	bVQX/uJIxNaUWPya27ZJJeiliWMf0Iw4yPF6V6N/SgCE6AQUo2NxfyJ0P0BpoLOpGjIi
	Sdw+FTtYYwUEZiaAyZhdsDnon4UG4RFT5nKY18IAkYu6jjCcK1v5iPQLdrLpMAPRjRtA
	s6RFzZUTXoYKZSbbR4R8h4RD/bCjKhWhne1sdhunn1lrcO/Ejmh5v7jvFnSAsWn59Kew
	KPRjJ9CDHycoO5Et73FYVxyWHBQrvnq05vYOwoZ30jnnHImMlg1p9YX5WHYHqns3RH2U
	D/Gw==
X-Received: by 10.220.86.1 with SMTP id q1mr9026647vcl.91.1375124774684; Mon,
	29 Jul 2013 12:06:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 29 Jul 2013 12:05:54 -0700 (PDT)
In-Reply-To: <CALgcdhiojzaky=uro0Xd053TVCkmiNkLQePYO8L3JuHDMU2HLw@mail.gmail.com>
References: <CALgcdhiOgJ-sL4nDNEr+HbfoRDH7GHOhmXUhmS-UYO4tjfdf1Q@mail.gmail.com>
	<CAJTo0LaoBhuOaDVXKGQssE-sL7SvRTq6R4f3aQga-vTm=AmX=A@mail.gmail.com>
	<CALgcdhiojzaky=uro0Xd053TVCkmiNkLQePYO8L3JuHDMU2HLw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jul 2013 20:05:54 +0100
Message-ID: <CAJTo0LbhyT9zZXFfpLxcKTWax4f9fpBj0w3-ktMzvOBWxHgO7A@mail.gmail.com>
To: James Nuss <jamesnuss@nanometrics.ca>
X-Gm-Message-State: ALoCoQkQSLQNFkrosD0OO4kwkW91HzsiebVDYPAE4oL1tzOkRihjDLkpi1A/vaUq8KYtC3OWku+8
Cc: yocto@yoctoproject.org
Subject: Re: eglibc and Oracle embedded JRE compatibility
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
X-List-Received-Date: Mon, 29 Jul 2013 19:06:15 -0000
Content-Type: text/plain; charset=UTF-8

On 29 July 2013 20:04, James Nuss <jamesnuss@nanometrics.ca> wrote:
>> eglibc is/was a fork of glibc so I'd be surprised if there were any
>> problems using JRE on eglibc.  Note that several major desktop
>> distributions (Debian, for example) have been using eglibc for quite
>> some time.
>
> It's encouraging to know that major distributions are using eglibc, since
> their is a fair assumption that they should also support major JRE's as well
> - thanks for pointing this out.

Also the eglibc/glibc distinction will shortly be moot as the rift
that caused the fork in the first place has been "resolved" (to put it
politely) and many of the eglibc changes are being merged into glibc.

Ross

