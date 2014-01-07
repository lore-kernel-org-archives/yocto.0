Return-Path: <reeve.yang@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C43D2E006CA
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 12:59:53 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id n7so525486lam.35
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 12:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0SJs+dTblgZgGoAqIvRpZEhPBHyxc+4xx7ZMyMhaxI4=;
	b=lkJ6qh9ZSXk6e0NtWlaEVKMLSRB3oonHKcD+UIqMz5vFc3kwB6MR/o9wfLWlR0/uqy
	axp7Chrh/l67EjHESYcYWjankyGo9cTWhx5FJ9IrwWyXfgtkysZ+rSmQafaPXdO5goIr
	bUV4I7S0HxKPFftEmFyB3URYWoDEbabnz8iZtu3a/ajIT9km5t+f7EwdVlR+inNr4/ka
	AdWqk7dDhRQKQVbTDBjI1A/tTN99Sv9hb/PFe+LVf0LQujrKAYKqIRrnYadWl47LqV7N
	ajRw9QybkzTR1djRcWqdlz7djjyJUQ1QM5E+jnHZ6K5Ktduidb4iHA101IxYU5PPyhUn
	FuVQ==
MIME-Version: 1.0
X-Received: by 10.112.189.134 with SMTP id gi6mr45063774lbc.6.1389128391795;
	Tue, 07 Jan 2014 12:59:51 -0800 (PST)
Received: by 10.152.25.137 with HTTP; Tue, 7 Jan 2014 12:59:51 -0800 (PST)
In-Reply-To: <CAP71WjzP3w43Bmw7R=FeC8p31pJLNwD1zyBmsGL4ZshwbzLpag@mail.gmail.com>
References: <CAGNTBAXK-0hqLbyxdRo7RfS6MkPfxP+etmx0bE=P9vjF91tTgQ@mail.gmail.com>
	<CAP71WjxP67f0pnxBYZfFKEB0dvR55yc4r3etUNhwbi1vZdftMg@mail.gmail.com>
	<CAGNTBAVHWpnM2p+WoWmOJ145Y8eaeQSEPex8AXZtPod77hGtgA@mail.gmail.com>
	<CAP71WjzP3w43Bmw7R=FeC8p31pJLNwD1zyBmsGL4ZshwbzLpag@mail.gmail.com>
Date: Tue, 7 Jan 2014 12:59:51 -0800
Message-ID: <CAGNTBAUw=P7S4kWTSu2SE7PjrwpCHj9eWgvXGB=naY4XMSNjQg@mail.gmail.com>
From: Reeve Yang <reeve.yang@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Problem & Question about FILES_${PN}
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
X-List-Received-Date: Tue, 07 Jan 2014 21:00:01 -0000
Content-Type: multipart/alternative; boundary=001a11c36ad25725fb04ef67a855

--001a11c36ad25725fb04ef67a855
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Nico,

As you suggested, I removed  ${libdir}/${BPN}/*${SOLIBSDEV} from
"FILES_${PN}-dev", but now I'm getting this error:

ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
syslog-ng path
'/work/x86_64-poky-linux/syslog-ng/3.2.5-r12.1/packages-split/syslog-ng/usr=
/lib64/syslog-ng/libafsocket.so'
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home2/reeve-ws/yocto-dylan-merge/build/tmp/work/x86_64-poky-linux/syslog-n=
g/3.2.5-r12.1/temp/log.do_package.16779
ERROR: Task 6
(/home2/reeve-ws/yocto-dylan-merge/meta-openembedded/meta-oe/recipes-suppor=
t/nonworking/syslog-ng/
syslog-ng_3.2.5.bb, do_package) failed with exit code '1'


It looks main binary package doesn't have a symlink of .so. How to fix that=
?

Thanks.
- Reeve


On Tue, Jan 7, 2014 at 12:39 PM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> Hi,
>
> Le 7 janv. 2014 21:35, "Reeve Yang" <reeve.yang@gmail.com> a =E9crit :
>
> >
> > Hi Nicolas,
> >
> > Thanks for reply. How nice it is! But one thing I don't understand is,
> sometimes the files might be needed into two different packages, e.g. mai=
n
> and dev, how can we achieve that? In another words, is there anyway in
> local recipe to make files not deleted during packaging time?
>
> Thanks. Please let's keep the discussion on the list.
>
> you cannot do that. In fact i don't quite see why you would want to do
> that. If 2 packages provide the same file you won't be able to install th=
em
> simultaneously.
>
> If you want to duplicate the same file in 2 different location in the
> rootFS then you can duplicate in do_install().
>
> >
> > Appreciate your help.
> > - Reeve
> >
> >
> > On Mon, Jan 6, 2014 at 4:29 PM, Nicolas Dechesne <
> nicolas.dechesne@linaro.org> wrote:
> >>
> >>
> >> On Tue, Jan 7, 2014 at 1:19 AM, Reeve Yang <reeve.yang@gmail.com>
> wrote:
> >>>
> >>> FILES_${PN} =3D "${bindir}/* ${sbindir}/* ${libexecdir}/*
> ${libdir}/lib*${SOLIBS} \
> >>>     ${sysconfdir} ${sharedstatedir} ${localstatedir} \
> >>>     ${base_bindir}/* ${base_sbindir}/* \
> >>>     ${base_libdir}/*${SOLIBS} \
> >>>     ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \
> >>>     ${datadir}/include/scl/ ${datadir}/xsd"
> >>> FILES_${PN}-dev +=3D "${libdir}/${BPN}/lib*.la
> ${libdir}/${BPN}/*${SOLIBSDEV}"
> >>
> >>
> >> it seems that  ${libdir}/${BPN}/*${SOLIBSDEV} is both in FILES_{PN} an=
d
> FILES_{PN}-dev, in which case the actual files will be added in the -dev
> package, not, the 'main binary' package.
> >>
> >> Files are 'removed' from the local 'install' directory ($D) by
> processing FILES_{PN} variables in the order defined by PACKAGES. since t=
he
> -dev package is before the binary package, your .so files will be added t=
o
> the -dev package first, and no longer in the local 'install' folder when
> the binary package is being built.
> >>
> >> so you need to remove the glob from FILES_{PN}-dev.
> >>
> >>
> >>
> >
>

--001a11c36ad25725fb04ef67a855
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nico,<div><br></div><div>As you suggested, I removed=A0=
<span style=3D"font-size:13px;font-family:arial,sans-serif">=A0${libdir}/${=
BPN}/*${</span><span style=3D"font-size:13px;font-family:arial,sans-serif">=
SOLIBSDEV} from &quot;FILES_${PN}-dev&quot;, but now I&#39;m getting this e=
rror:</span></div>
<div><span style=3D"font-size:13px;font-family:arial,sans-serif"><br></span=
></div><div><span style=3D"font-size:13px;font-family:arial,sans-serif"><di=
v>ERROR: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so: s=
yslog-ng path &#39;/work/x86_64-poky-linux/syslog-ng/3.2.5-r12.1/packages-s=
plit/syslog-ng/usr/lib64/syslog-ng/libafsocket.so&#39;</div>
<div>ERROR: QA run found fatal errors. Please consider fixing them.</div><d=
iv>ERROR: Function failed: do_package_qa</div><div>ERROR: Logfile of failur=
e stored in: /home2/reeve-ws/yocto-dylan-merge/build/tmp/work/x86_64-poky-l=
inux/syslog-ng/3.2.5-r12.1/temp/log.do_package.16779</div>
<div>ERROR: Task 6 (/home2/reeve-ws/yocto-dylan-merge/meta-openembedded/met=
a-oe/recipes-support/nonworking/syslog-ng/<a href=3D"http://syslog-ng_3.2.5=
.bb">syslog-ng_3.2.5.bb</a>, do_package) failed with exit code &#39;1&#39;<=
/div>
<div><br></div><div><br></div><div>It looks main binary package doesn&#39;t=
 have a symlink of .so. How to fix that?</div><div><br></div><div>Thanks.</=
div><div>- Reeve</div></span></div></div><div class=3D"gmail_extra"><br><br=
>
<div class=3D"gmail_quote">On Tue, Jan 7, 2014 at 12:39 PM, Nicolas Dechesn=
e <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" targ=
et=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">
<p dir=3D"ltr">Hi,</p>
<p dir=3D"ltr">Le 7 janv. 2014 21:35, &quot;Reeve Yang&quot; &lt;<a href=3D=
"mailto:reeve.yang@gmail.com" target=3D"_blank">reeve.yang@gmail.com</a>&gt=
; a =E9crit :</p><div class=3D"im"><br>
&gt;<br>
&gt; Hi Nicolas,<br>
&gt;<br>
&gt; Thanks for reply. How nice it is! But one thing I don&#39;t understand=
 is, sometimes the files might be needed into two different packages, e.g. =
main and dev, how can we achieve that? In another words, is there anyway in=
 local recipe to make files not deleted during packaging time?</div>
<p></p>

<p dir=3D"ltr">Thanks. Please let&#39;s keep the discussion on the list.</p=
>
<p dir=3D"ltr"> you cannot do that. In fact i don&#39;t quite see why you w=
ould want to do that. If 2 packages provide the same file you won&#39;t be =
able to install them simultaneously. </p>
<p dir=3D"ltr">If you want to duplicate the same file in 2 different locati=
on in the rootFS then you can duplicate in do_install().</p><div class=3D"H=
OEnZb"><div class=3D"h5">
<p dir=3D"ltr">&gt;<br>
&gt; Appreciate your help.<br>
&gt; - Reeve<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Jan 6, 2014 at 4:29 PM, Nicolas Dechesne &lt;<a href=3D"mailto=
:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@linaro.org=
</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jan 7, 2014 at 1:19 AM, Reeve Yang &lt;<a href=3D"mailto:r=
eeve.yang@gmail.com" target=3D"_blank">reeve.yang@gmail.com</a>&gt; wrote:<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; FILES_${PN} =3D &quot;${bindir}/* ${sbindir}/* ${libexecdir}/*=
 ${libdir}/lib*${SOLIBS} \<br>
&gt;&gt;&gt; =A0 =A0 ${sysconfdir} ${sharedstatedir} ${localstatedir} \<br>
&gt;&gt;&gt; =A0 =A0 ${base_bindir}/* ${base_sbindir}/* \<br>
&gt;&gt;&gt; =A0 =A0 ${base_libdir}/*${SOLIBS} \<br>
&gt;&gt;&gt; =A0 =A0 ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \<br>
&gt;&gt;&gt; =A0 =A0 ${datadir}/include/scl/ ${datadir}/xsd&quot;<br>
&gt;&gt;&gt; FILES_${PN}-dev +=3D &quot;${libdir}/${BPN}/lib*.la ${libdir}/=
${BPN}/*${SOLIBSDEV}&quot;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; it seems that=A0=A0${libdir}/${BPN}/*${SOLIBSDEV} is both in FILES=
_{PN} and FILES_{PN}-dev, in which case the actual files will be added in t=
he -dev package, not, the &#39;main binary&#39; package.=A0<br>
&gt;&gt;<br>
&gt;&gt; Files are &#39;removed&#39; from the local &#39;install&#39; direc=
tory ($D) by processing FILES_{PN} variables in the order defined by PACKAG=
ES. since the -dev package is before the binary package, your .so files wil=
l be added to the -dev package first, and no longer in the local &#39;insta=
ll&#39; folder when the binary package is being built.<br>


&gt;&gt;<br>
&gt;&gt; so you need to remove the glob from FILES_{PN}-dev.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</p>
</div></div></blockquote></div><br></div>

--001a11c36ad25725fb04ef67a855--
