Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E503E00BA2; Fri,  4 Aug 2017 08:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EA56E00B67
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 08:19:37 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id h199so9268862ith.0
	for <yocto@yoctoproject.org>; Fri, 04 Aug 2017 08:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kc1WwPbF+gJ+N9TteeBpuo7jnrPGSM7KB0gu8Jin3Qg=;
	b=qkZmsWCFLxPBHqCZrOaHZwif7/66eAEz0O4gHUJUWe448/ssrYek578X/zPcbn9Tgj
	XEAEsZEt3Q7UHtSaG0Ssl9OyZ7Y6qhqaNopd1aSrNJMvty9pEGm2BOt0sH2x7zRmYivr
	g6XVa1W2lhC8c1XWq1QA2rQAU/esNZPkit0Uv9l4Dbj+FDSIQyC2LNHYge+Ww1oDsf//
	xHXe7eFMPDNocD7NS0nPPBGEhDj1GBVaN7exCMwDgO06Pa7Ej+vcHGKAB5QXovK2Rfx8
	QSNthseOh7eIiCKrNLXgwCamEYxG02tHJwRT31rECSqpv5KnW42iFjSfQad8ccMw/KEY
	5KGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kc1WwPbF+gJ+N9TteeBpuo7jnrPGSM7KB0gu8Jin3Qg=;
	b=HbPQmeZkoZP9hWMfGHrfYGxgbf5wq7xcUDr4vV/HLcEAj00FGfkFGw8ayFDs/2aLcf
	YoI0UN1UFfl8KKvjpdTNpC7LiE1Ed8cSTCkbYNUrllnCH6+DHzsQnGMRKT62gCnkVHML
	fE+TyrxEG9TzVDb1y7bhydvj96bGZ3ub+RcB+0+ixQ6GIMDq+Dqj1kkGwGTFHTtON66E
	Pmtv3CFTWwyeBZv6+nOgG7LzH34axTFHdelsHXGlVMB+Hj+ln29dNWpxySON2DUkj4x0
	UuPzdzJ/quUpicbhASSy80VNNNyfYml3bX04dWm3bs6SBpVjhYyt7a7xH7SDbSQNNm/Q
	Yd8A==
X-Gm-Message-State: AIVw110vFgO7XQWcHRSOmi5uKTe8CRVJ7AQZIk9DeF/gREBi9qODV4jR
	6Lil1h4p2mV+TEU7sV4OSoO9ynyMyeGv2kc=
X-Received: by 10.36.172.15 with SMTP id s15mr2432241ite.111.1501859976749;
	Fri, 04 Aug 2017 08:19:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Fri, 4 Aug 2017 08:19:16 -0700 (PDT)
In-Reply-To: <CA+z1-f8LuOpH246T66qaufdgEbs=86aRZ-OhXO7HhZb1_dgPtg@mail.gmail.com>
References: <CA+z1-f8LuOpH246T66qaufdgEbs=86aRZ-OhXO7HhZb1_dgPtg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Aug 2017 16:19:16 +0100
Message-ID: <CAJTo0Lb7ARE=Y4iOTFu=sN6V8WQqmo=gFP4L7a0wcehUScKd9g@mail.gmail.com>
To: "blackthirt33n ." <jjosburn@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a way to do a bitbake dry run.
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
X-List-Received-Date: Fri, 04 Aug 2017 15:19:38 -0000
Content-Type: multipart/alternative; boundary="94eb2c1fd75c6ab9bc0555ef0612"

--94eb2c1fd75c6ab9bc0555ef0612
Content-Type: text/plain; charset="UTF-8"

$ bitbake --help | grep dry
  -n, --dry-run         Don't execute, just go through the motions.

Yes.

Ross


On 4 August 2017 at 16:15, blackthirt33n . <jjosburn@gmail.com> wrote:

> Is there a way to do bitbake dry run.
> James
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c1fd75c6ab9bc0555ef0612
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">$ bitbake --help | grep dry<div>=C2=A0 -n, --dry-run =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Don&#39;t execute, just go through the motions.</d=
iv><div><br></div><div>Yes.</div><div><br></div><div>Ross<br><div><br></div=
></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 4=
 August 2017 at 16:15, blackthirt33n . <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:jjosburn@gmail.com" target=3D"_blank">jjosburn@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">Is there a way to do bitbake dry =
run.<div>James</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c1fd75c6ab9bc0555ef0612--
