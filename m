Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F05A4E00A1E; Tue, 10 Apr 2018 05:44:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 452B0E00A1E
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 05:44:51 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id q71-v6so10993144oic.6
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 05:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Y0H8ib4wUsYTDX4lCElQ3UB/PZT0Pvy+k84fBNu2rOo=;
	b=yfe8vnrs6G+0r4nxxylQps7QjWKW9LbhhJriU7AVTMgNQvicYRFpES7Jvj4KsrutcL
	YLUQzUfGU5BNeohzWIOQsJHauyB6AISNYcL50kU/7ctQ059ZZS38bpdKqjdO7lYc0kV3
	ou8bkmlvWWsQOxO3WyHolRls5mCdNLFRB+9xD8eZTZrZ7Q8LkBSWJd7hc7eBV9tkG3hY
	rbh9t6P+ztpnFSgB8kvdo2yWnE2TWt9rGyEbqycNwtC3oCjxmvH3FEHuf5MQUqmsX8X1
	Uh8me9n/AsZUXahvH+Ef9O1nzIocksq9uKkoFWalPGyImxop3B4pTVgZZXw4buUoZEVa
	DNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Y0H8ib4wUsYTDX4lCElQ3UB/PZT0Pvy+k84fBNu2rOo=;
	b=boEtagTr933uUADxagWhpSIhMJowtSNiAb3hL8LP9vkIbSwnHL8dYLtQ27fY3YTqG5
	XgSvlHexy/iYqFjUqzQ9QJBOz4zkqjVNE4zEWNsKdQ+P6FBJLmQqQllRYsPnmKx290HO
	PxBs2RAocdOf6TBmdH3adO0gKiFsJrPTuAJWKukSmGWrS5QxrYjpzj8VWVcI13QFqz8I
	7bmGKOHoIKSeySALqqrZLsX8CroXbnFjmXbHvMWl+vV1QYkfFvFR8YnYGJR2QmNPlE2W
	cOQy5xlLEqBt8lNSLDGZFZ34+rbjIGMiI+U987OYd1w2n91RjikmalLZEOtbLmKEtgz5
	+8Lw==
X-Gm-Message-State: ALQs6tAgYtJ517t1We4uPuY4Ol1ZKn9oXMo/xclhuikfIixJ9Pe+zlq+
	l9u/jJHRyOSif45bTzh1OY5vqwuzBDLNP1v1hvXS0g==
X-Google-Smtp-Source: AIpwx4/wC2kwUTxNhGGz5Q+wtc5FYCfvsNfvWcN+njcC9TwKftyhAAOCs0054lmxq6InrufpyNlQFERk3XJItUdYJ18=
X-Received: by 2002:aca:acd1:: with SMTP id
	v200-v6mr172761oie.320.1523364291325; 
	Tue, 10 Apr 2018 05:44:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Tue, 10 Apr 2018 05:44:30 -0700 (PDT)
In-Reply-To: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
References: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Apr 2018 13:44:30 +0100
Message-ID: <CAJTo0LajNnRO0zQ581LcM0uMMby-=KPiPo7p_fcJzAGNYpM=9Q@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Is the a reason for adding the + to SRCPV?
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
X-List-Received-Date: Tue, 10 Apr 2018 12:44:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What tool is generating the code?  It probably shouldn't be using the
full path of the header...

Ross

On 10 April 2018 at 09:29, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrote:
> Hi,
>
> I am having some problems with one of my recipes when using the SRCPV the
> get_srcrev is returning "AUTOINC+" + rev. This will cause problem in my
> compile because I am using dbus codegen and it looks like the auto-genera=
ted
> code cannot handle the + sign in the paths. Is there a reason for this +
> sign. The generated code that causes my build to fail looks like this
>
> #ifndef
> ___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_BUILDS_MOZART_RASPBERRYP=
I_BUILD_TMP_WORK_CORTEXA7HF_NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMON_1=
_0_GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_CODEGEN_ORG_BLUEZ=
_LE_ADVERTISEMENT_INTERFACE_H__
>
> Currently the only way for me to get the build to work is not use the SRC=
PV.
> Could it actually be a better way then using the + sign or is there a
> logical requirement for it?
>
> BR
> Mans Zigher
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

