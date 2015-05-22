Return-Path: <patholdn@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68FB8E009E6; Fri, 22 May 2015 15:10:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (patholdn[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DD30E009CA
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 15:10:03 -0700 (PDT)
Received: by oihb142 with SMTP id b142so23684384oih.3
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 15:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Ge3cLPUg6cuCKiuyHmHbKMMtHrhYKDxFBXHcbTqtgLc=;
	b=d+0XTBL2aFjNb8NodQY+kaDGiDxoXfHb61J8tWgBe35C07PFEA9qK9y80r62c2dKFQ
	Q1QtA3XP/hhdXCyktPLfxL447VpWvThRS0znlMiGe/qsXGzpkhvh8yxbO8A/sAIH9fkc
	RnCDRQBpL4wZ5CCMOFkU2lZ+SLAIfE4Swd1QKS/pBiNKaGDqFc5rQo41YAnPsEEHwWDQ
	cojozxIYfCR1Wcor8igzOfHi93gfRYJiM67HQIO3u03YcVWTL2us0JP54Gc+uiSEElB2
	H5S2QZtX0Sy9Gk9uPkaFlPBpUATlypNnGfWDTbL2doPZJpV09xKS3ihdu6IErx5jVu1U
	nsjg==
MIME-Version: 1.0
X-Received: by 10.202.219.195 with SMTP id s186mr7897502oig.25.1432332603136; 
	Fri, 22 May 2015 15:10:03 -0700 (PDT)
Received: by 10.202.197.144 with HTTP; Fri, 22 May 2015 15:10:03 -0700 (PDT)
Date: Fri, 22 May 2015 18:10:03 -0400
Message-ID: <CANKYLMECkzr5_TKFAPcUt99ppT=+L54-s1VTSRYBLojV+7hMPg@mail.gmail.com>
From: Patricia Holden <patholdn@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake core-image-minimal failure
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
X-List-Received-Date: Fri, 22 May 2015 22:10:05 -0000
Content-Type: multipart/alternative; boundary=001a113d29da02a1360516b2ecee

--001a113d29da02a1360516b2ecee
Content-Type: text/plain; charset=UTF-8

I'm trying to create a barebones linux for a demo board based on Intel
Atom.  I've got a kernel patch to add to it, so I created a BSP for Yocto
linux, gave it the config & patch and now I want to create a live image to
boot via USB stick onto the target board.  I got a basic bitbake done with
no problems.  I tried to run Qemu and got "missing movbe".  So I dropped
that course of action since I've got time limitations to get this project
done.   I tried to get SDK going, but ran into compile error for GLIBC.  So
I added the "IMAGE_INSTALL_append = " glibc-staticdev", got tons of
errors.  So I dropped that course of action too.  I read in the manual to
use IMAGE_FSTYPE = "live" to build a bootable image, so I'm doing
that now.  Once I've got this demo part done, I need to add an app for the
real target so I really would like to get Qemu/SDK going.

Any suggestions?

Thanks!

--001a113d29da02a1360516b2ecee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to create a barebones linux for a demo boar=
d based on Intel Atom.=C2=A0 I&#39;ve got a kernel patch to add to it, so I=
 created a BSP for Yocto linux, gave it the config &amp; patch and now I wa=
nt to create a live image to boot via USB stick onto the target board.=C2=
=A0 I got a basic bitbake done with no problems.=C2=A0 I tried to run Qemu =
and got &quot;missing movbe&quot;.=C2=A0 So I dropped that course of action=
 since I&#39;ve got time limitations to get this project done.=C2=A0=C2=A0=
=C2=A0I tried to get SDK going, but ran into compile error for GLIBC.=C2=A0=
 So I added the &quot;IMAGE_INSTALL_append =3D &quot; glibc-staticdev&quot;=
, got tons of errors.=C2=A0 So I dropped that course of action too.=C2=A0 I=
 read in the manual to use IMAGE_FSTYPE =3D &quot;live&quot; to build a boo=
table image, so I&#39;m doing that=C2=A0now.=C2=A0 Once I&#39;ve got this d=
emo part done, I need to add an app for the real target so I really would l=
ike to get Qemu/SDK going.<div><br></div><div>Any suggestions?</div><div><b=
r></div><div>Thanks!</div></div>

--001a113d29da02a1360516b2ecee--
