Return-Path: <aurele.traynard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7AE8E00825; Mon,  9 Feb 2015 06:26:28 -0800 (PST)
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
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4B4BE00342
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 06:26:25 -0800 (PST)
Received: by mail-wi0-f171.google.com with SMTP id l15so17922765wiw.4
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 06:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=QDYW7n5DmhRpis5KCNtBxmkmMKNjb0kFGNwtyqHC+So=;
	b=PhbTZofbPZByfuewaff6fzn45g3tTrh8gcFJ8CARR+sxDSzZfWT64ZAe0RD+FUS/Ah
	hrbZeqhcZDd+P4rFYmXboiVo3IxSSlVVvvGqTTPAxzWN4tKotDJj4KK1Gw8cACefHyKf
	lu57OX+iJ+tZdsUKS/Ym9j1CkOoA/+AKFz8GwK2zNRiCfX6XWyBU8cauVAnqPmph0MIQ
	S6fkS6NkdWcUZ1g+qgWedwJLDy7Mc84BDAPLIpeQlsfCK1a5vuLVYnAEOhxcXvIEfDc9
	Sg2JpnlpldkFcdYoF725MsrCZm084fS9QpIclunxqgXmBM95BRhBDkgjO0Er12cp6y/L
	02YQ==
MIME-Version: 1.0
X-Received: by 10.181.13.148 with SMTP id ey20mr19039601wid.79.1423491984253; 
	Mon, 09 Feb 2015 06:26:24 -0800 (PST)
Received: by 10.216.227.129 with HTTP; Mon, 9 Feb 2015 06:26:24 -0800 (PST)
In-Reply-To: <BN3PR0501MB10906E7628BC59896E0CE778BB270@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAKdxkf8Hz0p__1UpZ9+v9nedE7uNb7ajQ+ykUpaZ-_1mc6BhyA@mail.gmail.com>
	<BN3PR0501MB109039E595DA8504659AE114BB380@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAKdxkf-jp73wpRi19a7C8PKGqcnKL8aKarPM6Jerdy4MSD544Q@mail.gmail.com>
	<BN3PR0501MB10906E7628BC59896E0CE778BB270@BN3PR0501MB1090.namprd05.prod.outlook.com>
Date: Mon, 9 Feb 2015 15:26:24 +0100
Message-ID: <CAKdxkf8gd65wxGUKjti+TQvqvbi-boRvdsrV2Xfft5nVJca8ZA@mail.gmail.com>
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
X-List-Received-Date: Mon, 09 Feb 2015 14:26:28 -0000
Content-Type: multipart/alternative; boundary=f46d043c82680fe862050ea88ee3

--f46d043c82680fe862050ea88ee3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

many thanks for your concern, I finaly found my issue... there was no error=
.
I'm using a new distro since friday, this resulted in a new "tmp-glibc"
directory instead of my old "tmp" directory created by poky... I was
looking in the wrong directory. As you said in your first point I should
check the creation date!.


thanks
Aur=C3=A8le

2015-02-09 15:01 GMT+01:00 Bryan Evenson <bevenson@melinkcorp.com>:

> Aur=C3=A8le,
>
> > -----Original Message-----
> > From: Aurele Traynard [mailto:aurele.traynard@gmail.com]
> > Sent: Monday, February 09, 2015 4:59 AM
> > To: Bryan Evenson
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] replace etc/network/interfaces with symbolic link
> >
> > Thank you for all answers, I looked
> >
> >
> > In fact I found another problem, even if I modify the original recipe I
> can't get
> > a modified rpm, or rootfs...
> > I commented lines concerning interfaces files but it seems that nothing
> is
> > modified in the rootfs and in the rpm...
> > if someone understands what I missed...
> >
> > the bitbake file :
> > http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/init-
> > ifupdown/init-ifupdown_1.0.bb
> > and I commented out :
> > #install -m 0644 ${WORKDIR}/interfaces
> > ${D}${sysconfdir}/network/interfaces
> > #CONFFILES_${PN} =3D "${sysconfdir}/network/interfaces"
> >
> >
>
> If you comment those lines out, then ${sysconfdir}/network/interfaces
> should not be in the built RPM.  So either there is a .bbappend that is
> adding the file back in, or the package isn't being rebuilt.  Try checkin=
g
> the following to see what may be happening:
>
> 1.  Check the creation date on the init-ifupdown RPM.  If the RPM has not
> been re-created since the last time you modified the recipe, then the RPM
> is not being rebuilt with your changes.  If you are not running a PR
> server, then you need to increment the PR version in your .bbappend.  See
> http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#working=
-with-a-pr-service
> for details on the PR service and how to handle PRs without the PR
> service.  Note that if you are on an older poky branch that the steps for
> handling the PR service may be slightly different.  Read the version of
> documentation that matches your current branch.
> 2. If the RPM is being rebuilt, extract the RPM on your build machine to
> look at its contents.  If the interfaces file is still there, then there =
is
> still something not working right with the do_install step.  Under
> tmp/work/<MACHINE>/init-ifupdown/<PV-PR>/temp/, open the file
> run.do_install (the filename will have a PID appended to the end, so it'l=
l
> be named something like run.do_install.15612.  If there are multiple in t=
he
> temp directory, make sure you look at the latest one).  In this file is t=
he
> final do_install script that is run when performing the install step for
> the recipe.  If this does not look like what you want, then something
> between the main recipe and the .bbappends are building the do_install st=
ep
> incorrectly.
>
> Since you are removing files that the original recipe adds, the cleanest
> approach may be to leave the original recipe untouched and to replace the
> do_install step in your .bbappend.  If you modify the main recipe, later =
on
> if you switch to a different poky branch you'll lose your changes.
>
> Regards,
> Bryan
>
> > Aur=C3=A8le
> >
> >
> > 2015-02-06 20:38 GMT+01:00 Bryan Evenson <bevenson@melinkcorp.com
> > <mailto:bevenson@melinkcorp.com> >:
> >
> >
> >       Aurele,
> >
> >       One possible issue is ${sysconfdir}/network/interfaces is listed
> in the
> > CONFFILES in the original recipe.  It may still be installing this file
> because it is
> > listed under CONFFILES.  Try adding:
> >
> >       CONFFILES_${PN} =3D ""
> >
> >       To your bbappend.
> >
> >       Regards,
> >       Bryan
> >
> >
> >       > -----Original Message-----
> >       > From: yocto-bounces@yoctoproject.org <mailto:yocto-
> > bounces@yoctoproject.org>  [mailto:yocto- <mailto:yocto->
> >       > bounces@yoctoproject.org <mailto:bounces@yoctoproject.org> ]
> > On Behalf Of Aurele Traynard
> >       > Sent: Friday, February 06, 2015 10:55 AM
> >       > To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >       > Subject: [yocto] replace etc/network/interfaces with symbolic
> link
> >       >
> >       > Hi,
> >       >
> >       >
> >       > I'm trying to find a clean way to replace /etc/network/interfac=
es
> > with a
> >       > symbolic link. (it comes with init-ifupdown recipe) I tried
> with  a
> > bbappend
> >       > but nothing appear in final filesystem and
> /etc/network/interfaces
> > still
> >       > exists...
> >       >
> >       >
> >       > I'm sure the following code is completely wrong, but I don't kn=
ow
> > how to do
> >       > this with the right way...
> >       > do_install_append () {
> >       >     mkdir -p datas/network
> >       >
> >       >     install -d 0755 ${D}/datas
> >       >     install -d 0755 ${D}/datas/network
> >       >     install -m 0755 ${D}${sysconfdir}/network/interfaces
> > ${D}/datas/network
> >       >     #mv ${D}${sysconfdir}/network/interfaces ${D}/datas/network
> >       >     rm ${D}${sysconfdir}/network/interfaces
> >       >     ln -sf /datas/network/interfaces
> > ${D}${sysconfdir}/network/interfaces
> >       >
> >       > }
> >       > FILES_${PN} +=3D "/datas/ /datas/network/interfaces"
> >       >
> >       >
> >       > thanks for any help
> >       >
> >
> >
> >
>
>

--f46d043c82680fe862050ea88ee3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>many thanks for your concern, I finaly found my =
issue... there was no error.<br></div>I&#39;m using a new distro since frid=
ay, this resulted in a new &quot;tmp-glibc&quot; directory instead of my ol=
d &quot;tmp&quot; directory created by poky... I was looking in the wrong d=
irectory. As you said in your first point I should check the creation date!=
.<br><br><br></div><div>thanks<br></div><div>Aur=C3=A8le<br></div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02-09 15:01 GMT=
+01:00 Bryan Evenson <span dir=3D"ltr">&lt;<a href=3D"mailto:bevenson@melin=
kcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt;</span>:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Aur=C3=A8le,<br>
<span class=3D""><br>
&gt; -----Original Message-----<br>
&gt; From: Aurele Traynard [mailto:<a href=3D"mailto:aurele.traynard@gmail.=
com">aurele.traynard@gmail.com</a>]<br>
&gt; Sent: Monday, February 09, 2015 4:59 AM<br>
&gt; To: Bryan Evenson<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: Re: [yocto] replace etc/network/interfaces with symbolic link=
<br>
&gt;<br>
&gt; Thank you for all answers, I looked<br>
&gt;<br>
&gt;<br>
&gt; In fact I found another problem, even if I modify the original recipe =
I can&#39;t get<br>
&gt; a modified rpm, or rootfs...<br>
&gt; I commented lines concerning interfaces files but it seems that nothin=
g is<br>
&gt; modified in the rootfs and in the rpm...<br>
&gt; if someone understands what I missed...<br>
&gt;<br>
&gt; the bitbake file :<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipe=
s-core/init-" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi/poky/p=
lain/meta/recipes-core/init-</a><br>
&gt; ifupdown/<a href=3D"http://init-ifupdown_1.0.bb" target=3D"_blank">ini=
t-ifupdown_1.0.bb</a><br>
&gt; and I commented out :<br>
&gt; #install -m 0644 ${WORKDIR}/interfaces<br>
&gt; ${D}${sysconfdir}/network/interfaces<br>
&gt; #CONFFILES_${PN} =3D &quot;${sysconfdir}/network/interfaces&quot;<br>
&gt;<br>
&gt;<br>
<br>
</span>If you comment those lines out, then ${sysconfdir}/network/interface=
s should not be in the built RPM.=C2=A0 So either there is a .bbappend that=
 is adding the file back in, or the package isn&#39;t being rebuilt.=C2=A0 =
Try checking the following to see what may be happening:<br>
<br>
1.=C2=A0 Check the creation date on the init-ifupdown RPM.=C2=A0 If the RPM=
 has not been re-created since the last time you modified the recipe, then =
the RPM is not being rebuilt with your changes.=C2=A0 If you are not runnin=
g a PR server, then you need to increment the PR version in your .bbappend.=
=C2=A0 See <a href=3D"http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev=
-manual.html#working-with-a-pr-service" target=3D"_blank">http://www.yoctop=
roject.org/docs/1.7.1/dev-manual/dev-manual.html#working-with-a-pr-service<=
/a> for details on the PR service and how to handle PRs without the PR serv=
ice.=C2=A0 Note that if you are on an older poky branch that the steps for =
handling the PR service may be slightly different.=C2=A0 Read the version o=
f documentation that matches your current branch.<br>
2. If the RPM is being rebuilt, extract the RPM on your build machine to lo=
ok at its contents.=C2=A0 If the interfaces file is still there, then there=
 is still something not working right with the do_install step.=C2=A0 Under=
 tmp/work/&lt;MACHINE&gt;/init-ifupdown/&lt;PV-PR&gt;/temp/, open the file =
run.do_install (the filename will have a PID appended to the end, so it&#39=
;ll be named something like run.do_install.15612.=C2=A0 If there are multip=
le in the temp directory, make sure you look at the latest one).=C2=A0 In t=
his file is the final do_install script that is run when performing the ins=
tall step for the recipe.=C2=A0 If this does not look like what you want, t=
hen something between the main recipe and the .bbappends are building the d=
o_install step incorrectly.<br>
<br>
Since you are removing files that the original recipe adds, the cleanest ap=
proach may be to leave the original recipe untouched and to replace the do_=
install step in your .bbappend.=C2=A0 If you modify the main recipe, later =
on if you switch to a different poky branch you&#39;ll lose your changes.<b=
r>
<br>
Regards,<br>
Bryan<br>
<span class=3D""><br>
&gt; Aur=C3=A8le<br>
&gt;<br>
&gt;<br>
&gt; 2015-02-06 20:38 GMT+01:00 Bryan Evenson &lt;<a href=3D"mailto:bevenso=
n@melinkcorp.com">bevenson@melinkcorp.com</a><br>
</span>&gt; &lt;mailto:<a href=3D"mailto:bevenson@melinkcorp.com">bevenson@=
melinkcorp.com</a>&gt; &gt;:<br>
<span class=3D"im HOEnZb">&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Aurele,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0One possible issue is ${sysconfdir}/network/=
interfaces is listed in the<br>
&gt; CONFFILES in the original recipe.=C2=A0 It may still be installing thi=
s file because it is<br>
&gt; listed under CONFFILES.=C2=A0 Try adding:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0CONFFILES_${PN} =3D &quot;&quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0To your bbappend.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Bryan<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; -----Original Message-----<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; From: <a href=3D"mailto:yocto-bounces@y=
octoproject.org">yocto-bounces@yoctoproject.org</a> &lt;mailto:<a href=3D"m=
ailto:yocto-">yocto-</a><br>
</span><span class=3D"im HOEnZb">&gt; <a href=3D"mailto:bounces@yoctoprojec=
t.org">bounces@yoctoproject.org</a>&gt;=C2=A0 [mailto:<a href=3D"mailto:yoc=
to-">yocto-</a> &lt;mailto:<a href=3D"mailto:yocto-">yocto-</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:bounces@yoctoproject.=
org">bounces@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:bounces@yoct=
oproject.org">bounces@yoctoproject.org</a>&gt; ]<br>
&gt; On Behalf Of Aurele Traynard<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Sent: Friday, February 06, 2015 10:55 A=
M<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">&gt;=C2=A0 =C2=A0 =C2=A0 =C2=
=A0&gt; To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.or=
g</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Subject: [yocto] replace etc/network/in=
terfaces with symbolic link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I&#39;m trying to find a clean way to r=
eplace /etc/network/interfaces<br>
&gt; with a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; symbolic link. (it comes with init-ifup=
down recipe) I tried with=C2=A0 a<br>
&gt; bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; but nothing appear in final filesystem =
and /etc/network/interfaces<br>
&gt; still<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; exists...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; I&#39;m sure the following code is comp=
letely wrong, but I don&#39;t know<br>
&gt; how to do<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; this with the right way...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; do_install_append () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0mkdir -p datas/netwo=
rk<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0install -d 0755 ${D}=
/datas<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0install -d 0755 ${D}=
/datas/network<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0install -m 0755 ${D}=
${sysconfdir}/network/interfaces<br>
&gt; ${D}/datas/network<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0#mv ${D}${sysconfdir=
}/network/interfaces ${D}/datas/network<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0rm ${D}${sysconfdir}=
/network/interfaces<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0ln -sf /datas/networ=
k/interfaces<br>
&gt; ${D}${sysconfdir}/network/interfaces<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; }<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; FILES_${PN} +=3D &quot;/datas/ /datas/n=
etwork/interfaces&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; thanks for any help<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
</div></div></blockquote></div><br></div>

--f46d043c82680fe862050ea88ee3--
