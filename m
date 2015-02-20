Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3FEEE002F9; Fri, 20 Feb 2015 08:34:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DCF3E00289
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 08:34:18 -0800 (PST)
X-Halon-ID: 62cd90b0-b91e-11e4-a613-005056916f53
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPA
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 17:34:48 +0100 (CET)
MIME-Version: 1.0
Date: Fri, 20 Feb 2015 17:34:14 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: <yocto@yoctoproject.org>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <3b09ff30524d7e45240fa256eb7ac865ef082f22.1423607636.git.petter@technux.se>
References: <cover.1423607636.git.petter@technux.se>
	<3b09ff30524d7e45240fa256eb7ac865ef082f22.1423607636.git.petter@technux.se>
Message-ID: <ddc1d259a2c9fbac2e047561b7bcf4b1@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Subject: Re: [meta-raspberrypi][PATCH 1/1] layer.conf: set layer depends
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
X-List-Received-Date: Fri, 20 Feb 2015 16:34:25 -0000
Content-Type: multipart/alternative;
	boundary="=_f6c8a36b8850cec52305b08d7ea35dde"

--=_f6c8a36b8850cec52305b08d7ea35dde
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=UTF-8

 

After discussions with meta-raspberrypi maintainers we have come to
the conclusion that we will not set any layer depends. We shouldn't
break most of the builds which don't use the test image and therefore
don't need the multimedia layer. So will instead break out the 'layer
prio' part and send out in a separate review. 

/Petter 

2015-02-10
23:39 skrev Petter Mabäcker: 

> Ensure that build fails in a
informative way if not all layer
> requirements are fulfilled.
> 
> To
disable strict layer depend set 'LAYERDEPENDS_raspberrypi = ""'
> in
local.conf.
> 
> Also set a high layer prio to ensure that
meta-raspberrypi addons
> are always prioritized above the depended
layers.
> 
> [Feature #46]
> 
> Change-Id:
I8df772a59975ae379c3a1e93e2770e83be752bfd
> Signed-off-by: Petter
Mabäcker <petter@technux.se>
> ---
> README | 4 ++++
> conf/layer.conf |
3 ++-
> 2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git
a/README b/README
> index bb2f4be..3dad1ea 100644
> --- a/README
> +++
b/README
> @@ -143,6 +143,10 @@ See:
http://wayland.freedesktop.org/raspberrypi.html [1]
> 
> 2.H. Images
>
===========
> +Note: 'rpi-hwup-image' and 'rpi-basic-image' can be build
without
> + meta-multimedia. Set 'LAYERDEPENDS_raspberrypi = ""' in
local.conf
> + to enable build without 'meta-multimedia'.
> +
> *
rpi-hwup-image
> Hardware up image
> * rpi-basic-image
> diff --git
a/conf/layer.conf b/conf/layer.conf
> index 7bffd4b..b5ab695 100644
>
--- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -7,7 +7,8 @@ BBFILES
+= "${LAYERDIR}/recipes*/*/*.bb 
> 
> BBFILE_COLLECTIONS +=
"raspberrypi"
> BBFILE_PATTERN_raspberrypi := "^${LAYERDIR}/"
>
-BBFILE_PRIORITY_raspberrypi = "6"
> +BBFILE_PRIORITY_raspberrypi =
"9"
> +LAYERDEPENDS_raspberrypi = "multimedia-layer"
> 
> # Additional
license directories.
> LICENSE_PATH +=
"${LAYERDIR}/files/custom-licenses"
> -- 
> 1.9.1
 

Links:
------
[1]
http://wayland.freedesktop.org/raspberrypi.html

--=_f6c8a36b8850cec52305b08d7ea35dde
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Helvetica,Arial,sans-serif'>
<p>After discussions with meta-raspberrypi maintainers we have come to the =
conclusion that we will not set any layer depends. We shouldn't break most =
of the builds which don't use the test image and therefore don't need the m=
ultimedia layer. So will instead break out the 'layer prio' part and send o=
ut in a separate review. </p>
<p>/Petter</p>
<p>2015-02-10 23:39 skrev Petter Mab&auml;cker:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px; width:100%"><!-- html ignored --><!-- head ignore=
d --><!-- meta ignored -->
<pre>Ensure that build fails in a informative way if not all layer
requirements are fulfilled.

To disable strict layer depend set 'LAYERDEPENDS_raspberrypi =3D ""'
in local.conf.

Also set a high layer prio to ensure that meta-raspberrypi addons
are always prioritized above the depended layers.

[Feature #46]

Change-Id: I8df772a59975ae379c3a1e93e2770e83be752bfd
Signed-off-by: Petter Mab&auml;cker &lt;<a href=3D"mailto:petter@technux.se=
">petter@technux.se</a>&gt;
---
 README          | 4 ++++
 conf/layer.conf | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/README b/README
index bb2f4be..3dad1ea 100644
--- a/README
+++ b/README
@@ -143,6 +143,10 @@ See: <a href=3D"http://wayland.freedesktop.org/raspber=
rypi.html">http://wayland.freedesktop.org/raspberrypi.html</a>
=20
 2.H. Images
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+Note: 'rpi-hwup-image' and 'rpi-basic-image' can be build without
+      meta-multimedia. Set 'LAYERDEPENDS_raspberrypi =3D ""' in local.conf
+      to enable build without 'meta-multimedia'.
+
 * rpi-hwup-image
     Hardware up image
 * rpi-basic-image
diff --git a/conf/layer.conf b/conf/layer.conf
index 7bffd4b..b5ab695 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,7 +7,8 @@ BBFILES +=3D "${LAYERDIR}/recipes*/*/*.bb \
=20
 BBFILE_COLLECTIONS +=3D "raspberrypi"
 BBFILE_PATTERN_raspberrypi :=3D "^${LAYERDIR}/"
-BBFILE_PRIORITY_raspberrypi =3D "6"
+BBFILE_PRIORITY_raspberrypi =3D "9"
+LAYERDEPENDS_raspberrypi =3D "multimedia-layer"
=20
 # Additional license directories.
 LICENSE_PATH +=3D "${LAYERDIR}/files/custom-licenses"
<span class=3D"sig">--=20
1.9.1
</span></pre>
</blockquote>
</body></html>

--=_f6c8a36b8850cec52305b08d7ea35dde--
