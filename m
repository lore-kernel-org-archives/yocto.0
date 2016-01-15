Return-Path: <scott@jumpnowtek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C24C9E00978; Fri, 15 Jan 2016 11:59:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.203.187.102 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp102.iad3a.emailsrvr.com (smtp102.iad3a.emailsrvr.com
	[173.203.187.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 774FEE00928
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 11:59:40 -0800 (PST)
Received: from smtp29.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp29.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	65A103806C0
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 14:59:40 -0500 (EST)
Received: from app47.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140])
	by smtp29.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	5CA0938060F
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 14:59:40 -0500 (EST)
X-Sender-Id: scott@jumpnowtek.com
Received: from app47.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140]) by 0.0.0.0:25 (trex/5.5.4);
	Fri, 15 Jan 2016 14:59:40 -0500
Received: from jumpnowtek.com (localhost.localdomain [127.0.0.1])
	by app47.wa-webapps.iad3a (Postfix) with ESMTP id 550903800C7
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 14:59:40 -0500 (EST)
Received: by apps.rackspace.com (Authenticated sender: scott@jumpnowtek.com,
	from: scott@jumpnowtek.com) 
	with HTTP; Fri, 15 Jan 2016 14:59:40 -0500 (EST)
Date: Fri, 15 Jan 2016 14:59:40 -0500 (EST)
From: "Scott Ellis" <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <0BD254ED-B494-4975-B6AB-58FA2E6BDBDA@gmail.com>
References: <1452783285.1696717@apps.rackspace.com> 
	<E7570BB5-2C0C-4F99-BFF8-AC2924D5BB18@gmail.com> 
	<1452870935.80157155@apps.rackspace.com> 
	<0BD254ED-B494-4975-B6AB-58FA2E6BDBDA@gmail.com>
X-Auth-ID: scott@jumpnowtek.com
Message-ID: <1452887980.346115345@apps.rackspace.com>
X-Mailer: webmail/11.6.10-RC
Subject: Re: [PATCH][coreutils] Add attr build dependency
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
X-List-Received-Date: Fri, 15 Jan 2016 19:59:46 -0000
Content-Type: text/plain;charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Fixes this warning:=0A=0AWARNING: QA Issue: coreutils rdepends on libattr, =
but it isn't a build dependency? [build-deps]=0A=0ASigned-off-by: Scott Ell=
is <scott@jumpnowtek.com>=0A---=0A meta/recipes-core/coreutils/coreutils_8.=
24.bb | 9 +++++++--=0A 1 file changed, 7 insertions(+), 2 deletions(-)=0A=
=0Adiff --git a/meta/recipes-core/coreutils/coreutils_8.24.bb b/meta/recipe=
s-core/coreutils/coreutils_8.24.bb=0Aindex f042346..6a09c59 100644=0A--- a/=
meta/recipes-core/coreutils/coreutils_8.24.bb=0A+++ b/meta/recipes-core/cor=
eutils/coreutils_8.24.bb=0A@@ -28,14 +28,19 @@ SRC_URI[manpages.sha256sum] =
=3D "cf0333b5f134a331e0b46e2ddf90666f8bdc3281c1ca2c7cc=0A EXTRA_OECONF_clas=
s-native =3D "--without-gmp"=0A EXTRA_OECONF_class-target =3D "--enable-ins=
tall-program=3Darch --libexecdir=3D${libdir}"=0A=0A-# acl is not a default =
feature=0A+# acl and xattr are not default features=0A #=0A-PACKAGECONFIG_c=
lass-target ??=3D "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', ''=
, d)}"=0A+PACKAGECONFIG_class-target ??=3D "\=0A+    ${@bb.utils.contains('=
DISTRO_FEATURES', 'acl', 'acl', '', d)} \=0A+    ${@bb.utils.contains('DIST=
RO_FEATURES', 'xattr', 'xattr', '', d)} \=0A+"=0A+=0A PACKAGECONFIG_class-n=
ative ??=3D ""=0A=0A # with, without, depends, rdepends=0A #=0A PACKAGECONF=
IG[acl] =3D "--enable-acl,--disable-acl,acl,"=0A+PACKAGECONFIG[xattr] =3D "=
--enable-xattr,--disable-xattr,attr,"=0A=0A # [ df mktemp base64 gets a spe=
cial treatment and is not included in this=0A bindir_progs =3D "arch basena=
me chcon cksum comm csplit cut dir dircolors dirname du \=0A--=0A2.5.0=0A=
=0A"Khem Raj" <raj.khem@gmail.com> said:=0A=0A> =0A>> On Jan 15, 2016, at 7=
:15 AM, Scott Ellis <scott@jumpnowtek.com> wrote:=0A>>=0A>> The 'something'=
 would be 'xattr'=0A>>=0A>>  PACKAGECONFIG[attr] =3D "--enable-xattr,--disa=
ble-xattr,attr,"=0A>>=0A>> What should the default be?=0A>>=0A>> The acl op=
tion for coreutils looks in DISTRO_FEATURES.=0A>>=0A>> Should I do the same=
 for this?=0A> =0A> if it depends on some DISTRO_FEATURE then definitely ye=
s. Otherwise define the=0A> packageconfig=0A> and then weakly assign a defa=
ult with ??=3D=0A> =0A>>=0A>> "Khem Raj" <raj.khem@gmail.com> said:=0A>>=0A=
>>> Scott=0A>>>=0A>>> Thanks for patch. You might want to send into to oe-c=
ore mailing list.=0A>>>=0A>>>> On Jan 14, 2016, at 6:54 AM, Scott Ellis <sc=
ott@jumpnowtek.com> wrote:=0A>>>>=0A>>>> Fixes this warning:=0A>>>>=0A>>>> =
WARNING: QA Issue: coreutils rdepends on libattr, but it isn't a build=0A>>=
>> dependency? [build-deps]=0A>>>>=0A>>>> Signed-off-by: Scott Ellis <scott=
@jumpnowtek.com>=0A>>>> ---=0A>>>> meta/recipes-core/coreutils/coreutils_8.=
24.bb | 2 +-=0A>>>> 1 file changed, 1 insertion(+), 1 deletion(-)=0A>>>>=0A=
>>>> diff --git a/meta/recipes-core/coreutils/coreutils_8.24.bb=0A>>>> b/me=
ta/recipes-core/coreutils/coreutils_8.24.bb=0A>>>> index f042346..47a25f3 1=
00644=0A>>>> --- a/meta/recipes-core/coreutils/coreutils_8.24.bb=0A>>>> +++=
 b/meta/recipes-core/coreutils/coreutils_8.24.bb=0A>>>> @@ -7,7 +7,7 @@ BUG=
TRACKER =3D "http://debbugs.gnu.org/coreutils"=0A>>>> LICENSE =3D "GPLv3+"=
=0A>>>> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d=
47fae504\=0A>>>>                    file://src/ls.c;beginline=3D5;endline=
=3D16;md5=3D38b79785ca88537b75871782a2a3c6b8"=0A>>>> -DEPENDS =3D "gmp libc=
ap"=0A>>>> +DEPENDS =3D "attr gmp lib cap=E2=80=9D=0A>>>=0A>>> while this f=
ix is good. We can make this into a packageconfig knob=0A>>>=0A>>> PACKAGEC=
ONFIG[attr] =3D "--enable-something,--disable-something,attr,"=0A>>>=0A>>>>=
 DEPENDS_class-native =3D ""=0A>>>>=0A>>>> inherit autotools gettext texinf=
o=0A>>>> --=0A>>>> 2.5.0=0A>>>>=0A>>>> --=0A>>>> __________________________=
_____________________=0A>>>> yocto mailing list=0A>>>> yocto@yoctoproject.o=
rg=0A>>>> https://lists.yoctoproject.org/listinfo/yocto=0A>>>=0A>>>=0A>>=0A=
>>=0A>> --=0A>> _______________________________________________=0A>> yocto =
mailing list=0A>> yocto@yoctoproject.org=0A>> https://lists.yoctoproject.or=
g/listinfo/yocto=0A> =0A> =0A


