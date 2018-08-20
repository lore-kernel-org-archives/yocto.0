Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2A17E00AB9; Mon, 20 Aug 2018 06:41:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E63BE00848
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:41:56 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id e19-v6so16160050qtp.8
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=v94i+6sar9B3IJn38OOckWEWz9gmcqERbeaLYyVmphM=;
	b=RKsFpzFXYKfcwJLwibP9OqIprhVFWTn5elX0iNq6aB0ZCWXhkKNgGTLWxp37ZmXooU
	7gsD1u6Nj6GtUmbT8KTsYhpa8OkJ60n6wSQpY+FKzWW/WFdnd29sFW355mmtKGrdLKGj
	jTQEjiHvpJ9BpCOP8o69bAmEJwZBE/76jeUoJ4nnGjorfNbLxGQWXXoIU9YMnr6wgajt
	GXDgQpnTvhBXmnLGp9YYWrKyM4VtmLD/VvGa9/9wIDW2xZbWS3TYbgRRazYAuYqLVNw4
	iEpm1nwfl4YAJMc1q5GFYhqbpSl7U6yUi2a6pJ/earmOQzjBvsT+z8umVNn59LikfI7r
	Dtrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=v94i+6sar9B3IJn38OOckWEWz9gmcqERbeaLYyVmphM=;
	b=mB3YiC2S8d9BjQqZxpCEisqMg6SFHecQ1g47tXmqMCI3qDaRaCMbkOhCJ5nTkahFoC
	Qo/ZQb7LmVNySC82c4kMPCLEze6iJb84Pm6G8TJ1429LDxRJgR+nffdJH6vMNMBFz8nj
	Nhcm+5gJY5EGLY/oKwcjQ6jeJ2Djpt5X9trWaTL7Zk8UIVCvH+rvATDcMcZT5IEvCPDY
	u3ahzD/wb9JEoHz7AyoqBLVFJNJdFgkifct7My/Ujbdy2zqWc0uGHBGXcn/+6fDaHlTo
	GK/p36aBfePvDp9DXAEZnvM8jYiuiWQ4fEBRp2E8QUWbWXvF/hklcbPXuvKAVQaqjpqH
	rzTw==
X-Gm-Message-State: AOUpUlFRU470jK6eSLze5bsh0e7oWIgXY1MG1yNE8+ugIvfH4U5vt0Oy
	T13neNUPhDKg7M02Z+ILGpJDk3W9vw/HSw5LsX4=
X-Google-Smtp-Source: AA+uWPxNjvsETvTHQbScidzzamcmIVBrciVmqKukE41armamBz75pytCa55ghk4oC1GihW1rMGnOYgK0a3lkyvU+M4g=
X-Received: by 2002:ac8:2a76:: with SMTP id
	l51-v6mr45350401qtl.342.1534772516010; 
	Mon, 20 Aug 2018 06:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
	<CANNYZj85_58EtQGhgkfe2N-Nk18jwO0iz87rxcAGfhzBYZsWZA@mail.gmail.com>
In-Reply-To: <CANNYZj85_58EtQGhgkfe2N-Nk18jwO0iz87rxcAGfhzBYZsWZA@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
Date: Mon, 20 Aug 2018 08:41:44 -0500
Message-ID: <CA+JN8xNvDmhorZ48dKciOXWwKrZ3_QCayobFt3kpvVensfX-Bw@mail.gmail.com>
To: alex.kanavin@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: coreutils postinstall warning
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
X-List-Received-Date: Mon, 20 Aug 2018 13:41:57 -0000
Content-Type: multipart/alternative; boundary="000000000000a0bd940573de128b"

--000000000000a0bd940573de128b
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 20, 2018 at 8:31 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> 2018-08-20 15:16 GMT+02:00 Seth Bollinger <seth.boll@gmail.com>:
> > We've been seeing the following warning for a while now.  Is this
> expected?
> >
> > WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally failing postinstall
> > scriptlets of ['coreutils'] to defer them to first boot is deprecated.
> > Please place them into pkg_postinst_ontarget_${PN} ().
> >
> > From what I can see, it's being caused by update-alternatives.  Is there
> a
> > workaround for this?
>
> You need to investigate further, specifically why the postinst
> scriptlet is failing. Usually log.do_rootfs should give a hint.
>

This seems to be the issue.  I should mention this is sumo coreutils.

update-alternatives: renaming link link from /bin/link to /usr/bin/link
mv: cannot stat '/bin/link': No such file or directory
warning: %post(coreutils-8.29-r0.7.aarch64) scriptlet failed, exit status 1

Seth

--000000000000a0bd940573de128b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Aug 20=
, 2018 at 8:31 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmai=
l.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">2018-08-20 15:16 GMT+02:00 Seth Bollinger &lt;=
<a href=3D"mailto:seth.boll@gmail.com" target=3D"_blank">seth.boll@gmail.co=
m</a>&gt;:<br>
&gt; We&#39;ve been seeing the following warning for a while now.=C2=A0 Is =
this expected?<br>
&gt;<br>
&gt; WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally failing postinsta=
ll<br>
&gt; scriptlets of [&#39;coreutils&#39;] to defer them to first boot is dep=
recated.<br>
&gt; Please place them into pkg_postinst_ontarget_${PN} ().<br>
&gt;<br>
&gt; From what I can see, it&#39;s being caused by update-alternatives.=C2=
=A0 Is there a<br>
&gt; workaround for this?<br>
<br>
You need to investigate further, specifically why the postinst<br>
scriptlet is failing. Usually log.do_rootfs should give a hint.<br></blockq=
uote><div><br></div><div>This seems to be the issue.=C2=A0 I should mention=
 this is sumo coreutils.<br></div><div><br></div><div>update-alternatives: =
renaming link link from /bin/link to /usr/bin/link<br>mv: cannot stat &#39;=
/bin/link&#39;: No such file or directory<br>warning: %post(coreutils-8.29-=
r0.7.aarch64) scriptlet failed, exit status 1<br></div></div><div class=3D"=
gmail_quote"><br></div><div class=3D"gmail_quote">Seth<br></div></div>

--000000000000a0bd940573de128b--
