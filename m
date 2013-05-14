Return-Path: <varun292006@gmail.com>
Received: from mail-da0-f53.google.com (mail-da0-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2FC9E0137D
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:11:15 -0700 (PDT)
Received: by mail-da0-f53.google.com with SMTP id t11so393411daj.40
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=2ybPfDo8ibD1dQyKFwZKvmoGwyeoqBfIxOuUwccIoBw=;
	b=qIxPwarUVosQUPgFhz1gMHrDVvFnJ2Y/bg/Oyt3CvpU46Y637p+xyRqn98MwDauAxx
	eIOW6+hP2Ki6r73EzaoQhr9SE1p1eEPJf5xOSBlehVm+WICfikhnFmPmZ2meFBwdfvTS
	Bj5n/ROZkbSZjAJTo8rBItt71Yh0CvCjVxAGuGAew+UIUe8MutQxFkf1duQljIda/zpp
	yZWH1wkZYDg0WLEIHzOrsgZFiNUAhPdGMpka9juQfJfg0DPTdJe4c5u5LBJT7DsznbzD
	q9Ybm/MXkYRhy/scawi9Lq5Hl7CfbvD1caCmN0sLkbFDuZfH8EaOcIPfp3IN+NE/jW2f
	HbDg==
MIME-Version: 1.0
X-Received: by 10.66.245.110 with SMTP id xn14mr35123307pac.130.1368547875715; 
	Tue, 14 May 2013 09:11:15 -0700 (PDT)
Received: by 10.68.5.230 with HTTP; Tue, 14 May 2013 09:11:15 -0700 (PDT)
Date: Tue, 14 May 2013 21:41:15 +0530
Message-ID: <CAGxOggHzap957euPqkZEKT_Pt5hc9s0rUpfCdgpaHC8OU7=1EA@mail.gmail.com>
From: varun bhatnagar <varun292006@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Doubts
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
X-List-Received-Date: Tue, 14 May 2013 16:11:16 -0000
Content-Type: multipart/alternative; boundary=047d7b111acdfd823e04dcafe17a

--047d7b111acdfd823e04dcafe17a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to understand Yocto build process and I have couple of
doubts.....

1) After specifying the architecture in local.conf when I give bitbake -k
core-image-minimal the build process gets kicked off.
                                    My doubt is how are the executables
getting cross compiled. Is cmake getting called anywhere? How is the whole
process linked?

2) While building it executes some 1465 tasks which are packages written in
recipe files and fetches them from internet. Will these be included in the
image which will be created? If I want to restrict any package from getting
downloaded how can I do that?

//
//Varun

--047d7b111acdfd823e04dcafe17a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>I am trying to understand Yoc=
to build process and I have couple of doubts.....</div><div style><br></div=
><div style>1) After specifying the architecture in local.conf when I give =
bitbake -k core-image-minimal the build process gets kicked off.=A0</div>
<div style>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 My doubt is how are the executables getting cross compiled. Is cmak=
e getting called anywhere? How is the whole process linked?</div><div style=
><br></div><div style>2) While building it executes some 1465 tasks which a=
re packages written in recipe files and fetches them from internet. Will th=
ese be included in the image which will be created? If I want to restrict a=
ny package from getting downloaded how can I do that?</div>
<div style><br></div><div style>//</div><div style>//Varun</div></div>

--047d7b111acdfd823e04dcafe17a--
