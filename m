Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6902E00CCA; Tue, 12 Feb 2019 02:11:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01348E00CB9
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 02:11:31 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id w4so2275281qtc.1
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 02:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=IefvFHfHmW8Z+ze8SbyInKcT98NSD/YbgZFqrQZNidU=;
	b=HOtFdFvvg5B3/QTzTcYvUcCqZjr7tJSFD+hnf3CTErU5AWO8FVJq86zYsmKi6pPDwZ
	GY95y3Z0fp8B1yzDYDfH6rK8copEH5ELlGAko53SV0VEBJrFrFMpOLXa9B+IQ2k2cSfI
	+QNxU0RKCjYATLWCiNLGvGQ6avVhtC14cBGNGacm01jdZ5/vDOA0i034v3KbZdzz+8Di
	jnitogArglMW69M0NtVPMvAyr4li9IW7/l6iULVinbZ1dUl7OrHzbZIvPIm/42x9FZiU
	9zS3daHtr6F5vTQWB/Brbf6GBxKClRnp2OGrNMUdYWRj91Dk+uikjwhQfMLOXj9J19xS
	7JyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IefvFHfHmW8Z+ze8SbyInKcT98NSD/YbgZFqrQZNidU=;
	b=j52HxNE2mEijF2/Nbty62rftNNrBBPDCB6mfb1HYqhFE5XF9thFnuMmjx7M50j9id7
	AbiyDyk4yp0m1K6tOXuRRTW1+6hL5QgaAn6YT5CNutPN0hRYjelGdWTc1vz1VbeKPWnu
	xEnPMEYnypxR7DU8DUU4GfVD3zC/s7LwFApM8/0EgjD/+KV9SOe9MHm+Szo3/SCrmyvL
	cAgI51rKqeVKVdncFEos7bMdRKd8JcXfmvo05GeHrJaVwZbz/tQbFiVKPDiOh73me/00
	BYhYYFYcGw5Sx9XQ7rghUeObyMIF+tKAG1Sr0CDO6dMRWgOT2Vq9RYUellRw7/dL6FlF
	46iA==
X-Gm-Message-State: AHQUAuZAjOQ+snU08ygahlHmpqhiOlF5PmSTZdReUV6L8AnEBphesCG1
	u/XZLwcbsNwHAJDxWbpPqv3lZIYMObjHYSQC0/OtV871UaU=
X-Google-Smtp-Source: AHgI3IZtMozwDIu2l0GYPx02iQ0Ilyv6WFA2c3aGz9DsaRos4rn0QWfy6Tsb+5eSgVMWwwI7O8Nw3drvg5nZi4Jywss=
X-Received: by 2002:ac8:29b7:: with SMTP id 52mr2118151qts.266.1549966290866; 
	Tue, 12 Feb 2019 02:11:30 -0800 (PST)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Tue, 12 Feb 2019 11:11:24 +0100
Message-ID: <CAKPYHZ7bUH=bbdUEhWXsGK9UrTAg9zwGusU0ZwCxjxpCfLOykA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Intentionally failing postinstall scriplets - Yocto Sumo
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
X-List-Received-Date: Tue, 12 Feb 2019 10:11:32 -0000
Content-Type: multipart/alternative; boundary="0000000000002e57150581afa66a"

--0000000000002e57150581afa66a
Content-Type: text/plain; charset="UTF-8"

Hello,

Building an image with Yocto Sumo throws out some warning messages during
do.rootfs. Although I'm partially clear that update-alternatives has
something to do with these warnings, but following the instructions in the
warning and placing the packages in pkg_postinst_ontarget_${PN} () does not
resolve the issue.

What am I missing here and what is the ideal solution to avoid these
warnings?

Here is my *BUILD INFORMATION*

Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal-4.8"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "arm-cortex-a8"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5"
TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"
TARGET_FPU           = "hard"
meta-custombsp-ti
meta
meta-poky
meta-yocto-bsp
meta-custom-common      = "<unknown>:<unknown>"
meta-oe              = "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"


WARNING: custom-image-1.0-r0 do_rootfs: Intentionally failing
postinstall scriptlets of ['vsftpd', 'dropbear', 'chrony'] to defer
them to first boot is deprecated. Please place them into
pkg_postinst_ontarget_${PN} ().

If deferring to first boot wasn't the intent, then scriptlet failure
may mean an issue in the recipe, or a regression elsewhere.

Details of the failure are in
/home/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/custom-image/1.0-r0/temp/log.do_rootfs.

WARNING: custom-image-1.0-r0 do_rootfs: [log_check] abkdkj-image:
found 4 warning messages in the logfile:

[log_check] warning: %post(vsftpd-3.0.3-r0.cortexa8hf_neon) scriptlet
failed, exit status 1

[log_check] warning: %post(dropbear-2017.75-r0.cortexa8hf_neon)
scriptlet failed, exit status 1

[log_check] warning: %post(chrony-3.1-r0.cortexa8hf_neon) scriptlet
failed, exit status 1

[log_check] WARNING: Intentionally failing postinstall scriptlets of
['vsftpd', 'dropbear', 'chrony'] to defer them to first boot is
deprecated. Please place them into pkg_postinst_ontarget_${PN} ().



Thanks,

Dhanush

--0000000000002e57150581afa66a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:georgia,serif">Hello,</div><div class=3D"gmail_default" style=3D"f=
ont-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:georgia,serif">Building an image with Yocto Sumo throws out some=
 warning messages during do.rootfs. Although I&#39;m partially clear that u=
pdate-alternatives has something to do with these warnings, but following t=
he instructions in the warning and placing the packages in=C2=A0<span style=
=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier=
 New&quot;,Courier,monospace;color:rgb(0,0,0);font-size:1em">pkg_postinst_o=
ntarget_${PN} ()=C2=A0</span>does not resolve the=C2=A0issue.</div><div cla=
ss=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:georgia,serif">What am I missing =
here and what is the ideal solution to avoid these warnings?</div><div clas=
s=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div><div clas=
s=3D"gmail_default" style=3D"font-family:georgia,serif">Here is my <b><u>BU=
ILD INFORMATION</u></b></div><div class=3D"gmail_default" style=3D"font-fam=
ily:georgia,serif"><b><u><br></u></b></div><div class=3D"gmail_default" sty=
le=3D"font-family:georgia,serif"><div class=3D"gmail_default" style=3D"">Bu=
ild Configuration:</div><div class=3D"gmail_default" style=3D"">BB_VERSION=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;</div><div c=
lass=3D"gmail_default" style=3D"">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div class=3D"gmail_default" s=
tyle=3D"">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;=
</div><div class=3D"gmail_default" style=3D"">TARGET_SYS=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div cl=
ass=3D"gmail_default" style=3D"">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;arm-cortex-a8&quot;</div><div class=3D"gmail_defaul=
t" style=3D"">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;poky&quot;</div><div class=3D"gmail_default" style=3D"">DISTRO_VE=
RSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5&quot;</div><div class=3D"gmai=
l_default" style=3D"">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;ar=
m armv7a vfp neon callconvention-hard cortexa8&quot;</div><div class=3D"gma=
il_default" style=3D"">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;hard&quot;</div><div class=3D"gmail_default" style=3D"">meta-cust=
ombsp-ti=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmail_default"=
 style=3D"">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div class=3D"gmail_default" style=3D"">meta-poky=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmail_default" style=3D""=
>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=3D"gmail_default=
" style=3D"">meta-custom-common=C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknown&g=
t;:&lt;unknown&gt;&quot;</div><div class=3D"gmail_default" style=3D"">meta-=
oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:45ee3c0=
e98bd3ed81419aaeae1e7324e486161a2&quot;</div></div><div class=3D"gmail_defa=
ult" style=3D""><table style=3D"font-family:georgia,serif;font-size:1em;col=
or:black;line-height:1.4em" width=3D"100%" cellspacing=3D"0" cellpadding=3D=
"0" border=3D"0"><tbody><tr id=3D"gmail-m_4860206560686575695gmail-syntaxpl=
ugin_code_and_gutter"><td style=3D"padding:0em;vertical-align:top;line-heig=
ht:1.4em"><pre style=3D"font-size:1em;margin:10px 10px 0px;width:auto;paddi=
ng:0px"><br></pre><pre style=3D"font-size:1em;margin:10px 10px 0px;width:au=
to;padding:0px"><span style=3D"font-family:Consolas,&quot;Bitstream Vera Sa=
ns Mono&quot;,&quot;Courier New&quot;,Courier,monospace">WARNING: custom-im=
age-1.0-r0 do_rootfs: Intentionally failing postinstall scriptlets of [&#39=
;vsftpd&#39;, &#39;dropbear&#39;, &#39;chrony&#39;] to defer them to first =
boot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().<=
/span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">If deferring to first boot wasn&#39;=
t the intent, then scriptlet failure may mean an issue in the recipe, or a =
regression elsewhere.</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">Details of the failure are in /home/=
build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/custom-image/=
1.0-r0/temp/log.do_rootfs.</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">WARNING: custom-image-1.0-r0 do_root=
fs: [log_check] abkdkj-image: found 4 warning messages in the logfile:</spa=
n></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">[log_check] warning: %post(vsftpd-3.=
0.3-r0.cortexa8hf_neon) scriptlet failed, exit status 1</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">[log_check] warning: %post(dropbear-=
2017.75-r0.cortexa8hf_neon) scriptlet failed, exit status 1</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">[log_check] warning: %post(chrony-3.=
1-r0.cortexa8hf_neon) scriptlet failed, exit status 1</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutter=
">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px 10px;width:auto;padding:0p=
x"><span style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;=
,&quot;Courier New&quot;,Courier,monospace">[log_check] WARNING: Intentiona=
lly failing postinstall scriptlets of [&#39;vsftpd&#39;, &#39;dropbear&#39;=
, &#39;chrony&#39;] to defer them to first boot is deprecated. Please place=
 them into pkg_postinst_ontarget_${PN} ().
</span></pre><pre style=3D"font-size:1em;margin:0px 10px 10px;width:auto;pa=
dding:0px"><span style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mo=
no&quot;,&quot;Courier New&quot;,Courier,monospace"><br></span></pre><pre s=
tyle=3D"font-size:1em;margin:0px 10px 10px;width:auto;padding:0px"><br></pr=
e></td></tr></tbody></table><pre style=3D"color:rgb(0,0,0);font-size:1em;ma=
rgin:0px 10px 10px;width:auto;padding:0px"><font face=3D"georgia, serif">Th=
anks,</font></pre><pre style=3D"color:rgb(0,0,0);font-size:1em;margin:0px 1=
0px 10px;width:auto;padding:0px"><font face=3D"georgia, serif">Dhanush</fon=
t></pre></div><div><div dir=3D"ltr" class=3D"gmail-m_4860206560686575695gma=
il_signature"><div dir=3D"ltr"></div></div></div></div></div>

--0000000000002e57150581afa66a--
