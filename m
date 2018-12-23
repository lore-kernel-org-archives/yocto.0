Return-Path: <dresser.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27128E00C7D; Sun, 23 Dec 2018 07:39:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B822AE00950
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2018 07:39:47 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id q18so9675348wrx.9
	for <yocto@yoctoproject.org>; Sun, 23 Dec 2018 07:39:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vbUJI48MTxr3ihQXtZgcbbRP7he1Ou0wNul50+13DJU=;
	b=gYSo324Jex0kezDyL9uf1jwfNrMkrIxdRm/YNydSKL3v9ZLdXve/MTc+2Z00w44EJF
	oudW1EhzJ1AzGmrkw5b0giBodQXkMq9c/E9O1BbbEleQX0kQdKWUCXl7YUQ2DF3el9GR
	g2GerZEbMRH0/TeYbxOdE8FF6ZV2eIIYDBuMr3J2hiBXQ33MV+Q2+H4AnZ3cH09caa14
	xIDWMuKyTPx3Gku8QmN3u/qxvazZotFEuiS8XvPsNUZMUMO10ZQW36UghVEbUI/7La4b
	/OAucCNMQOOSJC/uZI5sB96IigoLhj8OWc2K1A8lVMJ1v+HXRK7/jkSn58WWhHiCKHfR
	/4TA==
X-Gm-Message-State: AJcUukck6k0WFRwlm434m/8dHzvf16ygX7TSdA/OgpQk7L6a9YI38zHi
	PPCcagYFOCRxDHWzyYiOHyu+DSu6iy/523Al1GOwnNpU
X-Google-Smtp-Source: ALg8bN77ciKYZrjbFYTZWKvKuATNO/sKq8/p4fsl8nlp0S55kKJ6gtqQkv89Xte15RGZYjGm6VYMMlPYF/Czzpl+Zbs=
X-Received: by 2002:a5d:4250:: with SMTP id s16mr9320143wrr.253.1545579586348; 
	Sun, 23 Dec 2018 07:39:46 -0800 (PST)
MIME-Version: 1.0
From: Derek Dresser <dresserd@alum.mit.edu>
Date: Sun, 23 Dec 2018 10:39:35 -0500
Message-ID: <CADmsHKdd=SePN5Gd5Sb0zRc-dA62RO4tOp4A9E5uvYvDVDN-Xg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 03 Jan 2019 01:08:45 -0800
Subject: Python upgrade path?
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
X-List-Received-Date: Sun, 23 Dec 2018 15:39:49 -0000
Content-Type: multipart/alternative; boundary="000000000000376cad057db24a9a"

--000000000000376cad057db24a9a
Content-Type: text/plain; charset="UTF-8"

Hello,
I have an application that uses features introduced in Python 3.6, so I am
trying to add a new version of Python to my Yocto build.  I know that 3.5.6
is the latest version of Python that has been included in a Yocto release.
I found the patches here
https://patchwork.openembedded.org/series/14778/
and was able to build Python3.7.1 for the commit specified in the patch.  I
looked briefly at rebasing the patches on the Thud branch, but I think that
is beyond my current Python and Yocto capabilities.

Are there any paths forward for me to get a newer version of Python using
Yocto?  Would it be possible for me to use a package created from that
patched build and integrate it with my current thud build?  Are there any
other workarounds I could use until a newer version of Python is supported?

I'd be happy to spend some time on this if I could help move this forward,
but I don't think this is something I can do by myself at this point.  I'm
quite new to Yocto.

Thanks in advance for any suggestions or ideas.

--000000000000376cad057db24a9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div>I have an applicati=
on that uses features introduced in Python 3.6, so I am trying to add a new=
 version of Python to my Yocto build.=C2=A0 I know that 3.5.6 is the latest=
 version of Python that has been included in a Yocto release.=C2=A0 I found=
 the patches here</div><div><a href=3D"https://patchwork.openembedded.org/s=
eries/14778/">https://patchwork.openembedded.org/series/14778/</a></div><di=
v>and was able to build Python3.7.1 for the commit specified in the patch.=
=C2=A0 I looked briefly at rebasing the patches on the Thud branch, but I t=
hink that is beyond my current Python and Yocto capabilities.</div><div><br=
></div><div>Are there any paths forward for me to get a newer version of Py=
thon using Yocto?=C2=A0 Would it be possible for me to use a package create=
d from that patched build and integrate it with my current thud build?=C2=
=A0 Are there any other workarounds I could use until a newer version of Py=
thon is supported?</div><div><br></div><div>I&#39;d be happy to spend some =
time on this if I could help move this forward, but I don&#39;t think this =
is something I can do by myself at this point.=C2=A0 I&#39;m quite new to Y=
octo.</div><div><br></div><div>Thanks in advance for any suggestions or ide=
as.</div><div><br></div></div></div>

--000000000000376cad057db24a9a--
