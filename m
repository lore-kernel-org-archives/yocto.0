Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F0D8E006E9; Thu,  3 Nov 2016 12:13:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2807E00509
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:13:00 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id 189so36367703pfz.3
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 12:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=H4h+KxkYy4nRYO1Xl92S2UsEvpvk0MD8nHNgXlHpCLk=;
	b=RxrLDkXbeEBq3Oko4WT6jA6NhzQDEhDjJ3LhI16XCqWdpxM1ObZuvKEvYTw34vuWaT
	eFCi2SGRwptxC6Kai6KBaKc6BhwZonFo+YJFlbdfkKpEs4Bch1WweruyOBeOgpoh4hFO
	2bKARVqifkITEXR9EwroAvO8k8ZnQ6IQl+o88O5d2Kt/C6GWNwSSMkk7NLBQylO+Chyr
	4qR2KYy6yVNmh6bB7jZEZ+91EBSnABqkoO/by2rvyNPqo39cYvXlLmRL37/ipDDuBwmO
	W4d20YuunANqCoXZbfTIwcZcV/FOKMC/uaWNC0+5e66UB7HWTyKdbLT+ujGBdWWoPNwV
	vxIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=H4h+KxkYy4nRYO1Xl92S2UsEvpvk0MD8nHNgXlHpCLk=;
	b=TOfRrCfq+frNuNIrFiyvPpVg+NHGxdDZBVtKqWpitcBbgz+V6mk3L0MsO7H8yWW24U
	ebM9Jx278UzUQijG1C/dy/vOU33WRomi9bySPgjXJtGJ9ndTGa/t+wrASLxTZDbus4C7
	xCEtqpiSPc6F+fcmVB49jVY4bXnCB/9F21ORpMXf+iQk0n/nZuHPjxUSq/UFUbvIpLpo
	7dHbb7cg3RzXZab7XsITmI3RV+0XgdcAL2+40ioqXvAndvaZ04BR/9MwYTVGLUSNUOd6
	qsPwBYiRR9u0/DO4oTDAKtkq3s4RHQ0mf4Jc9HYPIWFKpmPnLOFHk1IIQ8z+echL7w3v
	dFaw==
X-Gm-Message-State: ABUngvd2KPN/epY/FB1VAemgSx2SQp0TTEEDWxq32ZoAwLc4MkDw4y4Eo4dhQsEuRwoMNA==
X-Received: by 10.99.217.21 with SMTP id r21mr15904194pgg.78.1478200379962;
	Thu, 03 Nov 2016 12:12:59 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a08a:c533:b969:820?
	([2601:646:8882:b8c:a08a:c533:b969:820])
	by smtp.gmail.com with ESMTPSA id
	a140sm14549632pfa.14.2016.11.03.12.12.59
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Nov 2016 12:12:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <116DFBE9-7318-4CAD-98FD-63DD56FA97AF@supercoders.com.au>
Date: Thu, 3 Nov 2016 12:12:58 -0700
Message-Id: <05F5E553-6E67-4276-BF14-B235784D2F98@gmail.com>
References: <116DFBE9-7318-4CAD-98FD-63DD56FA97AF@supercoders.com.au>
To: Andrew Stuart <andrew.stuart@supercoders.com.au>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Invalid configuration from end user prevents continuing
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
X-List-Received-Date: Thu, 03 Nov 2016 19:13:04 -0000
X-Groupsio-MsgNum: 32826
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5CEFF806-C4D0-4CAD-83B8-279A5F0C79A5";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5CEFF806-C4D0-4CAD-83B8-279A5F0C79A5
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4599B2A3-A99D-4461-999C-C363FB85C0B1"

--Apple-Mail=_4599B2A3-A99D-4461-999C-C363FB85C0B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 2, 2016, at 11:21 PM, Andrew Stuart =
<andrew.stuart@supercoders.com.au> wrote:
>=20
> Hello
>=20
> I'm trying to get yocto to run from a hard disk.  It's not finishing =
the boot process. Research suggests that there is some problem around =
the rootfs.
>=20
> Here is a screenshot of where the boot is stuck (also attached to this =
email)
>=20
> http://imgur.com/a/pf9Cy <http://imgur.com/a/pf9Cy>
>=20
> grub.cfg looks like this:
>=20
> serial --speed=3D115200 --word=3D8 --parity=3Dno --stop=3D1
> terminal_input --append  serial
> terminal_output --append serial
> set timeout=3D1
> GRUB_TIMEOUT=3D1
> menuentry 'yocto' {
> linux /boot/yocto_bzImage root=3D/dev/xvda1 rw console=3DttyS0,115200

You might need to change this to whatever kernel thinks about the root =
disk device
may be its added as /dev/sdaX or /dev/hdaX


> }
>=20
> To make this system boot, I did the following:
> 1: boot ubuntu
> 2: delete everything except the /boot directory from ubuntu=E2=80=99s =
root partition
> 3: mount the rootfs image that was generated by yocto
> 4: copy all files from the mounted rootfs image onto the hard drive =
root partition
> 5: replace the grub.cfg with the one shown above.
>=20
> It should work I imagine=E2=80=A6..
>=20
> I guess that an invalid configuration from me is preventing it =
continuing.  Trouble is I am not sure what I have configured wrong.
>=20
> I'm not sure what I can do to take a next step in resolving this.  =
Does anyone have any suggestions? thanks.
>=20
> thanks
>=20
>=20
>=20
>=20
> <attachment.jpeg>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_4599B2A3-A99D-4461-999C-C363FB85C0B1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 2, 2016, at 11:21 PM, Andrew Stuart &lt;<a =
href=3D"mailto:andrew.stuart@supercoders.com.au" =
class=3D"">andrew.stuart@supercoders.com.au</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">Hello</div><div class=3D""><br class=3D""></div>I'm trying to =
get yocto to run from a hard disk.&nbsp;&nbsp;It's not finishing the =
boot process. Research suggests that there is some problem around the =
rootfs.<br class=3D""><br class=3D""><div class=3D"">Here is a =
screenshot of where the boot is stuck (also attached to this email)<br =
class=3D""><br class=3D""></div><div class=3D""><a =
href=3D"http://imgur.com/a/pf9Cy" =
class=3D"">http://imgur.com/a/pf9Cy</a><br class=3D""><br =
class=3D""></div><div class=3D"">grub.cfg looks like this:<br =
class=3D""><br class=3D""></div><div class=3D"">serial --speed=3D115200 =
--word=3D8 --parity=3Dno --stop=3D1<br class=3D"">terminal_input =
--append &nbsp;serial<br class=3D"">terminal_output --append serial<br =
class=3D"">set timeout=3D1<br class=3D"">GRUB_TIMEOUT=3D1<br =
class=3D"">menuentry 'yocto' {<br class=3D"">linux /boot/yocto_bzImage =
root=3D/dev/xvda1 rw console=3DttyS0,115200<br =
class=3D""></div></div></div></blockquote><div><br =
class=3D""></div><div>You might need to change this to whatever kernel =
thinks about the root disk device</div><div>may be its added as =
/dev/sdaX or /dev/hdaX</div><div><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div =
class=3D"">}</div><div class=3D""><br class=3D""></div><div class=3D"">To =
make this system boot, I did the following:</div><div class=3D"">1: boot =
ubuntu</div><div class=3D"">2: delete everything except the /boot =
directory from ubuntu=E2=80=99s root partition</div><div class=3D"">3: =
mount the rootfs image that was generated by yocto</div><div class=3D"">4:=
 copy all files from the mounted rootfs image onto the hard drive root =
partition</div><div class=3D"">5: replace the grub.cfg with the one =
shown above.</div><div class=3D""><br class=3D""></div><div class=3D"">It =
should work I imagine=E2=80=A6..</div><div class=3D""><br =
class=3D""></div><div class=3D"">I guess that an invalid configuration =
from me is preventing it continuing. &nbsp;Trouble is I am not sure what =
I have configured wrong.</div><div class=3D""><br class=3D""></div><div =
class=3D"">I'm not sure what I can do to take a next step in resolving =
this.&nbsp;&nbsp;Does anyone have any suggestions? thanks.</div><div =
class=3D""><br class=3D""></div><div class=3D"">thanks</div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D""><span =
id=3D"cid:FB7D8F16-914B-468B-8ED4-69CB1A756F3C">&lt;attachment.jpeg&gt;</s=
pan></div></div>-- <br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_4599B2A3-A99D-4461-999C-C363FB85C0B1--

--Apple-Mail=_5CEFF806-C4D0-4CAD-83B8-279A5F0C79A5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgbjDoACgkQuwUzVZGdMxT2HQCgj0BvkJW7Tx9TjfrgLNevD79G
70wAn3/WQt4EABtEBE0JiT1vobpCuuKX
=ZK3D
-----END PGP SIGNATURE-----

--Apple-Mail=_5CEFF806-C4D0-4CAD-83B8-279A5F0C79A5--
