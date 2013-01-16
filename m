Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B2BE00527
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 10:49:46 -0800 (PST)
Received: by mail-ie0-f181.google.com with SMTP id 16so3190584iea.12
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 10:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:content-type;
	bh=9f7dwoFfzlNA5cODeGSZ77Lpz5U7Qa1LG1CZV4zZhl0=;
	b=b3u0jlQJWyTI3gfTlhVanrBPp7Ati5qDfkPTUJxevLdXGCyftoeh0+1YE6aJkAJpx2
	a3QHIr8nowe2PMeZmqkGTd0jKHrTWCwAkuB3RRXFPdM2kLQ7kKsKLQslcJ4ogd4wSFxP
	jSsK4TT75X7EAbh1XUc6j3NbViPFAka0VvIRFdeLZaqdUsw+YYfgfAcYW4BT07tp5FPd
	UhGVKDNYXGlHsxj/7nxarDeH2Os/8rqKvIHIt/41n+xaTyKp3LP5PYukD5P6SkQlyTAU
	tzE+IEg9NxYCYRVawbz0gkLGoonKNWDFdMzopctzxFY2//iQHLdBGjdMpk5s+2trhvbC
	oMZg==
X-Received: by 10.50.197.161 with SMTP id iv1mr5657720igc.53.1358362185619;
	Wed, 16 Jan 2013 10:49:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.12.129 with HTTP; Wed, 16 Jan 2013 10:49:25 -0800 (PST)
In-Reply-To: <19691651.cLZhLvd0Ni@helios>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
	<CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
	<19691651.cLZhLvd0Ni@helios>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Wed, 16 Jan 2013 13:49:25 -0500
Message-ID: <CANge7vWH1tCjHsJOSa=JP86a3+APQk93ds1UwuYeUGzy4F02WQ@mail.gmail.com>
To: yocto@yoctoproject.org, 
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Jan 2013 18:49:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 16, 2013 at 1:14 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> On Wednesday 16 January 2013 23:26:20 Navani Srivastava wrote:
> > On Thu, Dec 27, 2012 at 11:08 PM, Jon Szymaniak
> <jon.szymaniak@gmail.com>wrote:
> > > >> I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136
> > > >> architecture.
> > > >>
> > > >> At the time of integrating qt-embedded with rootfs, I am getting
> > > >> qtopia
> > > >> directory in usr/share path of rootfs.
> > > >>
> > > >> I tried removing qtopia directory through qt recipe but ended in
> > > >> compilation error. Please suggest any idea to remove qtopia from
> > > >> share
> > > >> directory.
> > > >
> > > > I ran into this as well after using a bbappend to disable a number
> > > > of
> > > > Qt features, including the building of demos that get staged in the
> > > > aforementioned path.  In my case, that qtopia directory (and any
> > > > subdirectories) wound up either being empty or containing files that
> > > > were unnecessary for my build.
> > > >
> > > > My quick and dirty solution was to just to add a install_append()
> > > > containing a 'rm -rf ${D}${datadir}/qtopia' in my bbappend. (Be sure
> > > > you don't have anything important in there!) I'd be curious to hear
> > > > if
> > > > there's a better approach to this as well...
> > >
> > > Oops...just wanted to note the typo in my above response -- I'm not at
> > > a machine where I have access to my recipes.
> > >
> > > That should be a do_install_append(), not install_append().  I'd also
> > > double check the qtopia path, as I wrote that from memory, which may
> > > not be reliable. ;)
> >
> > I tried the same but again ended up with error. As of now i am removing
> > all
> > unwanted things from rootfs by making changes in image_types.bbclass. I
> > am
> > sure this is not the correct way, any ideas are appreciated..
>
> Can I ask both of you exactly how you are getting Qt installed into the
> image?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

I'm not doing anything too unusual for "installing" Qt. My recipes for
my Qt application simply inherit qt4e, and list qt4-embedded in
DEPENDS.

The only place where I deviated a bit from the norm is that I use a
qt4-embedded_4.8.3.bbappend to set up QT_CONFIG_FLAGS exactly as I
want them, and to rm ${D}/usr/bin/qtopia. Below's my bbappend. I'd be
interested to hear if there's a better way to clean out unneeded
directories from a rootfs (in my case ${D}/usr/bin/qtopia).

DEPENDS = "qt4-tools-native freetype jpeg libpng zlib"

# Override provided recipe and configure Qt4 to...
# - Disable irrelevant functionality and output
# - Disable SQL Plugins
# - Disable unused input/ouput
# - Have keyboard input and mouse input via /dev/input/mice
# - Have Linux framebuffer support
# - Use QML (so we need the declarative engine)
#
# Note, some of these might be extraneous, and this is a work in progress.
# (You've been warned!)
QT_CONFIG_FLAGS = "\
 -embedded ${QT_ARCH} -qtlibinfix ${QT_LIBINFIX} \
 -release -no-rpath -reduce-relocations -shared -no-exceptions \
 -no-mmx -no-3dnow -no-sse -no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-avx \
 -no-glib -no-largefile -no-accessibility -no-openssl -no-gtkstyle \
 -no-xcursor -no-xinerama -no-phonon -no-phonon-backend -no-svg -no-webkit \
 -no-libmng -no-accessibility -no-qt3support -no-xmlpatterns \
 -no-audio-backend -no-gif -nomake examples -nomake demos -no-javascript-jit \
 -no-nis -no-cups -no-declarative-debug \
 -no-sql-db2 -no-sql-ibase -no-sql-mysql -no-sql-oci -no-sql-odbc \
 -no-sql-sqlite -no-sql-sqlite2 -no-sql-sqlite_symbian -no-sql-tds \
 -no-xkb -no-kbd-tty -no-kbd-qnx -no-mouse-linuxinput \
 -no-mouse-tslib -no-mouse-qnx -no-mouse-linuxtp \
 -qt-mouse-pc -qt-kbd-linuxinput \
 -qt-gfx-linuxfb -qt-gfx-multiscreen \
 -depths 8,16,24,32 \
 -declarative -script"

PRINC := "${@int(PRINC) + 1}"

# Despite not building them, qt4.inc creates /usr/bin/qtopia/ with
# only demo/ and example/ underneath. Let's get rid of these...
do_install_append() {
    rm -rf ${D}/usr/bin/qtopia
}

