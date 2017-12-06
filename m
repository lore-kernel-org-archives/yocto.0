Return-Path: <marekslomiany@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D091E00D69; Wed,  6 Dec 2017 05:44:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marekslomiany[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA173E00D67
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 05:44:08 -0800 (PST)
Received: by mail-pg0-f52.google.com with SMTP id k134so2207865pga.3
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 05:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yaZ09KQ2/j/5sqn270xI721V0iWzONveH+DrCaFks6E=;
	b=QXWa/BYCV70+RKs+clM+Lp76GVPMruNG5KtfTRTHxQd/yn3HqoFZ4OPpqjHmXchq6i
	jvHDqEd0O27r+Su9iGsAtz6ek+dIV2kinTTQ89P5YBZcLQGCo9vuzJb+AWKyEy0efq9j
	oXIZ85jIKSwZsbA41SoGN4Lbt1VJmTibiuXn2Iv/Ruc2tMcbACAZmWTKrVvLxY2ehcci
	G45KgCwoEBsyLjY9QUXTqrp2XhCYQ5+Mjv+QRFzzioFyFU2Z4H82XyxjCxqDZW+5o3vb
	pJ96B12oqc4M4AqjqNFP3jjUqjjVzpXqnv4m4vN5TGaZNiZW8Hqc+7AQrr2hzkO4C+JC
	Dufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yaZ09KQ2/j/5sqn270xI721V0iWzONveH+DrCaFks6E=;
	b=JQ2/f79ujd8Hwo5W9Qx0v6kHpQ94SDaDqhgLw0kcVnZ7dIN5VZE/m945S9nbno3Rfe
	JOUTN3KTQrxnu3KnKcXT2QSf9ccPRXqLyLG4TVoJjm3XcGotrRPEcZf5LpN+Ic3HsmEa
	844CMqGXJpv4wCypzhq1LfC90l32XDcDJ08prlCUV/bjclU4REM6M1JB/5EXMHAUeYFP
	LN4MU/u+D1IHFTiCBq7Z38of5T0ikkRZe5QCN/LhM3X85I/BPRO5Cwov7yz0cfIbZdPe
	qVxWqRpFbuFOGRoWs1Gtx6azjL9NCeKVR4grlhGyiyGoFFbK9EJWB6g9DtrBY5RnwlYO
	fTyA==
X-Gm-Message-State: AJaThX6rIbAV6OLOk02Prf4DFZd+1REThbsY3Lo1e+kFxgYMjuG5zCQw
	DGuoB+6brqIqhCCDIUfVK1mqhJHxWjTsaSRzzKg=
X-Google-Smtp-Source: AGs4zMbMsAbd9vDsbTCHEK4Qxk5YNOOqo+JXZwqHV8ghR/4C263hY5w5xTNH12AwrrkZ9lT+VIXJRCYHbXaTDAKrmdo=
X-Received: by 10.99.168.5 with SMTP id o5mr21340539pgf.427.1512567847574;
	Wed, 06 Dec 2017 05:44:07 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Wed, 06 Dec 2017 13:43:56 +0000
Message-ID: <CAJCDnYaC1ouTS5g_disH5NkPMf_dy_K55G2nX-sqTxgrP+GPLA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to append to image, not machine?
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
X-List-Received-Date: Wed, 06 Dec 2017 13:44:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c1bec2640e2a5055fac25b8"

--94eb2c1bec2640e2a5055fac25b8
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm building system that has 2 cpu's which communicate via CSLIP over
serial. On both ends it looks similar but the IP's has to be swapped for
point-to-point communication. For example one will have:
address 10.10.10.1
pointopoint 10.10.10.2

and the other one:
address 10.10.10.2
pointopoint 10.10.10.1

to replace /etc/network/interfaces file with my own, I have created
a init-ifupdown_%.bbappend file which contains:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
file://interfaces \
"

I could make two interfaces files in separate directories and add to
SRC_URI_append_machine1 for each one, but I'm using same machine for both
cpu's, but different images (one with qt, one without). Is there a similar
method but binding append with image not a machine?

Regards,
Marek Slomiany

--94eb2c1bec2640e2a5055fac25b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m building system that has 2 =
cpu&#39;s which communicate via CSLIP over serial. On both ends it looks si=
milar but the IP&#39;s has to be swapped for point-to-point communication. =
For example one will have:=C2=A0</div><div>address 10.10.10.1</div><div>poi=
ntopoint 10.10.10.2</div><div><br></div><div>and the other one:</div><div>a=
ddress 10.10.10.2</div><div>pointopoint 10.10.10.1</div><div><br></div><div=
>to replace /etc/network/interfaces file with my own, I have created a=C2=
=A0init-ifupdown_%.bbappend file which contains:</div><div><div><br></div><=
div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;</div><div><b=
r></div><div>SRC_URI_append =3D &quot;\</div><div><span style=3D"white-spac=
e:pre">	</span>file://interfaces \</div><div>&quot;</div></div><div><br></d=
iv><div>I could make two interfaces files in separate directories and add t=
o SRC_URI_append_machine1 for each one, but I&#39;m using same machine for =
both cpu&#39;s, but different images (one with qt, one without). Is there a=
 similar method but binding append with image not a machine?</div><div><br>=
</div><div>Regards,</div><div>Marek Slomiany</div></div>

--94eb2c1bec2640e2a5055fac25b8--
