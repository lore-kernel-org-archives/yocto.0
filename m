Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DD81E00A38; Wed,  5 Aug 2015 13:20:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B4B8E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 13:20:38 -0700 (PDT)
Received: by qgj62 with SMTP id 62so13583632qgj.2
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 13:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=o5nfHE8bW6sCCBMwsTUmTsKg0fG07CDMCQwHZWIh57M=;
	b=tmAIZh0W98EWocJyFnMhZKzK0vUuZtp1GecywtftHOdDY42a6nZW5RxY4gNhO3748a
	HPNu+sQjKr8Mm9L91yEt2vxsso8hUFND5Tqw9Gmlry7j3T9AGz7VJVWYYWMSeQZLkQJR
	jKt8HM/VtkWvH3z47kYxqYj9bsqn0ZINy1DdysiMRg9D6Yaq4QqgsMu8byY1tSartfTC
	/5v8j1XB+8IJtI2msPjO3SmIzVX8dKOAL3EGdDtrjOQuSUg7N/72byyR+GeXo+RAmxF7
	Ag1cLwLu8+X2PB7vH9f3U/yH5bPPRb73ftnBi0LKRYAzKgSCj2/Q6qvMro5j2WMret1A
	vcTA==
MIME-Version: 1.0
X-Received: by 10.140.25.136 with SMTP id 8mr19510733qgt.104.1438806038176;
	Wed, 05 Aug 2015 13:20:38 -0700 (PDT)
Received: by 10.96.179.74 with HTTP; Wed, 5 Aug 2015 13:20:38 -0700 (PDT)
In-Reply-To: <CAPTvctVy0N7sbxr-KZusSKYOjnGtreieV_1AdGgrV0J=ZZK==g@mail.gmail.com>
References: <87vbd0xxhj.fsf@email.parenteses.org>
	<CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
	<CAPTvctWPkXA2_1Y2hiVEUFQMReOFxKiiz2H4He2LGALPWUbnAQ@mail.gmail.com>
	<87d1z1v7pj.fsf@email.parenteses.org>
	<CAPTvctVy0N7sbxr-KZusSKYOjnGtreieV_1AdGgrV0J=ZZK==g@mail.gmail.com>
Date: Wed, 5 Aug 2015 17:20:38 -0300
Message-ID: <CAF3SDA5GEjXppXOx_sqqexuMBHyob9u7nAFaSzR7u93DkgTuPA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 05 Aug 2015 20:20:40 -0000
Content-Type: text/plain; charset=UTF-8

Downloading JDK/JRE automagically is aways a pain in the a**.
Everytime that Oracle changes something on its website these scripts
crash. A solution I get to my life is aways downloading JDK/JRE
manually and puting in right place. As a "friendly but not so much"
solution I did this in one of my recipes:


--- recipe file ---
...
DL_FILE = "ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headful-07_may_2014.tar.gz"
...
do_fetch() {
        if ! test -f "${DL_DIR}/${DL_FILE}"; then
            echo "Please accept the License Agreement, download the
${DL_FILE} and put it on ${DL_DIR}"
            echo "The download link can be found at
http://www.oracle.com/technetwork/java/embedded/embedded-se/downloads/javase-embedded-downloads-2209751.html"
            return 1
        else
            return 0
        fi
}

--- end recipe file ---

If the file is not found the recipes aborts with error and user see
this mesage with the link to where he should go do donwload file, and
where to put it. It's not a "state-of-art" but it works and
prevents-me from working arround Oracle's changes. Gentoo (at least
when I used it) do just like this to install Oracle's Java.

Best regards,
- dhs

2015-08-05 17:02 GMT-03:00 John Davis <jfdavis@anuvainnovations.com>:
> I'm at a different client site now, but tomorrow I will be working on the
> yocto stuff.  I can send it to your tomorrow.
>
> FWIW, each line in that email has a line which was changed preceded by the
> original line starting with a comment #.
>
> Even then, I found you need to manually log in to the oracle website to
> manually download the jar file and place it in the download folders.
>
> So, the result is that the script thinks it has a link for downloading a
> file, however since the file has been downloaded manually using the web
> browser it skips the download and simply starts the CRC verification.  Once
> the script determines that the CRC matches the downloaded file it proceeds
> to the next steps in the build process.
>
> --
> John F. Davis
> cell: 919 888 8358
>
> On Wed, Aug 5, 2015 at 3:47 PM, Mario Domenech Goulart
> <mario@ossystems.com.br> wrote:
>>
>> Hi John,
>>
>> On Fri, 31 Jul 2015 14:34:24 -0400 John Davis
>> <jfdavis@anuvainnovations.com> wrote:
>>
>> > fwiw, I am trying to fix it like so:
>> >
>> > diff --git
>> >
>> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> >
>> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> > index bfa8011..13918d8 100644
>> > ---
>> >
>> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> > +++
>> >
>> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> > @@ -1,9 +1,16 @@
>> > -PV_UPDATE = "60"
>> > -BUILD_NUMBER = "19"
>> > +#PV_UPDATE = "60"
>> > +#BUILD_NUMBER = "19"
>> > +PV_UPDATE = "75"
>> > +BUILD_NUMBER = "13"
>> > require oracle-jse-ejre.inc
>> > -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
>> > {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
>> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
>> > +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
>> > {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
>> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
>> > +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
>> > {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
>> > +
>> > +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
>> > +#SRC_URI[sha256sum] =
>> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
>> > +
>> > +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
>> > +SRC_URI[sha256sum] =
>> > "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
>> > -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
>> > davis@yoshi:~/progs/meta-oracle-java/recipes-devtools/oracle-java$ git
>> > diff
>> > diff --git
>> >
>> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> >
>> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> > index bfa8011..13918d8 100644
>> > ---
>> >
>> > a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> > +++
>> >
>> > b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
>> > @@ -1,9 +1,16 @@
>> > -PV_UPDATE = "60"
>> > -BUILD_NUMBER = "19"
>> > +#PV_UPDATE = "60"
>> > +#BUILD_NUMBER = "19"
>> > +PV_UPDATE = "75"
>> > +BUILD_NUMBER = "13"
>> > require oracle-jse-ejre.inc
>> > -SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b$
>> > {BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
>> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
>> > +#SRC_URI = "http://download.oracle.com/otn/java/ejre/7u$
>> > {PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPDATE}-fcs-b$
>> > {BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz"
>> > +SRC_URI = "http://download.oracle.com/otn/java/jdk/7u${PV_UPDATE}-b$
>> > {BUILD_NUMBER}/jdk-7u${PV_UPDATE}-linux-arm-vfp-hflt.tar.gz"
>> > +
>> > +#SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
>> > +#SRC_URI[sha256sum] =
>> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
>> > +
>> > +SRC_URI[md5sum] = "6958e36bdcc842121510fecf702dcf47"
>> > +SRC_URI[sha256sum] =
>> > "29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01"
>> > -SRC_URI[md5sum] = "b9b8f598b0a7f49e4d221f16ba25c6c0"
>> > -SRC_URI[sha256sum] =
>> > "ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf"
>> > diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
>> > b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
>> > index 9a1fdfe..4dc2fe9 100644
>> > --- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
>> > +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
>> > @@ -8,10 +8,16 @@ DESCRIPTION = "This is the proprietary JRE from
>> > Sun/Oracle, with the Hotspot JVM
>> > The JRE (Java Runtime Environment) is needed on a system to run Java\
>> > applications and applets"
>> > -JDK_JRE = "ejre"
>> > +#JDK_JRE = "ejre"
>> > +JDK_JRE = "jdk"
>> > require oracle-jse.inc
>> > LIC_FILES_CHKSUM = "\
>> > - file://${WORKDIR}/${JDK_JRE}${PV}_$
>> > {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
>> > + file://${WORKDIR}/${JDK_JRE}${PV}_$
>> > {PV_UPDATE}/COPYRIGHT;md5=0b204bd2921accd6ef4a02f9c0001823 \
>> > file://${WORKDIR}/${JDK_JRE}${PV}_$
>> >
>> > {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb
>> > \
>> > "
>> > +
>> > +#LIC_FILES_CHKSUM = "\
>> > +# file://${WORKDIR}/${JDK_JRE}${PV}_$
>> > {PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
>> > +# file://${WORKDIR}/${JDK_JRE}${PV}_$
>> >
>> > {PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=29c53bac198ca3faf5ed370025a2a5564d43e05b92d91b6b5d2a8a503de10c01
>> > \
>> > +# "
>>
>> Thanks for sharing your changes.  Would you mind sending a proper git
>> patch?  I'm having a hard time applying your diff.  I suppose some lines
>> got broken by the e-mail editor.
>>
>> Best wishes.
>> Mario
>> --
>> http://www.ossystems.com.br
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Do or do not. There is no try"
  Yoda Master

