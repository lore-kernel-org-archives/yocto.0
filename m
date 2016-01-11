Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C58C2E007EA; Mon, 11 Jan 2016 11:58:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E113E0070F
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 11:58:00 -0800 (PST)
X-Halon-ID: b34b3b30-b89d-11e5-aee3-005056917a89
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Mon, 11 Jan 2016 20:58:36 +0100 (CET)
MIME-Version: 1.0
Date: Mon, 11 Jan 2016 20:57:57 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <1452530987-994-1-git-send-email-petter@technux.se>
References: <1452530987-994-1-git-send-email-petter@technux.se>
Message-ID: <3dabc983e71181dad3308c04982c5b07@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/5] Various upgrade/fixes from Technux
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Jan 2016 19:58:03 -0000
Content-Type: multipart/alternative;
	boundary="=_dd4c3d7dc3b4ca4e4bb40e354b5bc1cc"

--=_dd4c3d7dc3b4ca4e4bb40e354b5bc1cc
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

Just realized that I missed one minor patch that fixes some typo in
the README.. Will add that one in a v2 of this serie. 

BR Petter


Petter Mabäcker

Technux
<petter@technux.se>
www.technux.se

2016-01-11 17:49 skrev Petter
Mabäcker: 

> Various fixes from Technux, with focus on PiTFT support.
>

> Petter Mabäcker (5):
> .gitignore: Ignore .swp files
>
linux-raspberrypi: Update 4.1 recipe to 4.1.15
> rpi-config: I2C
support
> pitft: Add basic support for PiTFT
> pitft: Add PiTFT22
support
> 
> .gitignore | 1 +
> README | 43 ++++++--
>
conf/machine/include/rpi-base.inc | 1 +
>
recipes-bsp/bootfiles/rpi-config_git.bb | 26 +++++
>
.../rpi/xorg.conf.d/99-pitft.conf | 5 +
>
.../xorg-xserver/xserver-xf86-config_0.1.bbappend | 1 +
>
recipes-kernel/linux/linux-raspberrypi.inc | 1 +
>
...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110
+++++++++++++++++++++
> .../0001-dts-add-overlay-for-pitft22.patch | 110
+++++++++++++++++++++
> recipes-kernel/linux/linux-raspberrypi_3.18.bb |
5 +-
> recipes-kernel/linux/linux-raspberrypi_4.1.bb | 8 +-
> 11 files
changed, 298 insertions(+), 13 deletions(-)
> create mode 100644
recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
>
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22-in-linux-3.18.patch
>
create mode 100644
recipes-kernel/linux/linux-raspberrypi/0001-dts-add-overlay-for-pitft22.patch


--=_dd4c3d7dc3b4ca4e4bb40e354b5bc1cc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>Just realized that I missed one minor patch that fixes some typo in the =
README.. Will add that one in a v2 of this serie.</p>
<p>BR Petter</p>
<p>&nbsp;</p>
<div>
<pre>Petter Mab&auml;cker

Technux &lt;petter@technux.se&gt;
www.technux.se</pre>
</div>
<p>2016-01-11 17:49 skrev Petter Mab&auml;cker:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>Various fixes from Technux, with focus on PiTFT support.

Petter Mab&auml;cker (5):
  .gitignore: Ignore .swp files
  linux-raspberrypi: Update 4.1 recipe to 4.1.15
  rpi-config: I2C support
  pitft: Add basic support for PiTFT
  pitft: Add PiTFT22 support

 .gitignore                                         |   1 +
 README                                             |  43 ++++++--
 conf/machine/include/rpi-base.inc                  |   1 +
 recipes-bsp/bootfiles/rpi-config_git.bb            |  26 +++++
 .../rpi/xorg.conf.d/99-pitft.conf                  |   5 +
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |   1 +
 recipes-kernel/linux/linux-raspberrypi.inc         |   1 +
 ...dts-add-overlay-for-pitft22-in-linux-3.18.patch | 110 +++++++++++++++++=
++++
 .../0001-dts-add-overlay-for-pitft22.patch         | 110 +++++++++++++++++=
++++
 recipes-kernel/linux/linux-raspberrypi_3.18.bb     |   5 +-
 recipes-kernel/linux/linux-raspberrypi_4.1.bb      |   8 +-
 11 files changed, 298 insertions(+), 13 deletions(-)
 create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/x=
org.conf.d/99-pitft.conf
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-ove=
rlay-for-pitft22-in-linux-3.18.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi/0001-dts-add-ove=
rlay-for-pitft22.patch
</pre>
</blockquote>
</body></html>

--=_dd4c3d7dc3b4ca4e4bb40e354b5bc1cc--
