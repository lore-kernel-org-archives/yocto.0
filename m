Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B66E00CE2; Fri, 15 Sep 2017 06:44:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1970E00C45
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 06:44:09 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id l15so8439565iol.8
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 06:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IH1oyv0U4FkzWct8PPK1q9CBNBKRK8BexNVECWHv+HM=;
	b=EiuGj49AzRJN2VnGiwp1fTHrxLmzCUiUX9wXG6/Tv4i0Z7/GN4rEQ5u4nqi6prgGCo
	OsiDnHJipNWRdv+bkdNj14PFtWjUmldCNkb5XxnJluOER8Ix/InyXTcdGwPgbVmrzYBi
	EDwIxFYJgiGV2ApT4BKkjAO2/s/1TY+lxhXxSXiBGZn/y8XHs1640hR8DOui8Wa2Wg3L
	27pB0MUzGTVcQcFoJDOBm7MKcy5piLBafOYpc3StLcaGzYI7p2Qn/T2xEDbSx1O5LjpN
	1zkLe/B4EYoeX9e8kIPLa9edonjTxAGuKjlaKWPFemWpW/w7NaXCly3exQgc5QL74v4a
	+sXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IH1oyv0U4FkzWct8PPK1q9CBNBKRK8BexNVECWHv+HM=;
	b=BXQQWMCKBDrokNxzkrxesAUPDTOwOijo6pgjD6d+GUDmE5jFMisO2g668PRy87q4dJ
	ZbvLEnEgmpUmMTydPmftaX1jbwyS9iDdirWC+BTjFuCb16JCvNO5hvtTmsfSSnJeWK/a
	qVShk1pgsPTAeiEpYBiBhv3zXjK+6uGim+d+VIxzu0SRGhzydkBDEtFS2RC6C9qTBXhw
	gxWbNqs33Vh7o2Rl+bsaRMk1P7vYTMMh0mGcYyF9Dy6WuleL0+h+qXX2zzq7rh7UCTXG
	/VZH+2jtCYoBzXDvKODhA/GmN1XLVwiS4+M7wTn3r2jHnfiCAXcMnuPBHbkGDl0vnrIQ
	qLjA==
X-Gm-Message-State: AHPjjUjm+OSAcYJzcsheln5fZ5wx+UAnMYYRubwH3engwOcfkLMCR7YP
	4cw2hEYrasMBPkBmRIkFRbyTw8bVViu6YAEGK9LPXg==
X-Google-Smtp-Source: AOwi7QB08SUqOtTk5Z3Wxb1ouCWZqz/Q5Sa+lHauflkpW0GPkI6G1Jzxi5ahbEMd/jJA/giGEPtBP849ZY6sAj/BHNM=
X-Received: by 10.107.69.14 with SMTP id s14mr7466968ioa.122.1505483049007;
	Fri, 15 Sep 2017 06:44:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.13.2 with HTTP; Fri, 15 Sep 2017 06:43:47 -0700 (PDT)
X-Originating-IP: [181.220.79.73]
In-Reply-To: <CAB2nKc8z9itYz55VYa+Xd-uygpnJfctnjTpF=yvXHBtwHbGywQ@mail.gmail.com>
References: <20170914202119.6624-1-fabio.berton@ossystems.com.br>
	<20170914202119.6624-2-fabio.berton@ossystems.com.br>
	<CAB2nKc8z9itYz55VYa+Xd-uygpnJfctnjTpF=yvXHBtwHbGywQ@mail.gmail.com>
From: Fabio Berton <fabio.berton@ossystems.com.br>
Date: Fri, 15 Sep 2017 10:43:47 -0300
Message-ID: <CAAPZna1ya3p-bnaY07nur9Zf=1qcNgMTFF-U7mviHUs5wWWpEA@mail.gmail.com>
To: Vincent Prince <vincent.prince.fr@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [pyro][meta-oracle-java][PATCH 2/2] oracle-java: create directory before creating links
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
X-List-Received-Date: Fri, 15 Sep 2017 13:44:11 -0000
Content-Type: multipart/alternative; boundary="089e0826e9cc5a26df05593a96c3"

--089e0826e9cc5a26df05593a96c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E2=80=8BHi Vincent,

I didn't see this error, but I'll look this issue. Without these two
commits that I sent to pyro branch I can't build some Java applications
because the application can't find java and javac.

On Fri, Sep 15, 2017 at 4:30 AM, Vincent Prince <vincent.prince.fr@gmail.co=
m
> wrote:

> Hi Fabio,
>
> I have a non fatal-error on link creation on pyro:
>
> ERROR: oracle-jse-jdk-x86-64-native-1.8.0-u131r0 do_populate_sysroot:
> sstate found an absolute path symlink
> /home/build/tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-
> native/1.8.0-u131r0/sysroot-destdir/home/build/tmp/work/
> x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/
> recipe-sysroot-native/usr/bin/java
> pointing at /home/build/tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-
> native/1.8.0-u131r0/recipe-sysroot-native/usr/lib/jvm/
> java-8-oracle/bin/java.
> Please replace this with a relative link.
>
> I suspect that those lines are concerned:
>         ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>         ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
>
> Am I wrong?
>
> Best Regards,
> Vincent
>
> 2017-09-14 22:21 GMT+02:00 Fabio Berton <fabio.berton@ossystems.com.br>:
> > From: Jan Remmet <j.remmet@phytec.de>
> >
> > if bindir directory doesn't exists the link is created wrongly:
> >
> > file -b tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-
> u131r0/image/home/yocto/build/tmp/sysroots/x86_64-linux/usr/bin
> > symbolic link to
> > `/home/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/
> jvm/java-8-oracle/bin/javac'
> >
> > tested on morty
> >
> > Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> > Signed-off-by: Maxin B. John <maxin.john@intel.com>
> > (cherry picked from commit 731d3d2cf7e7d65954991e79b9918575e06081c8)
> > ---
> >  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> > index 935ad9b..a7210d9 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> > +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> > @@ -12,11 +12,14 @@ JDK_JRE =3D "jdk"
> >  require oracle-jse.inc
> >
> >  do_install_class-native() {
> > -       install -d -m 0755                      ${D}${libdir_jvm}
> > +       install -d                              ${D}${libdir_jvm}
> >         cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
> >
> > +       install -d                              ${D}${bindir}
> >         ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
> >         ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
> > +
> > +       install -d                              ${D}${JDK_HOME}/bin
> >         ln -sf javah
> ${D}${JDK_HOME}/bin/gjavah
> >         ln -sf jar
> ${D}${JDK_HOME}/bin/fastjar
> >  }
> > --
> > 2.14.1
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--089e0826e9cc5a26df05593a96c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace;font-size:small">=E2=80=8BHi Vincent,</div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace;font-size:small"><br></di=
v><div class=3D"gmail_default" style=3D"font-family:monospace,monospace;fon=
t-size:small">I didn&#39;t see this error, but=C2=A0I&#39;ll look this issu=
e. Without these two commits that I sent to pyro branch I can&#39;t build s=
ome Java applications because the application can&#39;t find java and javac=
.</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On F=
ri, Sep 15, 2017 at 4:30 AM, Vincent Prince <span dir=3D"ltr">&lt;<a href=
=3D"mailto:vincent.prince.fr@gmail.com" target=3D"_blank">vincent.prince.fr=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Fabio=
,<br>
<br>
I have a non fatal-error on link creation on pyro:<br>
<br>
ERROR: oracle-jse-jdk-x86-64-native-<wbr>1.8.0-u131r0 do_populate_sysroot:<=
br>
sstate found an absolute path symlink<br>
/home/build/tmp/work/x86_64-<wbr>linux/oracle-jse-jdk-x86-64-<wbr>native/1.=
8.0-u131r0/sysroot-<wbr>destdir/home/build/tmp/work/<wbr>x86_64-linux/oracl=
e-jse-jdk-<wbr>x86-64-native/1.8.0-u131r0/<wbr>recipe-sysroot-native/usr/bi=
n/<wbr>java<br>
pointing at /home/build/tmp/work/x86_64-<wbr>linux/oracle-jse-jdk-x86-64-<w=
br>native/1.8.0-u131r0/recipe-<wbr>sysroot-native/usr/lib/jvm/<wbr>java-8-o=
racle/bin/java.<br>
Please replace this with a relative link.<br>
<br>
I suspect that those lines are concerned:<br>
<span class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${JDK_HOME}/bin/java=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${bindir}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${JDK_HOME}/bin/javac=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br>
<br>
</span>Am I wrong?<br>
<br>
Best Regards,<br>
Vincent<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
2017-09-14 22:21 GMT+02:00 Fabio Berton &lt;<a href=3D"mailto:fabio.berton@=
ossystems.com.br">fabio.berton@ossystems.com.br</a><wbr>&gt;:<br>
&gt; From: Jan Remmet &lt;<a href=3D"mailto:j.remmet@phytec.de">j.remmet@ph=
ytec.de</a>&gt;<br>
&gt;<br>
&gt; if bindir directory doesn&#39;t exists the link is created wrongly:<br=
>
&gt;<br>
&gt; file -b tmp/work/x86_64-linux/oracle-<wbr>jse-jdk-x86-64-native/1.8.0-=
<wbr>u131r0/image/home/yocto/build/<wbr>tmp/sysroots/x86_64-linux/usr/<wbr>=
bin<br>
&gt; symbolic link to<br>
&gt; `/home/yocto/build/tmp/<wbr>sysroots/x86_64-linux/usr/lib/<wbr>jvm/jav=
a-8-oracle/bin/javac&#39;<br>
&gt;<br>
&gt; tested on morty<br>
&gt;<br>
&gt; Signed-off-by: Jan Remmet &lt;<a href=3D"mailto:j.remmet@phytec.de">j.=
remmet@phytec.de</a>&gt;<br>
&gt; Signed-off-by: Maxin B. John &lt;<a href=3D"mailto:maxin.john@intel.co=
m">maxin.john@intel.com</a>&gt;<br>
&gt; (cherry picked from commit 731d3d2cf7e7d65954991e79b99185<wbr>75e06081=
c8)<br>
&gt; ---<br>
&gt;=C2=A0 recipes-devtools/oracle-java/<wbr>oracle-jse-jdk.inc | 5 ++++-<b=
r>
&gt;=C2=A0 1 file changed, 4 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc b/re=
cipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
&gt; index 935ad9b..a7210d9 100644<br>
&gt; --- a/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
&gt; +++ b/recipes-devtools/oracle-<wbr>java/oracle-jse-jdk.inc<br>
&gt; @@ -12,11 +12,14 @@ JDK_JRE =3D &quot;jdk&quot;<br>
&gt;=C2=A0 require oracle-jse.inc<br>
&gt;<br>
&gt;=C2=A0 do_install_class-native() {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0install -d -m 0755=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${libdir_jvm}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $=
{D}${libdir_jvm}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp -a ${S}/${JDK_JRE}${PV}_${PV_<wbr>=
UPDATE} ${D}${JDK_HOME}<br>
&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $=
{D}${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf ${JDK_HOME}/bin/java=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf ${JDK_HOME}/bin/javac=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${bindir}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0install -d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $=
{D}${JDK_HOME}/bin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf javah=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $=
{D}${JDK_HOME}/bin/gjavah<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf jar=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ${D}${JDK_HOME}/bin/fastjar<br>
&gt;=C2=A0 }<br>
&gt; --<br>
&gt; 2.14.1<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
</font></span></blockquote></div><br></div>

--089e0826e9cc5a26df05593a96c3--
