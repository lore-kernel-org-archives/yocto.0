Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31719E00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 12:11:53 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1684482wgb.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 12:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=eB/UQfoQhUneK8NBMsZJuxRQdPnysvMbNs32v1JHY1U=;
	b=sV6O56pJ2M6SV0y6fOoTrESpQzLliGbx2iI2HvjZ/PzXimbC5pprKJKMXjSXxTGWhD
	QeJk17qmM/zAaOaUO5N7z2gdQxT1WvFbvcX4NcpRT8cRvbmhbz9bK7pNSUu2NAI1BnKS
	+QsJoPW7z3EVRW8HUsGX1okxgcZip6KjzD4r364Q+Wh9TVTx3FlQAbB3+SA3Iz7nVA3w
	cWtSSUEknN5I1XUJ0hh5dLCmAKPxdLC/lvGBrvGVPiE/akVIh4Cqj5afjdLAUfn5ZMhF
	pI6WOlMmoXHtzJIsfDFIb5zhtuKoMbku1iUYoN13kl4aIbC7RcAI3+kjQQo53DpAPckg
	IBdA==
Received: by 10.180.94.161 with SMTP id dd1mr5974085wib.16.1336072312392;
	Thu, 03 May 2012 12:11:52 -0700 (PDT)
Received: from [192.168.1.35] (39.Red-81-33-71.dynamicIP.rima-tde.net.
	[81.33.71.39])
	by mx.google.com with ESMTPS id h8sm6104526wix.4.2012.05.03.12.11.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 12:11:51 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 21:11:49 +0200
Message-Id: <9E175296-180A-45B0-BD08-2F926537552B@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: How to fix warning: set SYSTEMD_PACKAGES as <existing-package>-systemd
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 19:11:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B4C158AF-45A1-4710-8D3C-D88D21BA66B9"

--Apple-Mail=_B4C158AF-45A1-4710-8D3C-D88D21BA66B9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I get a bunch of warnings asking me to set SYSTEMD_PACKAGES as =
<existing-package>-systemd.

WARNING: /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb: it is =
recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
WARNING: =
/tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/=
networkmanager_0.9.2.0.bb: it is recommended to set SYSTEMD_PACKAGES as =
<existing-package>-systemd
WARNING: =
/tool/yocto/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb: it =
is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd

What should I do to fix these warnings?

Best regards,

Elvis Dowson


--Apple-Mail=_B4C158AF-45A1-4710-8D3C-D88D21BA66B9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>Hi,</div><div>&nbsp; &nbsp; &nbsp; I get a bunch of warnings =
asking me to&nbsp;set SYSTEMD_PACKAGES as =
&lt;existing-package&gt;-systemd.</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: =
/tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb: it is =
recommended to set SYSTEMD_PACKAGES as =
&lt;existing-package&gt;-systemd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: =
/tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/=
networkmanager_0.9.2.0.bb: it is recommended to set SYSTEMD_PACKAGES as =
&lt;existing-package&gt;-systemd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">WARNING: =
/tool/yocto/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb: it =
is recommended to set SYSTEMD_PACKAGES as =
&lt;existing-package&gt;-systemd</font></div></div><div><br></div><div>Wha=
t should I do to fix these warnings?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_B4C158AF-45A1-4710-8D3C-D88D21BA66B9--
