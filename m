Return-Path: <dakuit00@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C05F3E009DF; Wed, 22 Jul 2015 00:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dakuit00[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9593E0097F
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 00:36:23 -0700 (PDT)
Received: by lbbzr7 with SMTP id zr7so131013250lbb.1
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 00:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=H7GLXmOUZy0JcVYzH41isYhVmVAI4TPn1XnV57GkPUQ=;
	b=Q/U4xrW2DtzmiEDWZP9LLvTyLmIARbn3Fmtki281UsssDj7SNQ84rsY4yLy4xL9UUD
	KFCmtrxtc8qCL9hak8fXMrJw4yRFaj9tPPQ3KupKhYX4iLj7+pLzX4jdDGHUv10VLh/w
	5nY/vcoeotd8kSPAkY+45rp4mR43el7l1oHDI6Rb2XiQrZBoh5SCC9tqE2nLTIJ6FCM+
	LXtp/2Qn4+OMd+SQEeoFULZP3qprlszcvDlGU9GXnMaRkVLYKfMwRj21i7ti1zu+50+T
	ReDcQV/vFru9ojSdHcsyMUeZAefw+U516c180p9cnKcLVeWigxmJiBKOPzm8uR5QnfsL
	F8OA==
X-Received: by 10.152.37.228 with SMTP id b4mr978111lak.117.1437550581838;
	Wed, 22 Jul 2015 00:36:21 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Kuhne <dakuit00@gmail.com>
Date: Wed, 22 Jul 2015 07:36:12 +0000
Message-ID: <CABEeoJVJJK+DX02fT4AmqnRD+aM5rmsgfnrNuC0x+2Ksi1z3FQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: VMDK not booting
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
X-List-Received-Date: Wed, 22 Jul 2015 07:36:25 -0000
Content-Type: multipart/alternative; boundary=089e014939fcc6f85e051b71d39f

--089e014939fcc6f85e051b71d39f
Content-Type: text/plain; charset=UTF-8

Hello,

my vmdk image is not booting into systemd. But my iso image does.
It is similar to
https://lists.yoctoproject.org/pipermail/yocto/2014-August/021218.html

I use fido with meta-intel.

Cheers,
Daniel

--089e014939fcc6f85e051b71d39f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br><br></div>my vmdk image=
 is not booting into systemd. But my iso image does.<br></div>It is similar=
 to <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-August/0=
21218.html">https://lists.yoctoproject.org/pipermail/yocto/2014-August/0212=
18.html</a><br><br></div>I use fido with meta-intel.<br><br></div>Cheers,<b=
r></div>Daniel<br></div>

--089e014939fcc6f85e051b71d39f--
