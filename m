Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 132D4E0098A; Sun,  5 Mar 2017 10:03:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (satya.2891[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C088DE0097C
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 10:03:39 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id k202so64040033lfe.1
	for <yocto@yoctoproject.org>; Sun, 05 Mar 2017 10:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=edYfKWiAXVhKXH26GjGaTAAACILtAR6BQID6AB+0hUE=;
	b=C5E3/BYJowM0Q51HY0PfHgERX/JGW8xzrcwsPeNKBCI+XXIMy3pPU3IaiFevVwKDcA
	V4U1Fkp9/aNDj6dLGcCZOrwNP8Be5FhkYdZHOZ4VZJ/NNpuCv7hSy1o3E3oZcIx2I/kv
	bRa0muIZrmOVloVPDtncc2WMSFbCMOhQArLymlRzy+X/PcZRFrFxiEJCLXXYvkEvZqkZ
	egVXKaqEfCJWsB4Gvh28Bt9yLt2UncalmmQaaa1NXIDtu8jxN09LOX19aFZ7SKzsva1H
	DlC4NeojpBoyn5D6uneCvH6NE7relOs1bdiBSwtDJiNREN05GWLkndMGbof2pB5ct96U
	YjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=edYfKWiAXVhKXH26GjGaTAAACILtAR6BQID6AB+0hUE=;
	b=bAv6MIHZ05ZxLDmX5csf6KPDUglcstHpGh+QdQUxILwdbbW9Y9keVCioNT1tIMc5cx
	zadMmh536dtpfIDesBgcK2kiAKJSnhZhozJ3qXwaaaEgVGYEb792waJPQkr086KgNVP7
	OKDAXla9wjC4PDrVsR5VrMQu5lFYUAsMjWxj+7GA2TW+bxgD80IOgcVwUoJJkw0BNwHB
	3mq0N6POnhFgCq+brM2CqV6TlXKDYVZVt5EGyFlRY2xZYG8EKGiuoFI3R0IYAewwpLh4
	CVxxF9VlqR//8mFZWXhQ8nO1isI1SQI99CXsT6g3biSwNMF1y79lnYh7oJUqx3/oZVih
	pFeQ==
X-Gm-Message-State: AMke39li7Y7UgL0tJ9cGnP3cPzBgzvSpX9jLSSNKmkILbGx9RINPpOXLI1ZayS2DWCLysmUjIAUBM8MHXN/UmQ==
X-Received: by 10.25.233.21 with SMTP id g21mr3998716lfh.130.1488737018213;
	Sun, 05 Mar 2017 10:03:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Sun, 5 Mar 2017 10:03:37 -0800 (PST)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Sun, 5 Mar 2017 23:33:37 +0530
Message-ID: <CAF1M0z4aNmPDFzKnf0Xo7X1edvDNgYrrzwhYmS9Pg-L7XWWJCA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Linux-kernel selection
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
X-List-Received-Date: Sun, 05 Mar 2017 18:03:43 -0000
Content-Type: multipart/alternative; boundary=001a113bdfc6227bcd0549ff99cf

--001a113bdfc6227bcd0549ff99cf
Content-Type: text/plain; charset=UTF-8

Hi,

How to select the preferred kernel in yocto,

I did in local.conf as of now,

PREFERRED_PROVIDER_virtual/kernel = "linux-ti-staging"
PREFERRED_VERSION_linux-ti-staging = "3.14\%"

I am using krogoth with meta-ti layer


bitbake core-image-minimal
Parsing recipes: 100%
|##########################################################################|
Time: 00:00:26
Parsing of 1032 .bb files complete (0 cached, 1032 parsed). 1470 targets,
71 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 3.14\% of linux-ti-staging not available (for item
virtual/kernel)
NOTE: versions of linux-ti-staging available: 3.14.49+gitAUTOINC+e9cd4cc819
4.1.18+gitAUTOINC+6b41ca0b94 4.4.41+gitAUTOINC+7c580a51af
NOTE: preferred version 3.14\% of linux-ti-staging not available (for item
kernel-base)
NOTE: versions of linux-ti-staging available: 3.14.49+gitAUTOINC+e9cd4cc819
4.1.18+gitAUTOINC+6b41ca0b94 4.4.41+gitAUTOINC+7c580a51af
NOTE: preferred version 3.14\% of linux-ti-staging not available (for item
kernel-image)
NOTE: versions of linux-ti-staging available: 3.14.49+gitAUTOINC+e9cd4cc819
4.1.18+gitAUTOINC+6b41ca0b94 4.4.41+gitAUTOINC+7c580a51af
NOTE: preferred version 3.14\% of linux-ti-staging not available (for item
kernel-devicetree)
NOTE: versions of linux-ti-staging available: 3.14.49+gitAUTOINC+e9cd4cc819
4.1.18+gitAUTOINC+6b41ca0b94 4.4.41+gitAUTOINC+7c580a51af


But I am getting the error like this, ho wto rectify.

--001a113bdfc6227bcd0549ff99cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>How to select the preferred kernel =
in yocto,</div><div><br></div><div>I did in local.conf as of now,=C2=A0</di=
v><div><br></div><div><div>PREFERRED_PROVIDER_virtual/kernel =3D &quot;linu=
x-ti-staging&quot;</div><div>PREFERRED_VERSION_linux-ti-staging =3D &quot;3=
.14\%&quot;</div><div><br></div><div>I am using krogoth with meta-ti layer<=
/div><div><br></div><div><br></div><div><div>bitbake core-image-minimal</di=
v><div>Parsing recipes: 100% |#############################################=
#############################| Time: 00:00:26</div><div>Parsing of 1032 .bb=
 files complete (0 cached, 1032 parsed). 1470 targets, 71 skipped, 0 masked=
, 0 errors.</div><div>NOTE: Resolving any missing task queue dependencies</=
div><div>NOTE: preferred version 3.14\% of linux-ti-staging not available (=
for item virtual/kernel)</div><div>NOTE: versions of linux-ti-staging avail=
able: 3.14.49+gitAUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41ca0b94 4.4.41+git=
AUTOINC+7c580a51af</div><div>NOTE: preferred version 3.14\% of linux-ti-sta=
ging not available (for item kernel-base)</div><div>NOTE: versions of linux=
-ti-staging available: 3.14.49+gitAUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41=
ca0b94 4.4.41+gitAUTOINC+7c580a51af</div><div>NOTE: preferred version 3.14\=
% of linux-ti-staging not available (for item kernel-image)</div><div>NOTE:=
 versions of linux-ti-staging available: 3.14.49+gitAUTOINC+e9cd4cc819 4.1.=
18+gitAUTOINC+6b41ca0b94 4.4.41+gitAUTOINC+7c580a51af</div><div>NOTE: prefe=
rred version 3.14\% of linux-ti-staging not available (for item kernel-devi=
cetree)</div><div>NOTE: versions of linux-ti-staging available: 3.14.49+git=
AUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41ca0b94 4.4.41+gitAUTOINC+7c580a51a=
f</div></div><div><br></div><div><br></div><div>But I am getting the error =
like this, ho wto rectify.</div></div></div>

--001a113bdfc6227bcd0549ff99cf--
