Return-Path: <hynek.petrak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E38E9E00777; Mon, 16 Feb 2015 14:20:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hynek.petrak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5F76E00769
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 14:19:55 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id r20so28969884wiv.2
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 14:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XtLQATy7Iqa03BKdrrnhNdVctGB70OAT1TtgPmBSJg8=;
	b=J3M9H05pueVRRl4/oVUUD2XRc+kBlO0lP2oQ4VgZrWktJ6ToYTzw2bR5ZcQUZcNQ51
	lzv10xrEUlxZqSmEgjE3LsY/d53yi6DQ+/wjyMRND0ulQ6exLO456G1Vh4MO8oJWhI7M
	GavUPgJ22XXQa2ADBeFrEKQswsJsqaeOc1X1jrqRP56hpyuU9B5B84Ik/gxeJdSjn1l9
	hutVGA+/SCvU2z0CaF5OAcW1OJAJktkyZcdb0ek4RrvtEya/qTKqJ1e5a187UrxgVdDD
	QrvxynO6mFmKvH/dIguwMoppwRL2u6alHaa8Vv/knFRcihzGT395QZTwE7cvmKQS+/zS
	KLlw==
MIME-Version: 1.0
X-Received: by 10.194.60.15 with SMTP id d15mr56012852wjr.72.1424125194787;
	Mon, 16 Feb 2015 14:19:54 -0800 (PST)
Received: by 10.194.136.133 with HTTP; Mon, 16 Feb 2015 14:19:54 -0800 (PST)
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D7B849D@SESTOEX04.enea.se>
References: <CAAKMwiqNP=rQqmDQkdNRiAx2jT1pA1s6Z2GNgSVr6zDzGdp-uQ@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D7B849D@SESTOEX04.enea.se>
Date: Tue, 17 Feb 2015 00:19:54 +0200
Message-ID: <CADkkZUDXooaRFVttKdrONHjZBM22LN_axnV0qsFf69FOg42xLg@mail.gmail.com>
From: Hynek Petrak <hynek.petrak@gmail.com>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
X-Mailman-Approved-At: Tue, 17 Feb 2015 05:12:25 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe with optional dependency and configuration.
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
X-List-Received-Date: Mon, 16 Feb 2015 22:20:02 -0000
Content-Type: multipart/alternative; boundary=047d7ba976c459e413050f3bfc76

--047d7ba976c459e413050f3bfc76
Content-Type: text/plain; charset=UTF-8

I would swear, that I haven't done anything like that in the past, but
looking back at the emails you are right. It's dated back to 2008, not sure
whether it still according the build system requirements.

Cheers, Hynek

diff --git a/packages/smstools/makefile.patch
b/packages/smstools/makefile.patch
new file mode 100644
index 0000000..12bf27f
--- /dev/null
+++ b/packages/smstools/makefile.patch
@@ -0,0 +1,20 @@
+--- smstools/Makefile 2008-12-07 19:40:13.160951393 +0100
++++ smstools/Makefile.new 2008-12-07 19:40:00.913636005 +0100
+@@ -2,7 +2,7 @@
+
+
+ compile:
+- cd src && $(MAKE) -$(MAKEFLAGS)
++ cd src && $(MAKE) $(MAKEFLAGS)
+
+ install: compile
+ ./install.sh
+@@ -11,7 +11,7 @@
+ ./uninstall.sh
+
+ clean:
+- cd src && $(MAKE) -$(MAKEFLAGS) clean
++ cd src && $(MAKE) $(MAKEFLAGS) clean
+
+ package: compile clean
+ ./package.sh
diff --git a/packages/smstools/smstools_2.2.20.bb b/packages/smstools/
smstools_2.2.20.bb
new file mode 100644
index 0000000..b578e88
--- /dev/null
+++ b/packages/smstools/smstools_2.2.20.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "SMS Tools"
+DEPENDS = ""
+
+SRC_URI = "http://smstools.meinemullemaus.de/packages/smstools-${PV}.tar.gz
\
+   file://makefile.patch;patch=1 "
+S = "${WORKDIR}/${PN}"
+
+inherit autotools update-rc.d
+
+INITSCRIPT_NAME = "smsd"
+INITSCRIPT_PARAMS = "defaults 91 20"
+
+
+# CFLAGS_append = " -DPATH_MAX=4096"
+# CFLAGS_prepend = "-I${STAGING_INCDIR}/openssl "
+
+do_install_append() {
+ install -d ${D}/${sysconfdir}/init.d
+ echo -e "smsd -c /etc/smsd.conf" > ${D}/${sysconfdir}/init.d/smsd
+ chmod 755 ${D}/${sysconfdir}/init.d/smsd
+}


2015-02-16 14:59 GMT+02:00 Alexandru Vaduva <Alexandru.Vaduva@enea.com>:

>  It seems Hynek Petrak had some progress on this one a while back. Maybe
> the packages he posted and are nowhere to be found now could be revived.
>
>
>
> Alex Vaduva
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Kai Ulrich
> *Sent:* Monday, February 16, 2015 12:33 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] recipe with optional dependency and configuration.
>
>
>
> Hi,
>
> I'm new into yocto creating recipes.
>
> After reading the Docu I feel confident with the basics.
>
> So here my questions.
>
>
>
> I want to create a recipe of smstools.
>
> 1. There is no repository (git / svn / cvs). There are sources to
> download.
> http://smstools3.kekekasvi.com/index.php?p=packages
>
> Q: In the philosophy of yocto / openembedded, is it better to create a own
> git or use the original source package.
>
> 2. For OPTIONAL statistics you can add this feature
> - by enable it in the src/Makefile
> - Install  OSSP mm Shared Memory Library <http://www.ossp.org/>
>
> - mmlib is not part of the yocto / openembedded. So it has to be added
> too.
>
>
> Q: How can I structure the recipes to add the smstools easy.
>
> Q: How can provide the optional statistics feature.
>
>   Friendly regrades
>
> Kai
>



-- 
Mgr. Hynek Petrak

--047d7ba976c459e413050f3bfc76
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would swear, that I haven&#39;t done anything like that =
in the past, but looking back at the emails you are right. It&#39;s dated b=
ack to 2008, not sure whether it still according the build system requireme=
nts.<div><br></div><div>Cheers, Hynek<br><div><br></div><div><div>diff --gi=
t a/packages/smstools/makefile.patch b/packages/smstools/makefile.patch</di=
v><div>new file mode 100644</div><div>index 0000000..12bf27f</div><div>--- =
/dev/null</div><div>+++ b/packages/smstools/makefile.patch</div><div>@@ -0,=
0 +1,20 @@</div><div>+--- smstools/Makefile<span class=3D"" style=3D"white-=
space:pre">	</span>2008-12-07 19:40:13.160951393 +0100</div><div>++++ smsto=
ols/Makefile.new<span class=3D"" style=3D"white-space:pre">	</span>2008-12-=
07 19:40:00.913636005 +0100</div><div>+@@ -2,7 +2,7 @@</div><div>+=C2=A0</d=
iv><div>+=C2=A0</div><div>+ compile:=C2=A0</div><div>+-<span class=3D"" sty=
le=3D"white-space:pre">	</span>cd src &amp;&amp; $(MAKE) -$(MAKEFLAGS)=C2=
=A0</div><div>++<span class=3D"" style=3D"white-space:pre">	</span>cd src &=
amp;&amp; $(MAKE) $(MAKEFLAGS)=C2=A0</div><div>+=C2=A0</div><div>+ install:=
 compile</div><div>+ <span class=3D"" style=3D"white-space:pre">	</span>./i=
nstall.sh</div><div>+@@ -11,7 +11,7 @@</div><div>+ <span class=3D"" style=
=3D"white-space:pre">	</span>./uninstall.sh</div><div>+=C2=A0</div><div>+ c=
lean:</div><div>+-<span class=3D"" style=3D"white-space:pre">	</span>cd src=
 &amp;&amp; $(MAKE) -$(MAKEFLAGS) clean</div><div>++<span class=3D"" style=
=3D"white-space:pre">	</span>cd src &amp;&amp; $(MAKE) $(MAKEFLAGS) clean</=
div><div>+=C2=A0</div><div>+ package: compile clean</div><div>+ <span class=
=3D"" style=3D"white-space:pre">	</span>./package.sh</div><div>diff --git a=
/packages/smstools/<a href=3D"http://smstools_2.2.20.bb">smstools_2.2.20.bb=
</a> b/packages/smstools/<a href=3D"http://smstools_2.2.20.bb">smstools_2.2=
.20.bb</a></div><div>new file mode 100644</div><div>index 0000000..b578e88<=
/div><div>--- /dev/null</div><div>+++ b/packages/smstools/<a href=3D"http:/=
/smstools_2.2.20.bb">smstools_2.2.20.bb</a></div><div>@@ -0,0 +1,21 @@</div=
><div>+DESCRIPTION =3D &quot;SMS Tools&quot;</div><div>+DEPENDS =3D &quot;&=
quot;</div><div>+</div><div>+SRC_URI =3D &quot;<a href=3D"http://smstools.m=
einemullemaus.de/packages/smstools-${PV}.tar.gz">http://smstools.meinemulle=
maus.de/packages/smstools-${PV}.tar.gz</a> \</div><div>+<span class=3D"" st=
yle=3D"white-space:pre">	</span> =C2=A0 file://makefile.patch;patch=3D1 &qu=
ot;</div><div>+S =3D &quot;${WORKDIR}/${PN}&quot;</div><div>+</div><div>+in=
herit autotools update-rc.d</div><div>+</div><div>+INITSCRIPT_NAME =3D &quo=
t;smsd&quot;</div><div>+INITSCRIPT_PARAMS =3D &quot;defaults 91 20&quot;</d=
iv><div>+</div><div>+</div><div>+# CFLAGS_append =3D &quot; -DPATH_MAX=3D40=
96&quot;</div><div>+# CFLAGS_prepend =3D &quot;-I${STAGING_INCDIR}/openssl =
&quot;</div><div>+</div><div>+do_install_append() {</div><div>+<span class=
=3D"" style=3D"white-space:pre">	</span>install -d ${D}/${sysconfdir}/init.=
d</div><div>+<span class=3D"" style=3D"white-space:pre">	</span> echo -e &q=
uot;smsd -c /etc/smsd.conf&quot; &gt; ${D}/${sysconfdir}/init.d/smsd</div><=
div>+<span class=3D"" style=3D"white-space:pre">	</span>chmod 755 ${D}/${sy=
sconfdir}/init.d/smsd</div><div>+}</div></div><div><br></div></div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02-16 14:59 GM=
T+02:00 Alexandru Vaduva <span dir=3D"ltr">&lt;<a href=3D"mailto:Alexandru.=
Vaduva@enea.com" target=3D"_blank">Alexandru.Vaduva@enea.com</a>&gt;</span>=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">





<div lang=3D"RO" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">It seems H=
ynek Petrak had some progress on this one a while back. Maybe the packages =
he posted and are nowhere to be found now could be revived.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Alex Vaduv=
a
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" tar=
get=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto=
:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproje=
ct.org</a>]
<b>On Behalf Of </b>Kai Ulrich<br>
<b>Sent:</b> Monday, February 16, 2015 12:33 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] recipe with optional dependency and configuration.<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
Hi,<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#39;m new into yocto creating=
 recipes.<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
After reading the Docu I feel confident with the basics.<u></u><u></u></spa=
n></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So here my questions.<u></u><u>=
</u></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
I want to create a recipe of smstools.
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">1. There is no repository (git =
/ svn / cvs). There are sources to download.
<br>
<a href=3D"http://smstools3.kekekasvi.com/index.php?p=3Dpackages" target=3D=
"_blank">http://smstools3.kekekasvi.com/index.php?p=3Dpackages</a><u></u><u=
></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
Q: In the philosophy of yocto / openembedded, is it better to create a own =
git or use the original source package.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">2. For OPTIONAL statistics you =
can add this feature
<br>
- by enable it in the src/Makefile<br>
- Install=C2=A0 <a href=3D"http://www.ossp.org/" target=3D"_blank">OSSP mm =
Shared Memory Library</a><u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">- mmlib is not part of the yoct=
o / openembedded. So it has to be added too.
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
Q: How can I structure the recipes to add the smstools easy. <u></u><u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US">=
Q: How can provide the optional statistics feature.<br>
<br>
<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Friendly regrades<u></u><u></u>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kai <u></u><u></u></span></p>
</div>
</div>
</div>
</div>
</div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature">Mgr. Hynek Petrak</div>
</div>

--047d7ba976c459e413050f3bfc76--
