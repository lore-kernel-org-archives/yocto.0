Return-Path: <joaohf@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A37E0070C
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 09:14:13 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so3258452bkc.35
	for <yocto@yoctoproject.org>; Sun, 11 Mar 2012 09:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=iJNOEiF7FSMa8lgSZ5HSScIJNXkdoMsFmM488kFb3hA=;
	b=uEwd8kjMv2bA9nukW2HMzsbjPBYustVw/brDd+XpnjpuLyM1n06oUxwxFa7QL23DjX
	1Cd6iRWgV08QkYNbwsb+4pUka/iJnjSWJaI1SLresCLZkB70PIiFedEqkkLGT7V+Bzt1
	scq8SCbM9QF3wqHwkbRqzO8URd+j17sRTmNkNPP2c8Y98SO+rSw44rT0HsFL9EacY+7f
	CrwE6EggG6n1eJ+4PpoZT1c+rZGbd5sYH8Ditk4aan0QUfyk88zBjt9qU+rpQY1ewPMU
	OO42FZFRX3npK390txGi0/RJoa68Qsmr3egby4gB5n5ShfEiujhDdqaMgWvPvyAnA92U
	sqGQ==
MIME-Version: 1.0
Received: by 10.205.133.210 with SMTP id hz18mr3563009bkc.117.1331482452353;
	Sun, 11 Mar 2012 09:14:12 -0700 (PDT)
Received: by 10.204.117.3 with HTTP; Sun, 11 Mar 2012 09:14:12 -0700 (PDT)
Date: Sun, 11 Mar 2012 13:14:12 -0300
Message-ID: <CANFVK78iYKEwh=ypSX3cmo0AkY=aOrLGB=T3DttPugWsv-Ws0Q@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: custom image recipes
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
X-List-Received-Date: Sun, 11 Mar 2012 16:14:14 -0000
Content-Type: multipart/alternative; boundary=000e0ce0294a98e30704baf9eaf7

--000e0ce0294a98e30704baf9eaf7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am using Yocto since 1.0 release. I jump 1.1 release and now tracking the
master.

One of my custom recipes (via-image-st.bb) is to make a custom image
(adding some files). Example:



SRC_URI =3D " \
        file://interfaces \
        file://snmpd.conf \
        file://snmp.conf \
        file://syslog.conf \
        file://ntpd \
        file://syslog.lr \
    "

inherit core-image

ROOTFS_POSTPROCESS_COMMAND_append =3D "remove_packaging_data_files ; "
ROOTFS_POSTPROCESS_COMMAND_append =3D "setup_target_image ; "

setup_target_image() {
    mkdir -p ${IMAGE_ROOTFS}/opt/sistema/conf
    install -m 0644 ${WORKDIR}/interfaces
${IMAGE_ROOTFS}/etc/network/interfaces

    ...

}

When I run: bitbake via-image-st:

install: cannot stat
`/mnt/yocto/build/mst_1.2/tmp/work/qemux86-tp-linux/via-image-st-1.0-r1/int=
erfaces':
No such file or directory
NOTE: package via-image-st-1.0-r1: task do_rootfs: Failed
ERROR: Task 8
(/home/joaohf/jhf/tropico/projetos/yocto-1.1tropico/meta-tropico/meta-viast=
/images/
via-image-st.bb, do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3192 tasks of which 3190 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/joaohf/jhf/tropico/projetos/yocto-1.1tropico/meta-tropico/meta-viast/=
images/
via-image-st.bb, do_rootfs


I think this commit
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bb=
class?id=3D6706c7bdd2de6e0e447d90062e74a718a8d31778the
others task doesn't perform.

The main question is: How I can create a recipe to customize some files
inside of the image?

I need to have a recipe like base-files? (recipes-core/base-files/
base-files_3.0.14.bb)

Or other way?

Currently my recipe is based on
http://git.yoctoproject.org/cgit/cgit.cgi/meta-demo/tree/images/demo-image-=
nas.bb.
I think that demo-image-nas.bb will not work too.

Thanks.

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

--000e0ce0294a98e30704baf9eaf7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>I am using Yocto since 1.0 release. I jump 1.1 release and no=
w tracking the master.<br><br>One of my custom recipes (<a href=3D"http://v=
ia-image-st.bb">via-image-st.bb</a>) is to make a custom image (adding some=
 files). Example:<br>
<br><br><br>SRC_URI =3D &quot; \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 file://interfaces \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file:=
//snmpd.conf \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://snmp.co=
nf \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://syslog.conf \<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://ntpd \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://<a href=3D"http://syslog.lr">syslog.lr</=
a> \<br>
=C2=A0=C2=A0=C2=A0 &quot;<br><br>inherit core-image<br><br>ROOTFS_POSTPROCE=
SS_COMMAND_append =3D &quot;remove_packaging_data_files ; &quot;<br>ROOTFS_=
POSTPROCESS_COMMAND_append =3D &quot;setup_target_image ; &quot;<br><br>set=
up_target_image() {<br>
=C2=A0=C2=A0=C2=A0 mkdir -p ${IMAGE_ROOTFS}/opt/sistema/conf<br>=C2=A0=C2=
=A0=C2=A0 install -m 0644 ${WORKDIR}/interfaces ${IMAGE_ROOTFS}/etc/network=
/interfaces<br><br>=C2=A0=C2=A0=C2=A0 ...<br><br>}<br><br>When I run: bitba=
ke via-image-st:<br><br>install: cannot stat `/mnt/yocto/build/mst_1.2/tmp/=
work/qemux86-tp-linux/via-image-st-1.0-r1/interfaces&#39;: No such file or =
directory<br>
NOTE: package via-image-st-1.0-r1: task do_rootfs: Failed<br>ERROR: Task 8 =
(/home/joaohf/jhf/tropico/projetos/yocto-1.1tropico/meta-tropico/meta-viast=
/images/<a href=3D"http://via-image-st.bb">via-image-st.bb</a>, do_rootfs) =
failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 3192 tasks of which 3190 didn&#39;t need to =
be rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/joaoh=
f/jhf/tropico/projetos/yocto-1.1tropico/meta-tropico/meta-viast/images/<a h=
ref=3D"http://via-image-st.bb">via-image-st.bb</a>, do_rootfs<br>
<br><br>I think this commit <a href=3D"http://git.yoctoproject.org/cgit/cgi=
t.cgi/poky/commit/meta/classes/image.bbclass?id=3D6706c7bdd2de6e0e447d90062=
e74a718a8d31778">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta=
/classes/image.bbclass?id=3D6706c7bdd2de6e0e447d90062e74a718a8d31778</a> th=
e others task doesn&#39;t perform.<br>
<br>The main question is: How I can create a recipe to customize some files=
 inside of the image?<br><br>I need to have a recipe like base-files? (reci=
pes-core/base-files/<a href=3D"http://base-files_3.0.14.bb">base-files_3.0.=
14.bb</a>) <br>
<br>Or other way?<br><br>Currently my recipe is based on <a href=3D"http://=
git.yoctoproject.org/cgit/cgit.cgi/meta-demo/tree/images/demo-image-nas.bb"=
>http://git.yoctoproject.org/cgit/cgit.cgi/meta-demo/tree/images/demo-image=
-nas.bb</a>. I think that <a href=3D"http://demo-image-nas.bb">demo-image-n=
as.bb</a> will not work too.<br>
<br>Thanks.<br><br>-- <br>-------------------------------------------------=
----------<br>Jo=C3=A3o Henrique Freitas - <a href=3D"http://joaohf_at_gmai=
l.com">joaohf_at_gmail.com</a><br>Campinas-SP-Brasil<br>BSD051283<br>LPI 1<=
br>
<a href=3D"http://www.joaohfreitas.eti.br">http://www.joaohfreitas.eti.br</=
a><br>

--000e0ce0294a98e30704baf9eaf7--
