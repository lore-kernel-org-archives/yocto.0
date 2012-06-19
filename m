Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A105E01437
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 15:31:03 -0700 (PDT)
Received: by wibhn14 with SMTP id hn14so3018344wib.11
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 15:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pZHoB4Ts+CyOJP9RA4CFF+Plvvdplga42e2/+viDFf4=;
	b=Yxuqa84B2n/sVBJon6JhrCe0RIU/PbsrTY1w9eur9YyVHZPQy6oNGyJwbH2PS2i8pr
	pupUbL9/DiSjjHaryF9ZBPCGmjQ2clayPuucm47Q3/YYYWgBbS4lAOCi+uQ4JVairql9
	rtcpycTCNwnpcL0N9qbuBgSfhsplIHG1CTht3Q+8MsGGLquijZfw7ccKjAEe+ZXlu+RF
	Jb4LFtxB2uK2hLqR3m+ZoG3nSpi3Acl3DLl6Hrzoa1cuIeio1rzwisblbFo8SnzVSth2
	/i34KJZrP1zmaDOB2BC8oMjQMRFkxfC8ADdlyn0fNggLOtyzFRJQQsVmAqjdzRpQkiWG
	XgfA==
MIME-Version: 1.0
Received: by 10.216.212.217 with SMTP id y67mr11626332weo.173.1340145061988;
	Tue, 19 Jun 2012 15:31:01 -0700 (PDT)
Received: by 10.180.14.193 with HTTP; Tue, 19 Jun 2012 15:31:01 -0700 (PDT)
Date: Tue, 19 Jun 2012 17:31:01 -0500
Message-ID: <CAE9DZUR8FYWzaAOMzkQ_h6GwVCtWWu=Awc8s+onOeuOU3QgZ3g@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: trouble running hob on Debian
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
X-List-Received-Date: Tue, 19 Jun 2012 22:31:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm experiencing some grief trying to run hob from my Debian Squeeze (6.0.5).

[dallasc /development/dallasc/yocto/poky/build] hob
FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
You have Gtk+ 2.20.1 and PyGtk 2.17.0.

I believe I have all these packages installed.  Perhaps it needs newer
versions of these packages?

i A libgtk2.0-0                     - The GTK+ graphical user interface library
i   python-gtk2                     - Python bindings for the GTK+ widget set
i   python-gobject                  - Python bindings for the GObject library
i   python-gobject-dev              - Development headers for the GObject Python

Any advice on how to debug further?

I just installed git poky today, so should be up to date.

Thanks,

Dallas

