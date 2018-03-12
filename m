Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E33ABE00D91; Mon, 12 Mar 2018 03:00:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE572E00843
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:00:34 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id d71so10725900iog.4
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 03:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mRWwlgmGHViPeVQ4is/bOtToQvl9T/vQtPJEH1tX7OI=;
	b=UQ9X3m+ZKi06kYz0BwQsvEolapZMLF5jQqfXuZbtHwsVFtzbZDqe6cegO9P1YZl3Np
	rUQTEcObLFYNCdAqQPKKD8Zk+g2EHmVypIUj0wVGCvBYTbwQB+leLcHP2c22iOGCl5xK
	liyYz0LRDJkdDZ0x/VFG95WC19l60HpfuuH9y+Z8jQKxn88Ea3q0s0/LrhIAH003+icf
	RCJvSfPCdWaoUQpFvp53vprXp8HdM+BDkPO6pKstBEwLr6d40f00UKFm688U/YQaXQF9
	MWB9YrWVJSLn/xxKxd7BYYMeuYNuocd6OuvLaHYm3mI24M5FF1CtLgENtYOwj/45pcdX
	Wrhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mRWwlgmGHViPeVQ4is/bOtToQvl9T/vQtPJEH1tX7OI=;
	b=JG/MrIkJ8h9hLx1DhtBiExHmgXTQZrGrCYBZ08yvJCPhPHYuja6aP0/ygEMzrnRuah
	Enl4p9o/GCanBR9Wu+iV3g/xHaVdluSsLzfriV8uSI6+s4VsrAnNzJ/GIztzmehWEpJb
	6bM3iwzV4Nreufdwpmz0EhpF9EaoJKr+W9BRbMXc1F2fxSWbuctiSBoNrjNaRYJABNmp
	ImdKGi4II8ZmrRuW5uDBhWcnIaTm7fvVLPGRG0L8sCJ/0PWwF4oJoKSLCRo5KarJTy5e
	qktweAQC5sZi5qwjCZuLjr6aG8RL9FVBvCM10ISnkQe+C2in04a21mxTFDNzdH0vRexv
	cZiw==
X-Gm-Message-State: AElRT7Gr5sIFrcIzyw1mhRA5HYx4lyiFg4wp9z2UOM3XCmzrdPgjRIeX
	0s+Zn+H9YAy9UVSWO/vfdrGJHbg9/iKb4XrV9QHJyw==
X-Google-Smtp-Source: AG47ELtTrXkeeJOqA1DsG1ih8lTVq3nkchv8diqG/kQzwmi3ZdBRE82IIPMlB0dWTmD4RcPXZnDnCl3cUquYDM+2wdw=
X-Received: by 10.107.183.76 with SMTP id h73mr8173625iof.201.1520848833805;
	Mon, 12 Mar 2018 03:00:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 12 Mar 2018 03:00:13 -0700 (PDT)
In-Reply-To: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
References: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 10:00:13 +0000
Message-ID: <CAJTo0LaVH0xrRhEeKfb17pNzmFNnXjRxUnnPW=x7PAqBvhPd+Q@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: O_RDONLY ... missed bits/fcntl.h not as expected
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
X-List-Received-Date: Mon, 12 Mar 2018 10:00:36 -0000
Content-Type: multipart/alternative; boundary="94eb2c0b9e3a7f18d605673436fb"

--94eb2c0b9e3a7f18d605673436fb
Content-Type: text/plain; charset="UTF-8"

Can you explain what the actual problem is?

For me the include you'd use in programs <fcntl.h> includes <bits/fcntl.h>
which includes <bits/fcntl-linux.h> which defines O_RDONLY.

Ross


On 12 March 2018 at 07:32, Arno Steffens <star@gmx.li> wrote:

> I looked for
> #define O_RDONLY             00
> #define O_WRONLY             01
> #define O_RDWR               02
> and found it in : bits/fcntl-linux.h. According to this file it should not
> be included, but bits/fcntl.h.
> And it requires something like that:
>
>   A minimal <bits/fcntl.h> contains just:
>    struct flock {...}
>    #ifdef __USE_LARGEFILE64
>    struct flock64 {...}
>    #endif
>    #include <bits/fcntl-linux.h>
>
>
>
> But this doesn't finally include the fcntl-linux.h as expected. Am I doing
> something wrong?
> Regards
> Arno
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0b9e3a7f18d605673436fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you explain what the actual problem is?<div><br></div>=
<div>For me the include you&#39;d use in programs &lt;fcntl.h&gt; includes =
&lt;bits/fcntl.h&gt; which includes &lt;bits/fcntl-linux.h&gt; which define=
s O_RDONLY.</div><div><br></div><div>Ross</div><div><br></div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On 12 March 2018 at 07:3=
2, Arno Steffens <span dir=3D"ltr">&lt;<a href=3D"mailto:star@gmx.li" targe=
t=3D"_blank">star@gmx.li</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">I looked for<br>
#define O_RDONLY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A000<br>
#define O_WRONLY=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A001<br>
#define O_RDWR=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A002<br>
and found it in : bits/fcntl-linux.h. According to this file it should not =
be included, but bits/fcntl.h.<br>
And it requires something like that:<br>
<br>
=C2=A0 A minimal &lt;bits/fcntl.h&gt; contains just:<br>
=C2=A0 =C2=A0struct flock {...}<br>
=C2=A0 =C2=A0#ifdef __USE_LARGEFILE64<br>
=C2=A0 =C2=A0struct flock64 {...}<br>
=C2=A0 =C2=A0#endif<br>
=C2=A0 =C2=A0#include &lt;bits/fcntl-linux.h&gt;<br>
<br>
<br>
<br>
But this doesn&#39;t finally include the fcntl-linux.h as expected. Am I do=
ing something wrong?<br>
Regards<br>
<span class=3D"HOEnZb"><font color=3D"#888888">Arno<br>
<br>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c0b9e3a7f18d605673436fb--
