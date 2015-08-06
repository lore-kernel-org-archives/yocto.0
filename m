Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14FCFE00A01; Thu,  6 Aug 2015 08:49:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 7361EE00A54
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 08:49:27 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2; Thu, 6 Aug 2015
	17:49:22 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id A782B28BA20;
	Thu,  6 Aug 2015 17:49:22 +0200 (CEST)
Date: Thu, 6 Aug 2015 17:49:22 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: Daniel. <danielhilst@gmail.com>
Message-ID: <20150806154922.GA64301@sestofb10.enea.se>
References: <87vbd0xxhj.fsf@email.parenteses.org>
	<CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
	<CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
	<87d1z1v7pj.fsf@email.parenteses.org>
	<CAPTvctVy0N7sbxr-KZusSKYOjnGtreieV_1AdGgrV0J=ZZK==g@mail.gmail.com>
	<CAF3SDA5GEjXppXOx_sqqexuMBHyob9u7nAFaSzR7u93DkgTuPA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAF3SDA5GEjXppXOx_sqqexuMBHyob9u7nAFaSzR7u93DkgTuPA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 06 Aug 2015 15:49:47 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi Daniel,

On Wed, Aug 05, 2015 at 05:20:38PM -0300, Daniel. wrote:
> Downloading JDK/JRE automagically is aways a pain in the a**.
> Everytime that Oracle changes something on its website these scripts
> crash.

I agree with your comments.It is really difficult to find a "standard"
way to download binaries from Oracle website that works everywhere.

That's why we mentioned that limitation in the README file in "Notes" section:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/tree/README
 
> A solution I get to my life is aways downloading JDK/JRE
> manually and puting in right place. As a "friendly but not so much"
> solution I did this in one of my recipes:
> 
> 
> --- recipe file ---
> ...
> DL_FILE = "ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headful-07_may_2014.tar.gz"
> ...
> do_fetch() {
>         if ! test -f "${DL_DIR}/${DL_FILE}"; then
>             echo "Please accept the License Agreement, download the
> ${DL_FILE} and put it on ${DL_DIR}"
>             echo "The download link can be found at
> http://www.oracle.com/technetwork/java/embedded/embedded-se/downloads/javase-embedded-downloads-2209751.html"
>             return 1
>         else
>             return 0
>         fi
> }
> 
> --- end recipe file ---
> 
> If the file is not found the recipes aborts with error and user see
> this mesage with the link to where he should go do donwload file, and
> where to put it. It's not a "state-of-art" but it works and
> prevents-me from working arround Oracle's changes. Gentoo (at least
> when I used it) do just like this to install Oracle's Java.
> 
> Best regards,
> - dhs

Best Regards,
Maxin
 
> 2015-08-05 17:02 GMT-03:00 John Davis <jfdavis@anuvainnovations.com>:
> > I'm at a different client site now, but tomorrow I will be working on the
> > yocto stuff.  I can send it to your tomorrow.
> >
> > FWIW, each line in that email has a line which was changed preceded by the
> > original line starting with a comment #.
> >
> > Even then, I found you need to manually log in to the oracle website to
> > manually download the jar file and place it in the download folders.
> >
> > So, the result is that the script thinks it has a link for downloading a
> > file, however since the file has been downloaded manually using the web
> > browser it skips the download and simply starts the CRC verification.  Once
> > the script determines that the CRC matches the downloaded file it proceeds
> > to the next steps in the build process.
> >
> > --
> > John F. Davis
> > cell: 919 888 8358
> >
> > On Wed, Aug 5, 2015 at 3:47 PM, Mario Domenech Goulart
> > <mario@ossystems.com.br> wrote:
> >>
> >> Hi John,
> >>
> >> On Fri, 31 Jul 2015 14:34:24 -0400 John Davis
> >> <jfdavis@anuvainnovations.com> wrote:
> >>
> >> > fwiw, I am trying to fix it like so:
> >> >
> >> > diff --git
> >> >
> >> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> >
> >> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> > index bfa8011..13918d8 100644
> >> > ---
> >> >
> >> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> > +++
> >> >
> >> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> > @@ -1,9 +1,16 @@
> >> > -PV_UPDATE = "60"
> >> > -BUILD_NUMBER = "19"
> >> > +#PV_UPDATE = "60"
> >> > +#BUILD_NUMBER = "19"
> >> > +PV_UPDATE = "75"
> >> > +BUILD_NUMBER = "13"
> >> > require oracle-jse-ejre.inc
> >> > -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
> >> > {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> >> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> >> > +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
> >> > {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> >> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> >> > +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
> >> > {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
> >> > +
> >> > +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> >> > +#SRC_URI[sha256sum] =
> >> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> >> > +
> >> > +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
> >> > +SRC_URI[sha256sum] =
> >> > "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
> >> > -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> >> > davis@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git
> >> > diff
> >> > diff --git
> >> >
> >> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> >
> >> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> > index bfa8011..13918d8 100644
> >> > ---
> >> >
> >> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> > +++
> >> >
> >> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
> >> > @@ -1,9 +1,16 @@
> >> > -PV_UPDATE = "60"
> >> > -BUILD_NUMBER = "19"
> >> > +#PV_UPDATE = "60"
> >> > +#BUILD_NUMBER = "19"
> >> > +PV_UPDATE = "75"
> >> > +BUILD_NUMBER = "13"
> >> > require oracle-jse-ejre.inc
> >> > -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
> >> > {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> >> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> >> > +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
> >> > {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
> >> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
> >> > +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
> >> > {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
> >> > +
> >> > +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> >> > +#SRC_URI[sha256sum] =
> >> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> >> > +
> >> > +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
> >> > +SRC_URI[sha256sum] =
> >> > "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
> >> > -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
> >> > -SRC_URI[sha256sum] =
> >> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
> >> > diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> >> > b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> >> > index 9a1fdfe..4dc2fe9 100644
> >> > --- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> >> > +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> >> > @@ -8,10 +8,16 @@ DESCRIPTION = "This is the proprietary JRE from
> >> > Sun/Oracle, with the Hotspot JVM
> >> > The JRE (Java Runtime Environment) is needed on a system to run Java\
> >> > applications and applets"
> >> > -JDK_JRE = "ejre"
> >> > +#JDK_JRE = "ejre"
> >> > +JDK_JRE = "jdk"
> >> > require oracle-jse.inc
> >> > LIC_FILES_CHKSUM = "\
> >> > - file://${WORKDIR}/${JDK_JRE}${PV}_$
> >> > {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> >> > + file://${WORKDIR}/${JDK_JRE}${PV}_$
> >> > {PV_UPDATE}/COPYRIGHT;md5=0b204bd2921accd6ef4a02f9c0001823 \
> >> > file://${WORKDIR}/${JDK_JRE}${PV}_$
> >> >
> >> > {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb
> >> > \
> >> > "
> >> > +
> >> > +#LIC_FILES_CHKSUM = "\
> >> > +# file://${WORKDIR}/${JDK_JRE}${PV}_$
> >> > {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
> >> > +# file://${WORKDIR}/${JDK_JRE}${PV}_$
> >> >
> >> > {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01
> >> > \
> >> > +# "
> >>
> >> Thanks for sharing your changes.  Would you mind sending a proper git
> >> patch?  I'm having a hard time applying your diff.  I suppose some lines
> >> got broken by the e-mail editor.
> >>
> >> Best wishes.
> >> Mario
> >> --
> >> http://www.ossystems.com.br
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> 
> 
> 
> -- 
> "Do or do not. There is no try"
>   Yoda Master
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

