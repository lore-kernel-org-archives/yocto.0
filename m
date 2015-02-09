Return-Path: <aurele.traynard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C5DE00945; Mon,  9 Feb 2015 01:58:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aurele.traynard[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1BFFE00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 01:58:51 -0800 (PST)
Received: by mail-wi0-f176.google.com with SMTP id hm9so4728692wib.3
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 01:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=TdqkRNULcz/QH6aC37IQvuUPYX+DCB2ZtqFqiOP7YHM=;
	b=Ij+QgpLAXz8QSEOkps+xlG11UyQXaRsij6Ks156f4kp8ruYPqdmmSY3+mkCXhUtBO1
	+NKHOa+2UffXkUkcxtFh6uPQHrnwiDO5qc8nu+XR2kuYr4q+X0lRog0X+u0JRDJTmE8N
	Hc9DKB6LBrSi+MpEnx4BrMjY/5FuGCiBvFPLXC6FWCkPlKpstmeK7gwifud2hF0TZmfo
	qPkyuFUZW+ec+M7Q/i7s4GrtbAWPw11ZrGJWyyeqXTRw56yKT0S9sfzwf+xtldL62wWC
	G7F1XHwnXItgrps0FkIFQucx2v+BOZkyc1x/b7Kwq3Pu4RPy7vMEPkWEzkaTonUiGaK6
	1uqw==
MIME-Version: 1.0
X-Received: by 10.194.82.136 with SMTP id i8mr20067939wjy.99.1423475930927;
	Mon, 09 Feb 2015 01:58:50 -0800 (PST)
Received: by 10.216.227.129 with HTTP; Mon, 9 Feb 2015 01:58:50 -0800 (PST)
In-Reply-To: <BN3PR0501MB109039E595DA8504659AE114BB380@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAKdxkf8Hz0p__1UpZ9+v9nedE7uNb7ajQ+ykUpaZ-_1mc6BhyA@mail.gmail.com>
	<BN3PR0501MB109039E595DA8504659AE114BB380@BN3PR0501MB1090.namprd05.prod.outlook.com>
Date: Mon, 9 Feb 2015 10:58:50 +0100
Message-ID: <CAKdxkf-jp73wpRi19a7C8PKGqcnKL8aKarPM6Jerdy4MSD544Q@mail.gmail.com>
From: Aurele Traynard <aurele.traynard@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: replace etc/network/interfaces with symbolic link
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
X-List-Received-Date: Mon, 09 Feb 2015 09:58:55 -0000
Content-Type: multipart/alternative; boundary=047d7bb03978359839050ea4d178

--047d7bb03978359839050ea4d178
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for all answers, I looked

In fact I found another problem, even if I modify the original recipe I
can't get a modified rpm, or rootfs...
I commented lines concerning interfaces files but it seems that nothing is
modified in the rootfs and in the rpm...
if someone understands what I missed...

the bitbake file :
http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/init-ifup=
down/init-ifupdown_1.0.bb
and I commented out :
#install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interfaces
#CONFFILES_${PN} =3D "${sysconfdir}/network/interfaces"

Aur=C3=A8le

2015-02-06 20:38 GMT+01:00 Bryan Evenson <bevenson@melinkcorp.com>:

> Aurele,
>
> One possible issue is ${sysconfdir}/network/interfaces is listed in the
> CONFFILES in the original recipe.  It may still be installing this file
> because it is listed under CONFFILES.  Try adding:
>
> CONFFILES_${PN} =3D ""
>
> To your bbappend.
>
> Regards,
> Bryan
>
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Aurele Traynard
> > Sent: Friday, February 06, 2015 10:55 AM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] replace etc/network/interfaces with symbolic link
> >
> > Hi,
> >
> >
> > I'm trying to find a clean way to replace /etc/network/interfaces with =
a
> > symbolic link. (it comes with init-ifupdown recipe) I tried with  a
> bbappend
> > but nothing appear in final filesystem and /etc/network/interfaces stil=
l
> > exists...
> >
> >
> > I'm sure the following code is completely wrong, but I don't know how t=
o
> do
> > this with the right way...
> > do_install_append () {
> >     mkdir -p datas/network
> >
> >     install -d 0755 ${D}/datas
> >     install -d 0755 ${D}/datas/network
> >     install -m 0755 ${D}${sysconfdir}/network/interfaces
> ${D}/datas/network
> >     #mv ${D}${sysconfdir}/network/interfaces ${D}/datas/network
> >     rm ${D}${sysconfdir}/network/interfaces
> >     ln -sf /datas/network/interfaces ${D}${sysconfdir}/network/interfac=
es
> >
> > }
> > FILES_${PN} +=3D "/datas/ /datas/network/interfaces"
> >
> >
> > thanks for any help
> >
>
>

--047d7bb03978359839050ea4d178
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you for all answers, I looked <br><br></di=
v>In fact I found another problem, even if I modify the original recipe I c=
an&#39;t get a modified rpm, or rootfs...<br>I commented lines concerning i=
nterfaces files but it seems that nothing is modified in the rootfs and in =
the rpm...<br>if someone understands what I missed...<br><br>the bitbake fi=
le : <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipe=
s-core/init-ifupdown/init-ifupdown_1.0.bb">http://git.yoctoproject.org/cgit=
.cgi/poky/plain/meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb</a><br=
>and I commented out : <br>#install -m 0644 ${WORKDIR}/interfaces ${D}${sys=
confdir}/network/interfaces<br>#CONFFILES_${PN} =3D &quot;${sysconfdir}/net=
work/interfaces&quot;<br><br></div>Aur=C3=A8le<br></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2015-02-06 20:38 GMT+01:00 Bryan Eve=
nson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" targe=
t=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Aurele,<br>
<br>
One possible issue is ${sysconfdir}/network/interfaces is listed in the CON=
FFILES in the original recipe.=C2=A0 It may still be installing this file b=
ecause it is listed under CONFFILES.=C2=A0 Try adding:<br>
<br>
CONFFILES_${PN} =3D &quot;&quot;<br>
<br>
To your bbappend.<br>
<br>
Regards,<br>
Bryan<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-">yocto-</a><br>
&gt; <a href=3D"mailto:bounces@yoctoproject.org">bounces@yoctoproject.org</=
a>] On Behalf Of Aurele Traynard<br>
&gt; Sent: Friday, February 06, 2015 10:55 AM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: [yocto] replace etc/network/interfaces with symbolic link<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m trying to find a clean way to replace /etc/network/interfaces =
with a<br>
&gt; symbolic link. (it comes with init-ifupdown recipe) I tried with=C2=A0=
 a bbappend<br>
&gt; but nothing appear in final filesystem and /etc/network/interfaces sti=
ll<br>
&gt; exists...<br>
&gt;<br>
&gt;<br>
&gt; I&#39;m sure the following code is completely wrong, but I don&#39;t k=
now how to do<br>
&gt; this with the right way...<br>
&gt; do_install_append () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0mkdir -p datas/network<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d 0755 ${D}/datas<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d 0755 ${D}/datas/network<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0755 ${D}${sysconfdir}/network/interface=
s ${D}/datas/network<br>
&gt;=C2=A0 =C2=A0 =C2=A0#mv ${D}${sysconfdir}/network/interfaces ${D}/datas=
/network<br>
&gt;=C2=A0 =C2=A0 =C2=A0rm ${D}${sysconfdir}/network/interfaces<br>
&gt;=C2=A0 =C2=A0 =C2=A0ln -sf /datas/network/interfaces ${D}${sysconfdir}/=
network/interfaces<br>
&gt;<br>
&gt; }<br>
&gt; FILES_${PN} +=3D &quot;/datas/ /datas/network/interfaces&quot;<br>
&gt;<br>
&gt;<br>
&gt; thanks for any help<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--047d7bb03978359839050ea4d178--
