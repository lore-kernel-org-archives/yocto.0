Return-Path: <marek.belisko@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4944DE00282
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 03:51:52 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id eh20so3104451obb.1
	for <yocto@yoctoproject.org>; Mon, 26 Aug 2013 03:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=uCGLD6XpiCu7rpoS4ZAOtbv0arfCa3Kf2AfBLFrlSK0=;
	b=La3Y7yiV0g9I0IQnw3SfK5HpV4EKle7uI5Vc4iVyOa1jdRu+M/6IOcrX4I9ad1QJ7d
	DFVqAPYtSOUoBNUx7IMGsn9HfWAn6T10K/yV0y0zecnewL3aA/S4GycyzyGXZZ02dXr6
	azZp3AiTqSX1ibPSdlZQnnhjDg5B5drONnPn1otS6EiLXlQS5qgVBLl+kLBk8Am82131
	K35tHmeh1VgJA/8nxJfXxE6FcM+hDVbb7B59+yt/Xft775PzupthvXy3T8lg/Qdggs04
	ayE6EwSA0+asMV2pwzL3jkzHUhqZH9zJhl3WV72DbGnJKkpDohNXn8vh0HafTX5IPIzD
	XmTA==
MIME-Version: 1.0
X-Received: by 10.182.60.70 with SMTP id f6mr56674obr.61.1377514312108; Mon,
	26 Aug 2013 03:51:52 -0700 (PDT)
Received: by 10.60.60.1 with HTTP; Mon, 26 Aug 2013 03:51:52 -0700 (PDT)
In-Reply-To: <1377360234.6762.195.camel@ted>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
	<1377360234.6762.195.camel@ted>
Date: Mon, 26 Aug 2013 12:51:52 +0200
Message-ID: <CAAfyv37S8bO2r2FfO5w5Sjw=ar9v01V=LFJnF5mnKjbizULcew@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
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
X-List-Received-Date: Mon, 26 Aug 2013 10:51:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

On Sat, Aug 24, 2013 at 6:03 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Sat, 2013-08-24 at 15:06 +0200, Erik Bot=C3=B6 wrote:
>> On Sat, Aug 24, 2013 at 3:36 AM, Trevor Woerner
>> <trevor.woerner@linaro.org> wrote:
>> > Hi,
>> >
>> > When I try to include "qtwebkit" in my image from the "dylan" branch I=
 end
>> > up
>> > with the following QA do_package_qa error [note that this does not hap=
pen
>> > with "master"]:
>> >
>> > ERROR: QA Issue: package qtwebkit contains bad RPATH
>> > /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtw=
ebkit/5.0.2-r0.0/build/lib
>> > in file
>> > /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtw=
ebkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess
>> >
>> > And the QA test is correct. When I "objdump -x" this binary I get:
>> >
>> > Dynamic Section:
>> >   NEEDED               libQt5WebKitWidgets.so.5
>> >   NEEDED               libQt5WebKit.so.5
>> >   NEEDED               libQt5Widgets.so.5
>> >   NEEDED               libQt5Core.so.5
>> >   NEEDED               libstdc++.so.6
>> >   NEEDED               libc.so.6
>> >   RPATH
>> > /home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebk=
it/5.0.2-r0.0/build/lib
>> >
>> > Can anyone suggest any fixes or patches? Note I'm using 5.0.2.
>>
>> Try adding a .bbappend with the following content:
>>
>> #################
>> DEPENDS +=3D "chrpath-replacement-native"
>> EXTRANATIVEPATH +=3D "chrpath-native"
>>
>> PRINC :=3D "${@int(PRINC) + 1}"
>>
>> do_install_append() {
>>         # Remove rpath from the offending binaries
>>         chrpath -d ${D}${OE_QMAKE_PATH_LIBEXECS}/QtWebProcess
>> }
>> #################
>>
>> That should do it.
>>
>> Is this something everyone building qtwebkit is seeing? I had just
>> assumed that it had something to do with other changes I do to
>> meta-qt5, but if it affect everyone I guess it could be done in
>> meta-qt5 instead of local bbappends.
>
> The above is a workaround, the proper fix is to track down why this is
> making its way in there in the first place and fix the problem at
> source.
Just my 2 cents.
I have similar issue some time ago and I fix it following way (it's
also workaround and maybe help somebody to find correct solution):
---
 Tools/qmake/mkspecs/features/rpath.prf |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Tools/qmake/mkspecs/features/rpath.prf
b/Tools/qmake/mkspecs/features/rpath.prf
index 8dbc42f..487f12f 100644
--- a/Tools/qmake/mkspecs/features/rpath.prf
+++ b/Tools/qmake/mkspecs/features/rpath.prf
@@ -9,13 +9,13 @@ equals(ROOT_BUILD_DIR, $$dirname(DESTDIR)):
RPATHDIR_RELATIVE_TO_DESTDIR =3D ../li
 linux-*:!isEmpty(RPATHDIR_RELATIVE_TO_DESTDIR) {
     # Do the rpath by hand since it's not possible to use ORIGIN in
QMAKE_RPATHDIR
     # this expands to $ORIGIN (after qmake and make), it does NOT
read a qmake var.
-    QMAKE_RPATHDIR =3D \$\$ORIGIN/$${RPATHDIR_RELATIVE_TO_DESTDIR}
$${QMAKE_RPATHDIR}
+#    QMAKE_RPATHDIR =3D \$\$ORIGIN/$${RPATHDIR_RELATIVE_TO_DESTDIR}
$${QMAKE_RPATHDIR}
     RPATH =3D $$join(QMAKE_RPATHDIR, ":")

-    QMAKE_LFLAGS +=3D -Wl,-z,origin \'-Wl,-rpath,$${RPATH}\'
+#    QMAKE_LFLAGS +=3D -Wl,-z,origin \'-Wl,-rpath,$${RPATH}\'
     QMAKE_RPATHDIR =3D
 } else {
-    QMAKE_RPATHDIR =3D $${ROOT_BUILD_DIR}/lib $${QMAKE_RPATHDIR}
+#    QMAKE_RPATHDIR =3D $${ROOT_BUILD_DIR}/lib $${QMAKE_RPATHDIR}
 }

 # FIXME: For Qt5 this will only give correct rpath for the tools that
come with WebKit
--=20
1.7.9.5
>
> Cheers,
>
> Richard
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

