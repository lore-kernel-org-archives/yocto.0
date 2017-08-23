Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E72CE00C97; Wed, 23 Aug 2017 09:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2E2BE00C45
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 09:38:18 -0700 (PDT)
Received: by mail-wr0-f180.google.com with SMTP id f8so2102301wrf.3
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 09:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=jXIzAoCD+CPFDVQUpbkQ7uPv5r/lGml/0Oh7TTfXS68=;
	b=dS6DQ/+AhpWzqDmx7xtvGFQN4x2IQXmRj3YEKfKHaihmpd6+8JpOUYDX+u53r5X40s
	akAnycv3C0mudR/gco2W4/KTyuLhYDuqOhuImGFBDVWxOySvWYpcVB+mwt45XxxZS2A5
	Gmil8K5sh+iEs3K6voskpkiZv7yOfAnyeHYOABuSmsaOYx4Pw56snhUrEsoBhY+Wd93e
	0R+kXLABOeIqCRY21nKYqtj35d/KakdU+V8l1f2F2FWG5h8kYv2vfDySg5sXOMjGhYeF
	Dsm3rz0fKPb5JqM40TMBc1J4Jyzlnq1jVd8/R2/15sbMwMFsDcwnNbX7O2SrNJ13l/rH
	mQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jXIzAoCD+CPFDVQUpbkQ7uPv5r/lGml/0Oh7TTfXS68=;
	b=Q2MzcqTM53XzLxk0s3FWf302JhXxNQwtn4gsvZFy/oYNYBDitSp//IxCYmiNZ+mjGD
	mJk5FjYmk0miKoNOmZd0A8pY5K3wWYh/Qq6AqavwISQwzqqTzBDXj3dJ1VkVHpeVAYvE
	amGfm6kH3FodgzpFbdg/+LevAM3tuVq2pzUmpqWAsO1wCPyme9OI+vlj9DqzGAAga7nZ
	l6DRB5QNSoCr4YknprY14IsXA/0DCshNQ6vnJaEXar/0jwvKoCl9K/J0rwBAKcRw5FW5
	SuCsBNbWfSF8TNm1il14KI4QzWeJLJXbUe5qKOeqLQzBm7U0FQ1fQ8xCXJQljtMU8SiE
	vhXA==
X-Gm-Message-State: AHYfb5jx0Jal/PLQseOcPwt4GL5nvSa8UFxs8D4w5+AbMbhn+ay4HdRv
	MXcsxdPBww/4ob52JLXVvM81yvKNcvrwXzit8g==
X-Received: by 10.223.166.101 with SMTP id k92mr2346465wrc.283.1503506297141; 
	Wed, 23 Aug 2017 09:38:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.45.195 with HTTP; Wed, 23 Aug 2017 09:37:36 -0700 (PDT)
X-Originating-IP: [82.22.166.118]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 23 Aug 2017 17:37:36 +0100
Message-ID: <CAK18fxG23fiaTMk86hQUYZVbRZApZMtM3StvuM5QefmCEHdw-g@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: kernel-yocto class requires BSP definition now
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
X-List-Received-Date: Wed, 23 Aug 2017 16:38:19 -0000
Content-Type: multipart/alternative; boundary="f403045cf6eac2557405576e560b"

--f403045cf6eac2557405576e560b
Content-Type: text/plain; charset="UTF-8"

Hello all,

Since...

commit b6f78c7a27d6d3acae63cf1fdb7b56c11c919830
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Sun Aug 20 22:58:21 2017 -0400

    kernel-yocto: ensure that only valid BSPs are built

    There was a bug in the search routines responsible for locating
    BSP definitions which returned a valid match if only the ktype
    matched.

    This meant that someone looking for "qemux86foo" (which is an
    invalid definition) would potentially end up building "qemuarm"
    and be none the wiser (until it didn't boot).

    With this fix to the tools search routine, and improved return
    code testing, we will now stop the build and report and error to
    the user.

    [YOCTO: #11878]

    (From OE-Core rev: 44aea7b87307795fe4e089c51d45afccaa2f6525)

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


... the build fails for cases where there is no scc definition used.
meta-raspberrypi was using this for configuration fragments feature but
without defining any scc or using any feature branches etc. This got broken
now since finding BSP definition files is a requirement in the class.

--
Andrei Gherzan

--f403045cf6eac2557405576e560b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>Since...</div><di=
v><br></div><div><div>commit b6f78c7a27d6d3acae63cf1fdb7b56c11c919830</div>=
<div>Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.=
com">bruce.ashfield@windriver.com</a>&gt;</div><div>Date: =C2=A0 Sun Aug 20=
 22:58:21 2017 -0400</div><div><br></div><div>=C2=A0 =C2=A0 kernel-yocto: e=
nsure that only valid BSPs are built</div><div>=C2=A0 =C2=A0=C2=A0</div><di=
v>=C2=A0 =C2=A0 There was a bug in the search routines responsible for loca=
ting</div><div>=C2=A0 =C2=A0 BSP definitions which returned a valid match i=
f only the ktype</div><div>=C2=A0 =C2=A0 matched.</div><div>=C2=A0 =C2=A0=
=C2=A0</div><div>=C2=A0 =C2=A0 This meant that someone looking for &quot;qe=
mux86foo&quot; (which is an</div><div>=C2=A0 =C2=A0 invalid definition) wou=
ld potentially end up building &quot;qemuarm&quot;</div><div>=C2=A0 =C2=A0 =
and be none the wiser (until it didn&#39;t boot).</div><div>=C2=A0 =C2=A0=
=C2=A0</div><div>=C2=A0 =C2=A0 With this fix to the tools search routine, a=
nd improved return</div><div>=C2=A0 =C2=A0 code testing, we will now stop t=
he build and report and error to</div><div>=C2=A0 =C2=A0 the user.</div><di=
v>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 [YOCTO: #11878]</div><div>=C2=
=A0 =C2=A0=C2=A0</div><div>=C2=A0 =C2=A0 (From OE-Core rev: 44aea7b87307795=
fe4e089c51d45afccaa2f6525)</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =
=C2=A0 Signed-off-by: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@w=
indriver.com">bruce.ashfield@windriver.com</a>&gt;</div><div>=C2=A0 =C2=A0 =
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org">richard.purdie@linuxfoundation.org</a>&gt;</div></div><div><br=
></div><div><br></div><div>... the build fails for cases where there is no =
scc definition used. meta-raspberrypi was using this for configuration frag=
ments feature but without defining any scc or using any feature branches et=
c. This got broken now since finding BSP definition files is a requirement =
in the class.</div><br clear=3D"all"><div><div class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div=
></div></div></div>
</div>

--f403045cf6eac2557405576e560b--
