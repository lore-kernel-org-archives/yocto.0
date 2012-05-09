Return-Path: <yesyanus@yahoo.com>
Received: from nm16.bullet.mail.ne1.yahoo.com (nm16.bullet.mail.ne1.yahoo.com
	[98.138.90.79])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9C0F9E01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 22:44:35 -0700 (PDT)
Received: from [98.138.90.54] by nm16.bullet.mail.ne1.yahoo.com with NNFMP;
	09 May 2012 05:44:35 -0000
Received: from [98.138.89.161] by tm7.bullet.mail.ne1.yahoo.com with NNFMP;
	09 May 2012 05:44:34 -0000
Received: from [127.0.0.1] by omp1017.mail.ne1.yahoo.com with NNFMP;
	09 May 2012 05:44:34 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 959838.79783.bm@omp1017.mail.ne1.yahoo.com
Received: (qmail 46613 invoked by uid 60001); 9 May 2012 05:44:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1336542274; bh=RE0tVuSITGZObcvk0xBYVyffZbWnilteNu7XzoAncnY=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=BbXrB0gVJkOKDp764tnTULNT9EuWZxI3Aj39jh2ygZcG46j6T79JDDZifZ8QjIlD9QWNooIAVCrOoeK8yfFP2yth2GgHiW8VyF4lR4Mwmw4X7TVYGxT6IPNqmd0/YhcSnCyXi1s6kEKE9NscEil5X08OsJgX3st5rjySqg0E5r8=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=o0XGvo6Gup9AO/fnecaOK0ZimG61bsrEY01o2JjLNtFB5zXvXgvbrF0vPZw1T9Hicr2/nAxeq3NW6be4bNhaYwEkoytG9piq/NAkQ2wF0Vx7MPohbMhccIqG7bhFW1ECN6vSgdO4R+tREJNv84dT3WYiEtE4degF5lph/t1A4lE=;
X-YMail-OSG: yDmC5GUVM1nLLS1CiCmCS5fIzfyUtwrY3Lf.iW.AzX1.t0s
	bx9Uaylm76rRUaxfNT6lzKETybXA066pmBK_42WuarKbUtda0lQkPbA8iZK8
	Sjj1DrtQVUR58hfJhVYb3o5Js4VTB9TuK8hQ2yfUFSkpkuJth83f0n0d8f3m
	8pJJHgI2rd0qF5FXlNAmcZff9frDVXpmnKB_JG2OUueBl3mw2SJZKjtuMjN5
	XCGB4SDri.UHJ32pZdl9M9_g.cZrvGiA4LYgJBysZNBJwvavFcMrLA.1IHf_
	KgubOTgeQr1.s5TPYKRlABxJ75Eqf9nGIWyFhTLB4sNmrTHoAomVNA0yWd6b
	P2QqW5T8AYIfeFm7hmMGSueSy.X4K7GdymKZko7osVZO1_TzhLNEIf0AThhN
	960GH1oGrdmVLVPQk9Gr3O6gXzppNRDM2szYOCvflbQ5h9DI8kQR8F.RuG86
	BAPyZ.9abGY4Hmj65zryW4HGnMu1LAGPCrqezDx_YzstWyOjg7n6tuDqYufp
	3kvw.RcZy8gB19vgVydsq5tLVHRFJbayv8ra8yhLn
Received: from [61.148.56.138] by web121503.mail.ne1.yahoo.com via HTTP;
	Tue, 08 May 2012 22:44:34 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
	<CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
	<4FA94BE4.1040503@linux.intel.com>
	<CACW_hTY_wtMa4ZLwRXMdeiJyouKkG0TTSe6PdO+m8Gt02-LM=w@mail.gmail.com>
Message-ID: <1336542274.43652.YahooMailNeo@web121503.mail.ne1.yahoo.com>
Date: Tue, 8 May 2012 22:44:34 -0700 (PDT)
From: Yes Yanus <yesyanus@yahoo.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>,
	Saul Wold <sgw@linux.intel.com>
In-Reply-To: <CACW_hTY_wtMa4ZLwRXMdeiJyouKkG0TTSe6PdO+m8Gt02-LM=w@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [denzil] Licenses, source distribution etc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Yes Yanus <yesyanus@yahoo.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 May 2012 05:44:36 -0000
Content-Type: multipart/alternative;
	boundary="828875537-887677272-1336542274=:43652"

--828875537-887677272-1336542274=:43652
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0A=0A=0A=0A________________________________=0A From: Frans Meulenbroeks <f=
ransmeulenbroeks@gmail.com>=0ATo: Saul Wold <sgw@linux.intel.com> =0ACc: yo=
cto@yoctoproject.org =0ASent: Wednesday, May 9, 2012 1:17 AM=0ASubject: Re:=
 [yocto] [denzil] Licenses, source distribution etc=0A =0A2012/5/8 Saul Wol=
d <sgw@linux.intel.com>:=0A> On 05/08/2012 03:29 AM, Frans Meulenbroeks wro=
te:=0A>>=0A>> 2012/5/8 Frans Meulenbroeks<fransmeulenbroeks@gmail.com>:=0A>=
>>=0A>>> 2012/5/8 Frans Meulenbroeks<fransmeulenbroeks@gmail.com>:=0A>>>>=
=0A>>>> Dear all,=0A>>>>=0A>>>> A next question/issue wrt my denzil experim=
ent:=0A>>>>=0A>>>> I wanted to know what licenses are used in my image.=0A>=
>>> I found tmp/deploy/licenses but this is package oriented and does not=
=0A>>>> really give a quick overview.=0A>>>>=0A>>>> The manual gave me this=
 section:=0A>>>>=0A>>>> http://www.yoctoproject.org/docs/current/poky-ref-m=
anual/poky-ref-manual.html#ref-classes-src-distribute=0A>>>>=0A>>>> I tried=
 to inherit src_distribute and src_distribute_local, but to no=0A>>>> avail=
=0A>>>> Running a find on the source tree did not reveal these classes:=0A>=
>>>=0A>>>> frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute=0A=
>>>> ./meta/classes/pkg_distribute.bbclass=0A>>>> frans@frans-desktop:~/pok=
y-denzil-7.0$=0A>>>>=0A>>>> Something missing?=0A>>>> And what is the best =
way to find out what licenses are used?=0A>>>>=0A>>>> Thanks, (and keep up =
the good work!)=0A>>>> Frans.=0A>>>=0A>>>=0A>>> Googled a little bit furthe=
r.=0A>>> Guess this is a documentation issue as the classes have been=0A>>>=
 deliberatly removed.=0A>>> See http://patches.openembedded.org/patch/23171=
/=0A>>>=0A>>> Frans=0A>>=0A>>=0A>> One more thing:=0A>> I've added the arch=
iver class. I also have rm_work (not sure if that is=0A>> related)=0A>> Now=
 when running a build I get errors like this:=0A>>=0A>> NOTE: Running task =
1029 of 1279 (ID: 1167,=0A>> /home/frans/poky-denzil-7.0/meta/recipes-core/=
gettext/gettext_0.18.1.1.bb,=0A>> do_package_write_rpm)=0A>> NOTE: package =
gettext-0.18.1.1-r11: task do_package_write_rpm: Started=0A>> ERROR: Error =
executing a python function in=0A>> /home/frans/poky-denzil-7.0/meta/recipe=
s-core/gettext/gettext_0.18.1.1.bb:=0A>> AttributeError: 'NoneType' object =
has no attribute 'upper'=0A>>=0A>> ERROR: The stack trace of python calls t=
hat resulted in this=0A>> exception/failure was:=0A>> ERROR: =A0 File "do_r=
emove_tarball", line 14, in<module>=0A>> ERROR:=0A>> ERROR: =A0 File "do_re=
move_tarball", line 3, in do_remove_tarball=0A>> ERROR:=0A>> ERROR: The cod=
e that was being executed was:=0A>> ERROR: =A0 =A0 =A00010: =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 except (TypeError,OSError):=0A>> ERROR: =A0 =A0 =A00011: =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 pass=0A>> ERROR: =
=A0 =A0 =A00012:=0A>> ERROR: =A0 =A0 =A00013:=0A>> ERROR: =A0*** 0014:do_re=
move_tarball(d)=0A>> ERROR: =A0 =A0 =A00015:=0A>> ERROR: (file: 'do_remove_=
tarball', lineno: 14, function:<module>)=0A>> ERROR: =A0 =A0 =A00001:=0A>> =
ERROR: =A0 =A0 =A00002:def do_remove_tarball(d):=0A>> ERROR: =A0*** 0003: =
=A0 =A0 =A0 if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE',=0A>> True).upper() =
=3D=3D 'SRPM':=0A>> ERROR: =A0 =A0 =A00004: =A0 =A0 =A0 =A0 =A0 =A0 =A0 wor=
k_dir =3D d.getVar('WORKDIR', True)=0A>> ERROR: =A0 =A0 =A00005: =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 try:=0A>> ERROR: =A0 =A0 =A00006: =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 for file in=0A>> os.listdir(os.getcwd()):=0A>> ERRO=
R: =A0 =A0 =A00007: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 if file in get_package(d):=0A>> ERROR: (file: 'do_remove_tarball', lin=
eno: 3, function: do_remove_tarball)=0A>> ERROR: Function failed: do_remove=
_tarball=0A>> ERROR: Logfile of failure stored in:=0A>>=0A>> /home/frans/po=
ky-denzil-7.0-build/tmp/work/ppce300c3-poky-linux-uclibc/gettext-0.18.1.1-r=
11/temp/log.do_package_write_rpm.11248=0A>> NOTE: package gettext-0.18.1.1-=
r11: task do_package_write_rpm: Failed=0A>> ERROR: Task 1167=0A>>=0A>> (/ho=
me/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb,=0A>=
> do_package_write_rpm) failed with exit code '1'=0A>>=0A>> And still no de=
ploy/sources dir=0A>>=0A> Frans Please file a bug against this and the src-=
distrubute class=0A> documentation.=0A>=0A> Yes, we did rework the source a=
rchiving and I guess it was not tested as=0A> fully as it could have been.=
=0A>=0A> Did you set SOURCE_ARCHIVE_PACKAGE_TYPE?=0A>=0A> Sau!=0A>=0A=0A>El=
izabeth, thhanks for the reference=0A=0A>Saul, I did not set=A0 SOURCE_ARCH=
IVE_PACKAGE_TYPE. I assume that is the problem.=0A>Maybe this should get a =
sensible default or a warning if not set or it=0A>could skip the source tar=
ball=0A=0AIf you use archiver.bbclass , you should enable three variables=
=A0=0AINHERIT +=3D "archive-original-source"=0ASOURCE_ARCHIVE_PACKAGE_TYPE =
=3D 'srpm' or 'tar'=0A=0ASOURCE_ARCHIVE_LOG_WITH_SCRIPTS ?=3D 'logs_with_sc=
ripts' or 'logs'=0A=0A>Best regards, Frans=0A>_____________________________=
__________________=0A>yocto mailing list=0A>yocto@yoctoproject.org=0A>https=
://lists.yoctoproject.org/listinfo/yocto

--828875537-887677272-1336542274=:43652
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:14pt"><div style=3D"font-fa=
mily: 'times new roman', 'new york', times, serif; font-size: 14pt; "><span=
><br></span></div><div style=3D"font-family: 'times new roman', 'new york',=
 times, serif; font-size: 14pt; "><br></div>  <div style=3D"font-family: 't=
imes new roman', 'new york', times, serif; "> <div style=3D"font-size: 12pt=
; font-family: 'times new roman', 'new york', times, serif; "> <div dir=3D"=
ltr"> <font size=3D"2" face=3D"Arial"> <hr size=3D"1">  <b><span style=3D"f=
ont-weight:bold;">From:</span></b> Frans Meulenbroeks &lt;fransmeulenbroeks=
@gmail.com&gt;<br> <b><span style=3D"font-weight: bold;">To:</span></b> Sau=
l Wold &lt;sgw@linux.intel.com&gt; <br><b><span style=3D"font-weight: bold;=
">Cc:</span></b> yocto@yoctoproject.org <br> <b><span style=3D"font-weight:=
 bold;">Sent:</span></b> Wednesday, May 9, 2012 1:17 AM<br> <b><span style=
=3D"font-weight:
 bold;">Subject:</span></b> Re: [yocto] [denzil] Licenses, source distribut=
ion etc<br> </font> </div> <br>=0A2012/5/8 Saul Wold &lt;<a ymailto=3D"mail=
to:sgw@linux.intel.com" href=3D"mailto:sgw@linux.intel.com">sgw@linux.intel=
.com</a>&gt;:<br>&gt; On 05/08/2012 03:29 AM, Frans Meulenbroeks wrote:<br>=
&gt;&gt;<br>&gt;&gt; 2012/5/8 Frans Meulenbroeks&lt;<a ymailto=3D"mailto:fr=
ansmeulenbroeks@gmail.com" href=3D"mailto:fransmeulenbroeks@gmail.com">fran=
smeulenbroeks@gmail.com</a>&gt;:<br>&gt;&gt;&gt;<br>&gt;&gt;&gt; 2012/5/8 F=
rans Meulenbroeks&lt;<a ymailto=3D"mailto:fransmeulenbroeks@gmail.com" href=
=3D"mailto:fransmeulenbroeks@gmail.com">fransmeulenbroeks@gmail.com</a>&gt;=
:<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Dear all,<br>&gt;&gt;&gt;&gt;<br>=
&gt;&gt;&gt;&gt; A next question/issue wrt my denzil experiment:<br>&gt;&gt=
;&gt;&gt;<br>&gt;&gt;&gt;&gt; I wanted to know what licenses are used in my=
 image.<br>&gt;&gt;&gt;&gt; I found tmp/deploy/licenses but this is package=
 oriented and does not<br>&gt;&gt;&gt;&gt; really give a quick overview.<br=
>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt;
 The manual gave me this section:<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; <=
a href=3D"http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref=
-manual.html#ref-classes-src-distribute" target=3D"_blank">http://www.yocto=
project.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-s=
rc-distribute</a><br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; I tried to inheri=
t src_distribute and src_distribute_local, but to no<br>&gt;&gt;&gt;&gt; av=
ail<br>&gt;&gt;&gt;&gt; Running a find on the source tree did not reveal th=
ese classes:<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; frans@frans-desktop:~/=
poky-denzil-7.0$ find | grep distribute<br>&gt;&gt;&gt;&gt; ./meta/classes/=
pkg_distribute.bbclass<br>&gt;&gt;&gt;&gt; frans@frans-desktop:~/poky-denzi=
l-7.0$<br>&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Something missing?<br>&gt;&g=
t;&gt;&gt; And what is the best way to find out what licenses are used?<br>=
&gt;&gt;&gt;&gt;<br>&gt;&gt;&gt;&gt; Thanks, (and keep up the good
 work!)<br>&gt;&gt;&gt;&gt; Frans.<br>&gt;&gt;&gt;<br>&gt;&gt;&gt;<br>&gt;&=
gt;&gt; Googled a little bit further.<br>&gt;&gt;&gt; Guess this is a docum=
entation issue as the classes have been<br>&gt;&gt;&gt; deliberatly removed=
.<br>&gt;&gt;&gt; See http://patches.openembedded.org/patch/23171/<br>&gt;&=
gt;&gt;<br>&gt;&gt;&gt; Frans<br>&gt;&gt;<br>&gt;&gt;<br>&gt;&gt; One more =
thing:<br>&gt;&gt; I've added the archiver class. I also have rm_work (not =
sure if that is<br>&gt;&gt; related)<br>&gt;&gt; Now when running a build I=
 get errors like this:<br>&gt;&gt;<br>&gt;&gt; NOTE: Running task 1029 of 1=
279 (ID: 1167,<br>&gt;&gt; /home/frans/poky-denzil-7.0/meta/recipes-core/ge=
ttext/gettext_0.18.1.1.bb,<br>&gt;&gt; do_package_write_rpm)<br>&gt;&gt; NO=
TE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Started<br>&gt=
;&gt; ERROR: Error executing a python function in<br>&gt;&gt;
 /home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb:=
<br>&gt;&gt; AttributeError: 'NoneType' object has no attribute 'upper'<br>=
&gt;&gt;<br>&gt;&gt; ERROR: The stack trace of python calls that resulted i=
n this<br>&gt;&gt; exception/failure was:<br>&gt;&gt; ERROR: &nbsp; File "d=
o_remove_tarball", line 14, in&lt;module&gt;<br>&gt;&gt; ERROR:<br>&gt;&gt;=
 ERROR: &nbsp; File "do_remove_tarball", line 3, in do_remove_tarball<br>&g=
t;&gt; ERROR:<br>&gt;&gt; ERROR: The code that was being executed was:<br>&=
gt;&gt; ERROR: &nbsp; &nbsp; &nbsp;0010: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; except (TypeError,OSError):<br>&gt;&gt; ERROR: &nbsp; &nbsp;=
 &nbsp;0011: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; pass<br>&gt;&gt; ERROR: &nbsp; &=
nbsp; &nbsp;0012:<br>&gt;&gt; ERROR: &nbsp; &nbsp; &nbsp;0013:<br>&gt;&gt; =
ERROR: &nbsp;*** 0014:do_remove_tarball(d)<br>&gt;&gt; ERROR: &nbsp;
 &nbsp; &nbsp;0015:<br>&gt;&gt; ERROR: (file: 'do_remove_tarball', lineno: =
14, function:&lt;module&gt;)<br>&gt;&gt; ERROR: &nbsp; &nbsp; &nbsp;0001:<b=
r>&gt;&gt; ERROR: &nbsp; &nbsp; &nbsp;0002:def do_remove_tarball(d):<br>&gt=
;&gt; ERROR: &nbsp;*** 0003: &nbsp; &nbsp; &nbsp; if d.getVar('SOURCE_ARCHI=
VE_PACKAGE_TYPE',<br>&gt;&gt; True).upper() =3D=3D 'SRPM':<br>&gt;&gt; ERRO=
R: &nbsp; &nbsp; &nbsp;0004: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; work_dir =3D d.getVar('WORKDIR', True)<br>&gt;&gt; ERROR: &nbsp; &nbsp; =
&nbsp;0005: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; try:<br>&gt;&g=
t; ERROR: &nbsp; &nbsp; &nbsp;0006: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for file in<br>&gt;&gt; os.listdir(os=
.getcwd()):<br>&gt;&gt; ERROR: &nbsp; &nbsp; &nbsp;0007: &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; if file in get_package(d):<br>&gt;&gt; ERROR: (file:
 'do_remove_tarball', lineno: 3, function: do_remove_tarball)<br>&gt;&gt; E=
RROR: Function failed: do_remove_tarball<br>&gt;&gt; ERROR: Logfile of fail=
ure stored in:<br>&gt;&gt;<br>&gt;&gt; /home/frans/poky-denzil-7.0-build/tm=
p/work/ppce300c3-poky-linux-uclibc/gettext-0.18.1.1-r11/temp/log.do_package=
_write_rpm.11248<br>&gt;&gt; NOTE: package gettext-0.18.1.1-r11: task do_pa=
ckage_write_rpm: Failed<br>&gt;&gt; ERROR: Task 1167<br>&gt;&gt;<br>&gt;&gt=
; (/home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.b=
b,<br>&gt;&gt; do_package_write_rpm) failed with exit code '1'<br>&gt;&gt;<=
br>&gt;&gt; And still no deploy/sources dir<br>&gt;&gt;<br>&gt; Frans Pleas=
e file a bug against this and the src-distrubute class<br>&gt; documentatio=
n.<br>&gt;<br>&gt; Yes, we did rework the source archiving and I guess it w=
as not tested as<br>&gt; fully as it could have been.<br>&gt;<br>&gt; Did y=
ou set SOURCE_ARCHIVE_PACKAGE_TYPE?<br>&gt;<br>&gt;
 Sau!<br>&gt;<br><br>&gt;Elizabeth, thhanks for the reference<br><br>&gt;Sa=
ul, I did not set&nbsp; SOURCE_ARCHIVE_PACKAGE_TYPE. I assume that is the p=
roblem.<br>&gt;Maybe this should get a sensible default or a warning if not=
 set or it<br>&gt;could skip the source tarball<br><br>If you use archiver.=
bbclass , you should enable three variables&nbsp;</div><div class=3D"yui_3_=
2_0_20_133653405945861"><div class=3D"yui_3_2_0_20_133653405945861">INHERIT=
 +=3D "archive-original-source"</div><div>SOURCE_ARCHIVE_PACKAGE_TYPE =3D '=
srpm' or 'tar'<br></div><div>SOURCE_ARCHIVE_LOG_WITH_SCRIPTS ?=3D 'logs_wit=
h_scripts' or 'logs'<br></div><div><br></div><font size=3D"3">&gt;Best rega=
rds, Frans</font><br><font size=3D"3">&gt;_________________________________=
______________</font><br><font size=3D"3">&gt;yocto mailing list</font><br>=
&gt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yocto=
project.org" style=3D"font-family: 'times new roman', 'new york', times, se=
rif; font-size:
 12pt; ">yocto@yoctoproject.org</a><br>&gt;<a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto" target=3D"_blank" style=3D"font-family: 'times ne=
w roman', 'new york', times, serif; font-size: 12pt; ">https://lists.yoctop=
roject.org/listinfo/yocto</a><br><br><br> </div> </div>  </div></body></htm=
l>

--828875537-887677272-1336542274=:43652--
