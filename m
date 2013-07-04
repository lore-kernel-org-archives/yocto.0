Return-Path: <elvis.dowson@gmail.com>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80FAEE01409
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 20:31:36 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id l15so463148eak.37
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 20:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=zcHiGGJH/AA0bFjYUgsFFtpbzEtFJVQEeX7Au4k9gk4=;
	b=ReYPVN7TjgqgXKdcO+7azanPJVa/5djCufACCog1XQARxKivVXPl7Bk3AKLezXRAHC
	SLvz9ydR0h2+SMl7CkCX2KQYfri8d1OFBVXL+Ozawb6XtqVe2HUApV0W70NkFSK/C+hi
	9vYcRRV2cwHawQ7QiJgZvF8LuuJWHEHn6eIQTOi6/s6TG7bjPKEJu3sx1AT/EKj/kazz
	CuFABgl34KXyl0dN6IMKfobXgFZdfFWgYYdY+rEN1vftSK9NAqysbTM2+U2HmNm6ymG0
	1VVxtO7EfagzLJtxxz73H39OvCITWbGJ7h4mVdqbl064+sPiBci7hU0DK0tA+YVP9ac3
	jF9A==
X-Received: by 10.15.63.67 with SMTP id l43mr4304573eex.5.1372908695770;
	Wed, 03 Jul 2013 20:31:35 -0700 (PDT)
Received: from [192.168.1.104] ([94.205.109.186])
	by mx.google.com with ESMTPSA id
	bj46sm1687254eeb.13.2013.07.03.20.31.32 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 03 Jul 2013 20:31:34 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CANwz6nz+UwUyiNebT=AQk2t7Fe_dAXgK1ftsPMcbdgSeKW-X=Q@mail.gmail.com>
Date: Thu, 4 Jul 2013 07:31:28 +0400
Message-Id: <37C64EA6-B4E3-432E-8BE1-50EDEF07F023@gmail.com>
References: <CANwz6nz2obpC75mXTYtK3roMczmNfHUEt84cj58Wjq5vGAFdaw@mail.gmail.com>
	<7B6DB0F2-A890-4A2B-B6DA-DEB57257A020@gmail.com>
	<CANwz6nz+UwUyiNebT=AQk2t7Fe_dAXgK1ftsPMcbdgSeKW-X=Q@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1498)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fedora 18 CentOS 6.4 yocto difference zc702
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
X-List-Received-Date: Thu, 04 Jul 2013 03:31:38 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4135B481-7EA9-4B21-A036-26F7D07F8BCC"

--Apple-Mail=_4135B481-7EA9-4B21-A036-26F7D07F8BCC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi,

On Jul 4, 2013, at 3:25 AM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> Where do you find the boot.scr or uEnv.txt for the zc702?=20

I haven't seen one for the ZC702. You could use one of the prebuilt boot =
images (e.g. the Base TRD 14.5 or 14.6 beta packages), put it into the =
SD card slot, interrupt the boot process and type printenv, and list out =
all the u-boot environment variables and copy it out to create your own =
boot.scr file.

The boot args are stored in the *.dts file, so look up the dts file for =
the zynq board in the TRD or the Xilinx linux kernel distro.

Best regards,

Elvis Dowson=

--Apple-Mail=_4135B481-7EA9-4B21-A036-26F7D07F8BCC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Jul 4, 2013, at 3:25 AM, Edward Vidal &lt;<a =
href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr"><div><i>Where do you find the boot.scr or =
uEnv.txt for the =
zc702?&nbsp;</i></div></div></blockquote></div><br><div>I haven't seen =
one for the ZC702. You could use one of the prebuilt boot images (e.g. =
the Base TRD 14.5 or 14.6 beta packages), put it into the SD card slot, =
interrupt the boot process and type printenv, and list out all the =
u-boot environment variables and copy it out to create your own boot.scr =
file.</div><div><br></div><div>The boot args are stored in the *.dts =
file, so look up the dts file for the zynq board in the TRD or the =
Xilinx linux kernel distro.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_4135B481-7EA9-4B21-A036-26F7D07F8BCC--
