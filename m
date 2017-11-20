Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9979E00AF2; Mon, 20 Nov 2017 11:56:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4329E009CB
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 11:56:07 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id d123so904058iog.7
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 11:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cgdInbv0DdTqVW7pPMjE2OJvmY5ZwjXdEkc1YB+BWJk=;
	b=VYCKIQQ9RTtB2KBNOI/Ki/5vzvFw+LwlT2mZ7gsPZ+dTcsqKtveSbewIPdAldv8RmP
	7QhYaZcj2b1yTmXFyACrpR5VsS6arYf1xMNToCVYqfkP/c/ZZwquMDQTZKnaValWl2fR
	J4B46Rn5fVrqXxd6pXcq/wvv6I4FNi/HZUO/xNF+0BhcHOoVcjEWNTVUGDUcByRiXr3a
	zc7QdbuOIGeanQ7/QgNDzvX6dtuKmpzF0rifKsHnMQpDqceRPeDmRxdTrrYmN0Ia4IbF
	Hp2GVOq4e+Hnz44lAzfKC3gRwCgOaiuQKGrSbi0tdvfJwJkDUSCLxxN4wgd79TPGm8Gx
	Di1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cgdInbv0DdTqVW7pPMjE2OJvmY5ZwjXdEkc1YB+BWJk=;
	b=OUL5/W+VowAOHJk4Nfds2Z406t6HCjCiHUXGAmOfEfBhGJtUye8vWYctTFx1+hqZeP
	l2TRatVSG9C3gZnGqrZ6O7e7XluxRBcMu2J0pa47SvaisizmVvuNrLDqYp0UlJMVas5l
	3CTZJQRpa7hCmjEDZvq1Li55XTei3gVroJzVsgjtbu7pyfuy+LNB706xgV4Y2zJl71qi
	H2v7mpEUpNVzux6ZNZlY94aaBI4KKlwB68MjYsJVQL1lPqvQf1EEyOjNkCov6yB6Z1Ct
	ns4TS22QNJFDFxbTQfPA9nSyij7dvgkesHvK2hQvhrFvvfX91oPhyTSNs23VzWnLjEYs
	5+TQ==
X-Gm-Message-State: AJaThX6vvA1D2qzQNRb09SHOsaBtelMzXa7a1GMNZdYeUwgfno9qT91U
	Hlu5mWCfN0T6ymnyU4NzE/GTOvGOWU10frqj7hmcnw==
X-Google-Smtp-Source: AGs4zMYw+Tfc1kEi+XAYHfZn5nvQ5D54e/fH+cQV8sXCNVG3GLcM4qxLFQoNPoydqV9MfrL+wY5MlVD8FBGyy0glXDY=
X-Received: by 10.107.178.145 with SMTP id b139mr15183638iof.52.1511207766818; 
	Mon, 20 Nov 2017 11:56:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Mon, 20 Nov 2017 11:55:46 -0800 (PST)
In-Reply-To: <f7be7a33-611c-9bba-ccc7-6bcfda53e969@gmail.com>
References: <f7be7a33-611c-9bba-ccc7-6bcfda53e969@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Nov 2017 19:55:46 +0000
Message-ID: <CAJTo0LZduEQxQSTQCmd36qbuqAAc3AWL5XdxVk_qPJQT3yABfA@mail.gmail.com>
To: Petr Cvek <petrcvekcz@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [libfakekey] Missing new version releases in yocto repository
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
X-List-Received-Date: Mon, 20 Nov 2017 19:56:08 -0000
Content-Type: multipart/alternative; boundary="001a114ca1621fb04d055e6f7ab9"

--001a114ca1621fb04d055e6f7ab9
Content-Type: text/plain; charset="UTF-8"

There are tags in git so I'd recommend building from the 0.3 tag instead of
a tarball.  I'll make a note to try and roll a release this week.

Ross

On 19 November 2017 at 22:11, Petr Cvek <petrcvekcz@gmail.com> wrote:

> Hello,
>
> I was playing with libfakekey and I've found the source repository at
>
> http://downloads.yoctoproject.org/releases/matchbox/libfakekey/
>
> is a very old one.
>
> Is this repository the official source or is it obsolete? I'm using two
> linux distributions (buildroot and Slackware) and bugs on v0.1 make it
> impossible to use this version ("<" and ">" key presses etc.).
>
> If this repository is obsolete and not for active use I can gladly resend
> the info to maintainers of distribution I'm using.
>
> best regards,
> Petr Cvek
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114ca1621fb04d055e6f7ab9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There are tags in git so I&#39;d recommend building from t=
he 0.3 tag instead of a tarball.=C2=A0 I&#39;ll make a note to try and roll=
 a release this week.<div><br></div><div>Ross</div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On 19 November 2017 at 22:11, Petr =
Cvek <span dir=3D"ltr">&lt;<a href=3D"mailto:petrcvekcz@gmail.com" target=
=3D"_blank">petrcvekcz@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hello,<br>
<br>
I was playing with libfakekey and I&#39;ve found the source repository at<b=
r>
<br>
<a href=3D"http://downloads.yoctoproject.org/releases/matchbox/libfakekey/"=
 rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproject.<wbr>or=
g/releases/matchbox/libfakek<wbr>ey/</a><br>
<br>
is a very old one.<br>
<br>
Is this repository the official source or is it obsolete? I&#39;m using two=
 linux distributions (buildroot and Slackware) and bugs on v0.1 make it imp=
ossible to use this version (&quot;&lt;&quot; and &quot;&gt;&quot; key pres=
ses etc.).<br>
<br>
If this repository is obsolete and not for active use I can gladly resend t=
he info to maintainers of distribution I&#39;m using.<br>
<br>
best regards,<br>
Petr Cvek<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114ca1621fb04d055e6f7ab9--
