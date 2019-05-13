Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8685DE00D5D; Mon, 13 May 2019 03:42:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 106A2E00D3F;
	Mon, 13 May 2019 03:42:01 -0700 (PDT)
Received: by mail-it1-f195.google.com with SMTP id u16so13567950itc.0;
	Mon, 13 May 2019 03:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=myPLjpV27D5w2Ya0hJjCkcDq0t//sHSBckxn+A8ckIg=;
	b=FwuQ/D8nv+sPNc44C2xk+KfmJjU2WVUhgMUZ1WNKYGVmR6q4xleZSgJ/MWuAPi8ydp
	67HpmM7CqhSafLA8oFJlFh4Ta0SmzBQJi7MwiX77SXlpIiFKOpmvc6Ey5m4DPOYAvW6P
	FZhHXgJNictttWZ2VZy3tBb9dc7nbHXPojfHPKWZLMFXRguWrutHto75LWpfGuJZpk1t
	Ot2d70HNw6NVOkPYDcbSs7VhcMdaWb57eoaAMnusDl8s0XmR5glUzgCGMXkHolxaoOst
	Q1EQPxWcj5M8mVYKGbEM5rXUlpIpktUVMqrdC04pANhSOkkTQ6QGnW9eJ+hN76MHfkXQ
	bzDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=myPLjpV27D5w2Ya0hJjCkcDq0t//sHSBckxn+A8ckIg=;
	b=mZ8gEpE13KuAB9yN7jq6ekgk71yzPxeOC3VBok68OkqqXLmNg3mu3i0uvntRkHrmlY
	vfnRGqcF0Pe1NHvjRgwEpU1tod2g1/ZM+7uMoHHbbXq4dIE96fwiVQCQnkEewGNuZ4iX
	+AC7PYXhBYUPgRNqw8vRGXFgNgFrGONQNqqySV2+Ou3ZRvd/tabZ7Px/8kyfg+PEX43A
	hPYDdrTPb7hEraYNL55e9fIknUdn0L7WgfBtRlkMPTdQdL1L1/6oP7U406YUDpUwH1vY
	mjqh5ZNOv3yXTkt7Tz6ggKAXFp2dxxcNFrcdQOqqdYQPEVJIn5xmUm7RKmXSM3uc+O84
	LPZQ==
X-Gm-Message-State: APjAAAWr4R24oAR7oaq8jbN7bZjGJuQbqJ/9JheQydhHTsLx8ptRdyA1
	AIyBjAf9LU0LQ+IRSxtuSoQmIQPXDTFO2Uz7d6Q=
X-Google-Smtp-Source: APXvYqyVgwrrwfXTzaEYEIMPjVsSklHznFeSC74/gzRa7dIT/78WtoC64Finx6C+rba7HzQ8x/sBwxA2RG/gzTd1vns=
X-Received: by 2002:a24:fd09:: with SMTP id m9mr3031145ith.113.1557744121537; 
	Mon, 13 May 2019 03:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAXjp=+hqaKk6aGY-pDPBYFUi_zNTAcUFA1Ss170=Q9=Jw@mail.gmail.com>
	<9e31624b7f354039d01318436a4f8de968cea40c.camel@linuxfoundation.org>
In-Reply-To: <9e31624b7f354039d01318436a4f8de968cea40c.camel@linuxfoundation.org>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 13 May 2019 16:11:49 +0530
Message-ID: <CAOe0dAU5FF=OhFd+be6pj0_uJWk2tj8P+xush2JQ+fHTREDi3w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto-bsp@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [Yocto-bsp] Error of " fs.inotify.max_user_watches " while using bitbake [ Yocto-2.6.1 + Qemux86]
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
X-List-Received-Date: Mon, 13 May 2019 10:42:02 -0000
Content-Type: multipart/alternative; boundary="00000000000003eae20588c291eb"

--00000000000003eae20588c291eb
Content-Type: text/plain; charset="UTF-8"

Yes , i checked the value & increased it 64K ( got pointer from
https://hub.docker.com/r/wolverine2k/yocto-build-env/)

It got the same error again today .
Currently i have increased the value from 64K to 512K.
But raised the query to check if i am doing any thing wrong here or missing
any caution.

Like if at 512K if we get the error again , not sure if increasing the
value is the only value.

Thanks
Ashish


On Mon, May 13, 2019 at 3:47 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2019-05-13 at 15:38 +0530, AshishKumar Mishra wrote:
> > Can team members please let me know the solution & what is causing
> > the below mentioned error ?
> > ( I am having around 128GB of disk space still left , hence don't
> > think that space is the issue here )
> >
> > ~/Documents/linux-foundation-projects/yocto/poky/build (slef-bsp) :
> bitbake -vn virtual/kernel
> > ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
> > ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
> > ERROR: To modify max_user_watches: sysctl -n -w
> fs.inotify.max_user_watches=<value>.
> > ERROR: Root privilege is required to modify max_user_watches.
> > ERROR: Command execution failed: Traceback (most recent call last):
>
> Did you try what it says above and check the max_user_watches value?
>
> Also, did you check you had enough free inodes on the filesystem?
>
> Cheers,
>
> Richard
>
>

--00000000000003eae20588c291eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes , i checked the value &amp; increased=
 it 64K ( got pointer from <a href=3D"https://hub.docker.com/r/wolverine2k/=
yocto-build-env/">https://hub.docker.com/r/wolverine2k/yocto-build-env/</a>=
)</div><div><br></div><div>It got the same error again today . <br></div><d=
iv>Currently i have increased the value from 64K to 512K.</div><div>But rai=
sed the query to check if i am doing any thing wrong here or missing any ca=
ution. <br></div><div><br></div><div>Like if at 512K if we get the error ag=
ain , not sure if increasing the value is the only value.</div><div><br></d=
iv><div>Thanks</div><div>Ashish<br></div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 13, 201=
9 at 3:47 PM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfound=
ation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On Mon, 2019-05-13 at 15:38 +0=
530, AshishKumar Mishra wrote:<br>
&gt; Can team members please let me know the solution &amp; what is causing=
<br>
&gt; the below mentioned error ?<br>
&gt; ( I am having around 128GB of disk space still left , hence don&#39;t<=
br>
&gt; think that space is the issue here )<br>
&gt; <br>
&gt; ~/Documents/linux-foundation-projects/yocto/poky/build (slef-bsp) : bi=
tbake -vn virtual/kernel<br>
&gt; ERROR: No space left on device or exceeds fs.inotify.max_user_watches?=
<br>
&gt; ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watche=
s.<br>
&gt; ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_wa=
tches=3D&lt;value&gt;.<br>
&gt; ERROR: Root privilege is required to modify max_user_watches.<br>
&gt; ERROR: Command execution failed: Traceback (most recent call last):<br=
>
<br>
Did you try what it says above and check the max_user_watches value?<br>
<br>
Also, did you check you had enough free inodes on the filesystem?<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--00000000000003eae20588c291eb--
