Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 002BCE006CD; Tue,  4 Apr 2017 13:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D19EE0052B
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 13:27:15 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id r69so189667114vke.2
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 13:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yijmI6mn/vshAIVtbxhrKEZFTxFkkk5MiuOdR6mykFc=;
	b=tJ9wNmzgZ8UemJkYpsCRhulxrcfSAoqKL81BxNUp5mbSquLaettHIksY8E+QtrRV3a
	h435KdS/CTAFiW/XOe6siZUIs0oXQKC2xjVMlr5z4h8jgTc3cnifgJt964Z0yycW4TTE
	79vgD9ux6XlbyOJ7IP2OYr8j4ffVH7XQmg9An556nNY/dnzsXl1niudHVS1Uwvjb52CK
	oUF+sD1qQJiAD9Yp+dpHJnk61Jr8+T/WynEnPWiqodqkbUKWUaOKfpvh3+Gt2lqFYxfD
	4VlKXp5u5j0fb+S7eP6hNZ8+/FY4sHVjdqeQySzT723DpUbDyxYDKyNjwyZwJ9KtuaZi
	88bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yijmI6mn/vshAIVtbxhrKEZFTxFkkk5MiuOdR6mykFc=;
	b=X5Ar5fG9t0wmhghqnV1yLkNR8SYSmRJbTf99ScX9joVeODIlLROG4En1b3FO12cfc8
	jW+tO0wEn6CWmN0ltfEzbvXxTSGJO+WqFpPKij9jDMZMtZjin4oKtt3UNYaro9xKBNvR
	UDhqtgY18mxLEDP+H+uoaAnPBZ882Bf1p50E6500iYi2jrCaML1OT82A0AZ2VJaWT5sz
	oF3+nxCvkYmfyr8r5y1T8sEiBbA/AI2+3LNupyZaHGPB13l8azPuaeJK5mlSeF3Mwv5D
	roSbYT7u0f7WUqMQQLDSRJ4sPSlxEkqgOOsHHsaRHJ5dWRB6rvhKGnhfKwZHkFWhqrW2
	viSA==
X-Gm-Message-State: AFeK/H1Tof1QNNmwxc2oKbxM+JbG/5y+6HgVcDCG/4C83SRtu2s3o815BtyBPqiiCYfgEbqZGg7UMc8Zi1ciXw==
X-Received: by 10.176.92.36 with SMTP id q36mr11366961uaf.93.1491337634608;
	Tue, 04 Apr 2017 13:27:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.41.194 with HTTP; Tue, 4 Apr 2017 13:26:34 -0700 (PDT)
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Tue, 4 Apr 2017 15:26:34 -0500
Message-ID: <CAJgxT39zyBNb5VBaOQN6tZt73YiSAJ5qbimj+yaPV9za52qpBw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Enforcing version constraints on dependencies at build-time
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
X-List-Received-Date: Tue, 04 Apr 2017 20:27:19 -0000
Content-Type: multipart/alternative; boundary=f403043621d6f37fa0054c5d190a

--f403043621d6f37fa0054c5d190a
Content-Type: text/plain; charset=UTF-8

The RDEPENDS variable supports giving numeric version bounds. For example:

  RDEPENDS_${PN} = "foo (>= 1.3)"

That works well for getting version dependencies respected at rootfs time.
But DEPENDS (used at build-time) silently ignores any similar constraint
arguments. For example:

  DEPENDS = "foo (>= 1.3)"

will not cause a recipe to be skipped if foo is present only at some
version less than 1.3.

I've tried a couple of workarounds in functions like so:

  python () {
    # Pseudocode. Version-number parsing would have to be done.
    if d.getVar('PV_pn-foo', True) < '1.3':
      raise bb.parse.SkipException('...')
  }

but ${PV_pn-foo} always just evaluates to None. I think this is because of
the well-defined boundaries between instantiations of variables in one
recipe and the next.

Is there any way to escape that isolation and express version boundaries?

-Matt

--f403043621d6f37fa0054c5d190a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The RDEPENDS variable supports giving numeric version boun=
ds. For example:<div><br></div><div>=C2=A0 RDEPENDS_${PN} =3D &quot;foo (&g=
t;=3D 1.3)&quot;</div><div><br></div><div>That works well for getting versi=
on dependencies respected at rootfs time. But DEPENDS (used at build-time) =
silently ignores any similar constraint arguments. For example:</div><div><=
br></div><div>=C2=A0 DEPENDS =3D &quot;foo (&gt;=3D 1.3)&quot;</div><div><b=
r></div><div>will not cause a recipe to be skipped if foo is present only a=
t some version less than 1.3.</div><div><br></div><div>I&#39;ve tried a cou=
ple of workarounds in functions like so:</div><div><br></div><div>=C2=A0 py=
thon () {</div><div>=C2=A0 =C2=A0 # Pseudocode. Version-number parsing woul=
d have to be done.</div><div>=C2=A0 =C2=A0 if d.getVar(&#39;PV_pn-foo&#39;,=
 True) &lt; &#39;1.3&#39;:</div><div>=C2=A0 =C2=A0 =C2=A0 raise bb.parse.Sk=
ipException(&#39;...&#39;)</div><div>=C2=A0 }</div><div><br></div><div>but =
${PV_pn-foo} always just evaluates to None. I think this is because of the =
well-defined boundaries between instantiations of variables in one recipe a=
nd the next.</div><div><br></div><div>Is there any way to escape that isola=
tion and express version boundaries?</div><div><br></div><div>-Matt</div></=
div>

--f403043621d6f37fa0054c5d190a--
