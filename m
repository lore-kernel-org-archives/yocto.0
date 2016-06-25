Return-Path: <forlorn18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC602E00E03; Sat, 25 Jun 2016 08:48:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (forlorn18[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE348E0095F
	for <yocto@yoctoproject.org>; Sat, 25 Jun 2016 08:48:32 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id 187so13083473wmz.1
	for <yocto@yoctoproject.org>; Sat, 25 Jun 2016 08:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version; 
	bh=num+1RFjO/FpySD7Oa7/tZKGuTs2jeSLuTg1WzLp0Tg=;
	b=MMf/ZDnJsyq5IQXvBB1VAZL66YeUma3MAPghFdK2d6h/FN7maHwl0HV8tmbRYdFzwZ
	p9/Ok3iYf3JqKbV2aklnmKNFog2fd9Rc5gIEl3N4ZaHuGeH8x9EW4zivDmPG5LUeqwSt
	Pl44q+K4COsKB3pMlJWkj4sNZ+GMe6Xk5CD6cvuMRmJWppPY3VFwg/CsDNwF7U1CBV09
	uTN3Bftd6YR5PAY1YAD5xLUq+wo+VVOXGTxq7tnK1pg08x0nk/ptSCYRlM6ulAeuAZRI
	U6bzVtfGwSsgxmpS+cePccDce3AW3nbpSgNivqF+FAUIFGjOb03U2jXouD3RdTsl0OuW
	axsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version;
	bh=num+1RFjO/FpySD7Oa7/tZKGuTs2jeSLuTg1WzLp0Tg=;
	b=QI/ihv8i903IP1TSBKYo0ULRDhBfzYMKwsifm4ZPRJ+mzUh6lL1LyW0Ea06vclQY6T
	bV1AWQSAHZYK+O3vbsi/Co6YxcjNMwfKCO567U9wEnfoWQawE+uiyKsc+3L/eLSM55Q4
	gVxUI7oDvcZk3rEow0n6tmhYdkWw+1MrGccqrOMDOdTp7uWrnkEMEzbdktYjMhFuVZvi
	ZdZEPMiv8PiwhSSXJ7heoDYxkr4cPZ14gckrbHfICQlTB4i1gwHccnYgU4lmWAkcohF1
	80vZfYLtymBF7zEPZimbaAje5EfrVYvlPqMuBxrgQScQALiO8jqXj2ZlcXWAGq4f+zYF
	RpuA==
X-Gm-Message-State: ALyK8tLR9yLh6TMShTk44g5FIgQkv8l1woqnShgK7oqGzCeWhl+UosdOGLymNpNTZFQC8A==
X-Received: by 10.194.205.233 with SMTP id lj9mr9288168wjc.10.1466869711253;
	Sat, 25 Jun 2016 08:48:31 -0700 (PDT)
Received: from ConcEmb (ger67-1-88-180-180-180.fbx.proxad.net.
	[88.180.180.180]) by smtp.gmail.com with ESMTPSA id
	r130sm2139502wmf.20.2016.06.25.08.48.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 25 Jun 2016 08:48:30 -0700 (PDT)
Message-ID: <1466869709.19352.170.camel@gmail.com>
From: Francois Muller <forlorn18@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 25 Jun 2016 17:48:29 +0200
In-Reply-To: <1466177739-77627-4-git-send-email-herve.jourdain@neuf.fr>
References: <1466177739-77627-1-git-send-email-herve.jourdain@neuf.fr>
	<1466177739-77627-4-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: Evolution 3.20.3-1 
Mime-Version: 1.0
Subject: Re: [meta-raspberrypi][PATCH v5 3/4] linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Sat, 25 Jun 2016 15:48:33 -0000
Content-Type: multipart/alternative; boundary="=-eHl1HD3+nPfNcn96mT8y"

--=-eHl1HD3+nPfNcn96mT8y
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Hervé,
I haven't tested your patch yet, but while reviewing the diff I'm a
bit surprised about this:
>          overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', > dts
, d)
> +        overlays = oe.utils.str_filter_out('\S+\.dtbo$', > overlays,
> d)
Shouldn't .dtbo files be filtered out from 'dts' instead of 'overlays'
in the added line?
Seems like a typo to me.
BR,
François
Le vendredi 17 juin 2016 à 23:35 +0800, Herve Jourdain a écrit :
> Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays,
> instead of .dtb.
> Add support for both variants of overlays ("-overlay.dtb" and
> ".dtbo")
> Change which variant needs to be supported based on the kernel
> version
> 
> CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set,
> causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing
> get_kernelversion_file() to fail!
> To avoid this problem, get_dts() and split_overlays() MUST be called
> with the kernel version parameter set, when called from
> IMAGE_CMD_rpi-sdimg!
> 
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-
> raspberrypi-base.bbclass
> index 40beef1..930fc44 100644
> --- a/classes/linux-raspberrypi-base.bbclass
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -1,7 +1,8 @@
>  inherit linux-kernel-base
>  
> -
>  def get_dts(d, ver):
> +    import re
> +
>      staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
>      dts = d.getVar("KERNEL_DEVICETREE", True)
>  
> @@ -20,20 +21,24 @@ def get_dts(d, ver):
>  
>      # Always turn off device tree support for kernel's < 3.18
>      try:
> -        if int(min_ver[0]) <= 3:
> -            if int(min_ver[1]) < 18:
> -                dts = ""
> +        if int(min_ver[0]) >= 4:
> +            if (int(min_ver[1]) < 4) or (int(min_ver[1]) == 4 and
> int(min_ver[2]) < 6):
> +                dts = ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-
> overlay.dtb', x)) for x in dts.split()])
> +        elif int(min_ver[1]) < 18:
> +            dts = ""
>      except IndexError:
>          min_ver = None
>  
>      return dts
>  
>  
> -def split_overlays(d, out):
> -    dts = get_dts(d, None)
> +def split_overlays(d, ver, out):
> +    dts = get_dts(d, ver)
>      if out:
>          overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$',
> dts, d)
> +        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays,
> d)
>      else:
> -        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
> +        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
> + \
> +                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
>  
>      return overlays
> -- 
> 2.7.4
> 

--=-eHl1HD3+nPfNcn96mT8y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html><head></head><body><div>Hi Hervé,</div><div><br></div><div>I haven't tested your patch yet, but while reviewing the diff I'm a bit surprised about this:</div><blockquote type="cite"><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', <u><b>dts</b></u>, d)</div><div>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;overlays = oe.utils.str_filter_out('\S+\.dtbo$', <u><b>overlays</b></u>, d)</div></blockquote><div>Shouldn't .dtbo files be filtered out from 'dts' instead of 'overlays' in the added line?</div><div>Seems like a typo to me.</div><div><br></div><div>BR,</div><div>François</div><div><br></div><div>Le vendredi 17 juin 2016 à 23:35 +0800, Herve Jourdain a écrit&nbsp;:</div><blockquote type="cite"><pre>Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
Change which variant needs to be supported based on the kernel version

CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_kernelversion_file() to fail!
To avoid this problem, get_dts() and split_overlays() MUST be called with the kernel version parameter set, when called from IMAGE_CMD_rpi-sdimg!

Signed-off-by: Herve Jourdain &lt;<a href="mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt;
---
 classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 40beef1..930fc44 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -1,7 +1,8 @@
 inherit linux-kernel-base
 
-
 def get_dts(d, ver):
+    import re
+
     staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
     dts = d.getVar("KERNEL_DEVICETREE", True)
 
@@ -20,20 +21,24 @@ def get_dts(d, ver):
 
     # Always turn off device tree support for kernel's &lt; 3.18
     try:
-        if int(min_ver[0]) &lt;= 3:
-            if int(min_ver[1]) &lt; 18:
-                dts = ""
+        if int(min_ver[0]) &gt;= 4:
+            if (int(min_ver[1]) &lt; 4) or (int(min_ver[1]) == 4 and int(min_ver[2]) &lt; 6):
+                dts = ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in dts.split()])
+        elif int(min_ver[1]) &lt; 18:
+            dts = ""
     except IndexError:
         min_ver = None
 
     return dts
 
 
-def split_overlays(d, out):
-    dts = get_dts(d, None)
+def split_overlays(d, ver, out):
+    dts = get_dts(d, ver)
     if out:
         overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
     else:
-        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + \
+                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
 
     return overlays
-- 
2.7.4

</pre></blockquote></body></html>

--=-eHl1HD3+nPfNcn96mT8y--
