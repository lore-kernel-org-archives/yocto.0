Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31D7DE00CD0; Thu, 10 Sep 2015 07:17:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
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
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7C53E00B5D
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 07:17:25 -0700 (PDT)
Received: by vkfp126 with SMTP id p126so9788756vkf.3
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 07:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zmgK9Us8ne2BhD5Tvj9dTz6XhcU5zLOxA53BMuAXn1E=;
	b=knuMyNeDuLL/8I5YmtOxI8jFPsCqerkE+q9q0m4no0YbRCHc7ftIB2XOcIMkh/ta3Z
	3T8JlNV47J1PEyZGaOLKAxbnBaeqzARn7V4hXPtlq3snGiJoU4dQfZdaVRf3kRBrKpnz
	cOmZITOLWOpHRbkBxphAxf6UD+T8YaOg3Mj810EMRK/cVwf8BcKMr5mFmRBYg9/Top65
	wL5A+5uyaEeAvewbrrQTsOWYsm6L+ODJ1SbhA5RWErkCIr7lLDGcH7qbE9drWM6RoTbF
	gjoq0fbsUiXGohv5dAL6jN3WaN42pC1mF3CTHdWTmNbk109fedYCOQPqZ3bcVEX8/KhK
	8aDA==
MIME-Version: 1.0
X-Received: by 10.31.150.67 with SMTP id y64mr1532667vkd.30.1441894644975;
	Thu, 10 Sep 2015 07:17:24 -0700 (PDT)
Received: by 10.31.179.12 with HTTP; Thu, 10 Sep 2015 07:17:24 -0700 (PDT)
Date: Thu, 10 Sep 2015 19:47:24 +0530
Message-ID: <CALLyC8QDpCybg9+-zxf5HP-6xKMOUkUjUkJ6x2O2ebTcCK10ww@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: dropbear is not working after including in IMAGE_FEATURES
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
X-List-Received-Date: Thu, 10 Sep 2015 14:17:28 -0000
Content-Type: multipart/alternative; boundary=001a1141cb001e11ab051f654241

--001a1141cb001e11ab051f654241
Content-Type: text/plain; charset=UTF-8

Hi,
      I have included IMAGE_FEATURES += "ssh-server-dropbear" in my recipe
image. and created the image.
But after flashing the image i was not able to connect to target using ssh
from my host machine. but target to host is working fine. Can any one tell
me why it is not working. Is there any package need to add?


Thanks and Regards

--001a1141cb001e11ab051f654241
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi,</span><div style=3D"f=
ont-size:12.8px">=C2=A0 =C2=A0 =C2=A0 I have included=C2=A0IMAGE_FEATURES +=
=3D &quot;ssh-server-dropbear&quot; in my recipe image. and created the ima=
ge.</div><div style=3D"font-size:12.8px">But after flashing the image i was=
 not able to connect to target using ssh from my host machine. but target t=
o host is working fine. Can any one tell me why it is not working. Is there=
 any package need to add?</div><div style=3D"font-size:12.8px"><br></div><d=
iv style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Tha=
nks and Regards</div></div>

--001a1141cb001e11ab051f654241--
