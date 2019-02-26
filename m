Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D00A7E00CED; Mon, 25 Feb 2019 17:45:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224CBE00546
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 17:45:03 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id z39so13141760qtz.0
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 17:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Pk0hEAYvIlub3xBhKTMIzSacdDBLSVLDnM+PzzvBc1M=;
	b=vw2WMOtAg1fy7TWUdIZjLXtoUjPQ8vOCt2Vbhzr3GL6RtT3y9eOe7y8AH4qcSbH5Ja
	96X05d1IA6Cl7hp+CIFIvml1WxkCrmlvWkv2A5vVLymiX6XiiEFtEMyUNraMLcgltc1C
	q6/vty5MRA33I9vfxNgWFpmD1gLAsXx1PJEuZq+o6pFRy7AIorSns87LQZXJtKSy/UEY
	u2ECB2o8RIAtLWPE3VB4ACzg/26PCrabCqDGBuxwtDXtQ0L71cDoQBzof1eMN1pXoUkz
	6USB/7qsvlg4SvwiXCrSqkHPL5behVfaeCvhoxSjmrao3PpAFncK2YEepbMsHHPIsmcD
	VPlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Pk0hEAYvIlub3xBhKTMIzSacdDBLSVLDnM+PzzvBc1M=;
	b=nMJLSfdtzlKf3ps5dg8C2QxKAmNilkaEjdfkOMLgmaa/13aKDZt84dRIRrLub78lqr
	DzuY9q0LFgZArEWyIMDPUNbDFbLYORH1oWVfagqlll1OG7MBWd5DrW17M53XIAXKpnMq
	NjvEh9HvGdL36pc1fHJIpNz7XpUzcCU4XVlrsf6hAETRYyrNOLOL19/q8obqRgv3hm5G
	itOEQgFeL4pSoRpIzSSmzkfdeH7F87zT1FfFQ1qPchHe+Ie5oKhQdV6oH4cxkc2Axtev
	k2q5pisjnazdfGNEgmQWnsL3/e63PgwgmOvVdEgdjaLcl9x6JfWbtzFBtKdgodq+jLKn
	TlEg==
X-Gm-Message-State: AHQUAuZnFmyKefq3SqstJPE/PxoH4IbqDbQvzfzSIAui0ksE+sB3WSZS
	E620ksN4FEKc6UhWMfK01LHLjA23b5tPaQ/tUwXuQAEn
X-Google-Smtp-Source: AHgI3IaXFIGSCymVGlJKf6C9O76/3Yhq4Yj+a2gAPGKhlB+bD0I0NETGGJ+O+PlEkHrfrt4OWy+KkJ5DetWDJlQZQJU=
X-Received: by 2002:ac8:30da:: with SMTP id w26mr16671422qta.386.1551145502377;
	Mon, 25 Feb 2019 17:45:02 -0800 (PST)
MIME-Version: 1.0
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Mon, 25 Feb 2019 17:44:51 -0800
Message-ID: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Storing Sstate in S3 success stories?
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
X-List-Received-Date: Tue, 26 Feb 2019 01:45:03 -0000
Content-Type: multipart/alternative; boundary="000000000000aa21270582c234b5"

--000000000000aa21270582c234b5
Content-Type: text/plain; charset="UTF-8"

I've been spending a bit too long this past week trying to build up a
reproducable build infrastructure in AWS and I've got very little
experience with cloud infrastucture and I'm wondering if I'm going in the
wrong direction. I'm attempting to host my sstate_cache as a mirror in a
private S3 bucket, and I believe I have everything configured properly,
including exposing the bucket to http requests, since I can wget files that
I've previously synced up to the bucket. However if I add in the
SSTATE_MIRRORS to my build, bitbake slows to a crawl (it's a powerful VM)
and barely seems to get anything. The EC2 instance is in the same region as
the S3 bucket, roles have been configured properly to allow access, etc.

I'm not looking for help debugging this, I just want to know whether I'm
right that hosting my sstate in an S3 bucket should work. I've only been
able to find one mention of it being done with no reproduction hints.

--000000000000aa21270582c234b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve been spending a bit too long this past week tryin=
g to build up a reproducable build infrastructure in AWS and I&#39;ve got v=
ery little experience with cloud infrastucture and I&#39;m wondering if I&#=
39;m going in the wrong direction. I&#39;m attempting to host my sstate_cac=
he as a mirror in a private S3 bucket, and I believe I have everything conf=
igured properly, including exposing the bucket to http requests, since I ca=
n wget files that I&#39;ve previously synced up to the bucket. However if I=
 add in the SSTATE_MIRRORS to my build, bitbake slows to a crawl (it&#39;s =
a powerful VM) and barely seems to get anything. The EC2 instance is in the=
 same region as the S3 bucket, roles have been configured properly to allow=
 access, etc.<div><br></div><div>I&#39;m not looking for help debugging thi=
s, I just want to know whether I&#39;m right that hosting my sstate in an S=
3 bucket should work. I&#39;ve only been able to find one mention of it bei=
ng done with no reproduction hints.<div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><br></div></div=
></div></div></div>

--000000000000aa21270582c234b5--
