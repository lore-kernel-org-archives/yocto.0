Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03C5AE00CCE; Tue, 12 Feb 2019 02:56:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B459EE00CCA
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 02:55:58 -0800 (PST)
Received: by mail-ot1-f50.google.com with SMTP id g1so3552714otj.11
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 02:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yRVJaNQuKOspsHtW024SIX2CXnUtr2svEvitCzgS/O0=;
	b=uEuqpvNNOtNOC/iwpc/VSsJw5GldaudAm3UJoExpgC875NpCak+KyKCC4vg+I028Wm
	h8SZLLOGgbUcBz5yz6EwPjwZWI7G5olgSoPpD1bWGsLmQKJ+t6vgOsy29pNGojJkI7rQ
	gkMQG/9CbQydnY+gZ70UhP1Xlgu843xidus1m42ra9YzAy3ql/OkH62amoRr5IQl7fRe
	PfS03tXdshkeyfAYd6jB86dDFzVepo0Q9gGEEc+oLkQdvrY/5VBmEBMKHnGgMECxtqmq
	qx1uBqroCO2vxnEomP3X5fz/6uSsp2mIdR31Xi2Fu6RC0JE9fiF9xLUOM80wiQCw/1Q6
	8TXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yRVJaNQuKOspsHtW024SIX2CXnUtr2svEvitCzgS/O0=;
	b=rs54/o8AGmaCnXSqUVJoaXxb3yE3MXNI+cO+kV6bc3n/KsCQGVwHN6koe5GQTvS2jV
	K7fQTmN9+z5eeCuADlBIbAmL7P6yqPXlw1tiWL+6OrQsnRx/ynLcnYj/JW0N8/PW2Iw7
	/DqO1MwcFXwuo7o0P8awHzKF5uN7COTJNMeRXQHazZcA/mIjWbztFhvOsowenGLuAQu/
	BfO8ch9aGaGPNsl3z8GgUHfuiQpADO2UAPOCagFE7fHnA06gauYnaiHvhY22Az9GgZfT
	IEpjkNH4SUkfq69jqEPUwuJy26vgxTe2WmHUzWBmluNVveLFanSyltyH1SV9Qy1rXjl5
	nWBw==
X-Gm-Message-State: AHQUAuYE/jqTLvUAlsjCIuGWyKEq9jyolLYbOLKD0K+XlfvJWZ01UqjJ
	sicT/BvxqUBqCPRCpzeGghe+OxRYzmAcWMGqp7w=
X-Google-Smtp-Source: AHgI3Ia0Z3wrJY4m9caFsSYzyk182SQqrPlC/1eB/d8dDx21k0xVLwh4dEkXl20Tv4t2JSGHEkcxfjENjxFfgcdFHVo=
X-Received: by 2002:a9d:4c88:: with SMTP id m8mr3151232otf.360.1549968958001; 
	Tue, 12 Feb 2019 02:55:58 -0800 (PST)
MIME-Version: 1.0
References: <CAKPYHZ7bUH=bbdUEhWXsGK9UrTAg9zwGusU0ZwCxjxpCfLOykA@mail.gmail.com>
In-Reply-To: <CAKPYHZ7bUH=bbdUEhWXsGK9UrTAg9zwGusU0ZwCxjxpCfLOykA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Feb 2019 11:55:45 +0100
Message-ID: <CANNYZj8aS=u=6apX_JASPneR6Q3MEnx3KQefVkh9cvrK0P0qiQ@mail.gmail.com>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Intentionally failing postinstall scriplets - Yocto Sumo
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
X-List-Received-Date: Tue, 12 Feb 2019 10:56:00 -0000
Content-Type: multipart/alternative; boundary="0000000000002795810581b0450e"

--0000000000002795810581b0450e
Content-Type: text/plain; charset="UTF-8"

You need to inspect the rootfs log, to find out precisely why they are
failing. Placing things into _ontarget() is only a part of the instruction,
and applicable only when postinsts have a genuine need to be executed on
the target device. I think your situation is explained by this:

If deferring to first boot wasn't the intent, then scriptlet failure
may mean an issue in the recipe, or a regression elsewhere.

Details of the failure are in
/home/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/custom-image/1.0-r0/temp/log.do_rootfs.


Alex

On Tue, 12 Feb 2019 at 11:11, Dhanush K.S <dhanush.ks@gmail.com> wrote:

> Hello,
>
> Building an image with Yocto Sumo throws out some warning messages during
> do.rootfs. Although I'm partially clear that update-alternatives has
> something to do with these warnings, but following the instructions in the
> warning and placing the packages in pkg_postinst_ontarget_${PN} () does
> not resolve the issue.
>
> What am I missing here and what is the ideal solution to avoid these
> warnings?
>
> Here is my *BUILD INFORMATION*
>
> Build Configuration:
> BB_VERSION           = "1.37.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal-4.8"
> TARGET_SYS           = "arm-poky-linux-gnueabi"
> MACHINE              = "arm-cortex-a8"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.5"
> TUNE_FEATURES        = "arm armv7a vfp neon callconvention-hard cortexa8"
> TARGET_FPU           = "hard"
> meta-custombsp-ti
> meta
> meta-poky
> meta-yocto-bsp
> meta-custom-common      = "<unknown>:<unknown>"
> meta-oe              = "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
>
>
> WARNING: custom-image-1.0-r0 do_rootfs: Intentionally failing postinstall scriptlets of ['vsftpd', 'dropbear', 'chrony'] to defer them to first boot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().
>
> If deferring to first boot wasn't the intent, then scriptlet failure may mean an issue in the recipe, or a regression elsewhere.
>
> Details of the failure are in /home/build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/custom-image/1.0-r0/temp/log.do_rootfs.
>
> WARNING: custom-image-1.0-r0 do_rootfs: [log_check] abkdkj-image: found 4 warning messages in the logfile:
>
> [log_check] warning: %post(vsftpd-3.0.3-r0.cortexa8hf_neon) scriptlet failed, exit status 1
>
> [log_check] warning: %post(dropbear-2017.75-r0.cortexa8hf_neon) scriptlet failed, exit status 1
>
> [log_check] warning: %post(chrony-3.1-r0.cortexa8hf_neon) scriptlet failed, exit status 1
>
> [log_check] WARNING: Intentionally failing postinstall scriptlets of ['vsftpd', 'dropbear', 'chrony'] to defer them to first boot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().
>
>
>
> Thanks,
>
> Dhanush
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000002795810581b0450e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div class=3D"gmail_attr">You n=
eed to inspect the rootfs log, to find out precisely why they are failing. =
Placing things into _ontarget() is only a part of the instruction, and appl=
icable only when postinsts have a genuine need to be executed on the target=
 device. I think your situation is explained by this:</div><div class=3D"gm=
ail_attr"><br></div><div class=3D"gmail_attr"><table style=3D"font-family:g=
eorgia,serif;font-size:1em;color:black;line-height:1.4em" width=3D"100%" ce=
llspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr id=3D"gmail-m_887=
5682670562869443gmail-m_4860206560686575695gmail-syntaxplugin_code_and_gutt=
er"><td style=3D"padding:0em;vertical-align:top;line-height:1.4em"><pre sty=
le=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><span style=3D"=
font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New=
&quot;,Courier,monospace">If deferring to first boot wasn&#39;t the intent,=
 then scriptlet failure may mean an issue in the recipe, or a regression el=
sewhere.</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">Details of the failure are in /home/=
build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/custom-image/=
1.0-r0/temp/log.do_rootfs.</span></pre></td></tr></tbody></table></div><div=
 dir=3D"ltr" class=3D"gmail_attr"><br></div><div class=3D"gmail_attr">Alex<=
br></div><div dir=3D"ltr" class=3D"gmail_attr"><br></div><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, 12 Feb 2019 at 11:11, Dhanush K.S &lt;<a href=
=3D"mailto:dhanush.ks@gmail.com">dhanush.ks@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr"><div style=3D"font-family:georgia,serif">Hello,</div><div style=
=3D"font-family:georgia,serif"><br></div><div style=3D"font-family:georgia,=
serif">Building an image with Yocto Sumo throws out some warning messages d=
uring do.rootfs. Although I&#39;m partially clear that update-alternatives =
has something to do with these warnings, but following the instructions in =
the warning and placing the packages in=C2=A0<span style=3D"font-family:Con=
solas,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,Courier,=
monospace;color:rgb(0,0,0);font-size:1em">pkg_postinst_ontarget_${PN} ()=C2=
=A0</span>does not resolve the=C2=A0issue.</div><div style=3D"font-family:g=
eorgia,serif"><br></div><div style=3D"font-family:georgia,serif">What am I =
missing here and what is the ideal solution to avoid these warnings?</div><=
div style=3D"font-family:georgia,serif"><br></div><div style=3D"font-family=
:georgia,serif">Here is my <b><u>BUILD INFORMATION</u></b></div><div style=
=3D"font-family:georgia,serif"><b><u><br></u></b></div><div style=3D"font-f=
amily:georgia,serif"><div>Build Configuration:</div><div>BB_VERSION=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37.0&quot;</div><div>BUILD_SY=
S=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</di=
v><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;</d=
iv><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-po=
ky-linux-gnueabi&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;arm-cortex-a8&quot;</div><div>DISTRO=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DIS=
TRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5&quot;</div><div>TUNE_FE=
ATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm armv7a vfp neon callconvent=
ion-hard cortexa8&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;hard&quot;</div><div>meta-custombsp-ti=C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>=
meta-custom-common=C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknow=
n&gt;&quot;</div><div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D &quot;master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2&quot;</div></=
div><div><table style=3D"font-family:georgia,serif;font-size:1em;color:blac=
k;line-height:1.4em" width=3D"100%" cellspacing=3D"0" cellpadding=3D"0" bor=
der=3D"0"><tbody><tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686=
575695gmail-syntaxplugin_code_and_gutter"><td style=3D"padding:0em;vertical=
-align:top;line-height:1.4em"><pre style=3D"font-size:1em;margin:10px 10px =
0px;width:auto;padding:0px"><br></pre><pre style=3D"font-size:1em;margin:10=
px 10px 0px;width:auto;padding:0px"><span style=3D"font-family:Consolas,&qu=
ot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,Courier,monospace=
">WARNING: custom-image-1.0-r0 do_rootfs: Intentionally failing postinstall=
 scriptlets of [&#39;vsftpd&#39;, &#39;dropbear&#39;, &#39;chrony&#39;] to =
defer them to first boot is deprecated. Please place them into pkg_postinst=
_ontarget_${PN} ().</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">If deferring to first boot wasn&#39;=
t the intent, then scriptlet failure may mean an issue in the recipe, or a =
regression elsewhere.</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">Details of the failure are in /home/=
build_arm-cortex-a8/tmp/work/arm_cortex_a8-poky-linux-gnueabi/custom-image/=
1.0-r0/temp/log.do_rootfs.</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">WARNING: custom-image-1.0-r0 do_root=
fs: [log_check] abkdkj-image: found 4 warning messages in the logfile:</spa=
n></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">[log_check] warning: %post(vsftpd-3.=
0.3-r0.cortexa8hf_neon) scriptlet failed, exit status 1</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">[log_check] warning: %post(dropbear-=
2017.75-r0.cortexa8hf_neon) scriptlet failed, exit status 1</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
						<td style=3D"padding:0em;vertical-align:top;line-height:1.4em">
					<pre style=3D"font-size:1em;margin:0px 10px;width:auto;padding:0px"><s=
pan style=3D"font-family:Consolas,&quot;Bitstream Vera Sans Mono&quot;,&quo=
t;Courier New&quot;,Courier,monospace">[log_check] warning: %post(chrony-3.=
1-r0.cortexa8hf_neon) scriptlet failed, exit status 1</span></pre>
			</td>
		</tr>
				<tr id=3D"gmail-m_8875682670562869443gmail-m_4860206560686575695gmail-s=
yntaxplugin_code_and_gutter">
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
t></pre></div><div><div dir=3D"ltr" class=3D"gmail-m_8875682670562869443gma=
il-m_4860206560686575695gmail_signature"><div dir=3D"ltr"></div></div></div=
></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000002795810581b0450e--
