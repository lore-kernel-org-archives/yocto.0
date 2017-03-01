Return-Path: <cswarth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CA3BE008D0; Wed,  1 Mar 2017 12:07:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cswarth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3C4EE00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 12:07:29 -0800 (PST)
Received: by mail-ua0-f174.google.com with SMTP id f54so52368704uaa.1
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 12:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=i6cV2/EJoj2xf1DP43sFd9pHqLOXkKOkP9VOjk+/ylw=;
	b=V8PP8jVN+gGKg0DozwaJ1zVNSEl7ekDezvTX0iA45AtWellUYGfgfpx1DjasMZh3e0
	S6opxsXOz/wXHYd29kWad5L4WMxGW56CAivIPrMquTwl50yrNCIN1iCNs1WV54Kco0Qf
	revqf70vZ+BYZ22wNiqcNJv8sC6RsgRXMofV7Wfmfr9l8V86dVjhpvFMYCx2duy8QN/b
	H3ID03419LkKpThgNd5+shjMsJ3310EfNgPQioxgjMlsInLwgHuLs1GCjlsrGXgFqXGm
	amlRlemjXTck7JUNYVUmqYuW+1ctoOkaigeIZPnbqSRTcNeMYrT6DmcGGmNhZWMj4TVS
	Iqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=i6cV2/EJoj2xf1DP43sFd9pHqLOXkKOkP9VOjk+/ylw=;
	b=ThAySn0fPSfN5BDjdvcwARuXrwciVVi7+FA6wQ8r4iIMDMMXka0ZcWgd/P7SfoTKgi
	XZmbHyPS58ZuekbK0fAMqUIDAK5fIaGBw4xvjJOhenRKNnvxvW9kdthnlyzmDEIzqhmD
	XgfRscU1a6ViyZQubUCCVpl9vzgxRjymRRqu+Y1VV8aFt9Tsd3hO6p34ttmVIigvWLn+
	rupn33JDjn948dPHByXSiQb0WwEfI9CvgH9+Er/6g8Yc7M2BhCGqCbXuVZgEbgSDdNoe
	UYXYzpkc+S1HhmWnPjsHbG7THkfBlvp12tMPEgW7JpDVaf9uklMB99+lOAYewBZrBdw3
	gC3Q==
X-Gm-Message-State: AMke39l+HvRdOJ3lKLaDXyoyHa7FhmKi9zmQ2usiFc7/QXMmqJsY3cF1c4nNjEKXnD9X0rmjWVdgbQAiJVIPCQ==
X-Received: by 10.159.54.132 with SMTP id p4mr5168663uap.67.1488398848512;
	Wed, 01 Mar 2017 12:07:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.105.208 with HTTP; Wed, 1 Mar 2017 12:06:48 -0800 (PST)
From: chris warth <cswarth@gmail.com>
Date: Wed, 1 Mar 2017 12:06:48 -0800
Message-ID: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: BBMASK not working for me?
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
X-List-Received-Date: Wed, 01 Mar 2017 20:07:32 -0000
Content-Type: multipart/alternative; boundary=94eb2c041082a65b850549b0dcf9

--94eb2c041082a65b850549b0dcf9
Content-Type: text/plain; charset=UTF-8

Can anyone suggest why my BBMASK is not working?
Maybe I'm not putting it into the right file?
Did I construct the regex incorrectly?

In my conf/bblayers.conf I have,

     BBMASK .= "qemu"

Then I wipe out the cache by deleting the "tmp/" directory.

Now I would expect
    bitbake -n -c fetch qemu
to give a 'Nothing PROVIDES' error.

That is not what happens.   Instead it still completes normally.

I am trying to ignore recipes like
     meta-freescale/recipes-devtools/qemu/qemu_qoriq.bb

Thanks in advance for any help.

- Chris

--94eb2c041082a65b850549b0dcf9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anyone suggest why my BBMASK is not working?<br>Maybe =
I&#39;m not putting it into the right file?<br>Did I construct the regex in=
correctly?<br><br><div>In my conf/bblayers.conf I have,<br><br>=C2=A0 =C2=
=A0 =C2=A0BBMASK .=3D &quot;qemu&quot;<br><br>Then I wipe out the cache by =
deleting the &quot;tmp/&quot; directory.<br><br>Now I would expect<br>=C2=
=A0 =C2=A0 bitbake -n -c fetch qemu<br>to give a &#39;Nothing PROVIDES&#39;=
 error.<br><br>That is not what happens. =C2=A0 Instead it still completes =
normally.<br><br>I am trying to ignore recipes like <br>=C2=A0 =C2=A0 =C2=
=A0meta-freescale/recipes-devtools/qemu/<a href=3D"http://qemu_qoriq.bb">qe=
mu_qoriq.bb</a><br></div><div><br></div><div>Thanks in advance for any help=
.</div><div><br></div><div>- Chris</div></div>

--94eb2c041082a65b850549b0dcf9--
