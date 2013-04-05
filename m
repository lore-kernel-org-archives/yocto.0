Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C0CE01514
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 14:06:28 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id lj1so2232908pab.21
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 14:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=I6EG+wZ7nV1XVXwe58RQx+e0477w5TVVsRciWUqt0gA=;
	b=EbVhOLSpmpA5foQY/eFamxeJoO5qam1csLMraN0evoKQupeSzbxKY+mF96tZ27UoPh
	H56o9qXyKZ8N6fUyh/fkd6+PPsmY1arkjIa2U5dRgh3aWSNZxCUBbnRyvVwRTBOFcnoE
	YsUhlcPAaWLoULcsvnaiSDfAgEN0+biiXS4GpRfWKOEcPceM0U0AUgpFuXRKcpmJVtGy
	pU7XBnZw6USV2Hh5I9VgZT3otUDJsEoFjNwvkqGUalVzBtGTWgzoOnsgcE9GiWnsTQWO
	2ZXBIY5/sdoPk2w+aqBMf43i6c2R2k3Cp9yPl22/bRAEdBAd44OAVJ1Wo+BEQwAKrQO0
	vNUQ==
X-Received: by 10.68.223.138 with SMTP id qu10mr16642579pbc.89.1365195988488; 
	Fri, 05 Apr 2013 14:06:28 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id al8sm4615647pbd.42.2013.04.05.14.06.26
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 05 Apr 2013 14:06:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
Date: Fri, 5 Apr 2013 14:06:25 -0700
Message-Id: <6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
	<CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 05 Apr 2013 21:06:28 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D4761305-27F2-4E8E-AD95-4D1172F5AD36"

--Apple-Mail=_D4761305-27F2-4E8E-AD95-4D1172F5AD36
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 5, 2013, at 2:02 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> ERROR: This autoconf log indicates errors, it looked at host include =
and/or library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was =
'/home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.ar=
m-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran'


so something is not cross compiling.=

--Apple-Mail=_D4761305-27F2-4E8E-AD95-4D1172F5AD36
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Apr 5, 2013, at 2:02 PM, Edward Vidal &lt;<a =
href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><span style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; display: inline !important; float: none; =
">ERROR: This autoconf log indicates errors, it looked at host include =
and/or library paths while determining system capabilities.</span><br =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><span style=3D"font-family: Helvetica; font-size: medium; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-align: -webkit-auto; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; display: inline !important; float: none; =
">Rerun configure task after fixing this. The path was =
'/home/vidal/POKY/build032713/poky/build/tmp/work/armv7a-vfp-neon-poky-lin=
ux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.ar=
m-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran'</span><br =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"></blockquote></div><br><div><br></div><div>so something is not cross =
compiling.</div></body></html>=

--Apple-Mail=_D4761305-27F2-4E8E-AD95-4D1172F5AD36--
