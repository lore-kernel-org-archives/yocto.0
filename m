Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FF5DE00BFD; Tue,  6 Nov 2018 07:13:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCF7EE00A6B
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 07:13:00 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id 81so11728501otj.2
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 07:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YsiqqA3+9vn3CRJsQtxH0rNeO0VSYrJt8kl5iTmpLks=;
	b=XlTt2JrTli/NkzmlGgKtjNEL/IUFW59v9pVIeMfyp/Ijhqg8ClTlN+JL7KWQU/7TNB
	xOzvzaXQ4Q6LENQbvS6Qmg/EAvKzK5PQyjnDO3UgWmEcHOg9gp9lreJBUqUqbO6rKm6X
	WzmizLrDtqkJH/vJ+uTRCIPL/McLCzTJ3ij4SHZ6Y5QiWQITvyHVabD/krw7iSo7K9T2
	GVCdzAU4pREpK40eOpfeDvAoV4fndTU5beYY05EZPISi9vwI4yyKLASsxCrDDeO7tKrY
	uXb++HpbhYtaocLEMnQslDb74NAyd/YQ9WlLfM1zsIEnJHaOS1NusyLT1xEHcCewUVQz
	NFCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YsiqqA3+9vn3CRJsQtxH0rNeO0VSYrJt8kl5iTmpLks=;
	b=UKWLFfMYhMBHXv7/LYqnb3WoJZjbTdJzNXb3lno7MeqOlIQogGYMkh01RKwcpz4w3m
	E/rSi9FFdGBu/iCniQZuasOzQoUPIIgDL5H+sAK2FAwLasOzqaPe46U6YZu5oaFuvR2/
	BpB6/ghTR2nYgtOLfCVpdyu19lpbL+bQDyn6w/9fEuEY02WTjijkrAVIH5BI9CTToMTg
	3La+dqSmGjr3hoiVqNa4TpfI0GC15Yz1ox86z9TSxWLFJQ4hOboo1Vp0/uv9CknuxFlm
	8Zu9p48vBcmLlavYerjBxWUunU28Fim8URnIc40FmDmEJh5pW3pwwJapOffdHqHxOBa7
	ojOg==
X-Gm-Message-State: AGRZ1gKjgwrr+obkUF686HxxgdMcRJc9OrEH6CMVhTTxy5KL4IjBwf6l
	VjZ9V3uWrueWmTpxD7laiFMQxHMIQVAq3Yx9+GnUBWjM
X-Google-Smtp-Source: AJdET5frLdNywEL+d86R5mxcl/FIy+ND3W2JvZMlBUJELBXCHnpFDvlbdcNp62Pa9qmjdxIxSRtXNQ+DbquoKpHm2vY=
X-Received: by 2002:a9d:37c9:: with SMTP id x67mr16343813otb.123.1541517179814;
	Tue, 06 Nov 2018 07:12:59 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 6 Nov 2018 16:12:48 +0100
Message-ID: <CACKFPN2VuVTRr=eMqoDxsTjH8YcDcSBzgRs2Y07XD20mm2d66Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [poky] bug #8729 grub bootloader
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
X-List-Received-Date: Tue, 06 Nov 2018 15:13:04 -0000
Content-Type: multipart/alternative; boundary="000000000000eb0805057a006f81"

--000000000000eb0805057a006f81
Content-Type: text/plain; charset="UTF-8"

Hi all.

I'm working on bug #8729 and I'm trying to implement the multi-boot
functionality for grub.

I've partially done and I've created a virtual/grub-bootconf that can be
used like that:
PREFERRED_RPROVIDER_virtual/grub-bootconf = "grub-multibootconf"

That's working ok and installs the proper grub cfg script and the
environment files used for
the boot counter and other stuff.

The problem is that I've just hit the wall because it seems there are two
different facilities that
create the grub config file. One is the grub-efi & virtual/grub-bootconf.
But when an wic image is
build then this is overridden and a new partition is created which is also
mounted in the /boot
when the OS boots. The second facility is triggered by setting this in the
wks file:

--source bootimg-efi --sourceparams="loader=grub-efi"

In this case the bootimg-efi.py script creates the extra partition, a
different grub.cfg and also
edits the /etc/fstab and mounts this partition over /boot and therefore
virtual/grub-bootconf
becomes unused.

This raises the following questions:
- Why there are two different facilities to achieve the same thing?
- Why the second overrides the first one, instead of sharing the same files?
- How to proceed from now on?

In my opinion there should be only one facility that creates this and there
should be a common shared way for all the use cases.

I have a working example if anyone is interested.

Regards,
Dimitris

--000000000000eb0805057a006f81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi all.<div><br></div><div>I&#39;m working on bug #8729 and I&#39=
;m trying to implement the multi-boot functionality for grub.</div><div><br=
></div><div>I&#39;ve partially done and I&#39;ve created a virtual/grub-boo=
tconf that can be used like that:</div><div>PREFERRED_RPROVIDER_virtual/gru=
b-bootconf =3D &quot;grub-multibootconf&quot;<br></div><div><br></div><div>=
That&#39;s working ok and installs the proper grub cfg script and the envir=
onment files used for</div><div>the boot counter and other stuff.</div><div=
><br></div><div>The problem is that I&#39;ve just hit the wall because it s=
eems there are two different facilities that</div><div>create the grub conf=
ig file. One is the grub-efi &amp; virtual/grub-bootconf. But when an wic i=
mage is</div><div>build then this is overridden and a new partition is crea=
ted which is also mounted in the /boot</div><div>when the OS boots. The sec=
ond facility is triggered by setting this in the wks file:</div><div><br></=
div><div>--source bootimg-efi --sourceparams=3D&quot;loader=3Dgrub-efi&quot=
;<br></div><div><br></div><div>In this case the bootimg-efi.py script creat=
es the extra partition, a different grub.cfg and also</div><div>edits the /=
etc/fstab and mounts this partition over /boot and therefore virtual/grub-b=
ootconf</div><div>becomes unused.</div><div><br></div><div>This raises the =
following questions:</div><div>- Why there are two different facilities to =
achieve the same thing?</div><div>- Why the second overrides the first one,=
 instead of sharing the same files?</div><div>- How to proceed from now on?=
</div><div><br></div><div>In my opinion there should be only one facility t=
hat creates this and there should be a common shared way for all the use ca=
ses.</div><div><br></div><div>I have a working example if anyone is interes=
ted.</div><div><br></div><div>Regards,</div><div>Dimitris</div></div></div>=
</div></div></div>

--000000000000eb0805057a006f81--
