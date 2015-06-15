Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ABF6E00A3F; Mon, 15 Jun 2015 07:25:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1034BE00960
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 07:25:11 -0700 (PDT)
Received: by qcej3 with SMTP id j3so6509136qce.3
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 07:25:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vcG311h/6vchBfnqY5OORslfphhsSCm0x3hgS5sriDs=;
	b=WNRB47y016fC3fHkjLUNsbNUAClc84OosV+WPK5TYNiTmOzpOx2vCDpX1YAy2bhxj2
	ffuOZL657aRoGJSe3neH7xVIN9Hp3TKgvGwzpRvZ+yFk+4gxP5BiiBRv4I3/VmipufKd
	RttzhpLyxdR72CyrCA+pSv9rSqayy5Bl/7I7D9BYMokNhFxP3Yw/vCyVpWua2Y6W6jo/
	hoqsM8NSxumX1ac8HYkoSeEe7L3uVfwu+CClAWL6fY/G9UGuzXPVyKxw3RnzTNR27iGO
	+/C5POKv+4RUTVwa4tQhrh9ud2ujPbejJE6ispyofOFeodlRpNfnGB2K3WH3BI5ijdgN
	3ZkQ==
X-Gm-Message-State: ALoCoQmUVtGxL3qTPa5S2DqeUvJBED/Fzln4oA6qS/q7BBPRLrIfAzP8y0tMUXlQ0u23HSPmEXkp
X-Received: by 10.55.18.144 with SMTP id 16mr58195938qks.17.1434378310095;
	Mon, 15 Jun 2015 07:25:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 15 Jun 2015 07:24:49 -0700 (PDT)
In-Reply-To: <CALbNGRS9UWjVQQh8POPc5zVYOeYa9VaeC7dEfzH3AMs4k9Mjzw@mail.gmail.com>
References: <557E9EFE.1030703@linux.intel.com>
	<CALbNGRS9UWjVQQh8POPc5zVYOeYa9VaeC7dEfzH3AMs4k9Mjzw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Jun 2015 15:24:49 +0100
Message-ID: <CAJTo0LbRVqw3h_3igs59=DTnaz6nf4w=A5ZpXepmh6xiKtVdPA@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Webkit-gtk will be updated to latest upstream; midori browser to be replaced with Epiphany
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
X-List-Received-Date: Mon, 15 Jun 2015 14:25:16 -0000
Content-Type: multipart/alternative; boundary=001a113ad64aa5ab0705188f3957

--001a113ad64aa5ab0705188f3957
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 15 June 2015 at 12:53, Andreas M=C3=BCller <schnitzeltony@googlemail.com=
>
wrote:

> So we are loosing last working browser around - what get's better
> except later is greater?
>

If you actually compare the build dependencies, you'll see that Midori and
Epiphany are actually almost identical.

We need to upgrade WebKit as the release we're shipping has known security
flaws and is very old - and the community is rightly moaning about that.
However Midori doesn't build with a recent WebKit... if you have an
alternative solution then your thoughts are welcome.

Ross

--001a113ad64aa5ab0705188f3957
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 June 2015 at 12:53, Andreas M=C3=BCller <span dir=3D"ltr">&lt;<a href=
=3D"mailto:schnitzeltony@googlemail.com" target=3D"_blank">schnitzeltony@go=
oglemail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div i=
d=3D":1dc" class=3D"a3s" style=3D"overflow:hidden">So we are loosing last w=
orking browser around - what get&#39;s better<br>
except later is greater?<br></div></blockquote><div><br></div><div>If you a=
ctually compare the build dependencies, you&#39;ll see that Midori and Epip=
hany are actually almost identical.</div><div><br></div><div>We need to upg=
rade WebKit as the release we&#39;re shipping has known security flaws and =
is very old - and the community is rightly moaning about that.=C2=A0 Howeve=
r Midori doesn&#39;t build with a recent WebKit... if you have an alternati=
ve solution then your thoughts are welcome.</div><div><br></div><div>Ross=
=C2=A0</div></div></div></div>

--001a113ad64aa5ab0705188f3957--
