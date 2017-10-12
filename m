Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87ADFE00CB6; Thu, 12 Oct 2017 02:05:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF52E00CB6
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 02:05:13 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id f66so7400619oib.2
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 02:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=ji1v02rz2FIV60QfIZ3txUbbkJJGatPbhGkS4wNFNLA=;
	b=Sm6zwQ0wDeHRGA8nr9Z9IbyH8npOFeUq5AJNyu6ip1dQkq4yAwjAE94blv4Q4+s/gr
	pBTr2K6nIZ6M3vIsDlc3cafzFFew13wwv9oUxX4K0hCMPOgpIdvfnGyWA4f2h3mHaKH6
	DMeSwJUIDlR5KNIljagPy25OUxp48HVNuWZLzeP4VgkhPzwH5DZMmsW2VtXL4dslshWJ
	Hnoy1KXnI3HzPV4GclmlrVsSRWGZGxIIpZqIZyaO1/JcFBBv599PlgQnx3d4TP9TV5Yh
	I6UXhuKxxlN4DhfO3mpLpOqOnmf3eJsEJR4JHG8dpWFjwoDaJCPx7Z5DMHYFPjsP0m0o
	oU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ji1v02rz2FIV60QfIZ3txUbbkJJGatPbhGkS4wNFNLA=;
	b=nUtchalxnw2VjhRExuArZ8iqvet2Q5kqewqIXk+d8ljrNxqG/roMu0sw/Ld9a1avX9
	tf8hcB+dwfuS1itlGtEoIMTq+7hNlj4JDMopN9zlPuIzQuyXxnQxdJ0c9TbaW+8Y9ayb
	2iE//ZckZ+ondQC4nnTbsvCdaJIPdooXKO1XhgJipfLYCvefcYKcb8SY2McmdQEuUgYI
	090v5i+LsM4nvu1lAZYrqVvdtvaeZlQ6ZE0hNKyfox2UdgNl4FsBqDYwC9ipf7copcwW
	mQQBUpLS00TtiRjdeu1asoE2eYzmZfcZD+Clt3X8PX3bQjiGtr943x/9QwNT4wfn0NBb
	6r9g==
X-Gm-Message-State: AMCzsaVNVMX8Ic2jrKQRvCd70IagIkDf905rnK2XoUvp8+nNrhK/eEEJ
	UZ49THUIL064ppcIAMg+3pABClEzQvRNxuhMCPMC8rmBKeE=
X-Google-Smtp-Source: ABhQp+SpM9mqLoOD29gxaNQ2zR5lPzw4VzoAsJH1sLRuIXHkf75KYBpd1fQ8Q49ZCdyKlD7076xCCTfYQiCBvVPpOJI=
X-Received: by 10.157.37.106 with SMTP id j39mr596338otd.30.1507799113206;
	Thu, 12 Oct 2017 02:05:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Thu, 12 Oct 2017 02:05:12 -0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 12 Oct 2017 11:05:12 +0200
Message-ID: <CAOT_U5aVPzup94ETTujxMD4NZ-tgHHXijUs9vB_jY0geA4F0OA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Layer versions at runtime
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
X-List-Received-Date: Thu, 12 Oct 2017 09:05:14 -0000
Content-Type: multipart/alternative; boundary="001a1141ad0689294b055b55d6be"

--001a1141ad0689294b055b55d6be
Content-Type: text/plain; charset="UTF-8"

I've noticed that bitbake prints the git commit versions of the layers when
the build starts.

meta-python       = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
meta-mender-core  = "HEAD:c3b1b465ce3a27fc7b03a6b7ef596348835cff57"
meta-go           = "HEAD:514b2a80a2a4235687e92fb28328bb3e7c2d6c74"

Does this information find it's way into the rootfs?
If not, any suggestions on how to achieve this?

The goal is to have this info available while the image is running.

Be Well,
Alan

--001a1141ad0689294b055b55d6be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ve noticed that bitbake prints the git commit v=
ersions of the layers when the build starts.</div><div><br></div><div>meta-=
python=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:b40116cf457b88a2db14b86fda9=
627fb34d56ae6&quot;</div><div>meta-mender-core=C2=A0 =3D &quot;HEAD:c3b1b46=
5ce3a27fc7b03a6b7ef596348835cff57&quot;</div><div>meta-go=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:514b2a80a2a4235687e92fb28328bb3e7c2d=
6c74&quot;</div><div><br></div><div>Does this information find it&#39;s way=
 into the rootfs?</div><div>If not, any suggestions on how to achieve this?=
</div><div><br></div><div>The goal is to have this info available while the=
 image is running.</div><div><br></div><div>Be Well,</div><div>Alan</div></=
div>

--001a1141ad0689294b055b55d6be--
