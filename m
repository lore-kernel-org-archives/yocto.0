Return-Path: <marco@ostini.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97BA4E00C28; Sun, 16 Jul 2017 23:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.182 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE5BE00C22
	for <yocto@yoctoproject.org>; Sun, 16 Jul 2017 23:57:43 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id b40so99121681qtb.2
	for <yocto@yoctoproject.org>; Sun, 16 Jul 2017 23:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ostini-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=dDVmLoJYTFiOkY54C2HKcg/IzQrX0ULafu5BhGUfE5o=;
	b=1/IFtHUfqWZgFtIyDlFQG1HpQb1WAqv9PS79rJGYMGWZFgbULJjhYSpMdYi5yniIOj
	3rPykSq0n5jmHLAQoy1jCtWUsFMjUivX2500/OmVG/3ZmvO8DkIu0EvyW+jbUL+H6xvl
	/xVDlMA6g5oUMmsWI6NJZats96SMeMUbmpOMGWWPVHcviJuRtAGILtfenVZFPobLoi+M
	YVLZc+lrL80K294BM+CzOu+ydbyCAyim98MBLq1mJw5PHuGWQFlnJszvF5dD3zbC7B5G
	sDgnYFhe3iqH0uNddk9YVVtZT4NIUHAB0DLGatpLJPgwxSoX4P9cXUBZgOU+SLvsg/kp
	DAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dDVmLoJYTFiOkY54C2HKcg/IzQrX0ULafu5BhGUfE5o=;
	b=XKzyNXkR1f8bl/aceRVbIAh5odGI0OER45vTPlRhsy9FSBec12Gjt7weaqvB+2hdPf
	8VnkPAehiR3CZvnVheBMo+g+40gS/MukPC08vCioxycub5MBIIVo1GpBsm/R1byCRikK
	iuTGSGQ0ROWjNPk7mC9muGBm2PEJ1itVccMrrOh171O0lS1Z1bmrz1ogSXBesV7UXUNV
	OWVEi3u1A7ZDmQJIpdreTZ6JRLfFORoP3wD5XyiZvp6VfEX5qEizDlXUI3G0hlQ/qK/d
	TmGPSsJT1W+yheKPjRyu19xizirkAVL2n2peql3Hx0Ve/9D7njOZRWUG1JPWB1qO42Qa
	6SEA==
X-Gm-Message-State: AIVw1134KzwHdHQ9Q4no/9b5gnH8RM2SHj0Ebj3KOM51XLjU3H5BU4a9
	jOwkXgvuySyvvM2Upn6DuqKRDsDpIF4pIaIPCg==
X-Received: by 10.200.48.66 with SMTP id g2mr1209114qte.119.1500274662974;
	Sun, 16 Jul 2017 23:57:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.75.130 with HTTP; Sun, 16 Jul 2017 23:57:42 -0700 (PDT)
X-Originating-IP: [2402:c00:1:26:82fa:5bff:fe40:b9bb]
From: Marco Ostini <marco@ostini.org>
Date: Mon, 17 Jul 2017 16:57:42 +1000
Message-ID: <CAGb_=SVC0Z_-ZKD2+VAt9HMG+ejYm0VcrECyn6cLRVtDFWYcfQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SELinux with Busybox on morty
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
X-List-Received-Date: Mon, 17 Jul 2017 06:57:46 -0000
Content-Type: multipart/alternative; boundary="001a11456a9c5a398505547dea66"

--001a11456a9c5a398505547dea66
Content-Type: text/plain; charset="UTF-8"

Hi All,

At the moment I'm attempting to prepare a VM of morty with SELinux running
well in enforcing mode. Once bedded down this will be running on an
embedded system.

We use Busybox to keep the environment slim.

As you may be aware the file contexts
of /etc/selinux/targeted/contexts/files/file_contexts don't include
appropriate paths (/sbin + /usr/lib/busybox/sbin/) and relative file
contexts for commands provided by Busybox. The /sbin files provided by
Busybox are symlinks to their counterparts in /usr/lib/busybox/sbin/.

I've attempted to use semanage to apply file contexts and look up login
contexts. Any time I use semanage I receive this message:

   Error: Failed to read //etc/selinux/targeted/policy/policy.30 policy file

In an attempt to mitigate this error I ran semodule --build and while it
did rebuild the policy file, it didn't mitigate the error message generated
by semanage. At the moment I'm applying temporary file contexts with chcon.

My questions are:

1. Is it possible to run Busybox (providing init, getty, syslog ...)
in SELinux enforcing. If so, where's the policy files?
2. Is there some documentation somewhere on reference builds of Morty
with SELinux enforcing ?

Kind regards,
Marco

--001a11456a9c5a398505547dea66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>At the moment I&#39;m attemptin=
g to prepare a VM of=C2=A0morty with SELinux running well in enforcing mode=
. Once bedded down this will be running on an embedded system.</div><div><b=
r></div><div>We use=C2=A0Busybox to keep the environment slim.</div><div><b=
r></div><div>As you may be aware the file contexts of=C2=A0/etc/selinux/tar=
geted/contexts/files/file_contexts don&#39;t include appropriate paths (/sb=
in + /usr/lib/busybox/sbin/) and relative file contexts for commands provid=
ed by=C2=A0Busybox. The /sbin files provided by Busybox are symlinks to the=
ir counterparts in /usr/lib/busybox/sbin/.</div><div><br></div><div>I&#39;v=
e attempted to use=C2=A0semanage to apply file contexts and look up login c=
ontexts. Any time I use=C2=A0semanage I receive this message:</div><div><br=
></div><div>=C2=A0 =C2=A0Error: Failed to read //etc/selinux/targeted/polic=
y/policy.30 policy file<br></div><div><br></div><div>In an attempt to mitig=
ate this error I ran semodule --build and while it did rebuild the policy f=
ile, it didn&#39;t mitigate the error message generated by=C2=A0semanage. A=
t the moment I&#39;m applying temporary file contexts with=C2=A0chcon.</div=
><div><br></div><div>My questions are:</div><div><br></div><div>1. Is it po=
ssible to run=C2=A0Busybox (providing init, getty, syslog ...) in=C2=A0SELi=
nux enforcing. If so, where&#39;s the policy files?</div><div>2. Is there s=
ome documentation somewhere on reference builds of Morty with=C2=A0SELinux =
enforcing ?</div><div><br></div><div>Kind regards,</div><div>Marco</div></d=
iv>

--001a11456a9c5a398505547dea66--
