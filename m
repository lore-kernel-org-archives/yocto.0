Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E5AFE00997; Tue,  5 May 2015 03:37:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2773E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 03:37:44 -0700 (PDT)
Received: by qkgx75 with SMTP id x75so102493040qkg.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 03:37:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZwXoiwM3a72j46jnt+QD9soVhIpOrEGMydA92QQKVE0=;
	b=QK4XnkDIYHQkTn6DSPyul9FANjG8xJBI8Kn5jznIEEW+9iruu2hofJf/dZclHA8q1r
	INEzUvoz/dDNy37sjrQx9c/5KtwMVV3HwQs1HEyOuRzanr69Jp3AnTw1kQKRx2OeGABP
	Cbk6lROnOEZ+imRVWvcgyUAKr9CgxCokJ+WTqS9ZzXTzWu+lwcjHj/WFnyMKBpiPJARh
	HR+PsLnBZ3IJb/bk+8mNI66XQ6whdSpaHPn/N7KehOMXGbLZ+9QWsDiUtcLALLPpVeav
	nsDymW5qauH/dVflMabTNF7/bMSFSoGEeoaBRaxcIn19dbProekpgwNPyQtXvF5zuT5G
	TGew==
X-Gm-Message-State: ALoCoQn/YYyp0MxLt11RCF+bM6XvN213MXX4NwOClEKFE2QiHGxRhsS3ACZ5G/7AdrTt5V1A3Vlj
X-Received: by 10.140.216.5 with SMTP id m5mr34457995qhb.52.1430822263987;
	Tue, 05 May 2015 03:37:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Tue, 5 May 2015 03:37:23 -0700 (PDT)
In-Reply-To: <51A964697D1B374D923D8F12DAC9906F972FE343@ORSMSX109.amr.corp.intel.com>
References: <51A964697D1B374D923D8F12DAC9906F972FE343@ORSMSX109.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 5 May 2015 11:37:23 +0100
Message-ID: <CAJTo0LZhWULvJLEfcRD3-60uDN2OJ9C1E63fdta3JKhniV7qQw@mail.gmail.com>
To: "Cai, Juliet Z" <juliet.z.cai@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with git repo clone through scons
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
X-List-Received-Date: Tue, 05 May 2015 10:37:47 -0000
Content-Type: multipart/alternative; boundary=001a11354e68c8506c05155344da

--001a11354e68c8506c05155344da
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4 May 2015 at 17:33, Cai, Juliet Z <juliet.z.cai@intel.com> wrote:

> I have a package that is built with scons in my bb layer. Inside the
> SConscript, it clones https://github.com/...   When I run bitbake, I get
> =E2=80=9CFailed to connect to github.com port 443: Connection time out.=
=E2=80=9D  I know
> the package build fine outside bitbake.  Any idea why bitbake doesn=E2=80=
=99t allow
> it? How can I get around it?
>

You get around it by doing the clones at the right time: add the URLs to
SRC_URI and put the cloned repos in the right place (see
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SRC=
_URI)
so the build doesn't decide to do the clone.

Not only does running the clone in the build mean that you don't have
working proxies, but it doesn't interact with the source mirrors, licensing
tools, or source archiving.

Ross

--001a11354e68c8506c05155344da
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 May 2015 at 17:33, Cai, Juliet Z <span dir=3D"ltr">&lt;<a href=3D"mail=
to:juliet.z.cai@intel.com" target=3D"_blank">juliet.z.cai@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex"><p class=3D"MsoNormal">I have a package =
that is built with scons in my bb layer. Inside the SConscript, it clones
<a href=3D"https://github.com/" target=3D"_blank">https://github.com/</a>..=
. =C2=A0=C2=A0When I run bitbake, I get =E2=80=9CFailed to connect to <a hr=
ef=3D"http://github.com" target=3D"_blank">github.com</a> port 443: Connect=
ion time out.=E2=80=9D=C2=A0 I know the package build fine outside bitbake.=
=C2=A0 Any idea why bitbake doesn=E2=80=99t allow it? How can I get around
 it?</p></blockquote></div><br>You get around it by doing the clones at the=
 right time: add the URLs to SRC_URI and put the cloned repos in the right =
place (see=C2=A0<a href=3D"http://www.yoctoproject.org/docs/current/ref-man=
ual/ref-manual.html#var-SRC_URI">http://www.yoctoproject.org/docs/current/r=
ef-manual/ref-manual.html#var-SRC_URI</a>) so the build doesn&#39;t decide =
to do the clone.</div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">Not only does running the clone in the build mean that you don&#=
39;t have working proxies, but it doesn&#39;t interact with the source mirr=
ors, licensing tools, or source archiving.</div><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11354e68c8506c05155344da--
