Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3352E00C2B; Thu,  5 Jul 2018 07:49:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF510E00C2B
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 07:49:43 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id f18-v6so7295886qtp.10
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QYCPwBq3emUCnu3KFQgzL5QnxSgEzcPXS9nX2TehZEs=;
	b=VxmYXUdTzl5iK8Hc1QAMaOCHRvnBKsJvNj7bdNXfLs8iSKo7eMCGRJ6MCw9YrBtcpf
	+JPRGb+eqxqUyOkVs2hZmVY7X7eZl7boWOvuUFxrbWtpGOMzhNk23sY9ItzmOr+Xtyoq
	qsHsLctaZPDx2ErmuaviXt5HB/ST5DGzAOft2IKjPvy83t08Ct/MK331EPXjZIKOOGZi
	LQhBnICUnFad2iE7gKCOHUzlgR9nj0B8IjaSlPuCujS1Qt61MDaHigLV7u6q2Jxa25Ih
	Ee2IBBtGgMgA/VCxiz6YxX4KCOh0AX/DrDeiR8z7A4txZwQeWNOejxl0y9vEl4K+ZkDa
	qb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QYCPwBq3emUCnu3KFQgzL5QnxSgEzcPXS9nX2TehZEs=;
	b=WZSfPrgUJn62El9pVlkwllQoO3x2kbUj3VefZsiX5TyR70pua2BlWLtTJwnKc71QSm
	rYDkMTmZZLFkP1GsLBTo47m59dEvMH9Y9x/TBNVeQFzktO1Ex7H5zkNIbu88UHJuMHUe
	IaCw2w69Ia1Hx9WVUHll3uqnlsZNQf2yzB2+inex46xZeWWsyz+YwJmwjwNlDCQB/ZfL
	gAtelctxb2oie2DVka8iR7KdUdWZ68u3+CBSaXwNhRwcuLzAodnieesOhcWTQ8Xa7ROh
	zaeEV9y7pdiYrE3PGUgcQN21zhZe7wVMsbjwuyaZYw1v7UFuXaPKK04NoVcR84qjitMH
	YW6g==
X-Gm-Message-State: APt69E0Q1dtp/Z0dzp77XIYuWTgiaVE25lha6AEwiFr0scr98UX8a/ub
	SKLKV0sarR2HoMIEKxzQfiHjINtchuUU9Dv9pO+tFg==
X-Google-Smtp-Source: AAOMgpdS/3s7g89RA8VjV/JRbVv1Wrn7z1N+dVXJx/t3QqYFLNLyOyEhUGthSyYJ3xA+hdrGduUMeB4rgZXG+oLwpOo=
X-Received: by 2002:ac8:367:: with SMTP id
	w39-v6mr5660455qtg.334.1530802182782; 
	Thu, 05 Jul 2018 07:49:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Thu, 5 Jul 2018 07:49:42 -0700 (PDT)
In-Reply-To: <TY2PR01MB2025185F752EC4EB810AE88192760@TY2PR01MB2025.jpnprd01.prod.outlook.com>
References: <CANmTPBY2kMm7w7ONKozpS6qGYOS9VDDKfLR=dSj7jkFhHgu5mA@mail.gmail.com>
	<CANmTPBZjJv1Ddrh6hnTJRpR9hKcCzpT2SJAfdvZAF5OY+-PuRg@mail.gmail.com>
	<8f754e6f-243a-7d3a-95d8-a54bd973d0af@gmail.com>
	<CANmTPBYvf2etEnYgjUtZMUSvUy4uEU_oynRxQ2cHzT8eQVuQ3g@mail.gmail.com>
	<TY2PR01MB2025185F752EC4EB810AE88192760@TY2PR01MB2025.jpnprd01.prod.outlook.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 5 Jul 2018 10:49:42 -0400
Message-ID: <CANmTPBau+GOp=L6J0bwFKDxzOc6FELAm_jyuT=ui0DsFDg+2rg@mail.gmail.com>
To: Stephen Lawrence <stephen.lawrence@renesas.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: porting gRPC into Yocto
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
X-List-Received-Date: Thu, 05 Jul 2018 14:49:46 -0000
Content-Type: multipart/alternative; boundary="000000000000539415057041a8da"

--000000000000539415057041a8da
Content-Type: text/plain; charset="UTF-8"

Hi,

After reading several documents, there seems to be several methods to
add/remove packages from a build.
I just want to make sure I am using the correct method that falls into
YOCTO architecture.

In local.conf file, I can use:

IMAGE_INSTALL_remove = " dropbear"
IMAGE_INSTALL_append = " openssh net-snmp "

To remove dropbear and add openssh and net-snmp into image.

Is this the right way of doing it?  Do I use 'DISTRO_FEATURES_remove'  or
simply ' IMAGE_INSTALL_remove' ?

Does Yocto fetch *.bb files and source files just by adding these commands
in local.conf or I need more steps to do?

Thanks,
S.













On Thu, Jun 21, 2018 at 3:05 PM, Stephen Lawrence <
stephen.lawrence@renesas.com> wrote:

> >From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@
> yoctoproject.org] On Behalf Of Simon Chamlian
> >Sent: 21 June 2018 19:50
> >To: Rudolf J Streif <rudolf.streif@gmail.com>
> >Cc: yocto@yoctoproject.org
> >Subject: Re: [yocto] porting gRPC into Yocto
> >
> >Thank you everyone for such a prompt response.
> >
> >What do I do with the http://cgit.openembedded.org/
> meta-openembedded/tree/meta-networking/recipes-devtools/
> grpc/grpc_1.8.5.bb?h=master recipe file (sorry >for my ignorance, it has
> been 1 day I am using Yocto)?
> >
> >Simon
>
> Hi Simon,
>
> The Yocto Project online documentation set [1] contains some useful
> development manuals that guide you through some
> common use cases for using Yocto. Such as adding a package to an existing
> image.
>
> There have also been some good books written on embedded development with
> Yocto. A more recent one is
> "Embedded Linux Systems with the Yocto Project" by Rudolf J. Streif from
> Prentice Hall. You'll easily get a return on the
> investment.
>
> [1] https://www.yoctoproject.org/docs/
>
> Regards
>
> Steve
>

--000000000000539415057041a8da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>After reading several do=
cuments, there seems to be several methods to add/remove packages from a bu=
ild.</div><div>I just want to make sure I am using the correct method that =
falls into YOCTO architecture.</div><div><br></div><div>In local.conf file,=
 I can use:</div><div><br></div><div>IMAGE_INSTALL_remove =3D &quot; dropbe=
ar&quot;<br>IMAGE_INSTALL_append =3D &quot; openssh net-snmp &quot;</div><d=
iv><br></div><div>To remove dropbear and add openssh and net-snmp into imag=
e.</div><div><br></div><div>Is this the right way of doing it?=C2=A0 Do I u=
se &#39;DISTRO_FEATURES_remove&#39;=C2=A0 or simply &#39;
IMAGE_INSTALL_remove&#39; ?<br></div><div><br></div><div>Does Yocto fetch *=
.bb files and source files just by adding these commands in local.conf or I=
 need more steps to do?</div><div><br></div><div>Thanks,</div><div>S.</div>=
<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div>=
<div><br></div><div><br></div><div><br></div><div><br></div><div><br></div>=
<div><br></div><div><br></div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Thu, Jun 21, 2018 at 3:05 PM, Stephen Lawrence <span =
dir=3D"ltr">&lt;<a href=3D"mailto:stephen.lawrence@renesas.com" target=3D"_=
blank">stephen.lawrence@renesas.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">&gt;From: <a href=3D"mailto:yocto-bounces@yoctoproject.org=
">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounce=
s@yoctoproject.org">yocto-bounces@<wbr>yoctoproject.org</a>] On Behalf Of S=
imon Chamlian<br>
&gt;Sent: 21 June 2018 19:50<br>
&gt;To: Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@gmail.com">rudo=
lf.streif@gmail.com</a>&gt;<br>
&gt;Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br>
&gt;Subject: Re: [yocto] porting gRPC into Yocto<br>
<span class=3D"">&gt;<br>
&gt;Thank you everyone for such a prompt response.<br>
&gt;<br>
</span>&gt;What do I do with the <a href=3D"http://cgit.openembedded.org/me=
ta-openembedded/tree/meta-networking/recipes-devtools/grpc/grpc_1.8.5.bb?h=
=3Dmaster" rel=3D"noreferrer" target=3D"_blank">http://cgit.openembedded.or=
g/<wbr>meta-openembedded/tree/meta-<wbr>networking/recipes-devtools/<wbr>gr=
pc/grpc_1.8.5.bb?h=3Dmaster</a> recipe file (sorry &gt;for my ignorance, it=
 has been 1 day I am using Yocto)?<br>
&gt;<br>
&gt;Simon<br>
<br>
Hi Simon,<br>
<br>
The Yocto Project online documentation set [1] contains some useful develop=
ment manuals that guide you through some<br>
common use cases for using Yocto. Such as adding a package to an existing i=
mage.<br>
<br>
There have also been some good books written on embedded development with Y=
octo. A more recent one is <br>
&quot;Embedded Linux Systems with the Yocto Project&quot; by Rudolf J. Stre=
if from Prentice Hall. You&#39;ll easily get a return on the<br>
investment.<br>
<br>
[1] <a href=3D"https://www.yoctoproject.org/docs/" rel=3D"noreferrer" targe=
t=3D"_blank">https://www.yoctoproject.org/<wbr>docs/</a><br>
<br>
Regards<br>
<br>
Steve<br>
</blockquote></div><br></div>

--000000000000539415057041a8da--
