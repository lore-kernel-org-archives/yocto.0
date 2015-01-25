Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CCECE00827; Sun, 25 Jan 2015 15:01:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA4ABE003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 15:01:29 -0800 (PST)
Received: by mail-wg0-f46.google.com with SMTP id l2so6228019wgh.5
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 15:01:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ZzwYwC9ZS1B8lb83m4WcaDVQkjRRbUpMmf5yT7K3KuA=;
	b=a2aMfZP69yRYxMQu0l0CcysdjzZOSfIwy1Ebq8D+PYqg+ZcpV1RichrrX0onXiFI2E
	O/w7Vy2pawU2ZL0WqD/rt2HB5pYREKVzpxYlnh1i5JPQA4dDaErLoIh7yibUgClUKgGk
	bCgL8pyG3aWOhuMboBh1dMiElt/IaCezDt9S1f5zZ8RxBk97mOFtpcD6YVDe1/NBjXqE
	TVp+rystmhAN+SVTv/gS462JR+ajYh9VPPNaBwAc+bQ2LR99ycsqPk4CoQ2suS8IHH5y
	ByrUEutQRJqYHv2UX5gYpCavkinSpQRSa77HZSfvdFBLsp2T0mZiOa4xcUji/OZ+HrW1
	u5FA==
X-Gm-Message-State: ALoCoQnM2tdVe7Vx+6LF23JEo0feHlCTaG8d/DD1AsrAhr212Ed+1d6pFkNpRLUzn0t7wGdOZ+AY
X-Received: by 10.180.14.136 with SMTP id p8mr26355552wic.20.1422226888662;
	Sun, 25 Jan 2015 15:01:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 15:01:08 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <20141120115817.GA24610@gmail.com>
References: <1414203707-21296-1-git-send-email-coldnew.tw@gmail.com>
	<20141120115817.GA24610@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jan 2015 01:01:08 +0200
Message-ID: <CAK18fxFcciQg06v_ScZmw=0+XXMwbgzfCf_76bzKwnzwzAmQ9A@mail.gmail.com>
To: Yen-Chin Lee <coldnew.tw@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] qtbase: Add basic Qt5 building support
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
X-List-Received-Date: Sun, 25 Jan 2015 23:01:34 -0000
Content-Type: multipart/alternative; boundary=f46d040f9f3c7d376d050d8200a4

--f46d040f9f3c7d376d050d8200a4
Content-Type: text/plain; charset=UTF-8

Hello,

On Thu, Nov 20, 2014 at 1:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Hello Yen,
>
> On Sat, Oct 25, 2014 at 10:21:47AM +0800, Yen-Chin Lee wrote:
> > To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to
> > indicate device config.
> >
> > Signed-off-by: Yen-Chin Lee <coldnew.tw@gmail.com>
> > ---
> >  recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
> >
> > diff --git a/recipes-qt/qt5/qtbase_%.bbappend
> b/recipes-qt/qt5/qtbase_%.bbappend
> > new file mode 100644
> > index 0000000..c994cf5
> > --- /dev/null
> > +++ b/recipes-qt/qt5/qtbase_%.bbappend
> > @@ -0,0 +1,7 @@
> > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > +
> > +QT_CONFIG_FLAGS += " \
> > +    -device linux-rasp-pi-g++ \
> > +    -device-option CROSS_COMPILE=${TARGET_PREFIX} \
> > +    -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pthreads \
> > +"
>
> If we add this append we need to change the layer dependencies and
> probably add
> this package to the test image too. But maybe we can avoid this by using a
> separate layer specific directory as meta-fsl-arm does with qt5-layer.
>
> Check https://github.com/Freescale/meta-fsl-arm and
> https://github.com/Freescale/meta-fsl-arm/blob/master/conf/layer.conf
>
>
Do you still work on this? I'm trying to catch up with old patches. Any
updates on this one?


-- 
*Andrei Gherzan*

--f46d040f9f3c7d376d050d8200a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Thu, Nov 20, 2014 at 1:58 PM, Andrei Gherzan <span dir=3D"lt=
r">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherza=
n.ro</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello Yen,<br>
<span class=3D""><br>
On Sat, Oct 25, 2014 at 10:21:47AM +0800, Yen-Chin Lee wrote:<br>
&gt; To build raspberrypi with Qt5, we need to add extra QT_CONFIG_FLAGS to=
<br>
&gt; indicate device config.<br>
&gt;<br>
&gt; Signed-off-by: Yen-Chin Lee &lt;<a href=3D"mailto:coldnew.tw@gmail.com=
">coldnew.tw@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-qt/qt5/qtbase_%.bbappend | 7 +++++++<br>
&gt;=C2=A0 1 file changed, 7 insertions(+)<br>
&gt;=C2=A0 create mode 100644 recipes-qt/qt5/qtbase_%.bbappend<br>
&gt;<br>
&gt; diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_=
%.bbappend<br>
&gt; new file mode 100644<br>
&gt; index 0000000..c994cf5<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-qt/qt5/qtbase_%.bbappend<br>
&gt; @@ -0,0 +1,7 @@<br>
&gt; +FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt; +<br>
&gt; +QT_CONFIG_FLAGS +=3D &quot; \<br>
&gt; +=C2=A0 =C2=A0 -device linux-rasp-pi-g++ \<br>
&gt; +=C2=A0 =C2=A0 -device-option CROSS_COMPILE=3D${TARGET_PREFIX} \<br>
&gt; +=C2=A0 =C2=A0 -I${STAGING_DIR_TARGET}${includedir}/interface/vcos/pth=
reads \<br>
&gt; +&quot;<br>
<br>
</span>If we add this append we need to change the layer dependencies and p=
robably add<br>
this package to the test image too. But maybe we can avoid this by using a<=
br>
separate layer specific directory as meta-fsl-arm does with qt5-layer.<br>
<br>
Check <a href=3D"https://github.com/Freescale/meta-fsl-arm" target=3D"_blan=
k">https://github.com/Freescale/meta-fsl-arm</a> and<br>
<a href=3D"https://github.com/Freescale/meta-fsl-arm/blob/master/conf/layer=
.conf" target=3D"_blank">https://github.com/Freescale/meta-fsl-arm/blob/mas=
ter/conf/layer.conf</a><br>
<br></blockquote><div><br></div><div>Do you still work on this? I&#39;m try=
ing to catch up with old patches. Any updates on this one?</div></div><br c=
lear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=
=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:ce=
nter"><div align=3D"left"><b style=3D"font-family:Arial;font-size:small;col=
or:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br></div></div></div=
></div>
</div></div>

--f46d040f9f3c7d376d050d8200a4--
