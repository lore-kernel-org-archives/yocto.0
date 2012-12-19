Return-Path: <munoz0raul@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C185CE011AB
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 02:25:01 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id k10so2523576iea.29
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 02:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=0UteX8B1YYl/NJRb+f9iRQ4MdSFbdDRcNitvpy0+mIw=;
	b=DmvcEu9QhaqSbmiTw4PLM8xqJzgCdzh3aaOTpGyCN28xBHwdvYftPAUDyiLg3TIOIt
	5G5j3Gp2/vLmPJlLJeW52neSFNDKaYKtCLyoMHbX7pIjZyCU3M32kST4ttEwofRfriH1
	h2w9tpYwhRqAkN/8vAxCHefPzWNqm6ay2SfT1G07Vnu1R37XtDK78C3IrPLhvkJ/fzZV
	Tgg5xA3TWhfRFeWTKG481ykCkdvlLIiW0m/K0fPmbniFrSlgEl84gksWH4eJkGVgKoiV
	XGAWpR/HPwvR2BunDxb9KfHUNr6AcaOf+I26B0fbd+MkJxJk7tApywyUlwPZPYcpk5ZK
	1sCw==
MIME-Version: 1.0
Received: by 10.50.187.165 with SMTP id ft5mr6512457igc.12.1355912700639; Wed,
	19 Dec 2012 02:25:00 -0800 (PST)
Received: by 10.64.147.40 with HTTP; Wed, 19 Dec 2012 02:25:00 -0800 (PST)
In-Reply-To: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
References: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
Date: Wed, 19 Dec 2012 08:25:00 -0200
Message-ID: <CANmVirhKN+g8YawraT9d3ieFrCrQtaTomEUC7Zv1X_DTZc7rmg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use JRE (Java Runtime) in Yocto Projects
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
X-List-Received-Date: Wed, 19 Dec 2012 10:25:01 -0000
Content-Type: multipart/alternative; boundary=14dae9341027de3af604d13206c0

--14dae9341027de3af604d13206c0
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I did some things like this wiki.

I added the meta-java layer but the only important diference is that I'm
using meta poky (/poky/meta) and no meta oe-core (/oe-core/meta).

https://github.com/woglinde/meta-java/wiki

The fisrt probleme tha I have is that the package LLVM show me some errors.

here is what I have:

raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$
bitbake openjdk-6
WARNING: Host distribution "Ubuntu 12.04.1 LTS" has not been validated with
this version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
NOTE: Error expanding variable populate_packages
                                                            | ETA:  00:00:38
NOTE: Error during finalise of
/home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/
llvm2.8_2.8.bb
ERROR: Unable to parse
/home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/
llvm2.8_2.8.bb
ERROR: Command execution failed: Traceback (most recent call last):
  File "/home/prjs/poky/bitbake/lib/bb/command.py", line 84, in
runAsyncCommand
    self.cooker.updateCache()
  File "/home/prjs/poky/bitbake/lib/bb/cooker.py", line 1202, in updateCache
    if not self.parser.parse_next():
  File "/home/prjs/poky/bitbake/lib/bb/cooker.py", line 1669, in parse_next
    self.virtuals += len(result)
UnboundLocalError: local variable 'result' referenced before assignment


Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$


Thanks

--14dae9341027de3af604d13206c0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div><div>Hello all,</div><div>=
I did some things like this wiki.</div><div><br></div><div>I added the meta=
-java layer but the only important diference is that I&#39;m using meta pok=
y (/poky/meta) and no meta oe-core (/oe-core/meta).</div>
<div><br></div><div><a href=3D"https://github.com/woglinde/meta-java/wiki">=
https://github.com/woglinde/meta-java/wiki</a></div><div><br></div><div>The=
 fisrt probleme tha I have is that the package LLVM show me some errors.</d=
iv>
<div><br></div><div>here is what I have:</div><div><br></div><div><font fac=
e=3D"&#39;courier new&#39;, monospace">raul@phi04:/home/prjs/newcom0001/wor=
kspace/philinux/philinux-imx28-newcom$ bitbake openjdk-6</font></div><div>
<font face=3D"&#39;courier new&#39;, monospace">WARNING: Host distribution =
&quot;Ubuntu 12.04.1 LTS&quot; has not been validated with this version of =
the build system; you may possibly experience unexpected failures. It is re=
commended that you use a tested distribution.</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Error expanding =
variable populate_packages =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | ETA: =A000:00:38</font><=
/div><div><font face=3D"&#39;courier new&#39;, monospace">NOTE: Error durin=
g finalise of /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-co=
re/llvm/<a href=3D"http://llvm2.8_2.8.bb">llvm2.8_2.8.bb</a></font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">ERROR: Unable to parse=
 /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/<a hr=
ef=3D"http://llvm2.8_2.8.bb">llvm2.8_2.8.bb</a></font></div><div><font face=
=3D"&#39;courier new&#39;, monospace">ERROR: Command execution failed: Trac=
eback (most recent call last):</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 File &quot;/home/p=
rjs/poky/bitbake/lib/bb/command.py&quot;, line 84, in runAsyncCommand</font=
></div><div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 self.co=
oker.updateCache()</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 File &quot;/home/p=
rjs/poky/bitbake/lib/bb/cooker.py&quot;, line 1202, in updateCache</font></=
div><div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 if not sel=
f.parser.parse_next():</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">=A0 File &quot;/home/p=
rjs/poky/bitbake/lib/bb/cooker.py&quot;, line 1669, in parse_next</font></d=
iv><div><font face=3D"&#39;courier new&#39;, monospace">=A0 =A0 self.virtua=
ls +=3D len(result)</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">UnboundLocalError: loc=
al variable &#39;result&#39; referenced before assignment</font></div><div>=
<font face=3D"&#39;courier new&#39;, monospace"><br></font></div><div><font=
 face=3D"&#39;courier new&#39;, monospace"><br>
</font></div><div><font face=3D"&#39;courier new&#39;, monospace">Summary: =
There was 1 WARNING message shown.</font></div><div><font face=3D"&#39;cour=
ier new&#39;, monospace">Summary: There were 2 ERROR messages shown, return=
ing a non-zero exit code.</font></div>
<div><font face=3D"&#39;courier new&#39;, monospace">raul@phi04:/home/prjs/=
newcom0001/workspace/philinux/philinux-imx28-newcom$=A0</font></div><div><b=
r></div><div><br></div><div>Thanks</div></div>
</div></div>

--14dae9341027de3af604d13206c0--
