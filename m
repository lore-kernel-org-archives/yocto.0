Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D48F9E013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 12:02:52 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w15so876136vbf.35
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 12:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=q1GXp5c7aVF/upCl0v+cYAAnyJlAzSlNtqWw6snu3NU=;
	b=ePgZpWsw/M0kr5bCxS53HxW7emVGieEdcZHDMpWzl6i2Qmh+4n+DbyWWdSUtEnd3G9
	RZhnICSeaNDLJ0s9VnBAzZysRmgvUKvSgRETavfGlSIwHj4W4kRKBXRAwLMBE8FSAcvM
	u4zjnE1KAC5lHMLJHh4DkR37MmXIXyWWCb+KAoLzW90lSQY4Qh8QZUiAySlijHyKbspY
	V8ijntfT2bakDGUTvA3+s1GY/rP0Onix/16QUIIY/pJ/EVxYkSMYSek8CHTglA3U9oeq
	KOgKuw37sjxwPD/gnFOrxEtGthBExVxD0LcRR8cKKJJOSEwzIdJvIC0iE/Zwf+gD9orw
	M4JQ==
X-Received: by 10.220.42.147 with SMTP id s19mr22538952vce.46.1373569371441;
	Thu, 11 Jul 2013 12:02:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Thu, 11 Jul 2013 12:02:30 -0700 (PDT)
In-Reply-To: <CAMS2kBH7E6T6-yFtf+kPZ5=o+Wub=g1qjeZ6A_TBAO_4cHNYqQ@mail.gmail.com>
References: <CAMS2kBH7E6T6-yFtf+kPZ5=o+Wub=g1qjeZ6A_TBAO_4cHNYqQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Jul 2013 20:02:30 +0100
Message-ID: <CAJTo0LYN-oUXK7-YRa-AMFcPR78bFB1tgHg98OPvrcxXDEeikQ@mail.gmail.com>
To: Glenn Schmottlach <gschmottlach@gmail.com>
X-Gm-Message-State: ALoCoQkioQ5fciJyMozCCw6F0eaVAXkmoRBF78YNLPNkb4lbCdnnSy7oUVt7I/70Cx0S2Kxf06WY
Cc: yocto@yoctoproject.org
Subject: Re: Is there still a Yocto dependency on bash (versus dash)?
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
X-List-Received-Date: Thu, 11 Jul 2013 19:02:53 -0000
Content-Type: text/plain; charset=UTF-8

On 11 July 2013 19:39, Glenn Schmottlach <gschmottlach@gmail.com> wrote:
> I recall a while back that OE/poky had issues with Ubuntu's dash shell
> (Ubuntu's replacement for bash) which required the the shell to be linked to
> bash rather than dash. Is this (bash) still a requirement for Yocto/Poky or
> does it work with dash now.

It should work with dash, I know several key developers who use ubuntu
with dash.  If you find any problems file a bug and we'll get them
sorted.

Ross

