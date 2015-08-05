Return-Path: <jfdavis@anuvainnovations.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 169B3E00A38; Wed,  5 Aug 2015 13:02:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B8A5E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 13:02:24 -0700 (PDT)
Received: by ykeo23 with SMTP id o23so44804367yke.3
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 13:02:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=hg6BsOxCC6VPRvXLmrIT5QyKENsaYs1O7b/Tad53+Nw=;
	b=RrxkQry8+3tcT75QFzBYmPr0+loxW8/jfaCv+uz888BUqUwJFO6LovfQPxXKjVctFm
	naDkyEWcusQ8KhAyhcCGs8NJh7jS0YtCvC2Jt21BRhSMfNntpRFGCx1gnUFHndLPtsXh
	CPHC0tYzsx+jgeQKUj6lNyKZn0I1tDszGgBO3d0m10sIhkA1e5kP76zTKG9vNE9ZVPkA
	UGBKM9s3qBSu2Gj/6hH6/HWdj14n52bY6Z5J4L0H8nHIKREDqXiaCCSteyBTFE4Sp113
	M3T9MVaePlAgTXUxMG/KyU0ZJIhFteHrqlJ00si/M9YE8AHOp/KbtXMHRGFf9jhe5Bjl
	1X1Q==
X-Gm-Message-State: ALoCoQlNm+c7Qa63q7IDbOX+sBezLWTsjaQo6fAq7u7cL6YEe5BcXsuGgWCtThnqemiQrKJ0J5Yx
MIME-Version: 1.0
X-Received: by 10.13.242.67 with SMTP id b64mr10539590ywf.74.1438804943952;
	Wed, 05 Aug 2015 13:02:23 -0700 (PDT)
Received: by 10.37.44.137 with HTTP; Wed, 5 Aug 2015 13:02:23 -0700 (PDT)
In-Reply-To: <87d1z1v7pj.fsf@email.parenteses.org>
References: <87vbd0xxhj.fsf@email.parenteses.org>
	<CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
	<CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
	<87d1z1v7pj.fsf@email.parenteses.org>
Date: Wed, 5 Aug 2015 16:02:23 -0400
Message-ID: <CAPTvctVy0N7sbxr-KZusSKYOjnGtreieV_1AdGgrV0J=ZZK==g@mail.gmail.com>
From: John Davis <jfdavis@anuvainnovations.com>
To: Mario Domenech Goulart <mario@ossystems.com.br>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java] oracle-jse-jre fetch issue
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
X-List-Received-Date: Wed, 05 Aug 2015 20:02:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c035f5c960d2b051c95e1de

--94eb2c035f5c960d2b051c95e1de
Content-Type: text/plain; charset=UTF-8

I'm at a different client site now, but tomorrow I will be working on the
yocto stuff.  I can send it to your tomorrow.

FWIW, each line in that email has a line which was changed preceded by the
original line starting with a comment #.

Even then, I found you need to manually log in to the oracle website to
manually download the jar file and place it in the download folders.

So, the result is that the script thinks it has a link for downloading a
file, however since the file has been downloaded manually using the web
browser it skips the download and simply starts the CRC verification.  Once
the script determines that the CRC matches the downloaded file it proceeds
to the next steps in the build process.

--
John F. Davis
cell: 919 888 8358

On Wed, Aug 5, 2015 at 3:47 PM, Mario Domenech Goulart <
mario@ossystems.com.br> wrote:

> Hi John,
>
> On Fri, 31 Jul 2015 14:34:24 -0400 John Davis <
> jfdavis@anuvainnovations.com> wrote:
>
> > fwiw, I am trying to fix it like so:
> >
> > diff --git
> >
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> > index bfa8011..13918d8 100644
> > ---
> >
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> > +++
> >
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> > @@ -1,9 +1,16 @@
> > -PV_UPDATE = "60"
> > -BUILD_NUMBER = "19"
> > +#PV_UPDATE = "60"
> > +#BUILD_NUMBER = "19"
> > +PV_UPDATE = "75"
> > +BUILD_NUMBER = "13"
> > require oracle-jse-ejre.inc
> > -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
> > {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> > +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
> > {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> > +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
> > {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
> > +
> > +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> > +#SRC_URI[sha256sum] =
> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> > +
> > +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
> > +SRC_URI[sha256sum] =
> > "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
> > -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> > davis@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git
> > diff
> > diff --git
> >
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> > index bfa8011..13918d8 100644
> > ---
> >
> a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> > +++
> >
> b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> > @@ -1,9 +1,16 @@
> > -PV_UPDATE = "60"
> > -BUILD_NUMBER = "19"
> > +#PV_UPDATE = "60"
> > +#BUILD_NUMBER = "19"
> > +PV_UPDATE = "75"
> > +BUILD_NUMBER = "13"
> > require oracle-jse-ejre.inc
> > -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
> > {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> > +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
> > {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> > +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
> > {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
> > +
> > +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> > +#SRC_URI[sha256sum] =
> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> > +
> > +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
> > +SRC_URI[sha256sum] =
> > "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
> > -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> > -SRC_URI[sha256sum] =
> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> > diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> > b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> > index 9a1fdfe..4dc2fe9 100644
> > --- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> > +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> > @@ -8,10 +8,16 @@ DESCRIPTION = "This is the proprietary JRE from
> > Sun/Oracle, with the Hotspot JVM
> > The JRE (Java Runtime Environment) is needed on a system to run Java\
> > applications and applets"
> > -JDK_JRE = "ejre"
> > +#JDK_JRE = "ejre"
> > +JDK_JRE = "jdk"
> > require oracle-jse.inc
> > LIC_FILES_CHKSUM = "\
> > - file://${WORKDIR}/${JDK_JRE}${PV}_$
> > {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> > + file://${WORKDIR}/${JDK_JRE}${PV}_$
> > {PV_UPDATE}/COPYRIGHT;md5=0b204bd2921accd6ef4a02f9c0001823 \
> > file://${WORKDIR}/${JDK_JRE}${PV}_$
> >
> {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb
> > \
> > "
> > +
> > +#LIC_FILES_CHKSUM = "\
> > +# file://${WORKDIR}/${JDK_JRE}${PV}_$
> > {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> > +# file://${WORKDIR}/${JDK_JRE}${PV}_$
> >
> {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01
> > \
> > +# "
>
> Thanks for sharing your changes.  Would you mind sending a proper git
> patch?  I'm having a hard time applying your diff.  I suppose some lines
> got broken by the e-mail editor.
>
> Best wishes.
> Mario
> --
> http://www.ossystems.com.br
>

--94eb2c035f5c960d2b051c95e1de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m at a different client site now, but tomorrow I wil=
l be working on the yocto stuff.=C2=A0 I can send it to your tomorrow.<div>=
<br></div><div>FWIW, each line in that email has a line which was changed p=
receded by the original line starting with a comment #.</div><div><br></div=
><div>Even then, I found you need to manually log in to the oracle website =
to manually download the jar file and place it in the download folders.</di=
v><div><br></div><div>So, the result is that the script thinks it has a lin=
k for downloading a file, however since the file has been downloaded manual=
ly using the web browser it skips the download and simply starts the CRC ve=
rification.=C2=A0 Once the script determines that the CRC matches the downl=
oaded file it proceeds to the next steps in the build process.</div></div><=
div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr">--</div><div dir=3D"ltr">John F=
. Davis<div>cell: 919 888 8358</div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Aug 5, 2015 at 3:47 PM, Mario Domene=
ch Goulart <span dir=3D"ltr">&lt;<a href=3D"mailto:mario@ossystems.com.br" =
target=3D"_blank">mario@ossystems.com.br</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">Hi John,<br>
<div><div class=3D"h5"><br>
On Fri, 31 Jul 2015 14:34:24 -0400 John Davis &lt;<a href=3D"mailto:jfdavis=
@anuvainnovations.com">jfdavis@anuvainnovations.com</a>&gt; wrote:<br>
<br>
&gt; fwiw, I am trying to fix it like so:<br>
&gt;<br>
&gt; diff --git<br>
&gt; a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; index bfa8011..13918d8 100644<br>
&gt; ---<br>
&gt; a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; +++<br>
&gt; b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; @@ -1,9 +1,16 @@<br>
&gt; -PV_UPDATE =3D &quot;60&quot;<br>
&gt; -BUILD_NUMBER =3D &quot;19&quot;<br>
&gt; +#PV_UPDATE =3D &quot;60&quot;<br>
&gt; +#BUILD_NUMBER =3D &quot;19&quot;<br>
&gt; +PV_UPDATE =3D &quot;75&quot;<br>
&gt; +BUILD_NUMBER =3D &quot;13&quot;<br>
&gt; require oracle-jse-ejre.inc<br>
&gt; -SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/otn/java/ejre=
/7u${PV_UPDATE}-b$" rel=3D"noreferrer" target=3D"_blank">http://download.or=
acle.com/otn/java/ejre/7u${PV_UPDATE}-b$</a><br>
&gt; {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$<br>
&gt; {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&q=
uot;<br>
&gt; +#SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/otn/java/ejr=
e/7u$" rel=3D"noreferrer" target=3D"_blank">http://download.oracle.com/otn/=
java/ejre/7u$</a><br>
&gt; {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$<br>
&gt; {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&q=
uot;<br>
&gt; +SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/otn/java/jdk/=
7u${PV_UPDATE}-b$" rel=3D"noreferrer" target=3D"_blank">http://download.ora=
cle.com/otn/java/jdk/7u${PV_UPDATE}-b$</a><br>
&gt; {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz&quot;<br>
&gt; +<br>
&gt; +#SRC_URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221f16ba25c6c0&quot;<br>
&gt; +#SRC_URI[sha256sum] =3D<br>
&gt; &quot;ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf=
&quot;<br>
&gt; +<br>
&gt; +SRC_URI[md5sum] =3D &quot;6958e36bdcc842121510fecf702dcf47&quot;<br>
&gt; +SRC_URI[sha256sum] =3D<br>
&gt; &quot;29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01=
&quot;<br>
&gt; -SRC_URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221f16ba25c6c0&quot;<br>
&gt; davis@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git=
<br>
&gt; diff<br>
&gt; diff --git<br>
&gt; a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; index bfa8011..13918d8 100644<br>
&gt; ---<br>
&gt; a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; +++<br>
&gt; b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-hea=
dless.inc<br>
&gt; @@ -1,9 +1,16 @@<br>
&gt; -PV_UPDATE =3D &quot;60&quot;<br>
&gt; -BUILD_NUMBER =3D &quot;19&quot;<br>
&gt; +#PV_UPDATE =3D &quot;60&quot;<br>
&gt; +#BUILD_NUMBER =3D &quot;19&quot;<br>
&gt; +PV_UPDATE =3D &quot;75&quot;<br>
&gt; +BUILD_NUMBER =3D &quot;13&quot;<br>
&gt; require oracle-jse-ejre.inc<br>
&gt; -SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/otn/java/ejre=
/7u${PV_UPDATE}-b$" rel=3D"noreferrer" target=3D"_blank">http://download.or=
acle.com/otn/java/ejre/7u${PV_UPDATE}-b$</a><br>
&gt; {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$<br>
&gt; {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&q=
uot;<br>
&gt; +#SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/otn/java/ejr=
e/7u$" rel=3D"noreferrer" target=3D"_blank">http://download.oracle.com/otn/=
java/ejre/7u$</a><br>
&gt; {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$<br>
&gt; {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&q=
uot;<br>
&gt; +SRC_URI =3D &quot;<a href=3D"http://download.oracle.com/otn/java/jdk/=
7u${PV_UPDATE}-b$" rel=3D"noreferrer" target=3D"_blank">http://download.ora=
cle.com/otn/java/jdk/7u${PV_UPDATE}-b$</a><br>
&gt; {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz&quot;<br>
&gt; +<br>
&gt; +#SRC_URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221f16ba25c6c0&quot;<br>
&gt; +#SRC_URI[sha256sum] =3D<br>
&gt; &quot;ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf=
&quot;<br>
&gt; +<br>
&gt; +SRC_URI[md5sum] =3D &quot;6958e36bdcc842121510fecf702dcf47&quot;<br>
&gt; +SRC_URI[sha256sum] =3D<br>
&gt; &quot;29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01=
&quot;<br>
&gt; -SRC_URI[md5sum] =3D &quot;b9b8f598b0a7f49e4d221f16ba25c6c0&quot;<br>
&gt; -SRC_URI[sha256sum] =3D<br>
&gt; &quot;ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf=
&quot;<br>
&gt; diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc<br>
&gt; b/recipes-devtools/oracle-java/oracle-jse-ejre.inc<br>
&gt; index 9a1fdfe..4dc2fe9 100644<br>
&gt; --- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc<br>
&gt; +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc<br>
&gt; @@ -8,10 +8,16 @@ DESCRIPTION =3D &quot;This is the proprietary JRE fr=
om<br>
&gt; Sun/Oracle, with the Hotspot JVM<br>
&gt; The JRE (Java Runtime Environment) is needed on a system to run Java\<=
br>
&gt; applications and applets&quot;<br>
&gt; -JDK_JRE =3D &quot;ejre&quot;<br>
&gt; +#JDK_JRE =3D &quot;ejre&quot;<br>
&gt; +JDK_JRE =3D &quot;jdk&quot;<br>
&gt; require oracle-jse.inc<br>
&gt; LIC_FILES_CHKSUM =3D &quot;\<br>
&gt; - file://${WORKDIR}/${JDK_JRE}${PV}_$<br>
&gt; {PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d47a7dcfb78f142f487afb34bb \<br>
&gt; + file://${WORKDIR}/${JDK_JRE}${PV}_$<br>
&gt; {PV_UPDATE}/COPYRIGHT;md5=3D0b204bd2921accd6ef4a02f9c0001823 \<br>
&gt; file://${WORKDIR}/${JDK_JRE}${PV}_$<br>
&gt; {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3Df3a388961d24b8b72d412a07=
9a878cdb<br>
&gt; \<br>
&gt; &quot;<br>
&gt; +<br>
&gt; +#LIC_FILES_CHKSUM =3D &quot;\<br>
&gt; +# file://${WORKDIR}/${JDK_JRE}${PV}_$<br>
&gt; {PV_UPDATE}/COPYRIGHT;md5=3Dbe9fe5d47a7dcfb78f142f487afb34bb \<br>
&gt; +# file://${WORKDIR}/${JDK_JRE}${PV}_$<br>
&gt; {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=3D29c53bac198ca3faf5ed3700=
25a2a5564d43e05b92d91b6b5d2a8a503de10c01<br>
&gt; \<br>
&gt; +# &quot;<br>
<br>
</div></div>Thanks for sharing your changes.=C2=A0 Would you mind sending a=
 proper git<br>
patch?=C2=A0 I&#39;m having a hard time applying your diff.=C2=A0 I suppose=
 some lines<br>
got broken by the e-mail editor.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Best wishes.<br>
Mario<br>
--<br>
<a href=3D"http://www.ossystems.com.br" rel=3D"noreferrer" target=3D"_blank=
">http://www.ossystems.com.br</a><br>
</div></div></blockquote></div><br></div>

--94eb2c035f5c960d2b051c95e1de--
