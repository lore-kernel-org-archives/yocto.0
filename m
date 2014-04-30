Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDDFFE009A7; Wed, 30 Apr 2014 09:08:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (diego.sueiro[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46516E0099B
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 09:08:20 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id x3so2106541qcv.12
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 09:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=SmZGAONwKDI63da3+q/6jV/IV30JyvEj2lb9QvItDWk=;
	b=rooOlXyjAQDEHtP2N+wOwrle5taj7xlk9cnzHWKvWHXQvAV6dounpptbc74hWHcTTb
	jY5XSDPMXUO193OpZ8Y39774KNEtLDj8mxXzGym19tOipcoe8X8hOfDNWWsYgS7kF8Wd
	/ZTHqb9kR/cySliJtOWlS7k4RVWsV62JnIeJHCd/t1I5yUzpRRNH0VdF0A9Pp3s+y31k
	N6ox9qsZCZyOQrCiCrp0dfIZ4Q9+Ck6OwoTDKrgO5mEUBthUOyoi39QoUfXUHOtJTxkw
	9Xj3Dj5LzPtwVkTHapfjojCNgyf1TULd7nVht71BDpaPno7Y1mJ7dY900UrDXo2PsKTi
	WS5Q==
X-Received: by 10.140.86.178 with SMTP id p47mr6255316qgd.66.1398874100065;
	Wed, 30 Apr 2014 09:08:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Wed, 30 Apr 2014 09:07:59 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 30 Apr 2014 13:07:59 -0300
Message-ID: <CAMCfZKGJAw0nujz=mac7=ZFrL2+PyOoVVqmmjwDEmA5sVv+X7A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Beaglebone Black with core-image-weston
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
X-List-Received-Date: Wed, 30 Apr 2014 16:08:26 -0000
Content-Type: multipart/alternative; boundary=001a11c13d5cd1ec4904f844c180

--001a11c13d5cd1ec4904f844c180
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I'm trying to get wayland support on BBB with yocto daisy, but weston is
not starting up.
Here is the output:

Date: 2014-04-30 UTC
[15:39:30.029] weston 1.4.0
               http://wayland.freedesktop.org/
               Bug reports to:
https://bugs.freedesktop.org/enter_bug.cgi?product=Wayland&component=weston&version=1.4.0
               Build: 1.4.0-dirty configure.ac: Bump version to 1.4.0
(2014-01-23 20:51:40 -0800)
[15:39:30.030] OS: Linux, 3.14.0-yocto-standard, #1 PREEMPT Tue Apr 29
17:00:14 BRT 2014, armv7l
[15:39:30.031] Starting with no config file.
[15:39:30.032] Loading module '/usr/lib/weston/drm-backend.so'
[15:39:30.048] initializing drm backend
[15:39:30.053] using /dev/dri/card0
[15:39:30.054] Loading module '/usr/lib/weston/gl-renderer.so'
gbm: malformed or no PCI IDfailed to load module:
/usr/lib/gbm/gbm_gallium_drm.so: cannot open shared object file: No such
file or directory
[15:39:30.074] failed to initialize egl
[15:39:30.105] fatal: failed to create compositor

Looking at the yocto manual [1] it says that wayland is only supported on
Mesa 3D and DRI targets.
I've already tried to add PACKAGECONFIG_pn-mesa="gallium-gbm" but it
complains that "Nothing RPROVIDES 'libgles2".

Should I have to build libgles-opma3 to get it supported?
Before trying this I would like to have some clarification about wayland
support on BBB. Is it possible? If not, why am I able to build an
unsupported image for it?


[1] -
http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#wayland


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c13d5cd1ec4904f844c180
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div>I&#39;m trying to get wayland su=
pport on BBB with yocto daisy, but weston is not starting up.</div><div>Her=
e is the output:</div><div><blockquote style=3D"margin:0px 0px 0px 40px;bor=
der:none;padding:0px">


<div><div>Date: 2014-04-30 UTC</div><div>[15:39:30.029] weston 1.4.0</div><=
div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://wayland.freedesktop.or=
g/" target=3D"_blank">http://wayland.freedesktop.org/</a></div><div>=A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0Bug reports to: <a href=3D"https://bugs.freedesktop=
.org/enter_bug.cgi?product=3DWayland&amp;component=3Dweston&amp;version=3D1=
.4.0" target=3D"_blank">https://bugs.freedesktop.org/enter_bug.cgi?product=
=3DWayland&amp;component=3Dweston&amp;version=3D1.4.0</a></div>


<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Build: 1.4.0-dirty <a href=3D"http://co=
nfigure.ac" target=3D"_blank">configure.ac</a>: Bump version to 1.4.0 (2014=
-01-23 20:51:40 -0800)</div><div>[15:39:30.030] OS: Linux, 3.14.0-yocto-sta=
ndard, #1 PREEMPT Tue Apr 29 17:00:14 BRT 2014, armv7l</div>


<div>[15:39:30.031] Starting with no config file.</div><div>[15:39:30.032] =
Loading module &#39;/usr/lib/weston/drm-backend.so&#39;</div><div>[15:39:30=
.048] initializing drm backend</div><div>[15:39:30.053] using /dev/dri/card=
0</div>


<div>[15:39:30.054] Loading module &#39;/usr/lib/weston/gl-renderer.so&#39;=
</div><div>gbm: malformed or no PCI IDfailed to load module: /usr/lib/gbm/g=
bm_gallium_drm.so: cannot open shared object file: No such file or director=
y</div>


<div>[15:39:30.074] failed to initialize egl</div><div>[15:39:30.105] fatal=
: failed to create compositor</div></div><div><br></div></blockquote></div>=
<div style>Looking at the yocto manual [1] it says that wayland is only sup=
ported on Mesa 3D and DRI targets.</div>

<div style>I&#39;ve already tried to add=A0PACKAGECONFIG_pn-mesa=3D&quot;ga=
llium-gbm&quot; but it complains that &quot;Nothing RPROVIDES &#39;libgles2=
&quot;.</div><div style><br></div><div style>Should I have to build libgles=
-opma3 to get it supported?</div>

<div style>Before trying this I would like to have some clarification about=
 wayland support on BBB. Is it possible? If not, why am I able to build an =
unsupported image for it?</div><div style><br></div><div style><br></div>

<div style>[1] -=A0<a href=3D"http://www.yoctoproject.org/docs/current/mega=
-manual/mega-manual.html#wayland">http://www.yoctoproject.org/docs/current/=
mega-manual/mega-manual.html#wayland</a></div><div><br></div><div>
<br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>-=
-<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"h=
ttp://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=
=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">=
www.embarcados.com.br</a><br>



<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c13d5cd1ec4904f844c180--
