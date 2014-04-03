Return-Path: <vaduvajanalexandru@yahoo.com>
Received: from nm38.bullet.mail.ne1.yahoo.com (nm38.bullet.mail.ne1.yahoo.com
	[98.138.229.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 727ABE00B6D
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 07:07:26 -0700 (PDT)
Received: from [127.0.0.1] by nm38.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 14:07:25 -0000
Received: from [98.138.100.111] by nm38.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 14:04:43 -0000
Received: from [98.138.226.169] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 14:04:43 -0000
Received: from [127.0.0.1] by omp1070.mail.ne1.yahoo.com with NNFMP;
	03 Apr 2014 14:04:43 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 105208.77580.bm@omp1070.mail.ne1.yahoo.com
Received: (qmail 96203 invoked by uid 60001); 3 Apr 2014 14:04:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1396533882; bh=dj2jCb/xEZFXIs64GrnZc4P0ErYwSFe3WUZPh9EYfn0=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=pud02h2YRL6AD/0EvVdbvoh/JzbVI8fmrUvTi/FtryOPf/rIvg0y9IHVXKX9jHr3sVP4XyigbXiui/YUeMY67oI9usZiuMQpX3dhLYoqEyRxmD9a0meNmqdzFpv0V45/ai25yZW9XmDjfUOI12TIHVfj3PqSpTFf6OWWOSRqPbw=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=NFzfntyhA/583rmKIVDVLtJEGaiFN0lF/pORMSRn8XVKKdM1ZgRHUpId/5zNPJh/OXOc/9OKvH412R7XB2/JmuMPPy9l3m6fY1oJRNSoay0cD1llZyuRIdFoksMiPbeDtKOUMTfvGcVjLGIXxUaN/nPQBpnAe4fxYE6U52ZvgvU=;
X-YMail-OSG: zfe6QsMVM1lrHK2FlvWWumqpgbrJ3QlkcAcUqU3menqd0Cc
	rbS8trrXe2C7gWJG0WOJs.ACMHFxkusI8pAm2UfNRidmz808e0udr1v3.qgc
	eMGtAOk3de6Q8zEotWv2SW_rFJTcPThQWhSX2Ot3oHegQuxF876Pzn3itago
	JlqCzMq2tDSL.A4NwZZOz0a2ieKbyIPukSSQRmUy_xAebYHURR7z7BlKpjDf
	OTJRZM5ZE01r2nrgb.UoZsbB4J.YgP8PRLFCYQMJT10ILaJoBZtid4ff1Bzw
	84Q50XxUrTugFOazmfa8IlUPcS7M1gvygYiaH5yIDPqgPWIUOdhhV6Bs6bOO
	_rfscTKRFmnHZjCAu2w1MAtx2gnq94WtN7Qlc5Famr1w_z8KG76oGrnWt5ls
	fqOjV2CTK7gNO54NRFdSZc5cxW.vSdT.xfErhpphnV1DOgXAI1Y2rbYKU4im
	3w.obpLT8CEM6gujbcZOkoKRgTZSlT98OyTWhHpRSo3DewRfd_53AsRZj.Nj
	3NntakzANm1GBDRsLZmhWJ1xbUrBaDmK_eC.hmP7BjPOLX955rS8AltI1mtO
	zW3ITsMmiC4mqtwZQmwOH2cEsyLXuH0ZVbu2Zj_dtZ40XdEqIJTi0rd25drV
	oC6.m89F10GFtsowe5C8SkQIf_9BDer5fFqOPe5GzEbdBSz5nUdZhMj5G8Wb jdA--
Received: from [109.166.154.145] by web122503.mail.ne1.yahoo.com via HTTP;
	Thu, 03 Apr 2014 07:04:42 PDT
X-Rocket-MIMEInfo: 002.001,
	SSBhbHNvIGRpZCBhIHNpbWlsYXIgcGF0Y2ggc29tZXRpbWUgYWdvLCBidXQgaXQgaXMgd2FpdGluZyBmb3IgYSBtZXJnZSB0byB1cHN0cmVhbS4KCgpPbiBUaHVyc2RheSwgQXByaWwgMywgMjAxNCA0OjE4IFBNLCBKb2UgTWFjRG9uYWxkIDxqb2VAZGVzZXJ0ZWQubmV0PiB3cm90ZToKIAoke1BWfSBpcyBubyBsb25nZXIgY2FsY3VsYXRlZCBmb3Igbm9uLWJiL2JiYXBwZW5kIGZpbGVzLCByZXN1bHRpbmcgaW4gYQpmYWlsdXJlIHRvIGZpbmQgYW55IHBhdGNoZXMgaW4gcmVmcG9saWN5LTIuMjAxMzA0MjQvLgEwAQEBAQ--
X-Mailer: YahooMailWebService/0.8.182.648
References: <1396531024-12780-1-git-send-email-joe@deserted.net>
Message-ID: <1396533882.11779.YahooMailNeo@web122503.mail.ne1.yahoo.com>
Date: Thu, 3 Apr 2014 07:04:42 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: Joe MacDonald <joe@deserted.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <1396531024-12780-1-git-send-email-joe@deserted.net>
MIME-Version: 1.0
Subject: Re: [meta-selinux][PATCH] refpolicy: add versioned directory to	FILESEXTRAPATHS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Apr 2014 14:07:29 -0000
Content-Type: multipart/alternative;
	boundary="592913864-454676616-1396533882=:11779"

--592913864-454676616-1396533882=:11779
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

I also did a similar patch sometime ago, but it is waiting for a merge to u=
pstream.=0A=0A=0AOn Thursday, April 3, 2014 4:18 PM, Joe MacDonald <joe@des=
erted.net> wrote:=0A =0A${PV} is no longer calculated for non-bb/bbappend f=
iles, resulting in a=0Afailure to find any patches in refpolicy-2.20130424/=
.=A0 Explicitly set the=0Apath name rather than relying on the ${PV} expans=
ion.=0A=0ASigned-off-by: Joe MacDonald <joe@deserted.net>=0A---=0Arecipes-s=
ecurity/refpolicy/refpolicy_2.20130424.inc |=A0 =A0 2 +-=0A1 file changed, =
1 insertion(+), 1 deletion(-)=0A=0Adiff --git a/recipes-security/refpolicy/=
refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.=
inc=0Aindex 9e5e426..4ea61fc 100644=0A--- a/recipes-security/refpolicy/refp=
olicy_2.20130424.inc=0A+++ b/recipes-security/refpolicy/refpolicy_2.2013042=
4.inc=0A@@ -4,7 +4,7 @@ SRC_URI =3D "http://oss.tresys.com/files/refpolicy/=
refpolicy-${PV}.tar.bz2;"=0ASRC_URI[md5sum] =3D "6a5c975258cc8eb92c122f11b1=
1a5085"=0ASRC_URI[sha256sum] =3D "6039ba854f244a39dc727cc7db25632f7b933bb27=
1c803772d754d4354f5aef4"=0A=0A-FILESEXTRAPATHS_prepend :=3D "${THISDIR}/ref=
policy-${PV}:"=0A+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-2.2013=
0424:"=0A=0A# Fix file contexts for Poky=0ASRC_URI +=3D "file://poky-fc-sub=
s_dist.patch \=0A-- =0A1.7.10.4=0A=0A-- =0A________________________________=
_______________=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lis=
ts.yoctoproject.org/listinfo/yocto

--592913864-454676616-1396533882=:11779
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt">I also did a similar patch sometime ago, but it is waiting fo=
r a merge to upstream.<br><div><span><br></span></div><div style=3D"display=
: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12=
pt;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, =
Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <fon=
t face=3D"Arial" size=3D"2"> On Thursday, April 3, 2014 4:18 PM, Joe MacDon=
ald &lt;joe@deserted.net&gt; wrote:<br> </font> </div>  <div class=3D"y_msg=
_container">${PV} is no longer calculated for non-bb/bbappend files, result=
ing in a<br>failure to find any patches in refpolicy-2.20130424/.&nbsp; Exp=
licitly set the<br>path name rather than relying on the ${PV}
 expansion.<br><br>Signed-off-by: Joe MacDonald &lt;<a ymailto=3D"mailto:jo=
e@deserted.net" href=3D"mailto:joe@deserted.net">joe@deserted.net</a>&gt;<b=
r>---<br> recipes-security/refpolicy/refpolicy_2.20130424.inc |&nbsp; &nbsp=
; 2 +-<br> 1 file changed, 1 insertion(+), 1 deletion(-)<br><br>diff --git =
a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/re=
fpolicy/refpolicy_2.20130424.inc<br>index 9e5e426..4ea61fc 100644<br>--- a/=
recipes-security/refpolicy/refpolicy_2.20130424.inc<br>+++ b/recipes-securi=
ty/refpolicy/refpolicy_2.20130424.inc<br>@@ -4,7 +4,7 @@ SRC_URI =3D "<a hr=
ef=3D"http://oss.tresys.com/files/refpolicy/refpolicy-$" target=3D"_blank">=
http://oss.tresys.com/files/refpolicy/refpolicy-$</a>{PV}.tar.bz2;"<br> SRC=
_URI[md5sum] =3D "6a5c975258cc8eb92c122f11b11a5085"<br> SRC_URI[sha256sum] =
=3D "6039ba854f244a39dc727cc7db25632f7b933bb271c803772d754d4354f5aef4"<br> =
<br>-FILESEXTRAPATHS_prepend :=3D
 "${THISDIR}/refpolicy-${PV}:"<br>+FILESEXTRAPATHS_prepend :=3D "${THISDIR}=
/refpolicy-2.20130424:"<br> <br> # Fix file contexts for Poky<br> SRC_URI +=
=3D "file://poky-fc-subs_dist.patch \<br>-- <br>1.7.10.4<br><br>-- <br>____=
___________________________________________<br>yocto mailing list<br><a yma=
ilto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.or=
g">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/=
listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br><br><br></div>  </div> </div>  </div> </div></body></html>

--592913864-454676616-1396533882=:11779--
