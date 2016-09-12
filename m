Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBADDE009BF; Mon, 12 Sep 2016 12:16:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF207E00997
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 12:16:23 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id 186so25101786itf.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 12:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gfc+3WtWbzIW+AX0xgDvp7l7zfVOZXk63S3+jB6iJ1k=;
	b=zK7+tgTFuTY+Rr6n7LA5soE2Jt/H6Oq72lleUzk8QHycxH1ihUe29FVFHQGKSD1qo7
	mRLuLZkKMad4fMO9NTOeeMUkP151w1z96PbnY13GCyYi6ZdZym0jQ6bubUK5N7T91BSj
	jmoJZD+ttodNHdKZk+lpT/AKFzRQifJb1dJru4g/U/tD4lDo7y58tthWDlC8kalfsTG3
	/1xepFsMAC3Dom+rfUMyzhoRHOAy3wXFOmatM+76z70HNtvk23xYUk7eFNEVnA/mhzX5
	77esHCj0lwpph8m4jEr460eNddwbbze+EzOrngbtkgrxNDHuBJal0Tf1FC9XZTLgWKxw
	S8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gfc+3WtWbzIW+AX0xgDvp7l7zfVOZXk63S3+jB6iJ1k=;
	b=WPWP1T/hzYnRmNGwTLtGRh5mHo8xFbwTR4lNkfyP1h+XM3759SkJBp7sbuuAmArDeO
	R2HPSZSCUMgt9JTAg0PXU+v/auOdvNp0kWnskMbYDBzzbALYNhkhEoHhaY8DQhZWWKfX
	9sNoKJEwbSon0mQCp5+T8a64Wad7lc6jSPXFKmdQcgeauFvQsd59dqiAJd59X5xRdnQb
	+GZgDGjrpF34RFqwbojPO2bLZKt10m6pcoz2gdiQr96YZniG4jZsuGDcF3Qiw5ZVtkGQ
	ZFcqy9Q/PIUydsFsTezmHYViHG44X3kEKjGirQteu00NEknuESo9ZsP5cro6ScLMnVJJ
	e8Ow==
X-Gm-Message-State: AE9vXwOgrP42uTn15VwaeFteRWEkb6OBLsLB3tbXxgzZNA9Vv5mNek1UIoH0SX+kXpoNdhMTjLZoGrx1C53DLeVY
X-Received: by 10.157.37.25 with SMTP id k25mr21759520otb.136.1473707783135;
	Mon, 12 Sep 2016 12:16:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Mon, 12 Sep 2016 12:16:02 -0700 (PDT)
In-Reply-To: <CANr77M1Oj+M6k3QqHKTNSS8YFtsgVm5N7qCh4oxSCGWbSNKLNg@mail.gmail.com>
References: <CANr77M1Oj+M6k3QqHKTNSS8YFtsgVm5N7qCh4oxSCGWbSNKLNg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Sep 2016 20:16:02 +0100
Message-ID: <CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
To: Matthew Stanger <matthew_stanger@trimble.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Striping cross-compiled paths
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
X-List-Received-Date: Mon, 12 Sep 2016 19:16:25 -0000
Content-Type: multipart/alternative; boundary=001a1141c16ceac6fb053c54545a

--001a1141c16ceac6fb053c54545a
Content-Type: text/plain; charset=UTF-8

On 12 September 2016 at 19:22, Matthew Stanger <matthew_stanger@trimble.com>
wrote:

> I'm using Yocto 1.7.1 I'd like built programs to have the build path
> striped down. The goal is if I'm looking at some programs log after cross
> compiling I want this:
>
> src/program.c:388
>
> where I currently get this:
>
> /usr/local/jenkins/workspace/project-build-manual/Project/
> build-project/tmp/work/arm926ejste-poky-linux-gnuebi/
> program/2.5.992+gitAUTOINC+1c6d246619-r0/git/src/program.c:388
>
> Is it possible to configure Yocto to do this for me? If so where can I
> find info on how I would do this?
>

If those paths come from __FILE__ and so on, then currently no.  It would
be great if GCC could do this, but currently it can not.

Ross

--001a1141c16ceac6fb053c54545a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 September 2016 at 19:22, Matthew Stanger <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:matthew_stanger@trimble.com" target=3D"_blank">matthew_stanger@=
trimble.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I&=
#39;m using Yocto 1.7.1 I&#39;d like built programs to have the build path =
striped down. The goal is if I&#39;m looking at some programs log after cro=
ss compiling I want this:</div><div><br></div><div>src/program.c:388</div><=
div><br></div><div>where I currently get this:</div><div><br></div><div>/us=
r/local/jenkins/workspace/<wbr>project-build-manual/Project/<wbr>build-proj=
ect/tmp/work/<wbr>arm926ejste-poky-linux-gnuebi/<wbr>program/2.5.992+gitAUT=
OINC+<wbr>1c6d246619-r0/git/src/program.<wbr>c:388</div><div><br></div><div=
>Is it possible to configure Yocto to do this for me? If so where can I fin=
d info on how I would do this?<br></div><div></div></blockquote></div><br>I=
f those paths come from __FILE__ and so on, then currently no.=C2=A0 It wou=
ld be great if GCC could do this, but currently it can not.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1141c16ceac6fb053c54545a--
