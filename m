Return-Path: <richard.collins@guidedknowledge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC8F5E00950; Tue, 16 Oct 2018 07:44:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CBF9E006AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 07:44:34 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id y11-v6so11135729plt.3
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 07:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=guidedknowledge-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=w2S5j8bmAMvCUfiTa4yyFXMSptE0X1/gmPG3h/Sqjso=;
	b=WEq5TX2LQSM2lU263Jtvzt79fh0t77Ig2zUdyHXrGVys4h4mK5K6HGotn8StMjKHd6
	MMJrBgxf0tXe+DPsq+oypCxq+WAltptw8Tmi2rw4fe5REnu6F6h71ea9xo1ejirRmAcO
	F2rfYF5D4TgayPgnlkLog7BFGJJzBoD/oXOPqMg4J/x1f7lyxipKCWmsQR1RwKaS1ihN
	39v2pmOmVx/esQd3DmG3JTZuOo04eUSM/MuEQiLmKPGbVT2SZu73iIgueU8Bp19OsPOs
	NKlryDgqNuXWNQlFVFWYFJk2DOFJwhYUTWMhPpMs7gz3hdwx1Uqe2vmKSPLzhXAbLQfU
	CGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w2S5j8bmAMvCUfiTa4yyFXMSptE0X1/gmPG3h/Sqjso=;
	b=MT/NfeI3GCnDPBjtfCd6uRQa84QG57Jx64AJCmCL64oODJIDlak7Hi0tu+HcXyG7gX
	jWXgdq3561qLU+trhCPQwUXS+wBYf5LLk4aU02iziLH4HOU/zIvZJATCpsyNvLUyTlj8
	rPMHpb33bJWS4jmY7/GHKlUR5/ZFqdnl7wFosTZqnbVnQdKQDn4sbgTm7EQXAi2FmaVL
	CnvQvqSgszKOqfsNef7jDlkajrMtvM4RvuH50JUVm9TkX+5H06ttQJ5HXp8NQSLWozf4
	+rpQm/pZe/oJh4VSiu5tfI1ciBi6u3MTbRbd48bppypaWCeAmsh6allFD82JAOQbVdW/
	nXTA==
X-Gm-Message-State: ABuFfogeVJXglXwJzWKkOL9neZzp3ta+BTy5iltP/Mwko51VHHuNZSZD
	DLExSbMClh7ktSB0Z4jfnzIPBPfvIjtno49paciQ6JJHKyI=
X-Google-Smtp-Source: ACcGV60pWBCWCqcQ6foVzZZ2EZRLnrbys/vA+WQuVGZfIAVlBrRTMxpvS/1QKpdBntvPqYF2CZRwER1hqvgNE3G4fvc=
X-Received: by 2002:a17:902:9a45:: with SMTP id
	x5-v6mr21688097plv.213.1539701073583; 
	Tue, 16 Oct 2018 07:44:33 -0700 (PDT)
MIME-Version: 1.0
From: Richard Collins <richard.collins@guidedknowledge.com>
Date: Tue, 16 Oct 2018 15:44:22 +0100
Message-ID: <CAD-1PJggqpkkpKgxkKPLUKZRKnRKXpcHTKiH_=nS7FbmQocc5A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Patching bbclass file
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
X-List-Received-Date: Tue, 16 Oct 2018 14:44:34 -0000
Content-Type: multipart/alternative; boundary="0000000000008d375c0578599763"

--0000000000008d375c0578599763
Content-Type: text/plain; charset="UTF-8"

I have integrated mender into our system and now everything is working. I
had to change one of the mender class files. Just a one line change in a
function. As we'll be using automated build servers soon I need this change
to be permanent.

I've created a patch file in our bsp layer of the same name as the bbclass
file I want to patch but the patch is not being applied.

I'm using sumo.

Many thanks,
RichardC

--0000000000008d375c0578599763
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I have integrated mender into our system =
and now everything is working. I had to change one of the mender class file=
s. Just a one line change in a function. As we&#39;ll be using automated bu=
ild servers soon I need this change to be permanent.=C2=A0</div><div dir=3D=
"ltr"><br></div><div>I&#39;ve created a patch file in our bsp layer of the =
same name as the bbclass file I want to patch but the patch is not being ap=
plied.=C2=A0</div><div><br></div><div>I&#39;m using sumo.</div><div><br></d=
iv><div>Many thanks,</div><div>RichardC</div></div>

--0000000000008d375c0578599763--
