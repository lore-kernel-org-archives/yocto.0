Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98BC8E009EB; Wed, 24 Jun 2015 05:07:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.138.91.151 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vaduvajanalexandru[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm21-vm3.bullet.mail.ne1.yahoo.com
	(nm21-vm3.bullet.mail.ne1.yahoo.com [98.138.91.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15DEEE009C8
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 05:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1435147659; bh=M+xTCjpAqEyh3nMlNJoVkwzs0OdGQkbqp6hDufbLMag=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=k98fliGIINZEvfv6/O0k817lDtHwezWZlI4kW3HWkTv/xQwg5HMNv7rgGI4MH1M6IYBp7FJT7dE6Vl5rR8E4tShhWPQLm/RWFJP89fws+Pos2RmppFWyFRqZ0mrn4mcXP3bbGHeSxOLKu4OR6oK3OkeO0PfEd+ANTQWhNYTt1qFA/7n/Yu+//qr9A6a1VaVR4P6xuQ1NSurGrBVfgUJWCgEAmj5J98PAjG9Uc5rzxHq71klsC7wIuaZoaTqTaz5kcAM5CdYvmeMNPHwCXkPFjTG6FdYIPME6Qegty2QbVSgeut4r2WJRMQyao34I5anwc7bwm+vLWiotaiH9+n3BSw==
Received: from [98.138.100.113] by nm21.bullet.mail.ne1.yahoo.com with NNFMP;
	24 Jun 2015 12:07:39 -0000
Received: from [98.138.226.167] by tm104.bullet.mail.ne1.yahoo.com with NNFMP;
	24 Jun 2015 12:07:39 -0000
Received: from [127.0.0.1] by omp1068.mail.ne1.yahoo.com with NNFMP;
	24 Jun 2015 12:07:39 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 13663.25134.bm@omp1068.mail.ne1.yahoo.com
X-YMail-OSG: kG7vKhAVM1kw5qUxpDXNE0hnRaIwx36goYWEwZYjAz7lRibJJl.ZnUyAqvCOMqr
	5J73pWnyo56FzmGuxGOFLYo3E_53ZYXVfHdqoWtA2fxbGu.5E05WTGisBRSAaA1JGxcqh_UnLuv.
	QQ9ZWauXuCTDsP4XuFthOm9I59iqRHcxrlj_eIMiwSnbKVjLNJV8UMzs91Uv2QUgucoLNxMWKl4k
	EFjNa2KqcvWX3Ot1TuYWvYSqT4YW6dFHys4xun5IssASXC3V6y_qFRgXKRYcKIvYbg7SN5aU34o.
	KvxltjcFw9_71FOqk9ay8asqjmMGpSWuntqZs2FuGWPe65wbNa02kHU3A8UT_umiLVvyPF.Og4o9
	bwlI.MwX4l34DM834MFm0ydgJn6zmmioGDGbNIuzff6TPVi9U0KpgX6UWOnldQh9y3fmNbgU2rMg
	a8Ua0iDrHsb3idiKosdFNMOACJL_Jt86MMGMIp2b_x1iJEuuHNC2YV7UCOWYvzeOzjW1V4Ru9KHb
	7BFZGko.BQbgkIAaDYkZPfanwNg--
Received: by 98.138.101.171; Wed, 24 Jun 2015 12:07:38 +0000 
Date: Wed, 24 Jun 2015 12:07:19 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Gaurang Shastri <gshastri@juniper.net>, 
	"Alexandru. Vaduva" <Alexandru.Vaduva@enea.com>, 
	"Adrian.Dudau@enea.com" <Adrian.Dudau@enea.com>, 
	"Alexandra.Safta@enea.com" <Alexandra.Safta@enea.com>
Message-ID: <2107152045.226063.1435147639235.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <BN3PR0501MB1427578A5A8515507336D40ED5AF0@BN3PR0501MB1427.namprd05.prod.outlook.com>
References: <BN3PR0501MB1427578A5A8515507336D40ED5AF0@BN3PR0501MB1427.namprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>,
	Joe MacDonald <joe.macdonald@windriver.com>,
	Siva Borra <siva.borra@enea.com>
Subject: Re: [LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 24 Jun 2015 12:07:42 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_226062_1972667117.1435147639228"

------=_Part_226062_1972667117.1435147639228
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the information and for the patch.I am really pleased when anyon=
e sends a patch, sorry though that I missed your.Hoping not to make this mi=
stake again.
Unfortunately I will leave your patch as it is since the meta-cgl itself is=
 on a change process and we are trying as much as possible to use the lates=
t and most stable packages available.Would you please make sure that the ne=
xt time you will send a patch for the meta-cgl layer that I am in CC or the=
 "[meta-cgl]" information is somewhere in the emails subject. By doing that=
 we can make sure that situations like the earlier one would not repeat.
Thanks once again for you interest. Sorry for the mistake. I will try to ma=
ke sure that the next patch sent to the meta-cgl layer will receive my full=
 attention.

Alex V.=20


     On Wednesday, June 24, 2015 11:06 AM, Gaurang Shastri <gshastri@junipe=
r.net> wrote:
  =20

 JFYI, makedumpfile recipe patch was already sent on emea list on 3/31/2015=
.

Can you please check?

//Gaurang Shastri

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alexandru.Vaduva
Sent: Tuesday, June 23, 2015 7:30 PM
To: yocto@yoctoproject.org; Adrian.Dudau@enea.com; Alexandru.Vaduva@enea.co=
m; Alexandra.Safta@enea.com
Cc: Siva Borra; linux@list.enea.se; issues@enea.com
Subject: [yocto] [LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.

From: Siva Borra <siva.borra@enea.com>

Add the makedumpfile package recipe to
the cgl layer.

[LXCR-4977]


Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 .../makedumpfile/files/alias-powerpc-powerpc32.patch | 13 +++++++++++++
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb=C2=A0 | 20 ++++++++++++=
++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/files/alias-po=
werpc-powerpc32.patch
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1=
.5.8.bb

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-p=
owerpc32.patch b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-power=
pc-powerpc32.patch
new file mode 100644
index 0000000..70ad663
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-power
+++ pc32.patch
@@ -0,0 +1,13 @@
+diff -rupN makedumpfile-1.5.8/Makefile makedumpfile-1.5.8/Makefile
+--- makedumpfile-1.5.8/Makefile=C2=A0=C2=A0=C2=A0 2015-03-24 02:58:33.0000=
00000 +0100
++++ makedumpfile-1.5.8/Makefile=C2=A0=C2=A0=C2=A0 2015-06-23 11:08:30.5956=
55336 +0200
+@@ -25,7 +25,8 @@ endif
+ ARCH :=3D $(shell echo ${TARGET}=C2=A0 | sed -e s/i.86/x86/ -e s/sun4u/sp=
arc64/ \
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -e s/arm.*/arm/ -e s/sa110/arm/ \
+ =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -e s/s390x/s390/ -e s/parisc64/parisc/ \
+-=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/)
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/ \
++=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 -e s/powerpc/powerpc32/)
+=20
+ CROSS :=3D
+ ifneq ($(TARGET), $(HOST_ARCH))
diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb=
 b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
new file mode 100644
index 0000000..6c32306
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
@@ -0,0 +1,20 @@
+DESCRIPTION =3D "Make dump file utility"
+LICENSE =3D "GPLv2"
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D751419260aa954499f7abaabaa882bb=
e"
+
+SRC_URI =3D "http://sourceforge.net/projects/makedumpfile/files/makedumpfi=
le/1.5.8/makedumpfile-${PV}.tar.gz;name=3Dmakedumpfile \
+=C2=A0=C2=A0=C2=A0 =C2=A0 file://alias-powerpc-powerpc32.patch \
+=C2=A0=C2=A0=C2=A0 =C2=A0 "
+
+SRC_URI[makedumpfile.md5sum] =3D "642d975349dff744c6027d4486499258"
+SRC_URI[makedumpfile.sha256sum] =3D "dd9c6c40c1ae6774b61bbe7b53f5ebbee9734=
f576d8ecb75ffb929288f5ea64d"
+
+DEPENDS =3D "zlib elfutils bzip2"
+
+EXTRA_OEMAKE =3D "TARGET=3D${TARGET_ARCH}"
+
+do_install() {
+=C2=A0=C2=A0=C2=A0 install -d ${D}${bindir}/
+=C2=A0=C2=A0=C2=A0 install -c -m 755 ${S}/makedumpfile ${D}${bindir}/ }
--
1.9.1

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  

------=_Part_226062_1972667117.1435147639228
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1435144764617_36515"><span id=3D"yui_=
3_16_0_1_1435144764617_36937">Thanks for the information and for the patch.=
</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1435144764617_36935"><span=
 id=3D"yui_3_16_0_1_1435144764617_36936">I am really pleased when anyone se=
nds a patch, sorry though that I missed your.</span></div><div id=3D"yui_3_=
16_0_1_1435144764617_38037" dir=3D"ltr"><span style=3D"" class=3D"" id=3D"y=
ui_3_16_0_1_1435144764617_36936">Hoping not</span><span id=3D"yui_3_16_0_1_=
1435144764617_36936"><span style=3D"" class=3D"" id=3D"yui_3_16_0_1_1435144=
764617_36936"> to</span> make this mistake again.</span></div><div id=3D"yu=
i_3_16_0_1_1435144764617_39667" dir=3D"ltr"><br><span id=3D"yui_3_16_0_1_14=
35144764617_36936"></span></div><div id=3D"yui_3_16_0_1_1435144764617_39662=
" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1435144764617_36936">Unfortunately I=
 will leave your patch as it is since the meta-cgl itself is on a change pr=
ocess and we are trying as much as possible to use the latest and most stab=
le packages available.</span></div><div id=3D"yui_3_16_0_1_1435144764617_40=
219" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1435144764617_36936">Would you pl=
ease make sure that the next time you will send a patch for the meta-cgl la=
yer that I am in CC or the "[meta-cgl]" information is somewhere in the ema=
ils subject. By doing that we can make sure that situations like the earlie=
r one would not repeat.</span></div><div id=3D"yui_3_16_0_1_1435144764617_4=
2985" dir=3D"ltr"><br><span id=3D"yui_3_16_0_1_1435144764617_36936"></span>=
</div><div id=3D"yui_3_16_0_1_1435144764617_42986" dir=3D"ltr"><span id=3D"=
yui_3_16_0_1_1435144764617_36936">Thanks once again for you interest. Sorry=
 for the mistake. I will try to make sure that the next patch sent to the m=
eta-cgl layer will receive my full attention.</span></div><div id=3D"yui_3_=
16_0_1_1435144764617_44908" dir=3D"ltr"><br><span id=3D"yui_3_16_0_1_143514=
4764617_36936"></span></div><div id=3D"yui_3_16_0_1_1435144764617_44909" di=
r=3D"ltr"><br><span id=3D"yui_3_16_0_1_1435144764617_36936"></span></div><d=
iv id=3D"yui_3_16_0_1_1435144764617_44910" dir=3D"ltr"><span id=3D"yui_3_16=
_0_1_1435144764617_36936">Alex V.</span></div>  <br><div class=3D"qtdSepara=
teBR"><br><br></div><div style=3D"display: block;" class=3D"yahoo_quoted"> =
<div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial,=
 Lucida Grande, sans-serif; font-size: 12px;"> <div style=3D"font-family: H=
elveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; =
font-size: 16px;"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On We=
dnesday, June 24, 2015 11:06 AM, Gaurang Shastri &lt;gshastri@juniper.net&g=
t; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_container">JFYI,=
 makedumpfile recipe patch was already sent on emea list on 3/31/2015.<br c=
lear=3D"none"><br clear=3D"none">Can you please check?<br clear=3D"none"><b=
r clear=3D"none">//Gaurang Shastri<br clear=3D"none"><br clear=3D"none">---=
--Original Message-----<br clear=3D"none">From: <a shape=3D"rect" ymailto=
=3D"mailto:yocto-bounces@yoctoproject.org" href=3D"mailto:yocto-bounces@yoc=
toproject.org">yocto-bounces@yoctoproject.org</a> [mailto:<a shape=3D"rect"=
 ymailto=3D"mailto:yocto-bounces@yoctoproject.org" href=3D"mailto:yocto-bou=
nces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>] On Behalf Of Ale=
xandru.Vaduva<br clear=3D"none">Sent: Tuesday, June 23, 2015 7:30 PM<br cle=
ar=3D"none">To: <a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org"=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>; <a shap=
e=3D"rect" ymailto=3D"mailto:Adrian.Dudau@enea.com" href=3D"mailto:Adrian.D=
udau@enea.com">Adrian.Dudau@enea.com</a>; <a shape=3D"rect" ymailto=3D"mail=
to:Alexandru.Vaduva@enea.com" href=3D"mailto:Alexandru.Vaduva@enea.com">Ale=
xandru.Vaduva@enea.com</a>; <a shape=3D"rect" ymailto=3D"mailto:Alexandra.S=
afta@enea.com" href=3D"mailto:Alexandra.Safta@enea.com">Alexandra.Safta@ene=
a.com</a><br clear=3D"none">Cc: Siva Borra; <a shape=3D"rect" ymailto=3D"ma=
ilto:linux@list.enea.se" href=3D"mailto:linux@list.enea.se">linux@list.enea=
.se</a>; <a shape=3D"rect" ymailto=3D"mailto:issues@enea.com" href=3D"mailt=
o:issues@enea.com">issues@enea.com</a><br clear=3D"none">Subject: [yocto] [=
LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.<br clear=3D"none"><br =
clear=3D"none">From: Siva Borra &lt;<a shape=3D"rect" ymailto=3D"mailto:siv=
a.borra@enea.com" href=3D"mailto:siva.borra@enea.com">siva.borra@enea.com</=
a>&gt;<br clear=3D"none"><br clear=3D"none">Add the makedumpfile package re=
cipe to<br clear=3D"none">the cgl layer.<br clear=3D"none"><br clear=3D"non=
e">[LXCR-4977]<br clear=3D"none"><br clear=3D"none"><br clear=3D"none">Sign=
ed-off-by: Siva Borra &lt;<a shape=3D"rect" ymailto=3D"mailto:siva.borra@en=
ea.com" href=3D"mailto:siva.borra@enea.com">siva.borra@enea.com</a>&gt;<br =
clear=3D"none">---<br clear=3D"none"> .../makedumpfile/files/alias-powerpc-=
powerpc32.patch | 13 +++++++++++++<br clear=3D"none"> .../recipes-cgl/maked=
umpfile/makedumpfile_1.5.8.bb&nbsp;  | 20 ++++++++++++++++++++<br clear=3D"=
none"> 2 files changed, 33 insertions(+)<br clear=3D"none"> create mode 100=
644 meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc32.=
patch<br clear=3D"none"> create mode 100644 meta-cgl-common/recipes-cgl/mak=
edumpfile/makedumpfile_1.5.8.bb<br clear=3D"none"><br clear=3D"none">diff -=
-git a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-powerpc=
32.patch b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-pow=
erpc32.patch<br clear=3D"none">new file mode 100644<br clear=3D"none">index=
 0000000..70ad663<br clear=3D"none">--- /dev/null<br clear=3D"none">+++ b/m=
eta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-power<br clear=
=3D"none">+++ pc32.patch<br clear=3D"none">@@ -0,0 +1,13 @@<br clear=3D"non=
e">+diff -rupN makedumpfile-1.5.8/Makefile makedumpfile-1.5.8/Makefile<br c=
lear=3D"none">+--- makedumpfile-1.5.8/Makefile&nbsp;&nbsp;&nbsp; 2015-03-24=
 02:58:33.000000000 +0100<br clear=3D"none">++++ makedumpfile-1.5.8/Makefil=
e&nbsp;&nbsp;&nbsp; 2015-06-23 11:08:30.595655336 +0200<br clear=3D"none">+=
@@ -25,7 +25,8 @@ endif<br clear=3D"none">+ ARCH :=3D $(shell echo ${TARGET=
}&nbsp; | sed -e s/i.86/x86/ -e s/sun4u/sparc64/ \<br clear=3D"none">+ &nbs=
p;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  =
-e s/arm.*/arm/ -e s/sa110/arm/ \<br clear=3D"none">+ &nbsp;&nbsp;&nbsp; &n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  -e s/s390x/s390/ =
-e s/parisc64/parisc/ \<br clear=3D"none">+-&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  -e s/ppc64/powerpc64/ -e s/=
ppc/powerpc32/)<br clear=3D"none">++&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &=
nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  -e s/ppc64/powerpc64/ -e s/ppc/powe=
rpc32/ \<br clear=3D"none">++&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;&nbsp; &nbsp; &nbsp; &nbsp;  -e s/powerpc/powerpc32/)<br clear=3D"none"=
>+ <br clear=3D"none">+ CROSS :=3D<br clear=3D"none">+ ifneq ($(TARGET), $(=
HOST_ARCH))<br clear=3D"none">diff --git a/meta-cgl-common/recipes-cgl/make=
dumpfile/makedumpfile_1.5.8.bb b/meta-cgl-common/recipes-cgl/makedumpfile/m=
akedumpfile_1.5.8.bb<br clear=3D"none">new file mode 100644<br clear=3D"non=
e">index 0000000..6c32306<br clear=3D"none">--- /dev/null<br clear=3D"none"=
>+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb<br cl=
ear=3D"none">@@ -0,0 +1,20 @@<br clear=3D"none">+DESCRIPTION =3D "Make dump=
 file utility"<br clear=3D"none">+LICENSE =3D "GPLv2"<br clear=3D"none">+<b=
r clear=3D"none">+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D751419260aa954=
499f7abaabaa882bbe"<br clear=3D"none">+<br clear=3D"none">+SRC_URI =3D "<a =
shape=3D"rect" href=3D"http://sourceforge.net/projects/makedumpfile/files/m=
akedumpfile/1.5.8/makedumpfile-$" target=3D"_blank">http://sourceforge.net/=
projects/makedumpfile/files/makedumpfile/1.5.8/makedumpfile-$</a>{PV}.tar.g=
z;name=3Dmakedumpfile \<br clear=3D"none">+&nbsp;&nbsp;&nbsp; &nbsp;  file:=
//alias-powerpc-powerpc32.patch \<br clear=3D"none">+&nbsp;&nbsp;&nbsp; &nb=
sp;  "<br clear=3D"none">+<br clear=3D"none">+SRC_URI[makedumpfile.md5sum] =
=3D "642d975349dff744c6027d4486499258"<br clear=3D"none">+SRC_URI[makedumpf=
ile.sha256sum] =3D "dd9c6c40c1ae6774b61bbe7b53f5ebbee9734f576d8ecb75ffb9292=
88f5ea64d"<br clear=3D"none">+<br clear=3D"none">+DEPENDS =3D "zlib elfutil=
s bzip2"<br clear=3D"none">+<br clear=3D"none">+EXTRA_OEMAKE =3D "TARGET=3D=
${TARGET_ARCH}"<br clear=3D"none">+<br clear=3D"none">+do_install() {<br cl=
ear=3D"none">+&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}/<br clear=3D"none=
">+&nbsp;&nbsp;&nbsp; install -c -m 755 ${S}/makedumpfile ${D}${bindir}/ }<=
br clear=3D"none">--<br clear=3D"none">1.9.1<br clear=3D"none"><br clear=3D=
"none">--<br clear=3D"none">_______________________________________________=
<br clear=3D"none">yocto mailing list<br clear=3D"none"><a shape=3D"rect" y=
mailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D"rect" href=3D=
"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://l=
ists.yoctoproject.org/listinfo/yocto</a><div class=3D"yqt2895714374" id=3D"=
yqtfd39112"><br clear=3D"none">-- <br clear=3D"none">______________________=
_________________________<br clear=3D"none">yocto mailing list<br clear=3D"=
none"><a shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"m=
ailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none">=
<a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" ta=
rget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=
=3D"none"></div><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_226062_1972667117.1435147639228--
