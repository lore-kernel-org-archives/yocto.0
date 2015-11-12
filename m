Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2350E00C5B; Thu, 12 Nov 2015 15:36:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB97E00C56
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 15:36:35 -0800 (PST)
Received: by iofh3 with SMTP id h3so81882968iof.3
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 15:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type;
	bh=6k6bd8oyxuExw5uPf4KhvDbtD1z9aVGdriXo5Y3ePrw=;
	b=YWSnG4avoMncdCFmyKNM0aMiLytqfH8xiMLl1vgTjTOKOOlY0eeJ6b4hPWly6S2tzV
	6JbAT0MsCjqW/FSyiVl+BynVnlE77Y2vJzCUGffNpSI1gFBswLeVN50neEtisjRhSdN8
	Yd9bjtBrcSQ8yO6IwIR1CB2+voORF1W7UffCCy/2zMZNM4QYyMYHFD3D764XZg7Ty1un
	58M4M5/uHycX54gaxfTn6Vrr8/SsEUKYdMkRFEQXa92+gKtp/cDRUKPX2mE08dj0lKVY
	02j9r6lcZtX1rGXwmPDTWajFHKqxBk6fcihhaHaD/u0lDcLXhIU0hoNRbowD+4DqxSl/
	EzKQ==
X-Received: by 10.107.8.69 with SMTP id 66mr19449718ioi.34.1447371394815;
	Thu, 12 Nov 2015 15:36:34 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	k16sm5902029iok.8.2015.11.12.15.36.30
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Nov 2015 15:36:33 -0800 (PST)
To: "Bystricky, Juro" <juro.bystricky@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1439329715-8646-1-git-send-email-juro.bystricky@intel.com>
	<55CB8EBD.4080105@gmail.com>
	<6E51916E4A1F32428260031F4C7CD2B6101D623D@ORSMSX109.amr.corp.intel.com>
	<5645218D.6000104@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5645227C.8060405@gmail.com>
Date: Thu, 12 Nov 2015 18:36:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <5645218D.6000104@gmail.com>
Subject: Re: [meta-darwin][PATCH] osx-runtime: OSX Yosemite v10.10
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
X-List-Received-Date: Thu, 12 Nov 2015 23:36:43 -0000
X-Groupsio-MsgNum: 27307
Content-Type: multipart/mixed; boundary="------------090609070505060801020507"

--------------090609070505060801020507
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Oops, forgot to attach the log of the failure:

ERROR: Function failed: do_compile (log file is located at
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/temp/log.do_compile.6935)
ERROR: Logfile of failure stored in:
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/temp/log.do_compile.6935


I can't help wonder, however, if it would be best to focus on master,
instead of dizzy?

--------------090609070505060801020507
Content-Type: text/plain; charset=UTF-8;
 name="log.do_compile.6935"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="log.do_compile.6935"

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-darwin=
', 'i386-darwin', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 32
make  all-recursive
make[1]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build'
Making all in .
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build'
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build'
Making all in m4macros
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/m4macros'
make  all-am
make[3]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/m4macros'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/m4macros'
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/m4macros'
Making all in glib
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib'
cd .. && \
  /bin/sh ./config.status glib/glibconfig.h
config.status: executing glib/glibconfig.h commands
config.status: glib/glibconfig.h is unchanged
make  all-recursive
make[3]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib'
Making all in libcharset
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/libcharset=
'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/libcharset=
'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/libcharset'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/libcharset'
Making all in gnulib
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/gnulib'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/gnulib'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/gnulib'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/gnulib'
Making all in pcre
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/pcre'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/pcre'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/pcre'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/pcre'
Making all in update-pcre
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/update-pcr=
e'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/update-pcr=
e'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/update-pcre=
'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/update-pcre=
'
Making all in .
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib'
echo glib-unix.h glib-object.h glib.h galloca.h garray.h gasyncqueue.h gato=
mic.h gbacktrace.h gbase64.h gbitlock.h gbookmarkfile.h gbytes.h gcharset.h=
 gchecksum.h gconvert.h gdataset.h gdate.h gdatetime.h gdir.h genviron.h ge=
rror.h gfileutils.h ggettext.h ghash.h ghmac.h ghook.h ghostutils.h gi18n.h=
 gi18n-lib.h giochannel.h gkeyfile.h glist.h gmacros.h gmain.h gmappedfile.=
h gmarkup.h gmem.h gmessages.h gnode.h goption.h gpattern.h gpoll.h gprimes=
.h gqsort.h gquark.h gqueue.h grand.h gregex.h gscanner.h gsequence.h gshel=
l.h gslice.h gslist.h gspawn.h gstdio.h gstrfuncs.h gtestutils.h gstring.h =
gstringchunk.h gthread.h gthreadpool.h gtimer.h gtimezone.h gtrashstack.h g=
tree.h gtypes.h gunicode.h gurifuncs.h gutils.h gvarianttype.h gvariant.h g=
version.h gversionmacros.h gwin32.h gprintf.h > glib-public-headers.txt.tmp=
 && mv glib-public-headers.txt.tmp glib-public-headers.txt
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib'
Making all in tests
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/tests'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/tests'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/tests'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib/tests'
make[3]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib'
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/glib'
Making all in gmodule
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gmodule'
make  all-am
make[3]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gmodule'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gmodule'
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gmodule'
Making all in gthread
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gthread'
make  all-am
make[3]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gthread'
make[3]: Nothing to be done for 'all-am'.
make[3]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gthread'
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gthread'
Making all in gobject
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject'
make  all-recursive
make[3]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject'
Making all in .
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject'
echo glib-types.h gbinding.h gboxed.h gclosure.h genums.h gmarshal.h gobjec=
t.h gparam.h gparamspecs.h gsignal.h gsourceclosure.h gtype.h gtypemodule.h=
 gtypeplugin.h gvalue.h gvaluearray.h gvaluecollector.h gvaluetypes.h gobje=
ctnotifyqueue.c > gobject-public-headers.txt.tmp && mv gobject-public-heade=
rs.txt.tmp gobject-public-headers.txt
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject'
Making all in tests
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject/tests'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject/tests'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject/tests'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject/tests'
make[3]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject'
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gobject'
Making all in gio
make[2]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio'
UNINSTALLED_GLIB_SRCDIR=3D/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-da=
rwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 \
	UNINSTALLED_GLIB_BUILDDIR=3D.. \
	/usr/bin/python /z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-poky=
sdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gdbus-2.0/codegen=
/gdbus-codegen.in \
	--interface-prefix org. \
	--generate-c-code gdbus-daemon-generated \
	--c-namespace _G \
	/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativ=
esdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/dbus-daemon.xml \
=09
UNINSTALLED_GLIB_SRCDIR=3D/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-da=
rwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 \
	UNINSTALLED_GLIB_BUILDDIR=3D.. \
	/usr/bin/python /z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-poky=
sdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gdbus-2.0/codegen=
/gdbus-codegen.in \
	--interface-prefix org. \
	--generate-c-code gdbus-daemon-generated \
	--c-namespace _G \
	/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativ=
esdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/dbus-daemon.xml \
=09
make  all-recursive
make[3]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio'
Making all in gdbus-2.0/codegen
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/gdbus-2.0/c=
odegen'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/gdbus-2.0/c=
odegen'
sed -e 's,@datadir\@,/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/share=
,' -e 's,@PYTHON\@,/usr/bin/python,' /z/darwinSDK/pokybuild/tmp/work/i386-n=
ativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/g=
io/gdbus-2.0/codegen/gdbus-codegen.in > gdbus-codegen.tmp && mv gdbus-codeg=
en.tmp gdbus-codegen
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/gdbus-2.0/co=
degen'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/gdbus-2.0/co=
degen'
Making all in xdgmime
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/xdgmime'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/xdgmime'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/xdgmime'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/xdgmime'
Making all in kqueue
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/kqueue'
make  all-am
make[5]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/kqueue'
make[5]: Nothing to be done for 'all-am'.
make[5]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/kqueue'
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio/kqueue'
Making all in .
make[4]: Entering directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk=
-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio'
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gdummyfile.lo `test -f 'gdummyfile.c' || echo '/z/darwinSDK/p=
okybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1=
_2.40.0-r0/glib-2.40.0/gio/'`gdummyfile.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gloadableicon.lo `test -f 'gloadableicon.c' || echo '/z/darwi=
nSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib=
-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gloadableicon.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gmount.lo `test -f 'gmount.c' || echo '/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gio/'`gmount.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gmemoryinputstream.lo `test -f 'gmemoryinputstream.c' || echo=
 '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nati=
vesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gmemoryinputstream.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gmemoryoutputstream.lo `test -f 'gmemoryoutputstream.c' || ec=
ho '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/na=
tivesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gmemoryoutputstream.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gmountoperation.lo `test -f 'gmountoperation.c' || echo '/z/d=
arwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-=
glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gmountoperation.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gnativevolumemonitor.lo `test -f 'gnativevolumemonitor.c' || =
echo '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/=
nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gnativevolumemonitor.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gnetworkaddress.lo `test -f 'gnetworkaddress.c' || echo '/z/d=
arwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-=
glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gnetworkaddress.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gnetworking.lo `test -f 'gnetworking.c' || echo '/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0/gio/'`gnetworking.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gnetworkmonitor.lo `test -f 'gnetworkmonitor.c' || echo '/z/d=
arwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-=
glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gnetworkmonitor.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gnetworkmonitorbase.lo `test -f 'gnetworkmonitorbase.c' || ec=
ho '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/na=
tivesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gnetworkmonitorbase.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gnetworkservice.lo `test -f 'gnetworkservice.c' || echo '/z/d=
arwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-=
glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gnetworkservice.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-goutputstream.lo `test -f 'goutputstream.c' || echo '/z/darwi=
nSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib=
-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`goutputstream.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gpermission.lo `test -f 'gpermission.c' || echo '/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0/gio/'`gpermission.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gpollableinputstream.lo `test -f 'gpollableinputstream.c' || =
echo '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/=
nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gpollableinputstream.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gpollableoutputstream.lo `test -f 'gpollableoutputstream.c' |=
| echo '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwi=
n/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gpollableoutputstream.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gpollableutils.lo `test -f 'gpollableutils.c' || echo '/z/dar=
winSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-gl=
ib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gpollableutils.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gpollfilemonitor.lo `test -f 'gpollfilemonitor.c' || echo '/z=
/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesd=
k-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gpollfilemonitor.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gproxy.lo `test -f 'gproxy.c' || echo '/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gio/'`gproxy.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gproxyaddress.lo `test -f 'gproxyaddress.c' || echo '/z/darwi=
nSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib=
-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gproxyaddress.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gproxyaddressenumerator.lo `test -f 'gproxyaddressenumerator.=
c' || echo '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-d=
arwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gproxyaddressenumera=
tor.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gproxyresolver.lo `test -f 'gproxyresolver.c' || echo '/z/dar=
winSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-gl=
ib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gproxyresolver.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gresolver.lo `test -f 'gresolver.c' || echo '/z/darwinSDK/pok=
ybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2=
.40.0-r0/glib-2.40.0/gio/'`gresolver.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gresource.lo `test -f 'gresource.c' || echo '/z/darwinSDK/pok=
ybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2=
.40.0-r0/glib-2.40.0/gio/'`gresource.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gresourcefile.lo `test -f 'gresourcefile.c' || echo '/z/darwi=
nSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib=
-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gresourcefile.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gseekable.lo `test -f 'gseekable.c' || echo '/z/darwinSDK/pok=
ybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2=
.40.0-r0/glib-2.40.0/gio/'`gseekable.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsimpleasyncresult.lo `test -f 'gsimpleasyncresult.c' || echo=
 '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nati=
vesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsimpleasyncresult.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsimplepermission.lo `test -f 'gsimplepermission.c' || echo '=
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsimplepermission.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocket.lo `test -f 'gsocket.c' || echo '/z/darwinSDK/pokybui=
ld/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.=
0-r0/glib-2.40.0/gio/'`gsocket.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketaddress.lo `test -f 'gsocketaddress.c' || echo '/z/dar=
winSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-gl=
ib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketaddress.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketaddressenumerator.lo `test -f 'gsocketaddressenumerato=
r.c' || echo '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketaddressenum=
erator.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketclient.lo `test -f 'gsocketclient.c' || echo '/z/darwi=
nSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib=
-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketclient.c
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gmount.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gmount.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gloadableicon.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gloada=
bleicon.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gmemoryoutputstream.c  -fno-common -DPIC -o .libs/libgio_2_0_la-=
gmemoryoutputstream.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gnativevolumemonitor.c  -fno-common -DPIC -o .libs/libgio_2_0_la=
-gnativevolumemonitor.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gdummyfile.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gdummyfil=
e.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gmemoryinputstream.c  -fno-common -DPIC -o .libs/libgio_2_0_la-g=
memoryinputstream.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gpermission.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gpermiss=
ion.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gnetworkservice.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gnet=
workservice.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gnetworking.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gnetwork=
ing.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gmountoperation.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gmou=
ntoperation.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gpollfilemonitor.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gpo=
llfilemonitor.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gnetworkmonitor.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gnet=
workmonitor.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gnetworkaddress.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gnet=
workaddress.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gpollableutils.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gpoll=
ableutils.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/goutputstream.c  -fno-common -DPIC -o .libs/libgio_2_0_la-goutpu=
tstream.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gproxyaddress.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gproxy=
address.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gpollableinputstream.c  -fno-common -DPIC -o .libs/libgio_2_0_la=
-gpollableinputstream.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gnetworkmonitorbase.c  -fno-common -DPIC -o .libs/libgio_2_0_la-=
gnetworkmonitorbase.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocket.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gsocket.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gpollableoutputstream.c  -fno-common -DPIC -o .libs/libgio_2_0_l=
a-gpollableoutputstream.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gproxyresolver.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gprox=
yresolver.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsimplepermission.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gs=
implepermission.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gresource.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gresource.=
o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsimpleasyncresult.c  -fno-common -DPIC -o .libs/libgio_2_0_la-g=
simpleasyncresult.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gproxyaddressenumerator.c  -fno-common -DPIC -o .libs/libgio_2_0=
_la-gproxyaddressenumerator.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketaddress.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gsock=
etaddress.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gresourcefile.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gresou=
rcefile.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gseekable.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gseekable.=
o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketclient.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gsocke=
tclient.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gproxy.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gproxy.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gresolver.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gresolver.=
o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketaddressenumerator.c  -fno-common -DPIC -o .libs/libgio_2_=
0_la-gsocketaddressenumerator.o
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketconnectable.lo `test -f 'gsocketconnectable.c' || echo=
 '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nati=
vesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketconnectable.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketconnection.lo `test -f 'gsocketconnection.c' || echo '=
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketconnection.c
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketcontrolmessage.lo `test -f 'gsocketcontrolmessage.c' |=
| echo '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwi=
n/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketcontrolmessage.c
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gdummyfile.c: In function 'unescap=
e_string':
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gdummyfile.c:457:8: error: expecte=
d expression before 'in'
   for (in =3D escaped_string; in < escaped_string_end; in++)=20
        ^
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gdummyfile.c: In function '_g_deco=
de_uri':
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gdummyfile.c:554:8: error: expecte=
d expression before 'in'
   for (in =3D uri; in < p - 1; in++)
        ^
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketinputstream.lo `test -f 'gsocketinputstream.c' || echo=
 '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nati=
vesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketinputstream.c
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketconnectable.c  -fno-common -DPIC -o .libs/libgio_2_0_la-g=
socketconnectable.o
../i386-pokysdk-darwin-libtool  --tag=3DCC   --mode=3Dcompile i386-pokysdk-=
darwin-gcc  --sysroot=3D/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-=
darwin-pokysdk-darwin -DHAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work=
/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2=
.40.0/gio -I..  -I/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin=
-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include  -D=
G_LOG_DOMAIN=3D\"GLib-GIO\" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk=
-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild=
/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-=
r0/glib-2.40.0/gmodule -DG_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODU=
LE_DIR=3D\"/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules=
\"  -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokys=
dk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/include -D_REENTR=
ANT -Wall -Wstrict-prototypes -Werror=3Ddeclaration-after-statement -Werror=
=3Dmissing-prototypes -Werror=3Dimplicit-function-declaration -Werror=3Dpoi=
nter-arith -Werror=3Dinit-self -Werror=3Dformat=3D2 -Werror=3Dmissing-inclu=
de-dirs -fvisibility=3Dhidden -xobjective-c -isystem/z/darwinSDK/pokybuild/=
tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i=
386-pokysdk-darwin/usr/include -O2 -pipe -mmacosx-version-min=3D10.5 -c -o =
libgio_2_0_la-gsocketlistener.lo `test -f 'gsocketlistener.c' || echo '/z/d=
arwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-=
glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/'`gsocketlistener.c
Makefile:2417: recipe for target 'libgio_2_0_la-gdummyfile.lo' failed
make[4]: *** [libgio_2_0_la-gdummyfile.lo] Error 1
make[4]: *** Waiting for unfinished jobs....
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketcontrolmessage.c  -fno-common -DPIC -o .libs/libgio_2_0_l=
a-gsocketcontrolmessage.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketconnection.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gs=
ocketconnection.o
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gsocketaddress.c: In function 'g_s=
ocket_address_new_from_native':
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gsocketaddress.c:242:7: warning: d=
ereferencing type-punned pointer will break strict-aliasing rules [-Wstrict=
-aliasing]
       if (IN6_IS_ADDR_V4MAPPED (&(addr->sin6_addr)))
       ^
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gsocketaddress.c:242:7: warning: d=
ereferencing type-punned pointer will break strict-aliasing rules [-Wstrict=
-aliasing]
/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/native=
sdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio/gsocketaddress.c:242:7: warning: d=
ereferencing type-punned pointer will break strict-aliasing rules [-Wstrict=
-aliasing]
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketinputstream.c  -fno-common -DPIC -o .libs/libgio_2_0_la-g=
socketinputstream.o
i386-pokysdk-darwin-libtool: compile:  i386-pokysdk-darwin-gcc --sysroot=3D=
/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin -D=
HAVE_CONFIG_H -I. -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-p=
okysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gio -I.. -I/z/darw=
inSDK/pokybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/=
1.7.3/sysroots/i386-pokysdk-darwin/usr/include -DG_LOG_DOMAIN=3D\"GLib-GIO\=
" -I.. -I../glib -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-po=
kysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/glib -I/z/darwinSDK=
/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0=
/1_2.40.0-r0/glib-2.40.0 -I/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-d=
arwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-2.40.0/gmodule -DG=
_DISABLE_CAST_CHECKS -DGIO_COMPILATION -DGIO_MODULE_DIR=3D\"/opt/poky/1.7.3=
/sysroots/i386-pokysdk-darwin/usr/lib/gio/modules\" -isystem/z/darwinSDK/po=
kybuild/tmp/sysroots/i386-nativesdk-darwin-pokysdk-darwin/opt/poky/1.7.3/sy=
sroots/i386-pokysdk-darwin/usr/include -D_REENTRANT -Wall -Wstrict-prototyp=
es -Werror=3Ddeclaration-after-statement -Werror=3Dmissing-prototypes -Werr=
or=3Dimplicit-function-declaration -Werror=3Dpointer-arith -Werror=3Dinit-s=
elf -Werror=3Dformat=3D2 -Werror=3Dmissing-include-dirs -fvisibility=3Dhidd=
en -xobjective-c -isystem/z/darwinSDK/pokybuild/tmp/sysroots/i386-nativesdk=
-darwin-pokysdk-darwin/opt/poky/1.7.3/sysroots/i386-pokysdk-darwin/usr/incl=
ude -O2 -pipe -mmacosx-version-min=3D10.5 -c /z/darwinSDK/pokybuild/tmp/wor=
k/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/glib-=
2.40.0/gio/gsocketlistener.c  -fno-common -DPIC -o .libs/libgio_2_0_la-gsoc=
ketlistener.o
make[4]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio'
Makefile:3919: recipe for target 'all-recursive' failed
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio'
Makefile:1749: recipe for target 'all' failed
make[2]: *** [all] Error 2
make[2]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build/gio'
Makefile:1192: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory '/z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-=
darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2.40.0-r0/build'
Makefile:833: recipe for target 'all' failed
make: *** [all] Error 2
ERROR: oe_runmake failed
WARNING: /z/darwinSDK/pokybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darw=
in/nativesdk-glib-2.0/1_2.40.0-r0/temp/run.do_compile.6935:1 exit 1 from
  exit 1
ERROR: Function failed: do_compile (log file is located at /z/darwinSDK/pok=
ybuild/tmp/work/i386-nativesdk-darwin-pokysdk-darwin/nativesdk-glib-2.0/1_2=
.40.0-r0/temp/log.do_compile.6935)

--------------090609070505060801020507--
