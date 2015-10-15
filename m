Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1042E00AEB; Thu, 15 Oct 2015 06:57:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89A4AE00978
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 06:57:53 -0700 (PDT)
Received: by ykdt21 with SMTP id t21so18084561ykd.3
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 06:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dPqQOrnzPCzedly73SQQuVlrOXi5heuG2sFf6dV8YIs=;
	b=NSLhx0kIVYFwFWfe3vr9QzLubYFLKkjPUuOYvlOz1Fo4YmUneUK234HNAlNt307z7l
	l4j6HO/g9ufNJSVq+aXSGqy560bQob8Q4WmlrP7ePeEZREZPEPIpkuJedrSED5P/1QR7
	iQAi0+IDYZGIEv7sVDYIVMJpsyNFuqODXqicZL9/05HqupIikX8KurJQFFc4aoDapjVm
	h6mOy08iexs3emVyqsmzYbFYOWV9xt7c99ere9zC6O84NJdZo3hgHadao4JfhDD4Y/x7
	MHrMWg5OfsVo4et5q89QleUv9s+FNavCr+YYrrbK+hc6+Ke14jg9+mOhSC/dXi+CBHjk
	CrgQ==
MIME-Version: 1.0
X-Received: by 10.13.213.86 with SMTP id x83mr6743103ywd.217.1444917472675;
	Thu, 15 Oct 2015 06:57:52 -0700 (PDT)
Received: by 10.129.155.134 with HTTP; Thu, 15 Oct 2015 06:57:52 -0700 (PDT)
In-Reply-To: <1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
References: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
	<1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
Date: Thu, 15 Oct 2015 10:57:52 -0300
Message-ID: <CAF3SDA4=VmqYw7J3M2nR7cNfCEWZfvqTNP4ifnQJdAoxJ_NxCQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: winfried.dobbe@xmsnet.nl
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to deploy gdbserver ?
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
X-List-Received-Date: Thu, 15 Oct 2015 13:57:55 -0000
Content-Type: multipart/alternative; boundary=001a114fb794b05446052225103d

--001a114fb794b05446052225103d
Content-Type: text/plain; charset=UTF-8

Works fine with emacs also.

2015-10-15 10:44 GMT-03:00 <winfried.dobbe@xmsnet.nl>:

> > Hi everyone,
> >
> > I want to be able to debug my target machine (raspberrypi) remotely
> > through
> > qtcretor on host.
> >
> > I can't seem to find a way to deploy the gdbserver software though.
> > I built the gdb-cross-arm but don't see any gdbserver on the target with
> > hob (poky 1.7.2) ?
> >
> > What am I missing ?
>
> When I build my image with
>
> EXTRA_IMAGE_FEATURES += "tools-debug"
>
> both gdb and gdbserver are installed in the target rootfs. Remote
> debugging worked out-of-the-box with QtCreator.
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114fb794b05446052225103d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Works fine with emacs also.<br></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">2015-10-15 10:44 GMT-03:00  <span dir=
=3D"ltr">&lt;<a href=3D"mailto:winfried.dobbe@xmsnet.nl" target=3D"_blank">=
winfried.dobbe@xmsnet.nl</a>&gt;</span>:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D"">&gt; Hi everyone,<br>
&gt;<br>
&gt; I want to be able to debug my target machine (raspberrypi) remotely<br=
>
&gt; through<br>
&gt; qtcretor on host.<br>
&gt;<br>
&gt; I can&#39;t seem to find a way to deploy the gdbserver software though=
.<br>
&gt; I built the gdb-cross-arm but don&#39;t see any gdbserver on the targe=
t with<br>
&gt; hob (poky 1.7.2) ?<br>
&gt;<br>
&gt; What am I missing ?<br>
<br>
</span>When I build my image with<br>
<br>
EXTRA_IMAGE_FEATURES +=3D &quot;tools-debug&quot;<br>
<br>
both gdb and gdbserver are installed in the target rootfs. Remote<br>
debugging worked out-of-the-box with QtCreator.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a114fb794b05446052225103d--
