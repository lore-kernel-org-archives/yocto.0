Return-Path: <matous.pokorny@datavision.cz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23366E00DED; Thu, 26 Sep 2019 05:02:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FROM_EXCESS_BASE64, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0C88E00782
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 05:02:20 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id v38so1716296edm.7
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 05:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=datavision-cz.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=eBZoRYdmFdUw8NZXfvzC0aVuNqbag/Fk6vRzAjypPWM=;
	b=BmsQnKQj5+ChGqeZYsapvKL0383kfEadG198RTx0lyM/L2DvrFEDwUxRAQMjluCbSI
	qswi3jnCMAc+MtrYtA9jgXMeSaNdpdHon+hz09RNXWqK2FK+Go7BxDoWrS6IMrJ1xBnr
	/CRjAZbLsEmWTSzfY0rNBQUeOHMwuINTsi3EqLelfsVOgVoKA51GVJ3/4nEnn2PFHwJk
	HNH3l6sC5stPfr5nKDHNWn9eCVKWJWpCgx+jkM3SxYLUwga22xlhhIPg/LXrN+y6Z6pb
	H2iU/sKZei7RW/PGNjN82O29Ja1f5MjLVrQLQfSx5MEiCiex4P7Q12fxfq7372feoEqn
	GRQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=eBZoRYdmFdUw8NZXfvzC0aVuNqbag/Fk6vRzAjypPWM=;
	b=H2A+D37jjUlBK4GwzB+2nZ2tZbMAMt7O2qk2Ov8M8xt9GwEm4OALQns3h0YLRvA+3p
	JaXBXvUqwUp0k6LdzWqzz/P/ZvIMFBzp1ieO+AHfocrcsDINHXNwaQ9B1LYqQRIu+8HW
	5cw8uqlVDQ32OgmQjBzdGIPDOyehPcUNNi5kkyNQsm1UiyMvYvuJ02B1/rPnsKRNvK5j
	/TQ7Bti3VcKRrTp+cAKsfSApB2ELTmDxpDzq0ZKzoQ5Oglickqdw6gT5MzuPSfYiUlnx
	1MhpmYut+Pu58xpTM9vw8C2ED8sYxHNSpsqlYFsMQ3UajhbYlyhoz/dcDoQM00Ub46yv
	7hPQ==
X-Gm-Message-State: APjAAAWXuqucM8/n+3mFmswfXO2zUVQdZgfuH3lLyYbM6Wq/gpRtsIN7
	AF0o4+VvWLZk6ZKm3+zLzd7nxwXq5lPqtz8mqn48cWLKPnTUyg==
X-Google-Smtp-Source: APXvYqyfTJFqvTAH6jtrXW7cDGzZee+pQ0PY+cBWQob812XG1elUnG4c1QM7lnXK0RNIkvHcDCCeuG3chXYEt3/obhM=
X-Received: by 2002:a50:c306:: with SMTP id a6mr3237933edb.108.1569499339234; 
	Thu, 26 Sep 2019 05:02:19 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWF0b3XFoSBQb2tvcm7DvQ==?= <matous.pokorny@datavision.cz>
Date: Thu, 26 Sep 2019 14:02:07 +0200
Message-ID: <CAD0UrV10JR=vFUKfZCxetCQCx2y=A9gv6YeqtBEMjHYqXLso0w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 30 Sep 2019 02:59:37 -0700
Subject: Where to get kconfig-frontends package?
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
X-List-Received-Date: Thu, 26 Sep 2019 12:02:22 -0000
Content-Type: multipart/alternative; boundary="0000000000009733a80593738a75"

--0000000000009733a80593738a75
Content-Type: text/plain; charset="UTF-8"

Hello!

I come from NuttX RTOS project (nuttx.org), and we use Kconfig tool for
configuration. The toolchain build script gets kconfig-frontends source
code from the same server as Yocto (http://ymorin.is-a-geek.org). The
server is down for approx. one week and it caused the fail during the
toolchain building. Have you met this problem as well? We would like to
switch to another more reliable repository, but I read, the server's owner
is one of the Linux core developers. So the server is a kind of primary
source. Do you have a suggestion on how to solve this problem? I would like
to ask you for help because you know the Linux ecosystem and are in the
same situation as we are.

Thank you.

*Matous Pokorny*
Embedded System Developer

*DataVision s.r.o.*
Ukrajinska 2a
101 00 Praha 10
Czech Republic

GSM: (+420) 723 280 471
matous.pokorny@datavision.cz

--0000000000009733a80593738a75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello!</div><div><br></div><div>I come from NuttX RTO=
S project (<a href=3D"http://nuttx.org">nuttx.org</a>), and we use Kconfig =
tool for configuration. The toolchain build script gets kconfig-frontends s=
ource code from the same server as Yocto (<span style=3D"color:rgb(34,34,34=
);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;display:inline;float:non=
e"><span></span></span><a href=3D"http://ymorin.is-a-geek.org/" style=3D"co=
lor:rgb(17,85,204);font-family:Arial,Helvetica,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255)">http://ymorin.is-a-geek.org</a>). The server is down for approx. o=
ne week and it caused the fail during the toolchain building. Have you met =
this problem as well? We would like to switch to another more reliable repo=
sitory, but I read, the server&#39;s owner is one of the Linux core develop=
ers. So the server is a kind of primary source. Do you have a suggestion on=
 how to solve this problem? I would like to ask you for help because you kn=
ow the Linux ecosystem and are in the same situation as we are.</div><div><=
br></div><div>Thank you.</div><div><br></div><div><div><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<b>Matous Pokorny</b><div>Embedded System Developer</div><div><br></div><di=
v><b>DataVision s.r.o.</b></div><div>Ukrajinska 2a</div><div>101 00 Praha 1=
0</div><div>Czech Republic</div><div><br></div><div>GSM: (+420) 723 280 471=
</div><div><a href=3D"mailto:matous.pokorny@datavision.cz">matous.pokorny@d=
atavision.cz</a></div></div></div></div></div></div>

--0000000000009733a80593738a75--
