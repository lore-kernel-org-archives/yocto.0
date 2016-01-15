Return-Path: <scott@jumpnowtek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1518E00BEA; Fri, 15 Jan 2016 07:16:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D0DAE0096C
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 07:15:36 -0800 (PST)
Received: from smtp29.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp29.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	DDCDA380692
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 10:15:35 -0500 (EST)
Received: from app1.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140])
	by smtp29.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	D52BD380686
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 10:15:35 -0500 (EST)
X-Sender-Id: scott@jumpnowtek.com
Received: from app1.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140]) by 0.0.0.0:25 (trex/5.5.4);
	Fri, 15 Jan 2016 10:15:35 -0500
Received: from jumpnowtek.com (localhost.localdomain [127.0.0.1])
	by app1.wa-webapps.iad3a (Postfix) with ESMTP id C407238005B
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 10:15:35 -0500 (EST)
Received: by apps.rackspace.com (Authenticated sender: scott@jumpnowtek.com,
	from: scott@jumpnowtek.com) 
	with HTTP; Fri, 15 Jan 2016 10:15:35 -0500 (EST)
Date: Fri, 15 Jan 2016 10:15:35 -0500 (EST)
From: "Scott Ellis" <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <E7570BB5-2C0C-4F99-BFF8-AC2924D5BB18@gmail.com>
References: <1452783285.1696717@apps.rackspace.com> 
	<E7570BB5-2C0C-4F99-BFF8-AC2924D5BB18@gmail.com>
X-Auth-ID: scott@jumpnowtek.com
Message-ID: <1452870935.80157155@apps.rackspace.com>
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
X-List-Received-Date: Fri, 15 Jan 2016 15:16:01 -0000
Content-Type: text/plain;charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The 'something' would be 'xattr'=0A=0A  PACKAGECONFIG[attr] =3D "--enable-x=
attr,--disable-xattr,attr,"=0A=0AWhat should the default be?=0A=0AThe acl o=
ption for coreutils looks in DISTRO_FEATURES.=0A=0AShould I do the same for=
 this?=0A=0A"Khem Raj" <raj.khem@gmail.com> said:=0A=0A> Scott=0A> =0A> Tha=
nks for patch. You might want to send into to oe-core mailing list.=0A> =0A=
>> On Jan 14, 2016, at 6:54 AM, Scott Ellis <scott@jumpnowtek.com> wrote:=
=0A>>=0A>> Fixes this warning:=0A>>=0A>> WARNING: QA Issue: coreutils rdepe=
nds on libattr, but it isn't a build=0A>> dependency? [build-deps]=0A>>=0A>=
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>=0A>> ---=0A>> meta/reci=
pes-core/coreutils/coreutils_8.24.bb | 2 +-=0A>> 1 file changed, 1 insertio=
n(+), 1 deletion(-)=0A>>=0A>> diff --git a/meta/recipes-core/coreutils/core=
utils_8.24.bb=0A>> b/meta/recipes-core/coreutils/coreutils_8.24.bb=0A>> ind=
ex f042346..47a25f3 100644=0A>> --- a/meta/recipes-core/coreutils/coreutils=
_8.24.bb=0A>> +++ b/meta/recipes-core/coreutils/coreutils_8.24.bb=0A>> @@ -=
7,7 +7,7 @@ BUGTRACKER =3D "http://debbugs.gnu.org/coreutils"=0A>> LICENSE =
=3D "GPLv3+"=0A>> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb67346=
3ab874e80d47fae504\=0A>>                     file://src/ls.c;beginline=3D5;=
endline=3D16;md5=3D38b79785ca88537b75871782a2a3c6b8"=0A>> -DEPENDS =3D "gmp=
 libcap"=0A>> +DEPENDS =3D "attr gmp lib cap=E2=80=9D=0A> =0A> while this f=
ix is good. We can make this into a packageconfig knob=0A> =0A> PACKAGECONF=
IG[attr] =3D "--enable-something,--disable-something,attr,"=0A> =0A>> DEPEN=
DS_class-native =3D ""=0A>>=0A>> inherit autotools gettext texinfo=0A>> --=
=0A>> 2.5.0=0A>>=0A>> --=0A>> _____________________________________________=
__=0A>> yocto mailing list=0A>> yocto@yoctoproject.org=0A>> https://lists.y=
octoproject.org/listinfo/yocto=0A> =0A> =0A


