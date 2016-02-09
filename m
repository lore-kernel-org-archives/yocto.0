Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09C73E00DAA; Tue,  9 Feb 2016 05:56:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA8EE00CA2
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 05:56:42 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id 5so12216500igt.0
	for <yocto@yoctoproject.org>; Tue, 09 Feb 2016 05:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tpsBDxUIrplhRcU8DxRVsYWJO7jWqkiLk5QW4ZIXujc=;
	b=DAlQGGoLrdyFXe0fhaj3mAPlsXSQVefS6g5pMnSUGc57rVhLP34ryyE/QNZzjlevgr
	hxvbfEctBf2cf9uatFAENJwlEjJWGjReyGfQnTqbsM8dL87nLXorIHg2wz8InENo55P7
	Gm4fCtbpTTXR/hIEvgFcW+eFB4xycPkK/76in4Sf7JuF6vkcMFHMPgIqzCH3aGaDPwDw
	0LNlDoKM9MDLggaIzCq5luZeMBBlOFhBA8er/f1lZ/BKD65C/sJlwN1MAMk0ii9bGNbL
	A1xQoo8PzqYvh/U5kbMvZxpDIFxDxQyand+WPR+9wU0fPHfzhU3qvvmal7VuPTryyG6Q
	KLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=tpsBDxUIrplhRcU8DxRVsYWJO7jWqkiLk5QW4ZIXujc=;
	b=EPoVmIfPPygyqGRDlh3afp/hBtsvkLXV9xwnsl9qD3ns2asrz4ZFk+3Vt76GlhD9+F
	zXuXGlemcT2sk8heYJNO6r3AlQDwRjI3dTfDwwgBGAX2c2KmOlMvZGmwRe2E54+s1EVZ
	4jumakMcdj2lCh6LofmwCAVUKbTvFlL9g2tcYgqc+M0rEuXOM9ZMqf3pG6Hll/BvMGr4
	ymhM6HE/DNuhIiPJW+8ZapeowsutO/whz3GMnrHtzOnKHm+wXLq7u7Gvhy8ykfLfa8fY
	VgeWg+LpwS/LuMq8a0JRP6NXh3/fms+1Rl1C+X7PqtzUAlAxF8B6pZ8PjvAeRT8lPdUn
	zGwg==
X-Gm-Message-State: AG10YOSoJfoX3cbWR4WRiziUtOSviQ77JhDrQrfuGHz+0roZf5x4lqcUmT1vL2yp+qyywwXkkqN42r8NbkrNIQd5
X-Received: by 10.50.111.111 with SMTP id ih15mr4666820igb.78.1455026201591;
	Tue, 09 Feb 2016 05:56:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 9 Feb 2016 05:56:22 -0800 (PST)
In-Reply-To: <56B9EEC7.8010303@nokia.com>
References: <56B1D2D1.5010508@nokia.com> <1454497513.3990.6.camel@open-rnd.pl>
	<56B33100.9020903@nokia.com> <56B89638.9060905@nokia.com>
	<1454939078.3938.18.camel@open-rnd.pl> <56B9A55A.9040607@nokia.com>
	<CAJTo0LYj05btWH+pnLkp-gwd+S1qefys+_ZhdEMBGShqm08nrQ@mail.gmail.com>
	<56B9EEC7.8010303@nokia.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Feb 2016 13:56:22 +0000
Message-ID: <CAJTo0LZj0YE1SyYLr_cUtEQPU9Gm_JHg7996fYM+Pq4jMMX-1A@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where should I append Yocto bitbake task to create work folder symlink ?
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
X-List-Received-Date: Tue, 09 Feb 2016 13:56:45 -0000
Content-Type: multipart/alternative; boundary=089e0149be34e2acb5052b56afaa

--089e0149be34e2acb5052b56afaa
Content-Type: text/plain; charset=UTF-8

On 9 February 2016 at 13:51, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> Here is the whole bbclass
> *: *
>
> DESCRIPTION = "Creates symlink to the latest version workdir of the
> package"
>
> do_latest_link() {
>     if [ -n "${WORKDIR}" ]; then
>         linkname="$(dirname ${WORKDIR})/latest"
>         rm -f $linkname
>         ln -s $(basename ${WORKDIR}) $linkname
>     fi
> }
> addtask latest_link after do_unpack
>
> do_unpack[postfuncs] += "do_latest_link"
>
>
> But for better understanding I made the more throughout look into the
> documentations. I found the information about "postfuncs" you talk about
> [1]. However, the tasks description [2] doesn't say anything about
> including the task in the process, it just describes the demanded order
> that the task is put ( addtask something after|before othertask ).
>
> That is so, until I read "3.6. Variable Flags"  [3]. Where is quite
> clearly stated those variables control functionality and *dependencies*.
> The documentation is quite unclear in that case.
>

If you're using a postfunc you don't need to addtask at all: using
postfuncs means you don't need to have a separate task at all.

Ross

--089e0149be34e2acb5052b56afaa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 February 2016 at 13:51, Woronicz, Bartosz ( NSN - PL/Wroclaw) <span di=
r=3D"ltr">&lt;<a href=3D"mailto:bartosz.woronicz@nokia.com" target=3D"_blan=
k">bartosz.woronicz@nokia.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">Here is the whole bbcl=
ass<i>:<br>
    </i>
    <blockquote>DESCRIPTION =3D &quot;Creates symlink to the latest version
      workdir of the package&quot;<span class=3D""><br>
      <br>
      do_latest_link() {<br>
      =C2=A0=C2=A0=C2=A0 if [ -n &quot;${WORKDIR}&quot; ]; then<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 linkname=3D&quot;$(dirname=
 ${WORKDIR})/latest&quot;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -f $linkname<br></span>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ln -s $(basename ${WORKDIR=
}) $linkname<span class=3D""><br>
      =C2=A0=C2=A0=C2=A0 fi<br>
      }<br>
      addtask latest_link after do_unpack<br>
      <br></span>
      do_unpack[postfuncs] +=3D &quot;do_latest_link&quot;<br>
    </blockquote>
    <br>
    But for better understanding I made the more throughout look into
    the documentations. I found the information about &quot;postfuncs&quot;=
 you
    talk about [1]. However, the tasks description [2] doesn&#39;t say
    anything about including the task in the process, it just describes
    the demanded order that the task is put ( addtask something
    after|before othertask ).<br>
    <br>
    That is so, until I read &quot;3.6. Variable Flags&quot;=C2=A0 [3]. Whe=
re is quite
    clearly stated those variables control functionality and
    *dependencies*. <br>
    The documentation is quite unclear in that case.</div></blockquote></di=
v><br>If you&#39;re using a postfunc you don&#39;t need to addtask at all: =
using postfuncs means you don&#39;t need to have a separate task at all.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--089e0149be34e2acb5052b56afaa--
