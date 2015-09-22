Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0A66E00E9E; Tue, 22 Sep 2015 02:36:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 586FEE005B1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 02:36:09 -0700 (PDT)
Received: by oixx17 with SMTP id x17so2054379oix.0
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 02:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=aEb2++6h27pLQpJvc3KC9nHj8X1xj2kZeWNEq5gZfeY=;
	b=GuZHUrDi3GMBaGtkjDiyyqkqhG4hfMmVGXHNk6AdDVHe5sHXZYQh3orKVOPNEot+Ye
	L2hlNQuoQrAXKHGxK70X/4VybcANdoBWKU51QvdmQsqCCXj/i78OcJ/ReHuO3qWsMWW6
	oSHO+sgWTwen5SzWshD9oRWa/eO1CoKVYWXh/sVOtjyH3o8UlnF9VRZTfsl1QdqhUHhp
	r6jpjHyl8/GcT5DD3WmuJnfj4vJneAcWF1gpUMD7AGsUlu9VFzjcQjjftmq4uZJ7fJnQ
	q51+9Sh5oFXB2WKYPlpWKxdojyE6h8farCpOh44zuLb2+Xo1W/Ur/VHh8BKS8s5Oeoyq
	okew==
MIME-Version: 1.0
X-Received: by 10.202.211.10 with SMTP id k10mr14073802oig.34.1442914568628;
	Tue, 22 Sep 2015 02:36:08 -0700 (PDT)
Received: by 10.202.61.67 with HTTP; Tue, 22 Sep 2015 02:36:08 -0700 (PDT)
Date: Tue, 22 Sep 2015 15:06:08 +0530
Message-ID: <CAKjpqyJDgoV=+4QqtJ5Q5p2WcdqkioFDR5LMNicc+h42seEbpA@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: yocto@yoctoproject.org
Subject: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 09:36:12 -0000
Content-Type: multipart/alternative; boundary=001a113d2cd64df144052052bae1

--001a113d2cd64df144052052bae1
Content-Type: text/plain; charset=UTF-8

Hi,

I am getting the below error in do_rootfs:

ERROR: Unable to install packages. Command
 returned 255:


I uderstand this error comes from certificate validation
failure.

Is there any option i can override the certificate validation
in do_rootfs and get the binaries imstalled in final image

Regards
Mayank

--001a113d2cd64df144052052bae1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am getting the below error in do_=
rootfs:</div><div><br></div><div>ERROR: Unable to install packages. Command=
</div><div><div>=C2=A0returned 255:</div></div><div><br></div><div><br></di=
v><div>I uderstand this error comes from certificate validation</div><div>f=
ailure.</div><div><br></div><div>Is there any option i can override the cer=
tificate validation</div><div>in do_rootfs and get the binaries imstalled i=
n final image</div><div><br></div><div>Regards</div><div>Mayank</div><div><=
br></div></div>

--001a113d2cd64df144052052bae1--
