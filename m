Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77D42E00A7D; Tue, 12 Jan 2016 01:03:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0260]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD763E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 01:03:13 -0800 (PST)
Received: by mail-vk0-f44.google.com with SMTP id a123so208642009vkh.1
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 01:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jcLQsA3MHFXsap1CW+rdgJUH2l4ebDh4tnWYmrGpX1Y=;
	b=arJ+/Vg6DY2AJBIDgVKHAcAmVHeLj/9sizGtMTiCQmhQz2PJZtTfg5P5ZvM20R9HSd
	3mfACHd22D28FrlxGydoVGXsZhCsfCpUw2nG7OB9TGfJvcweURPpSQnAgup509/oa7/1
	oWcWMJQex5Fr9WkxRmfMqd8zH+S0aqKMnMHanL7aT84rKqbC0F5yGuA630YCFOFjIMI6
	5rGhB3DxlnQeqU08EUAeynO6hW/iluFIIT4agOmhj3ayaieRbBbXsACvbkj1HDDedZXF
	fYommRg+qWSWUVJtmtz9uSJw8Rancw023PmoTM0yxx/CTEokP5vAyJlvdYovwb2L3elN
	qbeg==
MIME-Version: 1.0
X-Received: by 10.31.8.204 with SMTP id 195mr90916187vki.30.1452589392867;
	Tue, 12 Jan 2016 01:03:12 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Tue, 12 Jan 2016 01:03:12 -0800 (PST)
Date: Tue, 12 Jan 2016 14:33:12 +0530
Message-ID: <CALLyC8Qy7Ef58qkuLZcg=Z829P-f-cws99JsFCKuWWCbGB4QAQ@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How to test rootfs image in QEMU machine
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
X-List-Received-Date: Tue, 12 Jan 2016 09:03:16 -0000
Content-Type: multipart/alternative; boundary=001a114504e2c4358805291f528c

--001a114504e2c4358805291f528c
Content-Type: text/plain; charset=UTF-8

hi,
     I created a rootfs image for arm a15 arch . i want to test  this
rootfs image  in QEMU machine , weather it loads properly.What commands  i
need to add in the image recipe and the conf file. and what procedure i
need to follow then . I went though YOCTO dev/ref manuals , but i didn't
get the proper information, , Can any one please guide how can i test image
.


Thanks in advance


Thanks and Regards

--001a114504e2c4358805291f528c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0 =C2=A0I created a rootfs image for a=
rm a15 arch . i want to test =C2=A0this rootfs image =C2=A0in QEMU machine =
, weather it loads properly.What commands =C2=A0i need to add in the image =
recipe and the conf file. and what procedure i need to follow then . I went=
 though YOCTO dev/ref manuals , but i didn&#39;t get the proper information=
, , Can any one please guide how can i test image .</div><div><br></div><di=
v><br></div><div>Thanks in advance</div><div><br></div><div><br></div><div>=
Thanks and Regards</div><div><br></div></div>

--001a114504e2c4358805291f528c--
