Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDD6DE00C29; Thu, 11 Feb 2016 09:58:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BDF6E00C1F
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 09:57:59 -0800 (PST)
Received: by mail-lb0-f171.google.com with SMTP id tk3so19885162lbb.3
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 09:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=CsjucmSkod8t2bWbdVu52Kb+I6QHPF9FIVF+HPaijLM=;
	b=EZnNeC0EidewdYbiGCNG7nuWVBSXAmUVOJfZ9nhACT+Dlcgqj/TCGiXFtkyLB6Iea5
	HGM17QMCwymLO98NX5ypnLyMHxqAZO2WT2AJcweo1lHLAwbce9hq7/Tyicq9/ftND7Qy
	U0AdUa+Kz0Qi7hrPtVrodzZ5AC+WnJVQutZTwYpnKxvLa/755uOY1kgv+YCsyDt4rW9f
	rn8fBVAVtaxj9v8lB3i7fo7fH/0Pdnd1g1p2nn7giguB02C1zTaqAzylBWFGiNZltsYa
	73MlBMR8CAq1+OJkkf+H1JZw8PxLSxEHqKnrdm0nnGajxTup3Gh56vnAdM7HFMj2HxE+
	V2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=CsjucmSkod8t2bWbdVu52Kb+I6QHPF9FIVF+HPaijLM=;
	b=C5VYYrQJDM02N3ultER/ON07WhxJSSyP1v1BRk//UXbKZNYfr7XWFKFo9kw/dOVsTZ
	Y8FqYcLTyrndkb/bVimEecmzrR1l8htBt/STzJx6l8QCST3w1Ass7c2mOluLrIuUvAQ5
	Xw0tZu29YDleFg/phZZvChWE94mqbiJug6xitp83PbR1vp2SkhUncSmah+svQ4ulocqS
	4qt9c9mvb+8kK+YW8hr2f2TxpkSgcjmISTTe+Q3nERjPBEiGCiso2+Dgmp5upeWf+Y/+
	edy1WpW9arP6hAJkVi81WVYGD43rI0XsphCUPx2r5k1KCFQqJFMhdHopPoqlyjFELIKS
	hZVA==
X-Gm-Message-State: AG10YOSJ/+iD8NZppzSa8em4NL7/njcrzIejmqqBwgn8U4BoZAJWJ9QadDKUKx+LN7zIhVzzSHPmAhTw6HxzXw==
MIME-Version: 1.0
X-Received: by 10.112.12.98 with SMTP id x2mr19169269lbb.76.1455213479063;
	Thu, 11 Feb 2016 09:57:59 -0800 (PST)
Received: by 10.25.137.85 with HTTP; Thu, 11 Feb 2016 09:57:59 -0800 (PST)
Date: Thu, 11 Feb 2016 17:57:59 +0000
Message-ID: <CABatt_xxvB+FTJfVaXWj4i=FdYYLNr0C3ALuayoXBV7pUnKJ3Q@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: ERROR: busybox-udhcpd not found in the base feeds
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
X-List-Received-Date: Thu, 11 Feb 2016 17:58:01 -0000
Content-Type: multipart/alternative; boundary=001a11c39ea87df8ab052b824a98

--001a11c39ea87df8ab052b824a98
Content-Type: text/plain; charset=UTF-8

Hi,

I've just moved over to using systemd on a project but am seeing the error
listed in the subject.
I added the following to local.conf as there is no distribution config file.

VIRTUAL-RUNTIME_init_manager = "systemd"
DISTRO_FEATURES_append = " systemd"
# Prevent the SysVinit distribution feature from being automatically enabled
# Breaks busybox-udhcpd for some reason.
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

My understanding is that the last line will stop init scripts being
installed if the recipe has systemd support.  Adding
VIRTUAL-RUNTIME_initscripts = "" would completely disable init scripts I
think so I didn't put this in.  So the above should use systemd where
appropriate otherwise use sysV init scripts.

I then blew away all sstate, cache and tmp directories and rebuilt and get
the error.  If I comment out the last line the error goes away but I get
all the sys V init scripts.  I checked the recipe and it inherits systemd
and update-rc.d and I think the problem may be that busybox builds syslog
with a systemd service but all the remaining components use init scripts as
far as I can see, including udhcpd.  I looked in packages-split and
busybox-udhcpd is empty.

Any help appreciated,
Martin.

--001a11c39ea87df8ab052b824a98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;ve just moved over t=
o using systemd on a project but am seeing the error listed in the subject.=
<br></div>I added the following to local.conf as there is no distribution c=
onfig file.<br><br>VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>=
DISTRO_FEATURES_append =3D &quot; systemd&quot;<br># Prevent the SysVinit d=
istribution feature from being automatically enabled<br># Breaks busybox-ud=
hcpd for some reason.<br>DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysv=
init&quot;<br><br></div><div>My understanding is that the last line will st=
op init scripts being installed if the recipe has systemd support.=C2=A0 Ad=
ding VIRTUAL-RUNTIME_initscripts =3D &quot;&quot; would completely disable =
init scripts I think so I didn&#39;t put this in.=C2=A0 So the above should=
 use systemd where appropriate otherwise use sysV init scripts. <br></div><=
div><br></div><div>I then blew away all sstate, cache and tmp directories a=
nd rebuilt and get the error.=C2=A0 If I comment out the last line the erro=
r goes away but I get all the sys V init scripts.=C2=A0 I checked the recip=
e and it inherits systemd and update-rc.d and I think the problem may be th=
at busybox builds syslog with a systemd service but all the remaining compo=
nents use init scripts as far as I can see, including udhcpd.=C2=A0 I looke=
d in packages-split and busybox-udhcpd is empty.<br><br></div><div>Any help=
 appreciated,<br></div><div>Martin.=C2=A0 <br></div></div>

--001a11c39ea87df8ab052b824a98--
