Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E61BE00282
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 09:04:15 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7OGGCQ4020697; Sat, 24 Aug 2013 17:16:12 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yQT8kvwYzUku; Sat, 24 Aug 2013 17:16:12 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7OGG6Dj020693
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Sat, 24 Aug 2013 17:16:08 +0100
Message-ID: <1377360234.6762.195.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Erik =?ISO-8859-1?Q?Bot=F6?= <erik.boto@pelagicore.com>
Date: Sat, 24 Aug 2013 17:03:54 +0100
In-Reply-To: <CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio.salvador@gmail.com>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Sat, 24 Aug 2013 16:04:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2013-08-24 at 15:06 +0200, Erik Botö wrote:
> On Sat, Aug 24, 2013 at 3:36 AM, Trevor Woerner
> <trevor.woerner@linaro.org> wrote:
> > Hi,
> >
> > When I try to include "qtwebkit" in my image from the "dylan" branch I end
> > up
> > with the following QA do_package_qa error [note that this does not happen
> > with "master"]:
> >
> > ERROR: QA Issue: package qtwebkit contains bad RPATH
> > /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
> > in file
> > /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess
> >
> > And the QA test is correct. When I "objdump -x" this binary I get:
> >
> > Dynamic Section:
> >   NEEDED               libQt5WebKitWidgets.so.5
> >   NEEDED               libQt5WebKit.so.5
> >   NEEDED               libQt5Widgets.so.5
> >   NEEDED               libQt5Core.so.5
> >   NEEDED               libstdc++.so.6
> >   NEEDED               libc.so.6
> >   RPATH
> > /home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebkit/5.0.2-r0.0/build/lib
> >
> > Can anyone suggest any fixes or patches? Note I'm using 5.0.2.
> 
> Try adding a .bbappend with the following content:
> 
> #################
> DEPENDS += "chrpath-replacement-native"
> EXTRANATIVEPATH += "chrpath-native"
> 
> PRINC := "${@int(PRINC) + 1}"
> 
> do_install_append() {
>         # Remove rpath from the offending binaries
>         chrpath -d ${D}${OE_QMAKE_PATH_LIBEXECS}/QtWebProcess
> }
> #################
> 
> That should do it.
> 
> Is this something everyone building qtwebkit is seeing? I had just
> assumed that it had something to do with other changes I do to
> meta-qt5, but if it affect everyone I guess it could be done in
> meta-qt5 instead of local bbappends.

The above is a workaround, the proper fix is to track down why this is
making its way in there in the first place and fix the problem at
source.

Cheers,

Richard


