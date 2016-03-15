Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24DBDE007D2; Tue, 15 Mar 2016 16:05:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE17CE006AE
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 16:05:30 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id m184so43153942iof.1
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 16:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=vN4tYdn3RP4LWwIYKwmPC6cmmJ60YrfLO63LqRAjk4U=;
	b=b8suq/mPvY6yWSUkMZAbxzdGbffymefDtNtibZXBkfyVEuRJ4KosFlTTTTazPJWeR1
	y7qTHfi50IA1jU5hgjewpoDYCJCBDdbSRtQR4BSX9u5EOuHJ0l7k47Srq89Sr1PFp6p3
	lombWsMqFdm2bXhTviPuZPxQRLakZD0QKaZp35EFVbGW25XJK5+sf039EXZfPnvmcDMl
	oXXoFtRTmFcylEaQvVnQoxq+1MXWKKDtHEO22NinkIGAbuKJ/IHJMxK7m3XoVJy1sT9y
	dxWXmlmIxmticAlxT7Sj/nk5OlouG2Yi3i8uxd5aTirfo4BHwDoIEpCkftJP2ojBN9YC
	QURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=vN4tYdn3RP4LWwIYKwmPC6cmmJ60YrfLO63LqRAjk4U=;
	b=hj5KmQ9AbaPRTtlVvsXjD6liIXb+OIPjWNOcaXDOPCkr607mmYvnP/TShdBSuRbhua
	3EE1H7UM7FPb4Tn7AYwdBS65bRAxUSHnRUOOpZWl1vQ5xhTuXzT78s1MDaL7kJYIOzvt
	3FyiY458w36dPoXrN6rDalz5B3DKRFXVXEGaAdKd3oJedRKEPikDqkhtMriSxBNkQ5eQ
	IYNv5yCDzj7FhPWWYb/x34Gc1ZRnvMF9IAOBCMFCkwxM1TwgFSjyuQd2+uat//pmg5VN
	kNTUO/oeOzxF0puOpOI1vmpAe4GkentrL7Prj3FZtdDYRUZdBVu7QxLx0kUBPTxwXY0u
	ok2A==
X-Gm-Message-State: AD7BkJJbsp87vZGeTlbxyZqJ7sHEz+jNUCFGPJbQf1Y12tAyKeIjRviYRbRa2O0DaHmzCAfRBB1RXEHv5doGkQ==
X-Received: by 10.107.12.207 with SMTP id 76mr1357670iom.70.1458083129858;
	Tue, 15 Mar 2016 16:05:29 -0700 (PDT)
MIME-Version: 1.0
References: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
In-Reply-To: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Tue, 15 Mar 2016 23:05:20 +0000
Message-ID: <CABcZAN=aQEjFyUB8dz3p0Qmq=F+_0u5M51Xg+-P9dmp1mWegdw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Master or master-next?
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
X-List-Received-Date: Tue, 15 Mar 2016 23:05:34 -0000
Content-Type: multipart/alternative; boundary=001a113eca0602462c052e1e6fa1

--001a113eca0602462c052e1e6fa1
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 15, 2016 at 3:56 PM Chris Tapp <opensource@keylevel.com> wrote:

> Should I use master or master-next to track 2.1 release progress?
>

master-next is rebased. I wouldn't recommend using it unless you need to
test something specific which is on that branch and isn't yet on master,
otherwise I'd wait for changes to hit master. master is volatile enough at
times ;)

--001a113eca0602462c052e1e6fa1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 15=
, 2016 at 3:56 PM Chris Tapp &lt;<a href=3D"mailto:opensource@keylevel.com"=
>opensource@keylevel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Should I use master or master-next to track 2.1 release progress?<br><=
/blockquote><div><br></div><div>master-next is rebased. I wouldn&#39;t reco=
mmend using it unless you need to test something specific which is on that =
branch and isn&#39;t yet on master, otherwise I&#39;d wait for changes to h=
it master. master is volatile enough at times ;)=C2=A0</div></div></div>

--001a113eca0602462c052e1e6fa1--
