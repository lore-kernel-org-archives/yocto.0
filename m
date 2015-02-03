Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5961AE008A6; Tue,  3 Feb 2015 03:56:26 -0800 (PST)
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
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2334EE0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 03:56:21 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id s11so34868300qcv.5
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 03:56:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SZFtaCjSHmx9S2uvbwtKHN961/KCdg8F45+yVDxq9LU=;
	b=a/wgW275Zf6CluFCQMCPGPmrvZO6Ep1Lk0e/LMtqDqHvoYOEj55nFDw9aHg0IeFDv2
	Wv3xTb8Aa9ISt8RdyQj2teHKHq5K9AWpseJiOK0ZX+zOsbUaNx+mEd8zdG+R3plVG8YF
	KQfDgYcctWCU+YU6LJBq5UNTiZmRlvtFDro+4vgFqCxvH8HEAkU30F4dbNvVsb2N5qnm
	LkoiMEP49hkNYusx3/wLPJmCsAY8KlztNDQm88CIDP6ZhrZBt/w+i/b6LWLM8OvE9V+e
	TZdMTWF7ohXjFQnWm1ldTWdmCM9B+xBbI7sxbJNmDRu9Qy9Prw//PK4ccH11PbDt/JbF
	XCmg==
X-Gm-Message-State: ALoCoQk7WRCE+h9bHnpPho02A49plvut1VajrPA46cFVsyMZc24OK4oEFQ5ZmYMbXW8RWKGF9cfr
X-Received: by 10.229.51.201 with SMTP id e9mr8519936qcg.4.1422964575894; Tue,
	03 Feb 2015 03:56:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 3 Feb 2015 03:55:55 -0800 (PST)
In-Reply-To: <CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<CAJTo0LaN3HMhjrpii2pPbJw5zWbywgr1keZe=iQmuKFMFFf=gQ@mail.gmail.com>
	<CAMKF1sq8NsuNYZDQRPtXruBeRndOP+0qwBuTO2ahb6q-fS8XGw@mail.gmail.com>
	<CAJTo0LYpKbwOHg-DBMJycy+KNayTCsnhToJR8K-REKZ2jxhnhw@mail.gmail.com>
	<EA0C9DE9-9E5F-4B74-8464-138895268F2F@gmail.com>
	<CAJTo0LbSFesauhA_H39Znd07SR5JCs45izy2us=cFWVGXtW8hg@mail.gmail.com>
	<80920FD0-CA08-45D7-9A41-3971FB2D58D7@gmail.com>
	<CAJTo0LbqTrQzk0KeHDxYnmtZrrFdZD12DWrjA=Y4RtbQzwM0ow@mail.gmail.com>
	<CAMKF1sr7bYpKqzTmvX5rCuYc-Rb2se7Vsrr4aYA43E_b1Z=vWA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Feb 2015 11:55:55 +0000
Message-ID: <CAJTo0LZJwGxPLa5eLB8dymDqBYtFZkVdyknU7wtbj014dWoO9w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Tue, 03 Feb 2015 11:56:26 -0000
Content-Type: multipart/alternative; boundary=089e0168133e131a59050e2dc29f

--089e0168133e131a59050e2dc29f
Content-Type: text/plain; charset=UTF-8

On 3 February 2015 at 05:03, Khem Raj <raj.khem@gmail.com> wrote:

> I think this issue was there even with older version of glibc for i7
> but it was flagged as a warning, glibc 2.21 now uses -Werror by
> default. Can you confirm that via inspecting 2.20 glibc build logs for
> this machine ?
>

dl-caller.c:1:0: warning: SSE instruction set disabled, using 387
arithmetics
 /* Check whether caller comes from the right place.
 ^
../sysdeps/unix/sysv/linux/dl-execstack.c:1:0: warning: SSE instruction set
disabled, using 387 arithmetics
 /* Stack executability handling for GNU dynamic linker.  Linux version.
 ^

You're right.  I'll test the new branch shortly.

Ross

--089e0168133e131a59050e2dc29f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2015 at 05:03, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-sty=
le:solid;padding-left:1ex"><div id=3D":492" class=3D"" style=3D"overflow:hi=
dden">I think this issue was there even with older version of glibc for i7<=
br>
but it was flagged as a warning, glibc 2.21 now uses -Werror by<br>
default. Can you confirm that via inspecting 2.20 glibc build logs for<br>
this machine ?</div></blockquote></div><br><div class=3D"gmail_extra">dl-ca=
ller.c:1:0: warning: SSE instruction set disabled, using 387 arithmetics</d=
iv><div class=3D"gmail_extra">=C2=A0/* Check whether caller comes from the =
right place.</div><div class=3D"gmail_extra">=C2=A0^</div><div class=3D"gma=
il_extra">../sysdeps/unix/sysv/linux/dl-execstack.c:1:0: warning: SSE instr=
uction set disabled, using 387 arithmetics</div><div class=3D"gmail_extra">=
=C2=A0/* Stack executability handling for GNU dynamic linker.=C2=A0 Linux v=
ersion.</div><div class=3D"gmail_extra">=C2=A0^</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">You&#39;re right.=C2=A0 I&#39;ll =
test the new branch shortly.</div><div class=3D"gmail_extra"><br></div><div=
 class=3D"gmail_extra">Ross</div></div></div>

--089e0168133e131a59050e2dc29f--
