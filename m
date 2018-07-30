Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11AEDE008CA; Mon, 30 Jul 2018 07:10:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8520E0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 07:10:44 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id t18-v6so4396733ywg.2
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 07:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8LpxwTBRv8Kxd6+j91srYhpM+h3cOKozWlvKYuvawwU=;
	b=VeizvjQT+DcWW6tvDwX/NPv4uIVV4r0XoiLqaJgfNWDoSE6L8KmlGrftOaZN1yO5Px
	RsNahuyOsdl/e635Rn10oq6yT+oK8oy3z7HclbixT2M16ih+lRSJC3xUVV8nYVkxpJ0x
	kYI7mERG4Oo9yp6zK9Yv7cClDqTAYgkffcfMYDniEVJlUvpewPRtTH7fHq/tbbogB2oj
	GtoZX1OpPGN5vAVUx7uFKNWMBsgwov/xViRqMCduW2Tcu6Gc5jtWG63wk8fagJSuEMNo
	abFzwjHSG9nzbkAp4FVasQ5UfPBlvEIoIFVOc5zUvt6t6qPjW0SsjDTVsnE1PeE7o8vc
	rYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8LpxwTBRv8Kxd6+j91srYhpM+h3cOKozWlvKYuvawwU=;
	b=fx79DOh3T/RSYTrOH/iX6x6qYqcc4YWSPTeosdYDcFbSpT+tzefD3QhuCbbhtAI45A
	EJJaRmuqS0OADx0vOGwvDdXM2V+Z17m8uqbWZ+budWmYnyE6OCqw30CIr5kkTfjzrl8n
	E/B5/pOar1j8TfVzqRdBbVJF9wAFAPfPig0whP1njnw0pWaiUHrCcCu81Y2LZIA3kSYK
	mQwW0+SI982BXrgKDEDyQGvoZvXr6+5kEb5cBH/u17pxjIRKcRiTN+Xp6OJOB7ssCFyT
	ggY/rf2Urq1E+uVpcVMbErw+jJizjkElf2Ykm2nYmCrdxqQnXPd5L5uVlluYvcjupw6w
	+4fA==
X-Gm-Message-State: AOUpUlEPCXZzY9tvscmDZ4S5VlU0rfJ+sqmnW6locE3mERiK1QFPTEtq
	0arXGB6GfD0+9sPKrhsiuMe3R/MqCTZxJUEoLWB6Bg==
X-Google-Smtp-Source: AAOMgpeGZYT7jRDYU3sjx24ZJrdyNZqz0MeGEqzqRgO4rRR6xBrtQdHvmBjUArI4xdf74ua8IEHA5AbXwrpAHWF+lK8=
X-Received: by 2002:a81:a692:: with SMTP id
	d140-v6mr8740327ywh.50.1532959843650; 
	Mon, 30 Jul 2018 07:10:43 -0700 (PDT)
MIME-Version: 1.0
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Mon, 30 Jul 2018 10:10:32 -0400
Message-ID: <CAFeBWL4qPSzB=o8BicxhpW-xwi4BQhBFQPuajx5A0GA=X=znYg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>, 
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: devtool add recipe with no srctree / fetchuri?
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
X-List-Received-Date: Mon, 30 Jul 2018 14:10:45 -0000
Content-Type: multipart/alternative; boundary="000000000000ef94580572380677"

--000000000000ef94580572380677
Content-Type: text/plain; charset="UTF-8"

Is it possible to run 'devtool add [recipe-name]' without 'srctree' or
'fetchuri'?
I just want to add a simple recipe with a few files to be installed on the
target file system.
I can directly add a file in my meta-layer, but devtool is probably the
more correct approach.

Adam

--000000000000ef94580572380677
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it possible to run &#39;devtool add [recipe-name]&#39; =
without &#39;srctree&#39; or &#39;fetchuri&#39;?<div>I just want to add a s=
imple recipe with a few files to be installed on the target file system.</d=
iv><div>I can directly add a file in my meta-layer, but devtool is probably=
 the more correct approach.</div><div><br></div><div>Adam</div></div>

--000000000000ef94580572380677--
