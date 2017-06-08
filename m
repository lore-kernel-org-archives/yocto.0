Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DCDAE00BDF; Wed,  7 Jun 2017 21:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,URI_HEX
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C1FBE00B8E
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 21:23:21 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id d17so452262wme.3
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 21:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=YElyWRieXtLLmwzOFipzrjgHsVnFlbixNJaps9DLuk8=;
	b=a2Iz2wRrrloeUlXi20fZWgdS/L6RyL4cghFvkCtOsK/hElhgxfJ/aK1dJV2wfSM3J3
	NY/Y8jRUPz4ePiK+pMZlz4RyobZGKD+aSHF2aJccBKBzcPo43mNH5lo9Or7k2gkDXcE5
	W8COG+5ER+PM5z2x1BdSMRPe/t97Lg+ae3rzGhPNgBJj7bcd7ef6j9z3sAR14jjqSDNs
	/dfMYLM7VMyoQNJhARyZ0ZgyDQWRiA4WY13n9XIZCN+PxbFdrYhUUvsOP70RXYa3JSEg
	SjvcK4a5TX2qtc61GCJOyFRPBHk5kvYQoEj1glnF4Uwpi5SANN4VZ5q2dYVP9ZXZ6DH2
	cZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=YElyWRieXtLLmwzOFipzrjgHsVnFlbixNJaps9DLuk8=;
	b=KOLMN2OvvpQvlx0cq/F1hdnaETsZ+rU6EJxPpWzBB5r4obOBljgrP9ehkTxCeKmVla
	Ll6QwCNDULjC0yyCH1dvzNbTrrpAw+ZNxNVfoHlB0q+NybUEA3FRfyu1rbZbcgobzbqN
	+uTxq5rBWH/4dgoCq0/cMtQzlhL5r98wM6ejX4oalFpt1o6uvV7OKqamnwh57VKg2eqS
	fmTurkEvKTssSVQSHTZoyuGJtzVHFiXkwe/LZDW9Tpgv5GKROTYWFnrVYekWDTVjJG7n
	scdJipZ4s8b3zmG4VA3pZnoq142r+q3gBsVWwls003DFHGr2JAZVbOYQtowk1Wo5FWyK
	/4ww==
X-Gm-Message-State: AODbwcCjGyb3thk4V4416VL+yGhfaY9UnJrHWMT7QBoUHZJcAvybDwz6
	ZnLk0rnmZvgIMtVZusgMSvyyCT4zLg==
X-Received: by 10.80.137.36 with SMTP id e33mr13573038ede.67.1496895800535;
	Wed, 07 Jun 2017 21:23:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.153.222 with HTTP; Wed, 7 Jun 2017 21:22:50 -0700 (PDT)
In-Reply-To: <ffceb998c88c266713c0acf1fa633a96@technux.se>
References: <1496870111-31944-1-git-send-email-petter@technux.se>
	<CAMKF1sqEoahR8AZjkR03Pkc-s6sNrKfaJtgz3HkcBCwgJP=4dw@mail.gmail.com>
	<ffceb998c88c266713c0acf1fa633a96@technux.se>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 7 Jun 2017 21:22:50 -0700
Message-ID: <CAMKF1srzDzfH7UbWoFOT4eCDfCmzm=8qzRx7mrfZhhYy61sv3w@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] pi-blaster: update to include proper rpi3 support
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
X-List-Received-Date: Thu, 08 Jun 2017 04:23:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 7, 2017 at 9:09 PM, Petter Mab=C3=A4cker <petter@technux.se> wr=
ote:
> 2017-06-08 00:54 skrev Khem Raj:
>
>
> On Wed, Jun 7, 2017 at 2:17 PM Petter Mab=C3=A4cker <petter@technux.se> w=
rote:
>>
>> Update to latest available revision, in order to include proper rpi3
>> support as well as latest fixes.
>>
>> Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
>> ---
>>  .../files/remove-initscript-lsb-dependency.patch   | 37
>> ++++++++++++++++------
>>  recipes-devtools/pi-blaster/pi-blaster.inc         |  2 +-
>>  recipes-devtools/pi-blaster/pi-blaster_git.bb      |  2 +-
>>  3 files changed, 30 insertions(+), 11 deletions(-)
>>
>> diff --git
>> a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pat=
ch
>> b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pat=
ch
>> index 7ea9a3b..c8afe60 100644
>> ---
>> a/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pat=
ch
>> +++
>> b/recipes-devtools/pi-blaster/files/remove-initscript-lsb-dependency.pat=
ch
>> @@ -1,13 +1,28 @@
>> -Remove dependencies on LSB functions
>> +From 1338f98a279616f4e5e9ea30a25d1dfa0c7df5d6 Mon Sep 17 00:00:00 2001
>> +From: =3D?UTF-8?q?Petter=3D20Mab=3DC3=3DA4cker?=3D <petter@technux.se>
>> +Date: Sun, 4 Jun 2017 12:22:40 +0200
>> +Subject: [PATCH] Remove dependencies on LSB functions
>> +MIME-Version: 1.0
>> +Content-Type: text/plain; charset=3DUTF-8
>> +Content-Transfer-Encoding: 8bit
>> +
>> +See this as a rebase of the previous 'Remove dependencies on LSB
>> +functions patch' with only minor modifications from the original versio=
n,
>> +based on the work done by Alex Lennon <ajlennon@dynamicdevices.co.uk> i=
n
>> +'25fd817 pi-blaster: Added recipe'.
>>
>>  Upstream-Status: Inappropriate [configuration]
>>
>> -Signed-off-by: Alex Lennon <ajlennon@dynamicdevices.co.uk>
>> +Signed-off-by: Petter Mab=C3=A4cker <petter@technux.se>
>> +---
>> + debian/pi-blaster.init | 38 +++++++-------------------------------
>> + 1 file changed, 7 insertions(+), 31 deletions(-)
>>
>> -diff -ur git.org/pi-blaster.boot.sh git/pi-blaster.boot.sh
>> ---- git.org/pi-blaster.boot.sh 2014-05-20 14:49:44.378582168 +0100
>> -+++ git/pi-blaster.boot.sh     2014-05-20 14:51:08.330582386 +0100
>> -@@ -28,12 +28,12 @@
>> +diff --git a/debian/pi-blaster.init b/debian/pi-blaster.init
>> +index b142d70..01a686c 100644
>> +--- a/debian/pi-blaster.init
>> ++++ b/debian/pi-blaster.init
>> +@@ -28,12 +28,12 @@ SCRIPTNAME=3D/etc/init.d/$NAME
>>   [ -r /etc/default/$NAME ] && . /etc/default/$NAME
>>
>>   # Load the VERBOSE setting and other rcS variables
>> @@ -22,7 +37,7 @@ diff -ur git.org/pi-blaster.boot.sh
>> git/pi-blaster.boot.sh
>>
>>   #
>>   # Function that starts the daemon/service
>> -@@ -77,48 +77,23 @@
>> +@@ -77,48 +77,24 @@ do_stop()
>>
>>   case "$1" in
>>     start)
>> @@ -52,6 +67,7 @@ diff -ur git.org/pi-blaster.boot.sh
>> git/pi-blaster.boot.sh
>>         # 'force-reload' alias
>>         #
>>  -      log_daemon_msg "Restarting $DESC" "$NAME"
>> ++      echo "Restarting $DESC" "$NAME"
>>         do_stop
>>  -      case "$?" in
>>  -        0|1)
>> @@ -67,11 +83,14 @@ diff -ur git.org/pi-blaster.boot.sh
>> git/pi-blaster.boot.sh
>>  -              log_end_msg 1
>>  -              ;;
>>  -      esac
>> -+      do_start
>> ++    do_start
>>         ;;
>>     *)
>>  -      echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload=
}"
>> >&2
>> -+      echo "Usage: $SCRIPTNAME {start|stop|restart}" >&2
>> ++      echo "Usage: $SCRIPTNAME {start|stop|restart|force-reload}" >&2
>>         exit 3
>>         ;;
>>   esac
>> +--
>> +1.9.1
>> +
>> diff --git a/recipes-devtools/pi-blaster/pi-blaster.inc
>> b/recipes-devtools/pi-blaster/pi-blaster.inc
>> index a3beccc..a548957 100644
>> --- a/recipes-devtools/pi-blaster/pi-blaster.inc
>> +++ b/recipes-devtools/pi-blaster/pi-blaster.inc
>> @@ -2,7 +2,7 @@ DESCRIPTION =3D "This project enables PWM on the GPIO pi=
ns
>> you request of a Raspbe
>>  HOMEPAGE =3D "https://github.com/sarfata/pi-blaster/"
>>  SECTION =3D "devel/libs"
>>  LICENSE =3D "MIT"
>> -LIC_FILES_CHKSUM =3D
>> "file://README.md;beginline=3D157;endline=3D170;md5=3Df20832f31126609af5=
a7bf2340014540"
>> +LIC_FILES_CHKSUM =3D
>> "file://README.md;beginline=3D212;endline=3D239;md5=3Da012868ef5f83b9f25=
7af253d7cb07a3"
>
>
> What changed here ?
>
> The license is added in the end of the README.md so in this case some
> additional description + modifications earlier in the README.md caused th=
e
> license text to move place. When it comes to the license text I could onl=
y
> find changes in whitespace and newlines. They seems to have been caused b=
y
> the pi-blaster commit: '0e1a1df Cleaning up the README'
>
> BR Petter
>
> $ diff -Naur ec5e1b4c.README.md README.md | tail -n 38
>

perfect add few lines to the commit message about this

>  ## License
>
>  Released under The MIT License.
>
> -Note: This project was initially released by Richard Hist under the GPL =
v3
> License. Richard gave me explicit permission to distribute this derivativ=
e
> work under the MIT License.
> +Note: This project was initially released by Richard Hist under the GPL =
v3
> +License. Richard gave me explicit permission to distribute this derivati=
ve
> work
> +under the MIT License.
>
>      Copyright (c) 2013 Thomas Sarlandie - Richard Hirst
>
> -    Permission is hereby granted, free of charge, to any person obtainin=
g a
> copy of this software and associated documentation files (the "Software")=
,
> to deal in the Software without restriction, including without limitation
> the rights to use, copy, modify, merge, publish, distribute, sublicense,
> and/or sell copies of the Software, and to permit persons to whom the
> Software is furnished to do so, subject to the following conditions:
> -
> -    The above copyright notice and this permission notice shall be inclu=
ded
> in all copies or substantial portions of the Software.
> -
> -    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPR=
ESS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILIT=
Y,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL T=
HE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALI=
NGS
> IN THE SOFTWARE.
> +    Permission is hereby granted, free of charge, to any person obtainin=
g a
> copy
> +    of this software and associated documentation files (the "Software")=
,
> to
> +    deal in the Software without restriction, including without limitati=
on
> the
> +    rights to use, copy, modify, merge, publish, distribute, sublicense,
> and/or
> +    sell copies of the Software, and to permit persons to whom the Softw=
are
> is
> +    furnished to do so, subject to the following conditions:
> +
> +    The above copyright notice and this permission notice shall be inclu=
ded
> in
> +    all copies or substantial portions of the Software.
> +
> +    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPR=
ESS
> OR
> +    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> MERCHANTABILITY,
> +    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SH=
ALL
> THE
> +    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTH=
ER
> +    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARIS=
ING
> +    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> DEALINGS
> +    IN THE SOFTWARE.
>
> -[blog]:
> http://www.tbideas.com/blog/2013/02/controling-a-high-power-rgb-led-with-=
a-raspberry-pi/
> +[blog]:
> +http://www.tbideas.com/blog/2013/02/controling-a-high-power-rgb-led-with=
-a-raspberry-pi/
>
>
>
>>
>>
>>
>>  SRC_URI =3D "git://github.com/sarfata/pi-blaster \
>>             file://remove-initscript-lsb-dependency.patch \
>> diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb
>> b/recipes-devtools/pi-blaster/pi-blaster_git.bb
>> index 263852b..ac812ab 100644
>> --- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
>> +++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
>> @@ -1,3 +1,3 @@
>>  require pi-blaster.inc
>>
>> -SRCREV =3D "ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016"
>> +SRCREV =3D "9f45eb23a8a3b2d1c08d08a6d68f206fe91ecf4c"
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

