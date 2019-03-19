Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 996B1E00CE5; Tue, 19 Mar 2019 12:40:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D116E00AB0
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 12:40:18 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id z17so23593073qtn.4
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 12:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=/X7yyj+1PUuVAjE+3te9rzckvIiutvD9vVP4dazGFdY=;
	b=RmQfcgk0pe3Bftq+sVvWDXamEZzhOqWUT2CBSIPSMlbGWmGHTwjM7sulPd863qlKdq
	DASYTZRFcEdg1QlRyyirnWRnjlq05dpkaRiNbMgPI44bv5MdAQ28WAaon8aj31cgVpv+
	ukWnj3Ng5D0Nc+wr+Hx5MKKn2Rbcv+4CFdSpUO4jjvItgMG8GhaCyyAq8aLsQTGRL8QQ
	JfFYjtOmpm6yt605Jp5hevtXebJw+p/MoMiOTHrw04b8jmbfpn8X6fqk6f+yX3iaMypA
	1RKXtY26OU29B+66ekBmCiHBLPq4JHk8FThp0a3prsKJvVzUufkJ1P6gzUyXYvqovSnY
	tmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/X7yyj+1PUuVAjE+3te9rzckvIiutvD9vVP4dazGFdY=;
	b=PS/35vPpafWGQtB40BPTXMs1045Bd3FVDTBQMr1MTNMgcUYGT/NkevSRYothAxu0Cl
	dEgCuVxXIaqQH5bFHFlo1LPPBGW8kEgjftPfgVmd+7OyG++t0vlE+1QPmzChinLXSEPH
	MfK9Qvzdz9LTBjqYCcpFjXG3I41T5R4dZlJzHWk8rjvli5PAm9uAEGJAi9q3lsKF6RR+
	MgJOU1/cMhi3MGHQZzyi6Z/aBSg0gdd1YqsFJ0St9u2xXAC6xonC5McJTlUq4TVWKZ/m
	hzrDuMuqGrVVnZg5xSTVOVdTKm+9WKXbP4HsRfxvIIPxpF/iE+RDgx5V0M3/8UNoM3Sl
	oO2Q==
X-Gm-Message-State: APjAAAVa/AQ20dFcQQn5MEExlJe73XC6y6IacSq7Ay7vSU57dzhSXTsP
	MF1MLLRZ3fNal2n8E6X/lSALh5RJTq0XReg92yGntDqhnHo=
X-Google-Smtp-Source: APXvYqz6Mk6gNGEUQoiADqG4cGoa2OKHxlZpza/yBLcQTCSKJi6hjxq7dvMT1cuvZQtqL9sZbZqZyMeH1S39MR5zoWg=
X-Received: by 2002:ac8:c89:: with SMTP id n9mr343120qti.386.1553024418326;
	Tue, 19 Mar 2019 12:40:18 -0700 (PDT)
MIME-Version: 1.0
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Tue, 19 Mar 2019 12:40:07 -0700
Message-ID: <CAHSUxjTSKhW=ynBNJkBemn+-HDGUNKkcS_54ZoH+EWgdNXKO=g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Wic can't find mkfs.btrfs
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
X-List-Received-Date: Tue, 19 Mar 2019 19:40:20 -0000
Content-Type: multipart/alternative; boundary="000000000000c83d5c058477ac7d"

--000000000000c83d5c058477ac7d
Content-Type: text/plain; charset="UTF-8"

Been slogging through this one for a bit, would appreciate any helpful
suggestions.

I'm using mender.io's layer which includes a class that builds a full SD
card image including multiple partitions. I'm trying to turn one of those
partitions into a btrfs partition and my current error is "A native program
mkfs.btrfs... was not found". Wic's source code comments suggest that it's
looking for native utils in STAGING_DIR_NATIVE, which bitbake -e says is in
work/<target>/<imgname>/<imgversion>/recipe-sysroot, and when I checked, it
does indeed include mkfs.ext4/vfat but not btrfs. I haven't yet found the
mechanism that copies these files into the location (thought occurs to me
to check the image's logs itself) so I don't know what mechanism is failing
to copy the mkfs.btrfs but is working for mkfs.ext*. Any pointers?

-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000c83d5c058477ac7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Been slogging through this one for a bit, would appreciate=
 any helpful suggestions.<div><br></div><div>I&#39;m using <a href=3D"http:=
//mender.io">mender.io</a>&#39;s layer which includes a class that builds a=
 full SD card image including multiple partitions. I&#39;m trying to turn o=
ne of those partitions into a btrfs partition and my current error is &quot=
;A native program mkfs.btrfs... was not found&quot;. Wic&#39;s source code =
comments suggest that it&#39;s looking for native utils in STAGING_DIR_NATI=
VE, which bitbake -e says is in work/&lt;target&gt;/&lt;imgname&gt;/&lt;img=
version&gt;/recipe-sysroot, and when I checked, it does indeed include mkfs=
.ext4/vfat but not btrfs. I haven&#39;t yet found the mechanism that copies=
 these files into the location (thought occurs to me to check the image&#39=
;s logs itself) so I don&#39;t know what mechanism is failing to copy the m=
kfs.btrfs but is working for mkfs.ext*. Any pointers?=C2=A0</div><div><div>=
<br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linux Engi=
neer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_blank">t=
froehlich@archsys.io</a></div><div>215-218-8955</div></div></div></div></di=
v>

--000000000000c83d5c058477ac7d--
