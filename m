Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1235.1576266893986039877
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 11:54:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iYJAZXhg;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: mhalstead@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 816E7E01126; Fri, 13 Dec 2019 11:54:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 082D4E00D00
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 11:54:52 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id o9so475089ote.2
        for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 11:54:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=nLiRCSBnuL2dZGZgEnBblm3ZH0XpojMbDqUx7sIfIxE=;
        b=iYJAZXhgv6WvB6VrQuKTjH+DojzLbPY0HXHYpq2Y0GgKaxzwxh1LimbP+U+z4AIPra
         aEJciUXK9Rd50G7CVARYNAKXAhr86wBV5gED2OlKW4m8W8wLVRG302Re3M5YHGdhTOYy
         iysM++5LtHpE3SgHtn4zQf3ZqNCUiFFFfCUz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nLiRCSBnuL2dZGZgEnBblm3ZH0XpojMbDqUx7sIfIxE=;
        b=GNeK5JgpHTF3OA5UrzAaDv+PjiyNqblr8CClDiyvfUevzWuVYQerxTtjR39rf/xqXF
         9iXAT5UNzzwCeGU3imxNo1EahYpx9CiWn3pMDf0L1mafW4NgTaN97Q3i2UNMEFUQgiQv
         z2KcWJ7JoexDmg+QFCsMwLr+2QtqaJP+ArpfK8Mh93i9ieo9rTZjEyxh2Tqa3F2QUTiR
         4Aah1NMdqWAsbx6Oq0p713Mko3NBhyaWG5Lkgk4MqdYb5zz3b1Jtl5nm+q+rrcdb8R3X
         2RloBySuhMMSrXKhj4Dy89kHks+l8JksBFGSxUToyHSq8bnchP0qCJemgMgCi1Ai76E9
         6RKw==
X-Gm-Message-State: APjAAAViAD52wHjPe3hZqQd8AEd0bZ14T+qEs9ORWpqWr86heZt1uavV
	40ZzGdjbcw+8upJdxgJUd83BtrzOeOj92i4dr40hgA==
X-Google-Smtp-Source: APXvYqyNhSsaZ4Q4qxf3Rzsa3oIadWEejnr7Xud2uBn7brCE/35Hj7iKIk1lbFEDuA6mjee+jCSDGJCmn2GVFx+Dzso=
X-Received: by 2002:a05:6830:114f:: with SMTP id x15mr15848080otq.291.1576266892331;
 Fri, 13 Dec 2019 11:54:52 -0800 (PST)
MIME-Version: 1.0
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Fri, 13 Dec 2019 11:54:40 -0800
Message-ID: <CADfgfoaRizwCAC6GadRLfFcaGQ-uGzyEqwTB_mdD2SeHCC07Tw@mail.gmail.com>
Subject: Data center routing issue affecting downloads.yoctoproject.org and Autobuilder
To: yocto-infrastructure@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000030606005999b3c1d"

--00000000000030606005999b3c1d
Content-Type: text/plain; charset="UTF-8"

Our colo provider has identified the routing equipment that was the
source of the problem and is working on configuring the replacement. We
expect that full service will be restored within the next hour or so.

I will follow up once this happens, plus you can follow this issue at
the following page:

https://status.linuxfoundation.org/incidents/w4ncns4hyxgg

Until the repair is complete downloads.yoctoproject.org,
state.yoctoproject.org, autobuilder.yocto.io, and the typhoon autobulder
workers are not available.

-- 

Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--00000000000030606005999b3c1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Our colo provider has identified the routing equipmen=
t that was the<br></div><div>source of the problem and is working on config=
uring the replacement. We<br>expect that full service will be restored with=
in the next hour or so.<br><br>I will follow up once this happens, plus you=
 can follow this issue at<br>the following page:<br></div><br><div><a href=
=3D"https://status.linuxfoundation.org/incidents/w4ncns4hyxgg">https://stat=
us.linuxfoundation.org/incidents/w4ncns4hyxgg</a><br></div><div><br></div><=
div><div>Until the repair is complete=C2=A0<a href=3D"http://downloads.yoct=
oproject.org/" target=3D"_blank">downloads.yoctoproject.org</a>,=C2=A0<a hr=
ef=3D"http://state.yoctoproject.org/" target=3D"_blank">state.yoctoproject.=
org</a>,=C2=A0<a href=3D"http://autobuilder.yocto.io/" target=3D"_blank">au=
tobuilder.yocto.io</a>, and the typhoon autobulder workers are not availabl=
e.</div><font color=3D"#888888"><div><br></div><div>-<span style=3D"white-s=
pace:pre-wrap">- </span></div></font><pre cols=3D"72" style=3D"white-space:=
pre-wrap;color:rgb(136,136,136)">Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer</pre></div></div>

--00000000000030606005999b3c1d--
