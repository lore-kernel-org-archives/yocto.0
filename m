Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC5B8E00B9E; Thu, 15 Jun 2017 08:13:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B3AEE00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 08:13:51 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id l6so12756593iti.1
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 08:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ixv+7mQZPkWTi6/QPYEyT5EXRHXvttsywSMEt3VkRpY=;
	b=1dOpUJd8pG7GSOUYFHE0uZkDw9YFdfPsCoarvRv5C/d4t3e5vILh1OEx5IaEmgCaXM
	ftC1zZm1OQiVql06jmp0ax9cgVd83bQr01fOakVolppz98xWE6ncorafCNKbJPM+PQwA
	z9u+0zGiAMHAncSzMM0BNGVnTweoEAHIEP2J8NNLKqKXdE5k95vlF3Aw7SAmVSzp59Ur
	SvbvekCoY7E0y2YSqTCxbNBTZTE1sHhcTxQvotmjelrNhSxm1e31/foTmMZlhPMrd4PX
	ZUnNOtknPtnQlQmfCy5DrCMxgUZXhH63dSsckWgcpO9M66wMjG3Bn6AObb0pwwIJJuJN
	zUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ixv+7mQZPkWTi6/QPYEyT5EXRHXvttsywSMEt3VkRpY=;
	b=C+Hq16V5AiLjWL2Ir1NaKPoX9Oh0TXc/dfxnmkS9/BqFq5lzQYolsL3PKResStb36Z
	xXIayQYaeWy33OP1lFtTdMBkM08nZ/ejcr+5C3mf5FIldSYsMuRzWzg4t3wpFh2wT2xx
	0Sw1JTmwSMFmu5POk9gRt3XJ+DajJRksQbSBoQ+zu8VYz6fz5ccmZc+S0YEig6/+m0xG
	YzorUkyJGCiqG8W3ujX0TgQb18PFI3fz9+MaIxSwV304WqCo8VFbNQN7tRANacDoRtpy
	k4ydzWIIoPodXIRnVKVBySJ5nTs8DmmhyfpgpDf3rdAXOPmCYAcLB9O53fmZfq9tL4gi
	h6pQ==
X-Gm-Message-State: AKS2vOx3q0SieiYlJzfHhPl5L87rY5Ha0n7CsWs3DwLPyqpgA6FuZ/hv
	XLZpT8L2DbQgh1ilHh3eyUpeqyXkllEd
X-Received: by 10.36.17.198 with SMTP id 189mr5738669itf.17.1497539631157;
	Thu, 15 Jun 2017 08:13:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.130 with HTTP; Thu, 15 Jun 2017 08:13:20 -0700 (PDT)
In-Reply-To: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
References: <HE1PR0101MB16096D927B28B01A891DDBABC3C00@HE1PR0101MB1609.eurprd01.prod.exchangelabs.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 15 Jun 2017 18:13:20 +0300
Message-ID: <CAHiDW_F33q1aas_g+NgdqyHdphx=n4ACkvYCSf5t+bE-QOFOMA@mail.gmail.com>
To: Lm Chew <lm.chew@free2move.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to build gdb
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
X-List-Received-Date: Thu, 15 Jun 2017 15:13:53 -0000
Content-Type: multipart/alternative; boundary="001a11462c58c0a9940552011d24"

--001a11462c58c0a9940552011d24
Content-Type: text/plain; charset="UTF-8"

On 15 June 2017 at 10:19, Lm Chew <lm.chew@free2move.se> wrote:

> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined
> reference to `_rl_completion_prefix_display_length'
> | /usr/src/debug/gdb/7.12.1-r0/gdb-7.12.1/gdb/completer.c:1862: undefined
> reference to `rl_sort_completion_matches'
> | collect2: error: ld returned 1 exit status
>

Making an educated guess here: Because of the INCOMPATIBLE_LICENSE setting
you end up with an ancient version of readline that doesn't actually
provide the API that gdb needs. You may have to allow GPLv3+ for readline
as well.

Jussi

--001a11462c58c0a9940552011d24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
5 June 2017 at 10:19, Lm Chew <span dir=3D"ltr">&lt;<a href=3D"mailto:lm.ch=
ew@free2move.se" target=3D"_blank">lm.chew@free2move.se</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_2896006003598721310divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr=
">
<p><span style=3D"font-size:12pt">| /usr/src/debug/gdb/7.12.1-r0/</span><wb=
r style=3D"font-size:12pt"><span style=3D"font-size:12pt">gdb-7.12.1/gdb/co=
mpleter.c:</span><wbr style=3D"font-size:12pt"><span style=3D"font-size:12p=
t">1862: undefined reference to `_rl_completion_prefix_</span><wbr style=3D=
"font-size:12pt"><span style=3D"font-size:12pt">display_length&#39;</span><=
br></p>
<div>| /usr/src/debug/gdb/7.12.1-r0/<wbr>gdb-7.12.1/gdb/completer.c:<wbr>18=
62: undefined reference to `rl_sort_completion_matches&#39;</div>
<div>| collect2: error: ld returned 1 exit status</div></div></div></blockq=
uote><div><br></div><div>Making an educated guess here: Because of the INCO=
MPATIBLE_LICENSE setting you end up with an ancient version of readline tha=
t doesn&#39;t actually provide the API that gdb needs. You may have to allo=
w GPLv3+ for readline as well.</div><div><br></div><div>Jussi</div><div><br=
></div></div></div></div>

--001a11462c58c0a9940552011d24--
