Return-Path: <zavier.luo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD176E00A7D; Thu,  7 Jan 2016 19:00:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zavier.luo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6511CE008A5
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2016 19:00:22 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id q19so140829345qke.3
	for <yocto@yoctoproject.org>; Thu, 07 Jan 2016 19:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KmVJDERq74LUibn7fbdvs4rYvAf4rI0hU21xk2Vi0O4=;
	b=b6QzwZ5AAOPcDHUOqu3ivI6V5a/RyLyJ+54WxXLsMOD9IWu/syyPOW7Q6QZ+3VrY3+
	eYjYdizJj8cEAED0BDpVBCKBIVCIg5JXndzdgEnsBrEnew4O+pjasBcWoUJ5DVWyaxR5
	j6NdAayCq+VIsBCK3DOo51TryoUjWM6xfc+FLyO5aawCgMT9ckaBqE9QzoWpcSG9G6Kf
	SAOU92huM6EarzmCUISeQ/4ghsoVcqxLspnmAwvLIfv3RZzMd7GTOa2LGmkAolmPMVuk
	0TKZm1q6cifBZrXX6QLzzk4noz++JXuQhwC6xn5MQ34SZFS1Ot9fFUUBL/h6xnj/oPwc
	9TYA==
MIME-Version: 1.0
X-Received: by 10.55.52.211 with SMTP id b202mr86272527qka.27.1452222021057;
	Thu, 07 Jan 2016 19:00:21 -0800 (PST)
Received: by 10.55.161.23 with HTTP; Thu, 7 Jan 2016 19:00:20 -0800 (PST)
In-Reply-To: <1452160250.2993.28.camel@sestows129.enea.se>
References: <1451297181-342-1-git-send-email-zavier.luo@gmail.com>
	<1452160250.2993.28.camel@sestows129.enea.se>
Date: Fri, 8 Jan 2016 11:00:21 +0800
Message-ID: <CAJ2zpq6x8yFpY7t9=ci8KTfioxbBWKeLA6OMVLANvZo3e0nAGw@mail.gmail.com>
From: Zavier Luo <zavier.luo@gmail.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] packagegroup-cgl-applications: unify the package name to fix the parse warnings
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
X-List-Received-Date: Fri, 08 Jan 2016 03:00:25 -0000
Content-Type: multipart/alternative; boundary=001a11470d08b342680528c9c95f

--001a11470d08b342680528c9c95f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, Adrian.

On Thu, Jan 7, 2016 at 5:50 PM, Adrian Dudau <Adrian.Dudau@enea.com> wrote:

> hi Zavier,
>
> On m=C3=A5n, 2015-12-28 at 18:06 +0800, Zavier Luo wrote:
> > Fix the following parse warning:
> >     WARNING: Variable key RDEPENDS_${PN} ( ${LTTNGUST}) replaces
> original key RDEPENDS_packagegroup-cgl-applications (     lvm2
>  ${LM_SENSORS}     bc     gettext     gettext-runtime     babeltrace
>  gdb     gdbserver     rsync     strace     libevent     mdadm     quota
>  smartmontools     monit     syslog-ng     ocfs2-tools     logcheck
>  samhain-client     samhain-server     audit     crash     pam-passwdqc
>  libpam     rsyslog     makedumpfile     ).
>
> I merged the patch after re-formatting the description. Next time please
> try to keep a max line length of 80 characters in the commit for better
> git log readability.
>
> --Adrian
>
> >
> > Signed-off-by: Zavier Luo <zavier.luo@gmail.com>
> > ---
> >  meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 6
> +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/meta-cgl-common/packagegroups/
> packagegroup-cgl-applications.bb b/meta-cgl-common/packagegroups/
> packagegroup-cgl-applications.bb
> > index f823ece..3ebb7ed 100644
> > --- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
> > +++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
> > @@ -8,7 +8,7 @@ inherit packagegroup
> >  inherit pkgconfig
> >
> >
> > -PACKAGES =3D "packagegroup-cgl-applications"
> > +PACKAGES =3D "${PN}"
> >
> >  LM_SENSORS =3D " \
> >      lmsensors-fancontrol \
> > @@ -24,7 +24,7 @@ LM_SENSORS =3D " \
> >      lmsensors-config-fancontrol \
> >      "
> >
> > -RDEPENDS_packagegroup-cgl-applications =3D " \
> > +RDEPENDS_${PN} =3D " \
> >      lvm2 \
> >      ${LM_SENSORS} \
> >      bc \
> > @@ -64,4 +64,4 @@ RDEPENDS_${PN}_append_qemuppc =3D " ${LTTNGUST}"
> >  RDEPENDS_${PN}_append_qemuarm =3D " ${LTTNGUST}"
> >  RDEPENDS_${PN}_append_powerpc =3D " ${LTTNGUST}"
> >
> > -RRECOMMENDS_packagegroup-cgl-applications =3D ""
> > +RRECOMMENDS_${PN} =3D ""
> > --
> > 2.4.3
> >
>
>
>


--=20
Cheers,

Zavier

--001a11470d08b342680528c9c95f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Adrian.=C2=A0</div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Thu, Jan 7, 2016 at 5:50 PM, Adrian Dudau <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:Adrian.Dudau@enea.com" target=3D"_blan=
k">Adrian.Dudau@enea.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">hi Zavier,<br>
<span class=3D""><br>
On m=C3=A5n, 2015-12-28 at 18:06 +0800, Zavier Luo wrote:<br>
&gt; Fix the following parse warning:<br>
&gt;=C2=A0 =C2=A0 =C2=A0WARNING: Variable key RDEPENDS_${PN} ( ${LTTNGUST})=
 replaces original key RDEPENDS_packagegroup-cgl-applications (=C2=A0 =C2=
=A0 =C2=A0lvm2=C2=A0 =C2=A0 =C2=A0${LM_SENSORS}=C2=A0 =C2=A0 =C2=A0bc=C2=A0=
 =C2=A0 =C2=A0gettext=C2=A0 =C2=A0 =C2=A0gettext-runtime=C2=A0 =C2=A0 =C2=
=A0babeltrace=C2=A0 =C2=A0 =C2=A0gdb=C2=A0 =C2=A0 =C2=A0gdbserver=C2=A0 =C2=
=A0 =C2=A0rsync=C2=A0 =C2=A0 =C2=A0strace=C2=A0 =C2=A0 =C2=A0libevent=C2=A0=
 =C2=A0 =C2=A0mdadm=C2=A0 =C2=A0 =C2=A0quota=C2=A0 =C2=A0 =C2=A0smartmontoo=
ls=C2=A0 =C2=A0 =C2=A0monit=C2=A0 =C2=A0 =C2=A0syslog-ng=C2=A0 =C2=A0 =C2=
=A0ocfs2-tools=C2=A0 =C2=A0 =C2=A0logcheck=C2=A0 =C2=A0 =C2=A0samhain-clien=
t=C2=A0 =C2=A0 =C2=A0samhain-server=C2=A0 =C2=A0 =C2=A0audit=C2=A0 =C2=A0 =
=C2=A0crash=C2=A0 =C2=A0 =C2=A0pam-passwdqc=C2=A0 =C2=A0 =C2=A0libpam=C2=A0=
 =C2=A0 =C2=A0rsyslog=C2=A0 =C2=A0 =C2=A0makedumpfile=C2=A0 =C2=A0 =C2=A0).=
<br>
<br>
</span>I merged the patch after re-formatting the description. Next time pl=
ease<br>
try to keep a max line length of 80 characters in the commit for better<br>
git log readability.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--Adrian<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Zavier Luo &lt;<a href=3D"mailto:zavier.luo@gmail.com">=
zavier.luo@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 meta-cgl-common/packagegroups/<a href=3D"http://packagegroup-cgl=
-applications.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-cgl-app=
lications.bb</a> | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/meta-cgl-common/packagegroups/<a href=3D"http://packagegr=
oup-cgl-applications.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-=
cgl-applications.bb</a> b/meta-cgl-common/packagegroups/<a href=3D"http://p=
ackagegroup-cgl-applications.bb" rel=3D"noreferrer" target=3D"_blank">packa=
gegroup-cgl-applications.bb</a><br>
&gt; index f823ece..3ebb7ed 100644<br>
&gt; --- a/meta-cgl-common/packagegroups/<a href=3D"http://packagegroup-cgl=
-applications.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-cgl-app=
lications.bb</a><br>
&gt; +++ b/meta-cgl-common/packagegroups/<a href=3D"http://packagegroup-cgl=
-applications.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-cgl-app=
lications.bb</a><br>
&gt; @@ -8,7 +8,7 @@ inherit packagegroup<br>
&gt;=C2=A0 inherit pkgconfig<br>
&gt;<br>
&gt;<br>
&gt; -PACKAGES =3D &quot;packagegroup-cgl-applications&quot;<br>
&gt; +PACKAGES =3D &quot;${PN}&quot;<br>
&gt;<br>
&gt;=C2=A0 LM_SENSORS =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 lmsensors-fancontrol \<br>
&gt; @@ -24,7 +24,7 @@ LM_SENSORS =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 lmsensors-config-fancontrol \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt; -RDEPENDS_packagegroup-cgl-applications =3D &quot; \<br>
&gt; +RDEPENDS_${PN} =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 lvm2 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 ${LM_SENSORS} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 bc \<br>
&gt; @@ -64,4 +64,4 @@ RDEPENDS_${PN}_append_qemuppc =3D &quot; ${LTTNGUST}=
&quot;<br>
&gt;=C2=A0 RDEPENDS_${PN}_append_qemuarm =3D &quot; ${LTTNGUST}&quot;<br>
&gt;=C2=A0 RDEPENDS_${PN}_append_powerpc =3D &quot; ${LTTNGUST}&quot;<br>
&gt;<br>
&gt; -RRECOMMENDS_packagegroup-cgl-applications =3D &quot;&quot;<br>
&gt; +RRECOMMENDS_${PN} =3D &quot;&quot;<br>
&gt; --<br>
&gt; 2.4.3<br>
&gt;<br>
<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature"><div dir=3D"ltr"><div>Cheers, <br><br></div>=
Zavier<br></div></div>
</div>

--001a11470d08b342680528c9c95f--
