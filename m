Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57D96E009AA; Fri, 31 Aug 2018 03:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85A1E007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 03:49:13 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id l82-v6so20863881oih.11
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 03:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=jK9wqV+z4DTlgWDuYACSMWXOXXvFnYmjzWeqzvxLzuw=;
	b=wQIEQhmrZLXJDSVR0xKFe2E+jAuZP+8/yf5DW456OI+PBGHFrecBJ3UFjaepCsfUGq
	rfeEEqpnB9CnMgvjiXFyLsjPIfHSvomv3WuaWqRxf2wLl70IbN/kN9DK+4YB/Uq/O2yI
	bbGqk9pld+gIZ5Z6WOPgoXQTt9p6ybTFia2+b/AbKnElU/SFjVc7Qps1s5evyKuhgVmy
	kcNxbMTa/mA38H0s7aM0YQ73XX0+j6jCXGoMU5BJqhOQ+pj2spPCiWObMgos2Wy36Dno
	ZNmXf2gSuTWaU3ssVwOVwA4tArA0gn1vrgcpLeFBuLORFlFc6jvXSWYBx8ihuGq2IpEt
	YSFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jK9wqV+z4DTlgWDuYACSMWXOXXvFnYmjzWeqzvxLzuw=;
	b=QzbgcTcMBhrtsQRtgVLHdnzJAYsUA20WCOOW7fcuPErsVzxs4MQFzSO/zAp5IB+EQw
	flGp8EQ1FZYI30ZS6rFTVnKXNTs0BFwjyjnwCPEhrkU+a8aAGIWo2hH654hEhzbZohgt
	iOSrCuiLZBAERmH8rTqfa14UrrBICIo8vwwXWpRP0+QMwljO+wCYqit6JgTIimoJUtV4
	3s+afiWyafgMA4KLVDdQVFMS8VPVW1DVvNySUcwXqmHsQPwXyQq6m++yfGkR35f3DIG3
	1ShRtKX40tSev1hAPVmR4oAaBf0uw0UYreussXClLtEawGZfkfP4ylK0tcUQnkdIabQf
	znyw==
X-Gm-Message-State: APzg51BNG9VKKLcXLQCy73h9sfsKAApxJmQnlCmCyiIdJOlesW4drb3D
	eyBqh3bzsmI/8rxE2cfOhZE0KiDHpwXDeQvs6dEUoBE8PrA=
X-Google-Smtp-Source: ANB0VdY7GuEaW8wBRppCggP/71BbVX3siKjNUg/MZtp+o4jKLKtQv6wjOC6PvISDGx7YvtA/6bDW85b0ZRJNMpXG43Y=
X-Received: by 2002:aca:d706:: with SMTP id o6-v6mr7045019oig.45.1535712552856;
	Fri, 31 Aug 2018 03:49:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:30ad:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 03:49:12
	-0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 31 Aug 2018 12:49:12 +0200
Message-ID: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Fri, 31 Aug 2018 10:49:14 -0000
Content-Type: multipart/alternative; boundary="00000000000030bff40574b8f14f"

--00000000000030bff40574b8f14f
Content-Type: text/plain; charset="UTF-8"

Hi,
am just in the process of forming a base for automated nightly builds.
The goal is to have the build process run every night and report what
 the status was.

I've opted for python for all the conditionals and checks  and then have
external
bash scripts that actually sets the environment and invokes bitbake.

Did it like that because I didn't find a clean way so far to deal with

    source oe/oe-init-build-env

from python.


Would like to hear how did you script bitbake and how does your setup look
like?

Be Well,
Alan

--00000000000030bff40574b8f14f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>am just in the process of forming=
 a base for automated nightly builds.</div><div>The goal is to have the bui=
ld process run every night and report what</div><div>=C2=A0the status was.<=
/div><div><br></div><div>I&#39;ve opted for python for all the conditionals=
 and checks=C2=A0 and then have external</div><div>bash scripts that actual=
ly sets the environment and invokes bitbake.</div><div><br></div><div>Did i=
t like that because I didn&#39;t find a clean way so far to deal with=C2=A0=
</div><div><br></div><div>=C2=A0 =C2=A0 source oe/oe-init-build-env<br></di=
v><div><br></div><div>from python.</div><div><br></div><div><br></div><div>=
<div style=3D"font-size:small;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial">Would like to hear how di=
d you script bitbake and how does your setup look like?</div><br class=3D"g=
mail-Apple-interchange-newline">Be Well,</div><div>Alan</div></div></div>

--00000000000030bff40574b8f14f--
