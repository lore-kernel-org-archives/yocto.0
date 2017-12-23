Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13DF5E00D55; Fri, 22 Dec 2017 20:35:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D3E9E00D41
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 20:35:19 -0800 (PST)
Received: by mail-vk0-f49.google.com with SMTP id 189so18464433vkc.9
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 20:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=naS+uH2d/KCK68sA1p9tmYlXeY95yTHj6wOIKOw5tUg=;
	b=LvWwELFpR/o+fAcKNEDCcbOpM+R0o5/e5nYbMMEe21FQ/56eH5UdnCGFkGl/QGCHs/
	qQ6xf9i9fgPYjCWhNRXPjUrwKvXb/BNjwsedUF8/XAWDAfAxZKEF1R+vT85rAcNLyLYf
	uVN9AP6GA67wAWGt9xI6ouawOHkNn9tncg7NBoT26HXEj14Fn+8+D5EATowW6NcHuVSV
	0FJeQBscVRN5OiCHX3/XPWzsEona8RIFklYpAPyb0hCCieBNdTBKjmSKYwOJPXKqe4M+
	nVDd7ZnHSbeAFSgmNGDbA9sCgFEEiwIjrRK4HRSg9PCqv/woOvozUsq2Y+NJV8al8YMj
	gzjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=naS+uH2d/KCK68sA1p9tmYlXeY95yTHj6wOIKOw5tUg=;
	b=HYIOMV7QD1yzuAo8eFrPd3kEFX7uzeGBLTyAI5fGR0IDs7uLi8/fxI7RMzwx6GC/k2
	ASfdQVFzYEoMjfKjIpXRJ+j4lOZEyniCwXNI4DCDKUVmF9p6NOhS7zOMfdDbmpAT+8bL
	UmNUdQNwzVmPMv4iO8cSF205CFSuvWesiyp9bHdJN/WCuEeB++7aI8HXLW6hyVzt3Vgi
	7TBQjcPGWdh4ccx4/yPKRnUu2XGOyP5MauXOLipnlQkU5hdt3vJO1zZWJdkv69aMekVw
	E1Shg4bO9iaaLc5OjsisO5aeeTIOAGS16lnDPxL7mlm2C01SYLmyYzMivQcZiJZcXZza
	RIWg==
X-Gm-Message-State: AKGB3mJNsNpr6ulP5MCMBwjd8bCWq911TvmvmuBLQ0TQ6BGM+i9xPuQj
	78UZe5g2y3+FPGcObbcT/hmyp4ExQHqd0j53eeqGZg==
X-Google-Smtp-Source: ACJfBot/bcm8qtlj1b8bpTypi4QCXAZJ2ZT14zRbYAD6piuGQXo50rquviUh/WKPlmCbkk1fsKlolOE4q3Lgd6H9vNw=
X-Received: by 10.31.115.138 with SMTP id o132mr15689543vkc.187.1514003718260; 
	Fri, 22 Dec 2017 20:35:18 -0800 (PST)
MIME-Version: 1.0
References: <20171223023557.14226-1-timothy.t.orling@linux.intel.com>
In-Reply-To: <20171223023557.14226-1-timothy.t.orling@linux.intel.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Sat, 23 Dec 2017 04:35:07 +0000
Message-ID: <CANx9H-DatBqC81xGBvGrPFDQ7e4wQt5wD6Thi25zgp78wJL98Q@mail.gmail.com>
To: Tim Orling <timothy.t.orling@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [eclipse-poky][neon][PATCH] Update setup.sh to Neon.3 (4.6.3) release
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
X-List-Received-Date: Sat, 23 Dec 2017 04:35:22 -0000
Content-Type: multipart/alternative; boundary="94eb2c14c302d0cc780560fa75e5"

--94eb2c14c302d0cc780560fa75e5
Content-Type: text/plain; charset="UTF-8"

Also fixed some white space errors...

On Fri, Dec 22, 2017 at 6:27 PM Tim Orling <timothy.t.orling@linux.intel.com>
wrote:

> org.eclipse.tm.terminal* are now available on MAIN_SITE
>
> Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
> ---
>  scripts/setup.sh | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/scripts/setup.sh b/scripts/setup.sh
> index 0764021b66c..4f7dc2b0a78 100755
> --- a/scripts/setup.sh
> +++ b/scripts/setup.sh
> @@ -23,7 +23,7 @@ while getopts ":h" opt; do
>    esac
>  done
>
> -err_exit()
> +err_exit()
>  {
>    echo "[FAILED $1]$2"
>    exit $1
> @@ -35,7 +35,7 @@ case ${uname_s}${uname_m} in
>    Linuxppc*) ep_arch=linux-gtk-ppc
>               cdt_arch=linux.ppc
>               ;;
> -  Linuxx86_64*) ep_arch=linux-gtk-x86_64
> +  Linuxx86_64*) ep_arch=linux-gtk-x86_64
>                  cdt_arch=linux.x86_64
>                  ;;
>    Linuxi*86) ep_arch=linux-gtk
> @@ -92,12 +92,12 @@ fi
>
>  # prepare the base Eclipse installation in folder "eclipse"
>  ep_rel="R-"
> -ep_ver="4.6.2"
> -ep_date="-201611241400"
> +ep_ver="4.6.3"
> +ep_date="-201703010400"
>  P2_disabled=false
>  P2_no_dropins=false
>
> -if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.2.v20161122-0613.jar ];
> then
> +if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.3.v20170228-0512.jar ];
> then
>
>    pushd .
>
> @@ -130,7 +130,7 @@ if [ ! -f
> eclipse/plugins/org.eclipse.swt_3.105.2.v20161122-0613.jar ]; then
>    popd
>
>    if [ ! -d eclipse -o -h eclipse ]; then
> -    if [ -e eclipse ]; then
> +    if [ -e eclipse ]; then
>        rm eclipse
>      fi
>      ln -s eclipse-${ep_ver}-${ep_arch}/eclipse eclipse
> @@ -150,7 +150,7 @@ if [ ! -f eclipse/startup.jar ]; then
>    LAUNCHER="`ls org.eclipse.equinox.launcher_*.jar | sort | tail -1`"
>
>    if [ "x${LAUNCHER}" != "x" ]; then
> -    echo "eclipse LAUNCHER=${LAUNCHER}"
> +    echo "eclipse LAUNCHER=${LAUNCHER}"
>      ln -s plugins/${LAUNCHER} ../startup.jar
>    else
>      echo "Eclipse: NO startup.jar LAUNCHER FOUND!"
> @@ -261,24 +261,24 @@ UPDATE_SITE="
> http://download.eclipse.org/eclipse/updates/4.6"
>
>  #CDT related
>  echo -e "\nPlease wait. Installing CDT.SDK.FEATURE.GROUP"
> -CDTFEAT="9.2.0"
> +CDTFEAT="9.2.1"
>  update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group
> ${CDTFEAT}
>
>  echo -e "\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GROUP"
> -CDTREMOTEVER="9.2.0"
> +CDTREMOTEVER="9.2.1"
>  update_feature_remote ${MAIN_SITE}
> org.eclipse.cdt.launch.remote.feature.group ${CDTREMOTEVER}
>
>  #TM Terminal (was RSE) related
>  echo -e "\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.GROUP"
> -TMTERMVER="4.1.0"
> -update_feature_remote ${TM_TERMINAL_SITE}
> org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
> +TMTERMVER="4.2.0"
> +update_feature_remote ${MAIN_SITE}
> org.eclipse.tm.terminal.feature.feature.group ${TMTERMVER}
>
>  echo -e "\nPlease wait. Installing TM.TERMINAL.VIEW.RSE.FEATURE.GROUP"
> -TMTERMVIEWRSEVER="4.1.0"
> -update_feature_remote ${TM_TERMINAL_SITE}
> org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
> +TMTERMVIEWRSEVER="4.2.0"
> +update_feature_remote ${MAIN_SITE}
> org.eclipse.tm.terminal.view.rse.feature.feature.group ${TMTERMVIEWRSEVER}
>
>  echo -e "\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.GROUP"
> -TMCONTROLVER="4.1.0"
> +TMCONTROLVER="4.2.0"
>  update_feature_remote ${MAIN_SITE}
> org.eclipse.tm.terminal.control.feature.feature.group ${TMCONTROLVER}
>
>  #RSE_SDK
> @@ -293,11 +293,11 @@ update_feature_remote ${TM_SITE}
> org.eclipse.rse.terminals.feature.group ${RSETE
>
>  #AUTOTOOLS
>  echo -e "\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP"
> -ATVER="9.2.0"
> +ATVER="9.2.1"
>  update_feature_remote ${MAIN_SITE}
> org.eclipse.cdt.autotools.feature.group ${ATVER}
>
>  #Lttng2
> -TMF_CTF_REL="2.2.0"
> +TMF_CTF_REL="2.3.0"
>  echo -e "\nPlease wait. Installing TRACECOMPASS.LTTNG2.UST.FEATURE.GROUP"
>  update_feature_remote ${MAIN_SITE}
> org.eclipse.tracecompass.lttng2.ust.feature.group ${TMF_CTF_REL}
>
> --
> 2.13.6
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c14c302d0cc780560fa75e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Also fixed some white space errors...</div><div><br><div class=3D"gmai=
l_quote"><div>On Fri, Dec 22, 2017 at 6:27 PM Tim Orling &lt;<a href=3D"mai=
lto:timothy.t.orling@linux.intel.com" target=3D"_blank">timothy.t.orling@li=
nux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">org.ec=
lipse.tm.terminal* are now available on MAIN_SITE<br>
<br>
Signed-off-by: Tim Orling &lt;<a href=3D"mailto:timothy.t.orling@linux.inte=
l.com" target=3D"_blank">timothy.t.orling@linux.intel.com</a>&gt;<br>
---<br>
=C2=A0scripts/setup.sh | 32 ++++++++++++++++----------------<br>
=C2=A01 file changed, 16 insertions(+), 16 deletions(-)<br>
<br>
diff --git a/scripts/setup.sh b/scripts/setup.sh<br>
index 0764021b66c..4f7dc2b0a78 100755<br>
--- a/scripts/setup.sh<br>
+++ b/scripts/setup.sh<br>
@@ -23,7 +23,7 @@ while getopts &quot;:h&quot; opt; do<br>
=C2=A0 =C2=A0esac<br>
=C2=A0done<br>
<br>
-err_exit()<br>
+err_exit()<br>
=C2=A0{<br>
=C2=A0 =C2=A0echo &quot;[FAILED $1]$2&quot;<br>
=C2=A0 =C2=A0exit $1<br>
@@ -35,7 +35,7 @@ case ${uname_s}${uname_m} in<br>
=C2=A0 =C2=A0Linuxppc*) ep_arch=3Dlinux-gtk-ppc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cdt_arch=3Dlinux.ppc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;<br>
-=C2=A0 Linuxx86_64*) ep_arch=3Dlinux-gtk-x86_64<br>
+=C2=A0 Linuxx86_64*) ep_arch=3Dlinux-gtk-x86_64<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cdt_arch=3Dli=
nux.x86_64<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
=C2=A0 =C2=A0Linuxi*86) ep_arch=3Dlinux-gtk<br>
@@ -92,12 +92,12 @@ fi<br>
<br>
=C2=A0# prepare the base Eclipse installation in folder &quot;eclipse&quot;=
<br>
=C2=A0ep_rel=3D&quot;R-&quot;<br>
-ep_ver=3D&quot;4.6.2&quot;<br>
-ep_date=3D&quot;-201611241400&quot;<br>
+ep_ver=3D&quot;4.6.3&quot;<br>
+ep_date=3D&quot;-201703010400&quot;<br>
=C2=A0P2_disabled=3Dfalse<br>
=C2=A0P2_no_dropins=3Dfalse<br>
<br>
-if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.2.v20161122-0613.jar ]; th=
en<br>
+if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.3.v20170228-0512.jar ]; th=
en<br>
<br>
=C2=A0 =C2=A0pushd .<br>
<br>
@@ -130,7 +130,7 @@ if [ ! -f eclipse/plugins/org.eclipse.swt_3.105.2.v2016=
1122-0613.jar ]; then<br>
=C2=A0 =C2=A0popd<br>
<br>
=C2=A0 =C2=A0if [ ! -d eclipse -o -h eclipse ]; then<br>
-=C2=A0 =C2=A0 if [ -e eclipse ]; then<br>
+=C2=A0 =C2=A0 if [ -e eclipse ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0rm eclipse<br>
=C2=A0 =C2=A0 =C2=A0fi<br>
=C2=A0 =C2=A0 =C2=A0ln -s eclipse-${ep_ver}-${ep_arch}/eclipse eclipse<br>
@@ -150,7 +150,7 @@ if [ ! -f eclipse/startup.jar ]; then<br>
=C2=A0 =C2=A0LAUNCHER=3D&quot;`ls org.eclipse.equinox.launcher_*.jar | sort=
 | tail -1`&quot;<br>
<br>
=C2=A0 =C2=A0if [ &quot;x${LAUNCHER}&quot; !=3D &quot;x&quot; ]; then<br>
-=C2=A0 =C2=A0 echo &quot;eclipse LAUNCHER=3D${LAUNCHER}&quot;<br>
+=C2=A0 =C2=A0 echo &quot;eclipse LAUNCHER=3D${LAUNCHER}&quot;<br>
=C2=A0 =C2=A0 =C2=A0ln -s plugins/${LAUNCHER} ../startup.jar<br>
=C2=A0 =C2=A0else<br>
=C2=A0 =C2=A0 =C2=A0echo &quot;Eclipse: NO startup.jar LAUNCHER FOUND!&quot=
;<br>
@@ -261,24 +261,24 @@ UPDATE_SITE=3D&quot;<a href=3D"http://download.eclips=
e.org/eclipse/updates/4.6" rel=3D"noreferrer" target=3D"_blank">http://down=
load.eclipse.org/eclipse/updates/4.6</a>&quot;<br>
<br>
=C2=A0#CDT related<br>
=C2=A0echo -e &quot;\nPlease wait. Installing CDT.SDK.FEATURE.GROUP&quot;<b=
r>
-CDTFEAT=3D&quot;9.2.0&quot;<br>
+CDTFEAT=3D&quot;9.2.1&quot;<br>
=C2=A0update_feature_remote ${MAIN_SITE} org.eclipse.cdt.sdk.feature.group =
${CDTFEAT}<br>
<br>
=C2=A0echo -e &quot;\nPlease wait. Installing CDT.LAUNCH.REMOTE.FEATURE.GRO=
UP&quot;<br>
-CDTREMOTEVER=3D&quot;9.2.0&quot;<br>
+CDTREMOTEVER=3D&quot;9.2.1&quot;<br>
=C2=A0update_feature_remote ${MAIN_SITE} org.eclipse.cdt.launch.remote.feat=
ure.group ${CDTREMOTEVER}<br>
<br>
=C2=A0#TM Terminal (was RSE) related<br>
=C2=A0echo -e &quot;\nPlease wait. Installing TM.TERMINAL.FEATURE.FEATURE.G=
ROUP&quot;<br>
-TMTERMVER=3D&quot;4.1.0&quot;<br>
-update_feature_remote ${TM_TERMINAL_SITE} org.eclipse.tm.terminal.feature.=
feature.group ${TMTERMVER}<br>
+TMTERMVER=3D&quot;4.2.0&quot;<br>
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.feature.feature=
.group ${TMTERMVER}<br>
<br>
=C2=A0echo -e &quot;\nPlease wait. Installing TM.TERMINAL.VIEW.RSE.FEATURE.=
GROUP&quot;<br>
-TMTERMVIEWRSEVER=3D&quot;4.1.0&quot;<br>
-update_feature_remote ${TM_TERMINAL_SITE} org.eclipse.tm.terminal.view.rse=
.feature.feature.group ${TMTERMVIEWRSEVER}<br>
+TMTERMVIEWRSEVER=3D&quot;4.2.0&quot;<br>
+update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.view.rse.featur=
e.feature.group ${TMTERMVIEWRSEVER}<br>
<br>
=C2=A0echo -e &quot;\nPlease wait. Installing TM.TERMINAL.CONTROL.FEATURE.G=
ROUP&quot;<br>
-TMCONTROLVER=3D&quot;4.1.0&quot;<br>
+TMCONTROLVER=3D&quot;4.2.0&quot;<br>
=C2=A0update_feature_remote ${MAIN_SITE} org.eclipse.tm.terminal.control.fe=
ature.feature.group ${TMCONTROLVER}<br>
<br>
=C2=A0#RSE_SDK<br>
@@ -293,11 +293,11 @@ update_feature_remote ${TM_SITE} org.eclipse.rse.term=
inals.feature.group ${RSETE<br>
<br>
=C2=A0#AUTOTOOLS<br>
=C2=A0echo -e &quot;\nPlease wait. Installing AUTOTOOLS.FEATURE.GROUP&quot;=
<br>
-ATVER=3D&quot;9.2.0&quot;<br>
+ATVER=3D&quot;9.2.1&quot;<br>
=C2=A0update_feature_remote ${MAIN_SITE} org.eclipse.cdt.autotools.feature.=
group ${ATVER}<br>
<br>
=C2=A0#Lttng2<br>
-TMF_CTF_REL=3D&quot;2.2.0&quot;<br>
+TMF_CTF_REL=3D&quot;2.3.0&quot;<br>
=C2=A0echo -e &quot;\nPlease wait. Installing TRACECOMPASS.LTTNG2.UST.FEATU=
RE.GROUP&quot;<br>
=C2=A0update_feature_remote ${MAIN_SITE} org.eclipse.tracecompass.lttng2.us=
t.feature.group ${TMF_CTF_REL}<br>
<br>
--<br>
2.13.6<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c14c302d0cc780560fa75e5--
