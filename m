Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD496E00E39; Wed,  7 Feb 2018 17:18:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.252.207.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Feb 2018 17:18:09 PST
Received: from resqmta-ch2-12v.sys.comcast.net
	(resqmta-ch2-12v.sys.comcast.net [69.252.207.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 163E2E0085E
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 17:18:09 -0800 (PST)
Received: from resomta-ch2-11v.sys.comcast.net ([69.252.207.107])
	by resqmta-ch2-12v.sys.comcast.net with ESMTP
	id jaopeTkSPVJDNjapoe973s; Thu, 08 Feb 2018 01:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1518052628;
	bh=7AdSHSnHyyC1x6SKbhWTBtQNhmdYz4CVVYBJpLExjn8=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=fvj9XLfpQtzHpCHvr/s63TN6rfUqhxpv/aivcy+A0FyTfK+/Pl2BWp6vIVzYGbTzS
	IHWY2ddPF0Q2xbpKVMmTk5IRvLw3G/04nCU4FnLsQQ43wDZSbVCuzq1AilUYkReQLp
	VLYob7VoL5GidpLyw8SkbG2HzciLZtygyV8zF64HwSZ2wfGPPzLVV+jwOu64sr5CKj
	1AX8A388k2KPxZQA2QUFgtNEUT39uj1LOWIGQ4DSJmPRakaE8sXUxtQ9dZ6cCjmnRg
	NnVlywAjWPP6UnblU587kA0w9SWEYH0uC0o7JVF2RBtggfmYKh8fXITgx9CnycmNOC
	FesVFqV6+odfQ==
Received: from [IPv6:2601:18f:880:9aeb:d8be:ae1e:3d9a:e7e6]
	([IPv6:2601:18f:880:9aeb:d8be:ae1e:3d9a:e7e6])
	by resomta-ch2-11v.sys.comcast.net with SMTP
	id japneG3NCEcHBjapoer7Ar; Thu, 08 Feb 2018 01:17:08 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <1B4071C2-44F7-452F-A62A-EF163C7231BE@comcast.net>
Date: Wed, 7 Feb 2018 20:17:07 -0500
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.5.20)
X-CMAE-Envelope: MS4wfK0qpvMlBkTkpkwufSsKJFZ2raGNaXYXEj9u1NFb1lKpzcCfDrDmKIkyb3cT1hwlYNt+prrkdb1aQlU8ZmqZsy2yhJ4s14qfOPmbp7JMTI9c4ndhj599
	7UU8kxQJje/I4VyNrGZq+ufeR5rAEmFvms5dKF+tkDfz2GZaNLbsuXFmyHnN/EKd59ZoD9aYMd5CrBCC1WZ9M5fraHnkxQeKxKE=
Subject: dnf error
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
X-List-Received-Date: Thu, 08 Feb 2018 01:18:09 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A5DC1E98-CF77-4A9B-B721-6487709679D5"

--Apple-Mail=_A5DC1E98-CF77-4A9B-B721-6487709679D5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

I am upgrading from pyro to rocko and see something I can=E2=80=99t =
figure out (see error below).

I can=E2=80=99t tell if this is dnf telling me there are multiple =
sources for python or something else.  Not sure what =E2=80=9Cconflicting=E2=
=80=9D means.  I do know that the rpm produced by the of ofa-kernel =
recipe has some python scripts in it and thus requires python.  and =
RDEPENDS for python did not solve it.  I just have no idea why the image =
class or dnf thinks the hosttools =E2=80=9Cprovide=E2=80=9D anything.  =
The python in hosttools is certainly there but I assume that is just =
found using PATH.

Any advice would be welcome.

Regards,

Russell


core-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf
=20
Last metadata expiration check: 0:00:00 ago on Thu 08 Feb 2018 12:07:06 =
AM UTC.
Error:=20
 Problem: conflicting requests
  - nothing provides <xxxxxxx>/hosttools/python needed by =
ofa-kernel-4.2-r0.mymachine
=20
ERROR: core-image-initramfs-1.0-r0 do_rootfs: Function failed: do_rootfs=

--Apple-Mail=_A5DC1E98-CF77-4A9B-B721-6487709679D5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hello,<div class=3D""><br class=3D""></div><div class=3D"">I =
am upgrading from pyro to rocko and see something I can=E2=80=99t figure =
out (see error below).</div><div class=3D""><br class=3D""></div><div =
class=3D"">I can=E2=80=99t tell if this is dnf telling me there are =
multiple sources for python or something else. &nbsp;Not sure what =
=E2=80=9Cconflicting=E2=80=9D means. &nbsp;I do know that the rpm =
produced by the of ofa-kernel recipe has some python scripts in it and =
thus requires python. &nbsp;and RDEPENDS for python did not solve it. =
&nbsp;I just have no idea why the image class or dnf thinks the =
hosttools =E2=80=9Cprovide=E2=80=9D anything. &nbsp;The python in =
hosttools is certainly there but I assume that is just found using =
PATH.</div><div class=3D""><br class=3D""></div><div class=3D"">Any =
advice would be welcome.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Regards,</div><div class=3D""><br class=3D""></div><div =
class=3D"">Russell</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">core-image-initramfs-1.0-r0 do_rootfs: Could not invoke =
dnf<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Last =
metadata expiration check: 0:00:00 ago on Thu 08 Feb 2018 12:07:06 AM =
UTC.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Error:&nbsp;<o:p class=3D""></o:p></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">&nbsp;Problem: conflicting requests<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">&nbsp; - =
nothing provides &lt;xxxxxxx&gt;/hosttools/python needed by =
ofa-kernel-4.2-r0.mymachine<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">ERROR: core-image-initramfs-1.0-r0 =
do_rootfs: Function failed: do_rootfs</div></div></body></html>=

--Apple-Mail=_A5DC1E98-CF77-4A9B-B721-6487709679D5--
