Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08708E002AA
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 07:47:17 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so506698yhf.35
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=81jaA6PfNYJ7w8YCdJ+ZD6LeREJ2Ly3aNqF3/8Vo35Y=;
	b=r7L2M4yUZj/bQnCNrKBJmmGg0nJx/gZqHkHCurP9AYnIZU5DsF68bR9f15Z2Z0USM/
	UyBejJAStM3x2G657Qq0oxlwMo9Aq5W5Y572MEA6TzUDeDWeOsmcu3zs8hDzOqZ+Lusf
	Q+nVgPjRyIXO2YUrBX2XaiprxnXLdog52V3RyUZOMrpbw8jdo25yEk1sA+UFZ4GgFjzy
	dHX87NLTs+PhYFJOz28YIX7RqYDPAGg/ceazQeYHs4zcW9j2qNx746weO+CR8+KtOSMW
	REJOPndrQvaoYhl8GfmoiGCH3O2rlmfTudY6RESp5qO+mSp8dME9VnHu48pyDw1ughSh
	NYgQ==
Received: by 10.68.196.228 with SMTP id ip4mr6942689pbc.82.1342536437012; Tue,
	17 Jul 2012 07:47:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.67.4.102 with HTTP; Tue, 17 Jul 2012 07:46:56 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Tue, 17 Jul 2012 10:46:56 -0400
Message-ID: <CANge7vX-hAtgt50q+h8B=iVGLgEi6sTx4OsJ_o1QKBX_vvANng@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 17 Jul 2012 08:32:41 -0700
Subject: do_configure() failure with my qt4-embedded_4.8.0.bbappend
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
X-List-Received-Date: Tue, 17 Jul 2012 14:47:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi there,

I'm working on building some embedded (arm) Qt 4.8.0 applications, and
would like
to strip out a lot of unused functionality. I have a set of config flags that
I've used in the past when configuring Qt outside of the Yocto workflow. As
you'll see below, I'm basically just looking for framebuffer, keyboard, mouse
and QML support; everything else should be disabled.

From what I understand, the best approach is to leverage the existing
qt4-embedded_4.8.0.bb recipe, and override the QT_CONFIG_FLAGS and DEPENDS
variables. Here's the qt4-embedded_4.8.0.bbappend I've added to my layer:

DEPENDS := "qt4-tools-native freetype jpeg libpng zlib"
QT_CONFIG_FLAGS := "-release -no-rpath -reduce-relocations -shared\
 -no-mmx -no-3dnow -no-sse -no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-avx\
 -no-glib -no-largefile -no-accessibility -no-openssl -no-gtkstyle
-no-exceptions\
 -no-xcursor -no-xinerama -no-phonon -no-phonon-backend -no-svg -no-webkit\
 -no-libmng -no-accessibility -no-qt3support -no-xmlpatterns\
 -no-audio-backend -no-gif -nomake examples -nomake demos -no-javascript-jit\
 -no-nis -no-cups -no-declarative-debug\
 -no-sql-db2 -no-sql-ibase -no-sql-mysql -no-sql-oci -no-sql-odbc\
 -no-sql-sqlite -no-sql-sqlite2 -no-sql-sqlite_symbian -no-sql-tds\
 -no-xkb -no-kbd-tty -no-kbd-qnx -no-mouse-linuxinput\
 -no-mouse-tslib -no-mouse-qnx -no-mouse-linuxtp\
 -qt-mouse-pc -qt-kbd-linuxinput\
 -qt-gfx-linuxfb -qt-gfx-multiscreen\
 -depths 8,16,24,32\
 -declarative -script"

I see a lot of errors during qt4-embedded_4.8.0's do_configure, where
some auto-detection compilation tests are run, for features that aren't
relevant or that I've explicitly disabled. (e.g., sse3, PostgreSQL)

Ultimately, this stage fails with:
 "XLib disabled. Basic XLib functionality test failed!"

Could someone shed some light on this? I don't intend to use X11, so I'm
a bit confused as to why this induces a failure.

Being new to Yocto, I suspect that I'm simply going about this incorrectly.
Perhaps someone can set me in the right direction?

Thank you,
Jon

