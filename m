Return-Path: <minipada@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1B92E0094C; Thu,  7 May 2015 05:00:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAB13E007B6
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 05:00:39 -0700 (PDT)
Received: by obfe9 with SMTP id e9so29410523obf.1
	for <yocto@yoctoproject.org>; Thu, 07 May 2015 05:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=cIqsKETOB/9UHuSEXcD1ryti8McX+jTSxu9Upwu4zSc=;
	b=wLe/DTGA6PHNj2M3aCVi77HgoAkTeunIYVi1q9xDiVyITK4CEGHyjM3+s+iGi0VrdV
	IOvEnsj+NVxzsg9dqMmUElfcYi6JnWv0+6Jn8Oew0HJZ4ImMWM8G1IbM8fiB/c6JglNa
	2UZFDCIsP1YE+6um9TOpG8/qvQ4ONSqnGWRiWBCyDbjazNsXBMcFN0j7bmVrZzWn6iEs
	PQmFrgobVrr+glC4Hnx4iRB6LQtHkPAn20S788VjiM+JWQ7JGyynZn0jXTHDJ0EL4AFO
	RAQRmi0Ltw772+m2otwJlPmARW1cWQUqYM82ULoCAOApZCPEFj5U/H/LaK02qD9ax1eF
	dCAw==
X-Received: by 10.202.49.77 with SMTP id x74mr2804373oix.86.1431000039018;
	Thu, 07 May 2015 05:00:39 -0700 (PDT)
MIME-Version: 1.0
Sender: minipada@gmail.com
Received: by 10.202.85.2 with HTTP; Thu, 7 May 2015 05:00:18 -0700 (PDT)
From: david bensoussan <bensoussan@et.esiea.fr>
Date: Thu, 7 May 2015 14:00:18 +0200
X-Google-Sender-Auth: RG1Lcm08f9cz2RpRTkSPBt2JTOQ
Message-ID: <CALxi_JE-FjxOgRMye8U-nv8r5O57=5ZpiOYmGxhpeoqpxd38Aw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: LIbSuitesparse support
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
X-List-Received-Date: Thu, 07 May 2015 12:00:45 -0000
Content-Type: multipart/alternative; boundary=001a113cb374ffd54d05157ca83f

--001a113cb374ffd54d05157ca83f
Content-Type: text/plain; charset=UTF-8

Hello,

I am working on a poky distribution, using a RPi. Everything has been built
well with the packages. I now see that I need the libsuitesparse (for ROS
and especially the nav2d package). I don't know how to start to make it
work.

P.S: Sorry for the double post but I sent the first mail to the wrong
mailing list

Thank you,
David

--001a113cb374ffd54d05157ca83f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>I am working on a poky =
distribution,=20
using a RPi. Everything has been built well with the packages. I now see
 that I need the libsuitesparse (for ROS and especially the nav2d=20
package). I don&#39;t know how to start to make it work.<br><br></div><div>=
P.S: Sorry for the double post but I sent the first mail to the wrong maili=
ng list<br></div><div><br></div>Thank you,<br></div>David<div><div class=3D=
"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><table style=3D"font-family=
:arial;font-size:small;padding-bottom:5px" border=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding-right:1em;width:10px;max-width:120px" valign=3D=
"top" width=3D"1"><br></td><td style=3D"margin-bottom:3px;text-transform:ca=
pitalize;line-height:15px"><br></td></tr></tbody></table></div></div></div>=
</div></div></div></div></div></div></div></div>
</div>

--001a113cb374ffd54d05157ca83f--
