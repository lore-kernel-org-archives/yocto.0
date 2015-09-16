Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5B33E00C6D; Wed, 16 Sep 2015 03:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65D6EE00C15
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 03:02:35 -0700 (PDT)
Received: by qkap81 with SMTP id p81so84091196qka.2
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 03:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YNzIKusuBH47iQz4+FNxgpC0j81ww6HKaXpFmYyPn2w=;
	b=JD6813eJkdDbJ0WuuaxV3nx+7RhQTklLkzkFz/vuI/pDnRCeOF+wfhWVy7JflXKatR
	sG7vyv+GrGPSKdn7NEXju4v2jeDQqDJGdd8GsH9a7UtpgJZfdlLZGGULOKkxetqzYHHX
	4Xg4n+XA5BeDdUsTSjBwY2DR1A/gABB3ZciPK+no5XUotgWtXuUfw9NT5Y3LM9DQmAoE
	o37Sc9VNjI6ycIZr8akFPp26iQauE2SYeC5sUiW3ii13R+PmsSwQlU2qtyr4gOQG7ZVa
	XhmE3+D6A1qWII7jY7jLHLClrzD17IsSfcSVbddQYf0wBMJyzmtJMqxnegeUXr/40a3q
	HGLA==
X-Gm-Message-State: ALoCoQmxxTV7SfjcueYdQVHD9rzdMipf7fgiynMq17bScEuwWfCrT42MHJrnGjrTdugetOJzaSYz
X-Received: by 10.55.221.199 with SMTP id u68mr39362846qku.83.1442397754210;
	Wed, 16 Sep 2015 03:02:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 16 Sep 2015 03:02:14 -0700 (PDT)
In-Reply-To: <55f9358a.44f2440a.38b16.7e0cSMTPIN_ADDED_BROKEN@mx.google.com>
References: <55F822C0.8030404@windriver.com>
	<55f84188.e17c420a.cd394.2235SMTPIN_ADDED_BROKEN@mx.google.com>
	<55F846D8.4020808@gmail.com>
	<CAJTo0LaXx_DR7j0og26UK7mvmmR6fPk6ZnGiyVSOeGfw7JYQ7g@mail.gmail.com>
	<55f9358a.44f2440a.38b16.7e0cSMTPIN_ADDED_BROKEN@mx.google.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Sep 2015 11:02:14 +0100
Message-ID: <CAJTo0LZr4TZ48ctS7U8EwUreSz7GZ8JuB_Y0Kody3LKGp2o9cw@mail.gmail.com>
To: andy.pont@sdcsystems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dumping sysvinit
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
X-List-Received-Date: Wed, 16 Sep 2015 10:02:38 -0000
Content-Type: multipart/alternative; boundary=001a11499758c3ee47051fda6567

--001a11499758c3ee47051fda6567
Content-Type: text/plain; charset=UTF-8

On 16 September 2015 at 10:24, Andy Pont <andy.pont@sdcsystems.com> wrote:

> Now to figure out why the tar.gz file for the root file system has grown
> from just under 3MiB to almost 15MiB!
>

That would be systemd... it pulls in a lot of libraries that are fairly
common on complex systems but on a minimal image less so.

Ross

--001a11499758c3ee47051fda6567
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 September 2015 at 10:24, Andy Pont <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:andy.pont@sdcsystems.com" target=3D"_blank">andy.pont@sdcsystems.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1jv" cl=
ass=3D"a3s" style=3D"overflow:hidden">Now to figure out why the tar.gz file=
 for the root file system has grown from just under 3MiB to almost 15MiB!<b=
r></div></blockquote></div><br>That would be systemd... it pulls in a lot o=
f libraries that are fairly common on complex systems but on a minimal imag=
e less so.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra">Ross</div></div>

--001a11499758c3ee47051fda6567--
