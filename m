Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C297BE008D3; Thu,  4 Dec 2014 08:04:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.47 listed in list.dnswl.org]
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9ACE00873
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 08:04:53 -0800 (PST)
Received: by mail-qa0-f47.google.com with SMTP id s7so12112612qap.34
	for <yocto@yoctoproject.org>; Thu, 04 Dec 2014 08:04:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TUFbcHwRfK+uf5h6i9spx8NJwTynMouF8dgylqSpins=;
	b=KCFEN4G4nxq7QuJE8Lf6LLIrzTsqn9V3Ct1R0v2uQDywY3eD2b4JwMQHEfcgDz/8qf
	K4QiJ09t1FYfKhjgJy/oR5c+cRkMzqSDVHwtU2nNnEtWFnt1a9wcSOdInxuDYdUt427F
	tqL76xUTOVD2/4hoQBrwHRvBOsAgOjAXbp8Anv6R9xgmSqPuGdx5IDcV2BOb81Rxrfba
	YEaiPdhTE9KyCxFxyz0PnQaDkLgn2Iqy/L3Ce98Uk50WwTP7MB15+vYh4g7wB4byVuf9
	cLG0b0wby7GdzUQ7+o4ffeuYKhTe89e0RxfBvchK0BowaO3sQUEUHmsGhD6gmhHogqU7
	ARgA==
X-Gm-Message-State: ALoCoQmuSfTEj6LlRZeZvUzHhfX7PpHYYhUQDOUw3UKHYFk9avRuu/KCfSe0h650ZRpeIY4HvS2A
X-Received: by 10.229.190.71 with SMTP id dh7mr17698500qcb.5.1417709093361;
	Thu, 04 Dec 2014 08:04:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Thu, 4 Dec 2014 08:04:33 -0800 (PST)
In-Reply-To: <5480849F.5050908@mlbassoc.com>
References: <5480849F.5050908@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Dec 2014 16:04:33 +0000
Message-ID: <CAJTo0Lbto9J5DjyY6RCjq28Jy-6zkV=VQeYGEkyDREwnvutRHg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: What drives automounting volumes?
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
X-List-Received-Date: Thu, 04 Dec 2014 16:04:57 -0000
Content-Type: multipart/alternative; boundary=001a11336ab6e7ce100509661edf

--001a11336ab6e7ce100509661edf
Content-Type: text/plain; charset=UTF-8

On 4 December 2014 at 15:58, Gary Thomas <gary@mlbassoc.com> wrote:

> I've noticed this before - the /run/media mounts were sometimes
> present, other times not.  Any clues what drives this and why
> they worked on Tuesday and not on Thursday (this week)?


udev-extraconf is the recipe that installs these rules.  If you can
replicate it working and not working reliably, then bisecting it would be
appreciated.

Ross

--001a11336ab6e7ce100509661edf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 4=
 December 2014 at 15:58, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">I&#39;ve noticed this before - the /r=
un/media mounts were sometimes<br>
present, other times not.=C2=A0 Any clues what drives this and why<br>
they worked on Tuesday and not on Thursday (this week)?</blockquote></div><=
br></div><div class=3D"gmail_extra">udev-extraconf is the recipe that insta=
lls these rules.=C2=A0 If you can replicate it working and not working reli=
ably, then bisecting it would be appreciated.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11336ab6e7ce100509661edf--
