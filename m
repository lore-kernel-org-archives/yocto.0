Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD26FE007F0; Tue, 17 Feb 2015 01:42:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaiu[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5FD2E007AB
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 01:42:17 -0800 (PST)
Received: from mail-wg0-f47.google.com ([74.125.82.47]) by mail.gmx.com
	(mrgmx101) with ESMTPSA (Nemesis) id 0LtmK9-1XP7WP0SMX-011Bsx for
	<yocto@yoctoproject.org>; Tue, 17 Feb 2015 10:42:16 +0100
Received: by mail-wg0-f47.google.com with SMTP id x12so20439732wgg.6
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 01:42:15 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.194.205.228 with SMTP id lj4mr58706899wjc.77.1424166135663; 
	Tue, 17 Feb 2015 01:42:15 -0800 (PST)
Received: by 10.194.39.169 with HTTP; Tue, 17 Feb 2015 01:42:15 -0800 (PST)
In-Reply-To: <CADkkZUDXooaRFVttKdrONHjZBM22LN_axnV0qsFf69FOg42xLg@mail.gmail.com>
References: <CAAKMwiqNP=rQqmDQkdNRiAx2jT1pA1s6Z2GNgSVr6zDzGdp-uQ@mail.gmail.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D7B849D@SESTOEX04.enea.se>
	<CADkkZUDXooaRFVttKdrONHjZBM22LN_axnV0qsFf69FOg42xLg@mail.gmail.com>
Date: Tue, 17 Feb 2015 10:42:15 +0100
Message-ID: <CAAKMwir6MMp0Khb-PeN2OFnC3Rbnq6NnrM6ya5S6ahgLmk5Ztg@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: Hynek Petrak <hynek.petrak@gmail.com>
X-Provags-ID: V03:K0:BYd6xayT3WAjjV2S8Vbt20zCG0fR72lMqDMJ8r2HuyAeUYnMn2X
	azU2sc34c0R0F3ly9xO2DRhgArYV32Z+l4mZaGGYGIPxzHgjyZA3pliLrlUCMk1wfCV6IFs
	nCE9SsHkdOvfOwms5W++1ksB51jzl0whZmCR/3x1P460F9Cq6XAlaZmhGYaooZUN4pjASBK
	MHmlXUDjeY0oCAX1WkU7g==
X-UI-Out-Filterresults: notjunk:1;
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe with optional dependency and configuration.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Feb 2015 09:42:19 -0000
Content-Type: multipart/alternative; boundary=047d7b873d469e1169050f458464

--047d7b873d469e1169050f458464
Content-Type: text/plain; charset=UTF-8

Hi Hynek, Hi Alexandru,

thanks for your interest.

1. Is there a way to get the old recipe sources? My be there are some more
hints for my problem.

2. Based on your comments I started to create two recipes, one called
smstools3 one smstools3_inc_stats

Both are downloading the sources from the smstools3 homepage, alternative
sources are in a git repro.
The first one is using the default make file, patched for the oe/yocto
build process.
The second one patches the make file and uses the mmlib dependency.

Does any body know a alternative strategy to enable the alternative
behavior?
Any idea would be welcome.

fr
Kai


2015-02-16 23:19 GMT+01:00 Hynek Petrak <hynek.petrak@gmail.com>:

> I would swear, that I haven't done anything like that in the past, but
> looking back at the emails you are right. It's dated back to 2008, not sure
> whether it still according the build system requirements.
>
> Cheers, Hynek
>
> diff --git a/packages/smstools/makefile.patch
> b/packages/smstools/makefile.patch
> new file mode 100644
> index 0000000..12bf27f
> --- /dev/null
> +++ b/packages/smstools/makefile.patch
> @@ -0,0 +1,20 @@
> +--- smstools/Makefile 2008-12-07 19:40:13.160951393 +0100
> ++++ smstools/Makefile.new 2008-12-07 19:40:00.913636005 +0100
> +@@ -2,7 +2,7 @@
> +
> +
> + compile:
> +- cd src && $(MAKE) -$(MAKEFLAGS)
> ++ cd src && $(MAKE) $(MAKEFLAGS)
> +
> + install: compile
> + ./install.sh
> +@@ -11,7 +11,7 @@
> + ./uninstall.sh
> +
> + clean:
> +- cd src && $(MAKE) -$(MAKEFLAGS) clean
> ++ cd src && $(MAKE) $(MAKEFLAGS) clean
> +
> + package: compile clean
> + ./package.sh
> diff --git a/packages/smstools/smstools_2.2.20.bb b/packages/smstools/
> smstools_2.2.20.bb
> new file mode 100644
> index 0000000..b578e88
> --- /dev/null
> +++ b/packages/smstools/smstools_2.2.20.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION = "SMS Tools"
> +DEPENDS = ""
> +
> +SRC_URI = "
> http://smstools.meinemullemaus.de/packages/smstools-${PV}.tar.gz \
> +   file://makefile.patch;patch=1 "
> +S = "${WORKDIR}/${PN}"
> +
> +inherit autotools update-rc.d
> +
> +INITSCRIPT_NAME = "smsd"
> +INITSCRIPT_PARAMS = "defaults 91 20"
> +
> +
> +# CFLAGS_append = " -DPATH_MAX=4096"
> +# CFLAGS_prepend = "-I${STAGING_INCDIR}/openssl "
> +
> +do_install_append() {
> + install -d ${D}/${sysconfdir}/init.d
> + echo -e "smsd -c /etc/smsd.conf" > ${D}/${sysconfdir}/init.d/smsd
> + chmod 755 ${D}/${sysconfdir}/init.d/smsd
> +}
>
>
> 2015-02-16 14:59 GMT+02:00 Alexandru Vaduva <Alexandru.Vaduva@enea.com>:
>
>>  It seems Hynek Petrak had some progress on this one a while back. Maybe
>> the packages he posted and are nowhere to be found now could be revived.
>>
>>
>>
>> Alex Vaduva
>>
>>
>>
>> *From:* yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org] *On Behalf Of *Kai Ulrich
>> *Sent:* Monday, February 16, 2015 12:33 PM
>> *To:* yocto@yoctoproject.org
>> *Subject:* [yocto] recipe with optional dependency and configuration.
>>
>>
>>
>> Hi,
>>
>> I'm new into yocto creating recipes.
>>
>> After reading the Docu I feel confident with the basics.
>>
>> So here my questions.
>>
>>
>>
>> I want to create a recipe of smstools.
>>
>> 1. There is no repository (git / svn / cvs). There are sources to
>> download.
>> http://smstools3.kekekasvi.com/index.php?p=packages
>>
>> Q: In the philosophy of yocto / openembedded, is it better to create a
>> own git or use the original source package.
>>
>> 2. For OPTIONAL statistics you can add this feature
>> - by enable it in the src/Makefile
>> - Install  OSSP mm Shared Memory Library <http://www.ossp.org/>
>>
>> - mmlib is not part of the yocto / openembedded. So it has to be added
>> too.
>>
>>
>> Q: How can I structure the recipes to add the smstools easy.
>>
>> Q: How can provide the optional statistics feature.
>>
>>   Friendly regrades
>>
>> Kai
>>
>
>
>
> --
> Mgr. Hynek Petrak
>

--047d7b873d469e1169050f458464
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Hynek, Hi Alexandru,<br><br></div>thanks for =
your interest. <br><br></div><div>1. Is there a way to get the old recipe s=
ources? My be there are some more hints for my problem.<br></div><div><br>2=
. Based on your comments I started to create two recipes, one called smstoo=
ls3 one smstools3_inc_stats<br><br></div><div>Both are downloading the sour=
ces from the smstools3 homepage, alternative sources are in a git repro.<br=
></div><div>The first one is using the default make file, patched for the o=
e/yocto build process.<br></div><div>The second one patches the make file a=
nd uses the mmlib dependency.<br>=C2=A0<br></div><div>Does any body know a =
alternative strategy to enable the alternative behavior?<br></div><div>Any =
idea would be welcome.</div><div><br></div><div>fr<br></div><div>Kai<br></d=
iv><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">2015-02-16 23:19 GMT+01:00 Hynek Petrak <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:hynek.petrak@gmail.com" target=3D"_blank">hynek.petrak@gmail.co=
m</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I woul=
d swear, that I haven&#39;t done anything like that in the past, but lookin=
g back at the emails you are right. It&#39;s dated back to 2008, not sure w=
hether it still according the build system requirements.<div><br></div><div=
>Cheers, Hynek<br><div><br></div><div><div>diff --git a/packages/smstools/m=
akefile.patch b/packages/smstools/makefile.patch</div><div>new file mode 10=
0644</div><div>index 0000000..12bf27f</div><div>--- /dev/null</div><div>+++=
 b/packages/smstools/makefile.patch</div><div>@@ -0,0 +1,20 @@</div><div>+-=
-- smstools/Makefile<span style=3D"white-space:pre-wrap">	</span>2008-12-07=
 19:40:13.160951393 +0100</div><div>++++ smstools/Makefile.new<span style=
=3D"white-space:pre-wrap">	</span>2008-12-07 19:40:00.913636005 +0100</div>=
<div>+@@ -2,7 +2,7 @@</div><div>+=C2=A0</div><div>+=C2=A0</div><div>+ compi=
le:=C2=A0</div><div>+-<span style=3D"white-space:pre-wrap">	</span>cd src &=
amp;&amp; $(MAKE) -$(MAKEFLAGS)=C2=A0</div><div>++<span style=3D"white-spac=
e:pre-wrap">	</span>cd src &amp;&amp; $(MAKE) $(MAKEFLAGS)=C2=A0</div><div>=
+=C2=A0</div><div>+ install: compile</div><div>+ <span style=3D"white-space=
:pre-wrap">	</span>./install.sh</div><div>+@@ -11,7 +11,7 @@</div><div>+ <s=
pan style=3D"white-space:pre-wrap">	</span>./uninstall.sh</div><div>+=C2=A0=
</div><div>+ clean:</div><div>+-<span style=3D"white-space:pre-wrap">	</spa=
n>cd src &amp;&amp; $(MAKE) -$(MAKEFLAGS) clean</div><div>++<span style=3D"=
white-space:pre-wrap">	</span>cd src &amp;&amp; $(MAKE) $(MAKEFLAGS) clean<=
/div><div>+=C2=A0</div><div>+ package: compile clean</div><div>+ <span styl=
e=3D"white-space:pre-wrap">	</span>./package.sh</div><div>diff --git a/pack=
ages/smstools/<a href=3D"http://smstools_2.2.20.bb" target=3D"_blank">smsto=
ols_2.2.20.bb</a> b/packages/smstools/<a href=3D"http://smstools_2.2.20.bb"=
 target=3D"_blank">smstools_2.2.20.bb</a></div><div>new file mode 100644</d=
iv><div>index 0000000..b578e88</div><div>--- /dev/null</div><div>+++ b/pack=
ages/smstools/<a href=3D"http://smstools_2.2.20.bb" target=3D"_blank">smsto=
ols_2.2.20.bb</a></div><div>@@ -0,0 +1,21 @@</div><div>+DESCRIPTION =3D &qu=
ot;SMS Tools&quot;</div><div>+DEPENDS =3D &quot;&quot;</div><div>+</div><di=
v>+SRC_URI =3D &quot;<a href=3D"http://smstools.meinemullemaus.de/packages/=
smstools-$%7BPV%7D.tar.gz" target=3D"_blank">http://smstools.meinemullemaus=
.de/packages/smstools-${PV}.tar.gz</a> \</div><div>+<span style=3D"white-sp=
ace:pre-wrap">	</span> =C2=A0 file://makefile.patch;patch=3D1 &quot;</div><=
div>+S =3D &quot;${WORKDIR}/${PN}&quot;</div><div>+</div><div>+inherit auto=
tools update-rc.d</div><div>+</div><div>+INITSCRIPT_NAME =3D &quot;smsd&quo=
t;</div><div>+INITSCRIPT_PARAMS =3D &quot;defaults 91 20&quot;</div><div>+<=
/div><div>+</div><div>+# CFLAGS_append =3D &quot; -DPATH_MAX=3D4096&quot;</=
div><div>+# CFLAGS_prepend =3D &quot;-I${STAGING_INCDIR}/openssl &quot;</di=
v><div>+</div><div>+do_install_append() {</div><div>+<span style=3D"white-s=
pace:pre-wrap">	</span>install -d ${D}/${sysconfdir}/init.d</div><div>+<spa=
n style=3D"white-space:pre-wrap">	</span> echo -e &quot;smsd -c /etc/smsd.c=
onf&quot; &gt; ${D}/${sysconfdir}/init.d/smsd</div><div>+<span style=3D"whi=
te-space:pre-wrap">	</span>chmod 755 ${D}/${sysconfdir}/init.d/smsd</div><d=
iv>+}</div></div><div><br></div></div></div><div class=3D"gmail_extra"><div=
><div class=3D"h5"><br><div class=3D"gmail_quote">2015-02-16 14:59 GMT+02:0=
0 Alexandru Vaduva <span dir=3D"ltr">&lt;<a href=3D"mailto:Alexandru.Vaduva=
@enea.com" target=3D"_blank">Alexandru.Vaduva@enea.com</a>&gt;</span>:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"RO">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d" lang=3D"EN-US">It seems H=
ynek Petrak had some progress on this one a while back. Maybe the packages =
he posted and are nowhere to be found now could be revived.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d" lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d" lang=3D"EN-US">Alex Vaduv=
a
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d" lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;" lang=3D"EN-US">From:</span></b><span =
style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&q=
uot;" lang=3D"EN-US"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" tar=
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

</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><span c=
lass=3D"HOEnZb"><font color=3D"#888888">-- <br><div>Mgr. Hynek Petrak</div>
</font></span></div>
</blockquote></div><br></div>

--047d7b873d469e1169050f458464--
