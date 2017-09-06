Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B49FE00BB7; Wed,  6 Sep 2017 10:53:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7B17E00A38
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 10:53:22 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id g50so914448wra.3
	for <yocto@yoctoproject.org>; Wed, 06 Sep 2017 10:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pDQvvFxR+tFRMJglXmZ7LspRIyQXZFutx3RmwT/nfEk=;
	b=fTydpNFwND6R7OwmLW1gNFo5Z0SxD82Lhf19nznn62XEaV9skJsP5vCXWbVbAho5Oh
	uQK4eI9fnemYbWX9DDJs7hj2wvdrJh7Zizcf54vtDrbQl3wS5WnIZpzeVgONaJofo08s
	3dqbuQwhoXxsHndxk9V4ogm49slxJ7VcfwfAiR/36zk4m7vDb5gZ4eRn1QLQ2UqLZa8f
	7I9N7ryX6l0WNpUDU+Skdfw1o0jirLSsKBXHB+aMny2wuXqcsCD9/YNtRIXW6iOJ2zjp
	HUW8NwxqTG6KViohaIlAnDqpQzKWZINX32IUIyEN1qsWO4y0ramJ3wdDLx8WR7ulOCHZ
	BVew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pDQvvFxR+tFRMJglXmZ7LspRIyQXZFutx3RmwT/nfEk=;
	b=oTBrGRVZvT859zNxmTIOtr9c+j3+eSi5dO3sQ78+EBtYH0NqIjClZIbGW0ZE+uu1QM
	MKQo4X+ijBAT6YIfsJ7WnzMw3uruM0OOQvElGa0Aau2HA6DunuvnuW54+s67E2iTlbrU
	f7mB6Bm33vE9x1gSET5/HsHqbffs6Bw6SsOLQ1LenhjUuNdVQ/8mqyZvq+HXiTiEFPjk
	6eZ9sImeze9aC/tJDRjQNvIHKdPpxYF5rOPLLbsMNLyEswCQGaR3rSj77UFOC1KB42dd
	rzrAa+WQS8m/wBDpXPKHxKVsYblqaeeDIdwp33yU20LBJuthVVSkyv0eOqJIdSWKA5Zn
	2LAg==
X-Gm-Message-State: AHPjjUiia3r5KFUn5qxkqcAP7AMBS652/gcezJCaIIUHSewprye008UD
	et4RXcxIArNC0z5UU209cBlg0+fg73j6
X-Google-Smtp-Source: ADKCNb5ivFGugXGSXuLDs978i0rzBUa+ZuTNUoWOXqftEOW57zqI14E5ekV4jOOy3YvUdnSccKnqYfUdB3bpowUuOLE=
X-Received: by 10.223.172.196 with SMTP id o62mr2231558wrc.305.1504720401459; 
	Wed, 06 Sep 2017 10:53:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.178.206 with HTTP; Wed, 6 Sep 2017 10:52:40 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
In-Reply-To: <CAPyrkgyu0G4WWbjTgz_N4ErrpA9QsCVvPmJPE1hP4J56h5kTEA@mail.gmail.com>
References: <1503576301-18920-1-git-send-email-mickey.happygolucky@gmail.com>
	<1504650859-5194-1-git-send-email-mickey.happygolucky@gmail.com>
	<CAPyrkgyu0G4WWbjTgz_N4ErrpA9QsCVvPmJPE1hP4J56h5kTEA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 6 Sep 2017 18:52:40 +0100
Message-ID: <CAK18fxGP6bRKsHZe2MP4g_zX34rTkp-Ao1b2KS2Lr2d-5-JCKw@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 1/2] bluez5: add functions/variables to enabling bluetooth on another raspberrypi
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
X-List-Received-Date: Wed, 06 Sep 2017 17:53:24 -0000
Content-Type: multipart/alternative; boundary="001a113c5f92040d260558890513"

--001a113c5f92040d260558890513
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 6, 2017 at 10:18 AM, Paul Barker <pbarker@toganlabs.com> wrote:

> On Tue, Sep 5, 2017 at 11:34 PM, Yusuke Mitsuki
> <mickey.happygolucky@gmail.com> wrote:
> > functions/variables in this bbappend implemented for only raspberrypi3.
> > But these must be able to used to enabling bluetooth on another
> raspberrypi that has bluetooth feature such as raspberrypi0-wifi.
> >
> > The simple solution is a duplicating these but it is not good ideas for
> maintainance.
> >
> > Add functions/variables follows to simplify to enabling bluetooth on
> another raspberrypi that has bluetooth.
> > - BCM_BT_SOURCES
> > - enable_bcm_bluetooth()
> > - BCM_BT_FIRMWARE
> > - BCM_BT_SERVICE
> >
> > Signed-off-by: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
> > ---
> >  recipes-connectivity/bluez5/bluez5_%.bbappend | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> >
> > diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend
> b/recipes-connectivity/bluez5/bluez5_%.bbappend
> > index 956d776..b2fbf22 100644
> > --- a/recipes-connectivity/bluez5/bluez5_%.bbappend
> > +++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
> > @@ -1,6 +1,6 @@
> >  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >
> > -SRC_URI_append_raspberrypi3 = " \
> > +BCM_BT_SOURCES =  " \
> >      file://BCM43430A1.hcd \
> >      file://0001-bcm43xx-Add-bcm43xx-3wire-variant.patch \
> >      file://0002-bcm43xx-The-UART-speed-must-be-reset-after-the-firmw.patch
> \
> > @@ -9,7 +9,7 @@ SRC_URI_append_raspberrypi3 = " \
> >      file://brcm43438.service \
> >      "
> >
> > -do_install_append_raspberrypi3() {
> > +enable_bcm_bluetooth() {
> >      install -d ${D}/lib/firmware/brcm/
> >      install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib/firmware/brcm/
> BCM43430A1.hcd
> >
> > @@ -19,8 +19,18 @@ do_install_append_raspberrypi3() {
> >      fi
> >  }
> >
> > -FILES_${PN}_append_raspberrypi3 = " \
> > +BCM_BT_FIRMWARE =  " \
> >      /lib/firmware/brcm/BCM43430A1.hcd \
> >      "
> >
> > -SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
> > +BCM_BT_SERVICE =  " brcm43438.service"
> > +
> > +SRC_URI_append_raspberrypi3 = " ${BCM_BT_SOURCES}"
> > +
> > +do_install_append_raspberrypi3() {
> > +    enable_bcm_bluetooth
> > +}
> > +
> > +FILES_${PN}_append_raspberrypi3 = " ${BCM_BT_FIRMWARE}"
> > +
> > +SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " ${BCM_BT_SERVICE}"
> > --
> > 2.7.4
> >
>
> This and the follow up patch look excellent, should be easy to modify
> in the future if we need to.
>
> We have switched to using github pull requests for meta-raspberrypi.
> Could you open a pull request on
> https://github.com/agherzan/meta-raspberrypi with these changes
> please? Let me know if you have any issues doing that.
>

+1 from my side.  Thanks for this change. We still try to keep patches
rolling to the mailing list too but the main development now happens
through PRs in github.

--
Andrei Gherzan

--001a113c5f92040d260558890513
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Sep 6, 2017 at 10:18 AM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt=
;</span> wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div class=3D"gmail-HOEnZb"><div class=3D"gmail-=
h5">On Tue, Sep 5, 2017 at 11:34 PM, Yusuke Mitsuki<br>
&lt;<a href=3D"mailto:mickey.happygolucky@gmail.com">mickey.happygolucky@gm=
ail.com</a><wbr>&gt; wrote:<br>
&gt; functions/variables in this bbappend implemented for only raspberrypi3=
.<br>
&gt; But these must be able to used to enabling bluetooth on another raspbe=
rrypi that has bluetooth feature such as raspberrypi0-wifi.<br>
&gt;<br>
&gt; The simple solution is a duplicating these but it is not good ideas fo=
r maintainance.<br>
&gt;<br>
&gt; Add functions/variables follows to simplify to enabling bluetooth on a=
nother raspberrypi that has bluetooth.<br>
&gt; - BCM_BT_SOURCES<br>
&gt; - enable_bcm_bluetooth()<br>
&gt; - BCM_BT_FIRMWARE<br>
&gt; - BCM_BT_SERVICE<br>
&gt;<br>
&gt; Signed-off-by: Yusuke Mitsuki &lt;<a href=3D"mailto:mickey.happygoluck=
y@gmail.com">mickey.happygolucky@gmail.com</a><wbr>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend | 18 ++++++++=
++++++----<br>
&gt;=C2=A0 1 file changed, 14 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend b/reci=
pes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; index 956d776..b2fbf22 100644<br>
&gt; --- a/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; +++ b/recipes-connectivity/bluez5/<wbr>bluez5_%.bbappend<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;<br>
&gt; -SRC_URI_append_raspberrypi3 =3D &quot; \<br>
&gt; +BCM_BT_SOURCES =3D=C2=A0 &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 file://BCM43430A1.hcd \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 file://0001-bcm43xx-Add-<wbr>bcm43xx-3wire-variant=
.patch \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 file://0002-bcm43xx-The-UART-<wbr>speed-must-be-re=
set-after-the-<wbr>firmw.patch \<br>
&gt; @@ -9,7 +9,7 @@ SRC_URI_append_raspberrypi3 =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 file://brcm43438.service \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt; -do_install_append_<wbr>raspberrypi3() {<br>
&gt; +enable_bcm_bluetooth() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 install -d ${D}/lib/firmware/brcm/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/lib=
/firmware/brcm/<wbr>BCM43430A1.hcd<br>
&gt;<br>
&gt; @@ -19,8 +19,18 @@ do_install_append_<wbr>raspberrypi3() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -FILES_${PN}_append_<wbr>raspberrypi3 =3D &quot; \<br>
&gt; +BCM_BT_FIRMWARE =3D=C2=A0 &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 /lib/firmware/brcm/BCM43430A1.<wbr>hcd \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt; -SYSTEMD_SERVICE_${PN}_append_<wbr>raspberrypi3 =3D &quot; brcm43438.s=
ervice&quot;<br>
&gt; +BCM_BT_SERVICE =3D=C2=A0 &quot; brcm43438.service&quot;<br>
&gt; +<br>
&gt; +SRC_URI_append_raspberrypi3 =3D &quot; ${BCM_BT_SOURCES}&quot;<br>
&gt; +<br>
&gt; +do_install_append_<wbr>raspberrypi3() {<br>
&gt; +=C2=A0 =C2=A0 enable_bcm_bluetooth<br>
&gt; +}<br>
&gt; +<br>
&gt; +FILES_${PN}_append_<wbr>raspberrypi3 =3D &quot; ${BCM_BT_FIRMWARE}&qu=
ot;<br>
&gt; +<br>
&gt; +SYSTEMD_SERVICE_${PN}_append_<wbr>raspberrypi3 =3D &quot; ${BCM_BT_SE=
RVICE}&quot;<br>
&gt; --<br>
&gt; 2.7.4<br>
&gt;<br>
<br>
</div></div>This and the follow up patch look excellent, should be easy to =
modify<br>
in the future if we need to.<br>
<br>
We have switched to using github pull requests for meta-raspberrypi.<br>
Could you open a pull request on<br>
<a href=3D"https://github.com/agherzan/meta-raspberrypi" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/agherzan/<wbr>meta-raspberrypi</a> wi=
th these changes<br>
please? Let me know if you have any issues doing that.<br></blockquote><div=
><br></div><div>+1 from my side.=C2=A0 Thanks for this change. We still try=
 to keep patches rolling to the mailing list too but the main development n=
ow happens through PRs in github.</div><div><div><br></div><div>--</div><di=
v>Andrei Gherzan</div></div></div></div></div>

--001a113c5f92040d260558890513--
