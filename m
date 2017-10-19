Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97470E00CD1; Thu, 19 Oct 2017 07:26:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD97E00C3A
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 07:26:33 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id 101so10008927ioj.3
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 07:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5w4zBLS6U5oiqaMLNCdB8wJonRluz6ObnUuTljlbHdA=;
	b=PdmDjp4+oQ7Ffx/tg5r9h7ajszyNnzCjO3pbenBfSfaNiQU1XMR45Xj58ePVX3f6VB
	lCmLU/1CYi+AKNE8t4LNDazAnoTYUEFC5zfc5SbghpArM4YNwzDaQSGq1jz3th/BLSSo
	xujCXbhIbxhiC82sjoX/5/lGPs6CQ6RIq87bocFgpdhtsPyKayrTXmoX0Ye0i8TV3n+I
	CgUw5GdZW1HZxsA78JHWCdw3EnhFsd0j6KIbeJ5s+5828v1txF+xjdvEM3l0Y2Ic2I3y
	w9Y/p+43BZyYyyRksD8mLe20vNkzqn5DzOMsNFPzOyvJQw4WKThn2WqjepEiP8BidGKR
	KZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5w4zBLS6U5oiqaMLNCdB8wJonRluz6ObnUuTljlbHdA=;
	b=CZswjdl1/ba/7yaWAPUHwN7BJLOUCmRgjAq3UHitoprx7Bunbn2GLva+EdnVTo0ARH
	lBzk3Jab7uOYXT4yEr/Dl+KGeNh+y/zTPibiofj0OjE4ng5eri+VEVW3r4+NH7p1ZbaD
	JTktAoNqUQIrpSVrILlb1S/CQKlqZVMKn+t0CdxD27BlmE+eDiUeHAH9XnYb835WM/df
	f70jeBvFuIWKsM1EOdMIyagdfTUvUrp5e5FxPv1fBnpYr7a1+HWfRgWCoWaUjnK1Cpue
	VlhBaAm0daFWjiAN4IWmUkvR9dkhHYf5UMUqivSeTIJPSrGMgxNWj8zkvzRpzW/gNQX5
	iYIw==
X-Gm-Message-State: AMCzsaVpGZH3hE+KzP9lUNRte1rv9uylFSOLqDkdUg3LxHSdkkYN8iBd
	Fdi3jSReRvt5IEdeP9iBEBzSuZy2YAhBdsBKrKHSTg==
X-Google-Smtp-Source: ABhQp+SfvyJOU5G+D+LSeHPsvOVaSQLJlW7Zr6pxUdZmdC56O0Re8XLD0NNxut7F5qBdeIV984hufcNn0q4r13kjJzM=
X-Received: by 10.107.189.129 with SMTP id n123mr2207988iof.48.1508423193153; 
	Thu, 19 Oct 2017 07:26:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 19 Oct 2017 07:26:12 -0700 (PDT)
In-Reply-To: <fb6cf52e-a919-0714-ac61-60f66f9055bc@numalliance.com>
References: <fb6cf52e-a919-0714-ac61-60f66f9055bc@numalliance.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Oct 2017 15:26:12 +0100
Message-ID: <CAJTo0LZwDYTszOYURYKMqhyvbh_y6nN3-Eh3A5yMt3D14+KkHQ@mail.gmail.com>
To: =?UTF-8?Q?St=C3=A9phane_Ancelot?= <sancelot@numalliance.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: customising custom-image-sato
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
X-List-Received-Date: Thu, 19 Oct 2017 14:26:34 -0000
Content-Type: multipart/alternative; boundary="94eb2c0761c8996967055be724e5"

--94eb2c0761c8996967055be724e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you want a custom core-image-sato then the easiest (and right) thing to
do is to write a new image recipe.  Then you get to pick what you want in
it and don't want in it.

puzzles comes in via packagegroup-x11-sato-games, via -x11-sato (which also
depends on -x11-sato-base and -x11-sato-apps)..  Don't install x11-sato but
swap it for just x11-sato-base and you'll get all the Sato environment but
no games or apps.

Ross

On 19 October 2017 at 15:19, St=C3=A9phane Ancelot <sancelot@numalliance.co=
m>
wrote:

> Hi,
>
> I tried removing puzzles package using IMAGE_INSTALL_remove but it has no=
t
> had any effect.
>
>
> Is there a way to remove unwanted packages ?
>
> Regards,
>
> S.Ancelot
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0761c8996967055be724e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you want a custom core-image-sato then the easiest (and=
 right) thing to do is to write a new image recipe.=C2=A0 Then you get to p=
ick what you want in it and don&#39;t want in it.<div><br></div><div>puzzle=
s comes in via packagegroup-x11-sato-games, via -x11-sato (which also depen=
ds on -x11-sato-base and -x11-sato-apps)..=C2=A0 Don&#39;t install x11-sato=
 but swap it for just x11-sato-base and you&#39;ll get all the Sato environ=
ment but no games or apps.</div><div><br></div><div>Ross</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 19 October 2017 at 15=
:19, St=C3=A9phane Ancelot <span dir=3D"ltr">&lt;<a href=3D"mailto:sancelot=
@numalliance.com" target=3D"_blank">sancelot@numalliance.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
I tried removing puzzles package using IMAGE_INSTALL_remove but it has not =
had any effect.<br>
<br>
<br>
Is there a way to remove unwanted packages ?<br>
<br>
Regards,<br>
<br>
S.Ancelot<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c0761c8996967055be724e5--
