Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3649C19776
	for <webhook@archiver.kernel.org>; Wed, 26 Feb 2025 10:07:49 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.23])
 by mx.groups.io with SMTP id smtpd.web11.2568.1740564466704100134
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2025 02:07:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=r4EFO7so;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=XOMLHc31;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 85.215.255.23, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1740564463; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=dgbpo9hPpP4fp6UsD6Aq1/G+izPzJ0JkrU7Cmk8S2Qd2bgbe2p8jiwzZmwSI8hFxZ5
    rWfo2BzFA0ONbc2nKogHtDcl/US+2d8v/bM314zb/BGEXel7SZ/VjlLdBrhkho960uRS
    zuziReHU3eZwcOsncKG+Zb+rdvuojXwosInnwFhqd5RhuOsmlx1NY8PzUNfe7LEbwRa4
    SnPAnVuDODNA5BgsUlKIxkZl8c4yUZNjoS0dnSMsRWSbwY3Ol2H8ZmAXAcP1fHNL+6P1
    K+3Xm0uInruWm0Zf1/TntsCnovAgku3FmdfiGRznf/Kd0z+TKAmnM97/Zt1AqljvteZY
    4ucg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1740564463;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=NhaHOXMsUV6q6DzUrbtAMED4ffQP7jI3kj9hddcKKtA=;
    b=nDxLOUW+aYFHBucUhrS+yEg8+XjnLnaa4lMHB04dr8I5xh4h4d4NDb3KV1QEbr6jT+
    k0cu9Zyy7qu5WPHOQ/gE/engGbWu3JAIaNFdZEtaXEFh6+AFqDXVMZqWqzSBe8KJp9DF
    rU4EhxJIsssExQYbMOX5/JHtJl2P7Ica4+COHtmzZGf6XBHMswyyv2XxRAtPDfly16en
    ZVHTSdoBSwmI/64QtvWBfn+h22oyWtbKY7h8TQHKYzDqPC74W97tMUYaIIPc1qIxoHre
    HBdYt2h6xcIpSBlrltSn5aqB6S+DThrxoZYk709OhjkBTa9PFWu6b7bkz9kdvwJ1j0CW
    2dCg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1740564463;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=NhaHOXMsUV6q6DzUrbtAMED4ffQP7jI3kj9hddcKKtA=;
    b=r4EFO7so2XshiOtHOsfsHucfSeavvJHFRG01/DTPbT1JnK39A4yNi1iadrQNrOuNny
    2vIGXJGpe1ZRRBEXAzsVpPBdfIQgyqoEimhDzx6TpFN0acWrF39zRkb223VoT24S41Vl
    DJCKFCzYeFOBQDGEPFDrkmtvPzWELTOMhyl4b9ux+efvqHYTyse5Xds7xBiol0MAigjK
    ymQyUOC1SAB3XQme75w+ySNBoMNH290JLTLcdaLxLCS8unklDp/3zq2/VW8sISLL0BiR
    DbCdnLuSaVr8m/OSK0d0vGdzqa6WbUlngTnDs+eqw/yJvJB6CN2Xl6Q1xZzBFA3RS52G
    RaNg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1740564463;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Cc:Date:
    From:Subject:Sender;
    bh=NhaHOXMsUV6q6DzUrbtAMED4ffQP7jI3kj9hddcKKtA=;
    b=XOMLHc310wz3Sock4J2ZOl5nQINt3B4Ptth0hwZdtTIRZunY/xXiLNwhregLZUD3+3
    uUdWv8V3lDmj1pDqqEBQ==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7T1oMG+TLVuVbxkCQk4="
Received: from ox-live-app301.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.2.23 AUTH)
    with ESMTPSA id jfbddf11QA7hCoI
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Wed, 26 Feb 2025 11:07:43 +0100 (CET)
Date: Wed, 26 Feb 2025 11:07:43 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: yocto@lists.yoctoproject.org, alex.kiernan@gmail.com,
	"Alex Kiernan via lists.yoctoproject.org"
 <alex.kiernan=gmail.com@lists.yoctoproject.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	"Alexander Kanavin via lists.yoctoproject.org"
 <alex.kanavin=gmail.com@lists.yoctoproject.org>
Message-ID: <167856995.3098114.1740564463842@webmail.strato.de>
In-Reply-To: <CAO5Uq5SRGhgxeRBLJ-=hUZUJy5pauJCCMGqYQxcwqM1L3WYiJA@mail.gmail.com>
References: <751653524.2812887.1740495957756@webmail.strato.de>
 <CANNYZj9hSsTKV5PEHztiJ6z+9DBTaQTLzCor0K7xi4mfUq-m5Q@mail.gmail.com>
 <199985764.584582.1740550886762@webmail.strato.de>
 <CAO5Uq5SRGhgxeRBLJ-=hUZUJy5pauJCCMGqYQxcwqM1L3WYiJA@mail.gmail.com>
Subject: Re: [yocto] Yocto Dunfell - Modify OpenSSH configuration
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_3098113_1901967399.1740564463831"
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2025 10:07:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64877

------=_Part_3098113_1901967399.1740564463831
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,
=20
I=C2=B4ve checked "run.do_install" and the installation command is availabl=
e:
=20
install -d .../build/tmp/work/aarch64-tdx-linux/openssh/8.2p1-r0/image/home=
/root/.ssh
install -m 0600 .../build/keys/ssh/dev/id_hannah_ed25519.pub .../build/tmp/=
work/aarch64-tdx-linux/openssh/8.2p1-r0/image/home/root/.ssh/authorized_key=
s
=20
I also get a QA issue when I remove "FILES_{PN}" from the bbappend file and=
 the other commands from it were executed successfully. But the "authorized=
_keys" file is still missing. I=C2=B4ve changed the bbappend file in the fo=
llowing way
=20
SRC_URI +=3D " \
file://sshd_config \
"
=20
do_install_append () {
  install -m 0644 ${WORKDIR}/sshd_config ${D}${sysconfdir}/ssh
  install -d ${D}${ROOT_HOME}/.ssh
  install -m 0600 ${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_hannah_ed25519.pub ${=
D}${ROOT_HOME}/.ssh/authorized_keys
}
=20
FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"

> Alex Kiernan via lists.yoctoproject.org <alex.kiernan=3Dgmail.com@lists.y=
octoproject.org> hat am 26.02.2025 07:32 CET geschrieben:
> =20
> =20
> Where did you put your bbappend? If it's alongside the openssh recipe in =
core then it won't be parsed as the pattern there doesn't include *.bbappen=
d:
> =20
> https://git.openembedded.org/openembedded-core/tree/meta/conf/layer.conf?=
h=3Ddunfell#n4
>=20
> On Wed, 26 Feb 2025, 06:21 Daniel Kampert viahttp://lists.yoctoproject.or=
g , <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org mailto:daniel-kampe=
rt.de@lists.yoctoproject.org> wrote:
>=20
> > Hi Alex,
> >=20
> > I=C2=B4ve checked several files for informations.
> >=20
> > 1. log.do_rootfs: OpenSSH is added but I can=C2=B4t see anything about =
my modifications
> > 2. files-in-package.txt for aarch64-tdx-linux openssh gives me the foll=
owing output
> >=20
> > drwxr-xr-x root       root             4096 ./home
> > drwx------ root       root             4096 ./home/root
> > drwxr-xr-x root       root             4096 ./home/root/.ssh
> > -rw------- root       root              106 ./home/root/.ssh/authorized=
_keys
> >=20
> > 3. log.do_install doesn=C2=B4t list my file
> >=20
> > Do you have any other tips?
> >=20
> > Thanks!
> >=20
> > > Alexander Kanavin viahttp://lists.yoctoproject.org <alex.kanavin=3Dgm=
ail.com@lists.yoctoproject.org mailto:gmail.com@lists.yoctoproject.org> hat=
 am 25.02.2025 17:02 CET geschrieben:
> > >
> > >=20
> > > Either the needed changes aren't being packaged correctly (check
> > > ${WORKDIR}/packages-splt for openssh recipe), or the needed package
> > > isn't being installed into the image (check
> > > ${WORKDIR}/temp/log.do_rootfs for the image).
> > >
> > > Alex
> > >
> > > On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via
> > >http://lists.yoctoproject.org
> > > <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org mailto:daniel-kam=
pert.de@lists.yoctoproject.org> wrote:
> > > >
> > > > Hi,
> > > >
> > > > I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add an=
d modify the OpenSSH configuration. So I=C2=B4ve added "recipes-connectivit=
y/openssh/openssh_%.bbappend" with this content
> > > >
> > > > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > > >
> > > > # Apply the SSH configuration
> > > > # - Disable password authentication
> > > > # - Disable X11 forwarding
> > > > # - Enable public key authentication
> > > > do_install_append () {
> > > >   sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthentication yes:g=
' ${D}${sysconfdir}/ssh/sshd_config
> > > >   sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthentication n=
o:g' ${D}${sysconfdir}/ssh/sshd_config
> > > >   sed -i -e 's:^#ChallengeResponseAuthentication.*$:ChallengeRespon=
seAuthentication no:g' ${D}${sysconfdir}/ssh/sshd_config
> > > >   sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}${sysconfdir}/ssh/sshd_=
config
> > > >   sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g' ${D}${sysconf=
dir}/ssh/sshd_config
> > > >
> > > >   install -d 0700 ${D}${ROOT_HOME}/.ssh
> > > >   install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed25519.pub"=
 ${D}${ROOT_HOME}/.ssh/authorized_keys
> > > > }
> > > > FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
> > > >
> > > > And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp ope=
nssh-sftp-server" to my OS configuration. The generated image contains Open=
SSH (I=C2=B4ve checked the version) but no authorized_keys or modified conf=
iguration.
> > > >
> > > > What is wrong here?
> > > >
> > > > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> > > >
> > > > Ing. Daniel Kampert, M. Sc.
> > > > Embedded Systems Solutions
> > > > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > > > Phone: +49 (0)174 6932561
> > > > E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
> > > > Web:http://www.daniel-kampert.de
> > > >
> > > >
> > > >
> > >
> > >
> >=20
> > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> >=20
> > Ing. Daniel Kampert, M. Sc.
> > Embedded Systems Solutions
> > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > Phone: +49 (0)174 6932561
> > E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
> > Web: http://www.daniel-kampert.de (https://www.daniel-kampert.de)
> >=20
> >=20
> >=20
> >=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64875): https://lists.yoctoproject.org/g/yocto/messag=
e/64875
> Mute This Topic: https://lists.yoctoproject.org/mt/111378266/9229641
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@daniel=
-kampert.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20
>=20
=20
Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
=20
Ing. Daniel Kampert, M. Sc.
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
Phone: +49 (0)174 6932561
E-Mail: kontakt@daniel-kampert.de mailto:kontakt@daniel-kampert.de
Web: www.daniel-kampert.de https://www.daniel-kampert.de

------=_Part_3098113_1901967399.1740564463831
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div>
   Hi Alex,
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I=C2=B4ve checked "run.do_install" and the installation command is avail=
able:
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   install -d .../build/tmp/work/aarch64-tdx-linux/openssh/8.2p1-r0/image/h=
ome/root/.ssh
   <br>install -m 0600 .../build/keys/ssh/dev/id_hannah_ed25519.pub .../bui=
ld/tmp/work/aarch64-tdx-linux/openssh/8.2p1-r0/image/home/root/.ssh/authori=
zed_keys
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">
   I also get a QA issue when I remove "FILES_{PN}" from the bbappend file =
and the other commands from it were executed successfully. But the "authori=
zed_keys" file is still missing. I=C2=B4ve changed the bbappend file in the=
 following way
  </div>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"default-style">=20
   <div class=3D"default-style">
    SRC_URI +=3D " \
    <br>file://sshd_config \
    <br>"
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    do_install_append () {
    <br>&nbsp; install -m 0644 ${WORKDIR}/sshd_config ${D}${sysconfdir}/ssh
   </div>=20
   <div class=3D"default-style">
    &nbsp; install -d ${D}${ROOT_HOME}/.ssh
    <br>&nbsp; install -m 0600 ${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_hannah_e=
d25519.pub ${D}${ROOT_HOME}/.ssh/authorized_keys
    <br>}
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
   </div>=20
  </div>=20
  <blockquote type=3D"cite">=20
   <div>
    Alex Kiernan via lists.yoctoproject.org &lt;alex.kiernan=3Dgmail.com@li=
sts.yoctoproject.org&gt; hat am 26.02.2025 07:32 CET geschrieben:
   </div>=20
   <div>
    &nbsp;
   </div>=20
   <div>
    &nbsp;
   </div>=20
   <div dir=3D"auto">=20
    <div>
     Where did you put your bbappend? If it's alongside the openssh recipe =
in core then it won't be parsed as the pattern there doesn't include *.bbap=
pend:
    </div>=20
    <div dir=3D"auto">
     &nbsp;
    </div>=20
    <div dir=3D"auto">
     <a href=3D"https://git.openembedded.org/openembedded-core/tree/meta/co=
nf/layer.conf?h=3Ddunfell#n4">https://git.openembedded.org/openembedded-cor=
e/tree/meta/conf/layer.conf?h=3Ddunfell#n4</a>
     <br>
     <br>=20
     <div class=3D"gmail_quote gmail_quote_container" dir=3D"auto">=20
      <div class=3D"gmail_attr" dir=3D"ltr">
       On Wed, 26 Feb 2025, 06:21 Daniel Kampert via <a href=3D"http://list=
s.yoctoproject.org">lists.yoctoproject.org</a>, &lt;kontakt=3D<a href=3D"ma=
ilto:daniel-kampert.de@lists.yoctoproject.org">daniel-kampert.de@lists.yoct=
oproject.org</a>&gt; wrote:
      </div>=20
      <blockquote>
       Hi Alex,
       <br>
       <br>I=C2=B4ve checked several files for informations.=20
       <br>
       <br>1. log.do_rootfs: OpenSSH is added but I can=C2=B4t see anything=
 about my modifications
       <br>2. files-in-package.txt for aarch64-tdx-linux openssh gives me t=
he following output
       <br>
       <br>drwxr-xr-x root&nbsp; &nbsp; &nbsp; &nbsp;root&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;4096 ./home
       <br>drwx------ root&nbsp; &nbsp; &nbsp; &nbsp;root&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;4096 ./home/root
       <br>drwxr-xr-x root&nbsp; &nbsp; &nbsp; &nbsp;root&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp;4096 ./home/root/.ssh
       <br>-rw------- root&nbsp; &nbsp; &nbsp; &nbsp;root&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; 106 ./home/root/.ssh/authorized_keys
       <br>
       <br>3. log.do_install doesn=C2=B4t list my file
       <br>
       <br>Do you have any other tips?
       <br>
       <br>Thanks!
       <br>
       <br>&gt; Alexander Kanavin via <a href=3D"http://lists.yoctoproject.=
org" target=3D"_blank" rel=3D"noopener">lists.yoctoproject.org</a> &lt;alex=
.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_b=
lank" rel=3D"noopener">gmail.com@lists.yoctoproject.org</a>&gt; hat am 25.0=
2.2025 17:02 CET geschrieben:
       <br>&gt;=20
       <br>&gt;&nbsp;=20
       <br>&gt; Either the needed changes aren't being packaged correctly (=
check
       <br>&gt; ${WORKDIR}/packages-splt for openssh recipe), or the needed=
 package
       <br>&gt; isn't being installed into the image (check
       <br>&gt; ${WORKDIR}/temp/log.do_rootfs for the image).
       <br>&gt;=20
       <br>&gt; Alex
       <br>&gt;=20
       <br>&gt; On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via
       <br>&gt; <a href=3D"http://lists.yoctoproject.org" target=3D"_blank"=
 rel=3D"noopener">lists.yoctoproject.org</a>
       <br>&gt; &lt;kontakt=3D<a href=3D"mailto:daniel-kampert.de@lists.yoc=
toproject.org" target=3D"_blank" rel=3D"noopener">daniel-kampert.de@lists.y=
octoproject.org</a>&gt; wrote:
       <br>&gt; &gt;
       <br>&gt; &gt; Hi,
       <br>&gt; &gt;
       <br>&gt; &gt; I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and w=
ant to add and modify the OpenSSH configuration. So I=C2=B4ve added "recipe=
s-connectivity/openssh/openssh_%.bbappend" with this content
       <br>&gt; &gt;
       <br>&gt; &gt; FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
       <br>&gt; &gt;
       <br>&gt; &gt; # Apply the SSH configuration
       <br>&gt; &gt; # - Disable password authentication
       <br>&gt; &gt; # - Disable X11 forwarding
       <br>&gt; &gt; # - Enable public key authentication
       <br>&gt; &gt; do_install_append () {
       <br>&gt; &gt;&nbsp; &nbsp;sed -i -e 's:^#PubkeyAuthentication.*$:Pub=
keyAuthentication yes:g' ${D}${sysconfdir}/ssh/sshd_config
       <br>&gt; &gt;&nbsp; &nbsp;sed -i -e 's:^#PasswordAuthentication.*$:P=
asswordAuthentication no:g' ${D}${sysconfdir}/ssh/sshd_config
       <br>&gt; &gt;&nbsp; &nbsp;sed -i -e 's:^#ChallengeResponseAuthentica=
tion.*$:ChallengeResponseAuthentication no:g' ${D}${sysconfdir}/ssh/sshd_co=
nfig
       <br>&gt; &gt;&nbsp; &nbsp;sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}=
${sysconfdir}/ssh/sshd_config
       <br>&gt; &gt;&nbsp; &nbsp;sed -i -e 's:^#X11Forwarding.*$:X11Forward=
ing no:g' ${D}${sysconfdir}/ssh/sshd_config
       <br>&gt; &gt;
       <br>&gt; &gt;&nbsp; &nbsp;install -d 0700 ${D}${ROOT_HOME}/.ssh
       <br>&gt; &gt;&nbsp; &nbsp;install -m 0600 "${TOPDIR}/keys/ssh/${DEPL=
OY_ENV}/id_ed25519.pub" ${D}${ROOT_HOME}/.ssh/authorized_keys
       <br>&gt; &gt; }
       <br>&gt; &gt; FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
       <br>&gt; &gt;
       <br>&gt; &gt; And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd ope=
nssh-sftp openssh-sftp-server" to my OS configuration. The generated image =
contains OpenSSH (I=C2=B4ve checked the version) but no authorized_keys or =
modified configuration.
       <br>&gt; &gt;
       <br>&gt; &gt; What is wrong here?
       <br>&gt; &gt;
       <br>&gt; &gt; Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
       <br>&gt; &gt;
       <br>&gt; &gt; Ing. Daniel Kampert, M. Sc.
       <br>&gt; &gt; Embedded Systems Solutions
       <br>&gt; &gt; Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deut=
schland
       <br>&gt; &gt; Phone: +49 (0)174 6932561
       <br>&gt; &gt; E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de" t=
arget=3D"_blank" rel=3D"noopener">kontakt@daniel-kampert.de</a>
       <br>&gt; &gt; Web: <a href=3D"http://www.daniel-kampert.de" target=
=3D"_blank" rel=3D"noopener">www.daniel-kampert.de</a>
       <br>&gt; &gt;
       <br>&gt; &gt;=20
       <br>&gt; &gt;
       <br>&gt;=20
       <br>&gt;=20
       <br>
       <br>Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
       <br>
       <br>Ing. Daniel Kampert, M. Sc.=20
       <br>Embedded Systems Solutions
       <br>Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
       <br>Phone: +49 (0)174 6932561=20
       <br>E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de" target=3D"_=
blank" rel=3D"noopener">kontakt@daniel-kampert.de</a>=20
       <br>Web:&nbsp;<a href=3D"http://www.daniel-kampert.de" target=3D"_bl=
ank" rel=3D"noopener">www.daniel-kampert.de</a> (<a href=3D"https://www.dan=
iel-kampert.de" target=3D"_blank" rel=3D"noopener">https://www.daniel-kampe=
rt.de</a>)
       <br>
       <br>
       <br>
       <br>
      </blockquote>=20
     </div>=20
    </div>=20
   </div>=20
   <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
   <br>Links: You receive all messages sent to this group.
   <br>View/Reply Online (#64875): https://lists.yoctoproject.org/g/yocto/m=
essage/64875
   <br>Mute This Topic: https://lists.yoctoproject.org/mt/111378266/9229641
   <br>Group Owner: yocto+owner@lists.yoctoproject.org
   <br>Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@d=
aniel-kampert.de]
   <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
   <br>
   <br>
  </blockquote>=20
  <div class=3D"default-style">
   &nbsp;
  </div>=20
  <div class=3D"io-ox-signature">=20
   <div class=3D"default-style">
    Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
   </div>=20
   <div class=3D"default-style">
    &nbsp;
   </div>=20
   <div class=3D"default-style">
    Ing. Daniel Kampert, M. Sc.=20
    <br>Embedded Systems Solutions
   </div>=20
   <div class=3D"default-style">=20
    <div>
     Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
     <br>Phone: +49 (0)174 6932561=20
     <br>E-Mail: <a href=3D"mailto:kontakt@daniel-kampert.de">kontakt@danie=
l-kampert.de</a>=20
     <br>Web:&nbsp;<a href=3D"https://www.daniel-kampert.de">www.daniel-kam=
pert.de</a>
    </div>=20
   </div>=20
  </div>=20
 </body>
</html>
------=_Part_3098113_1901967399.1740564463831--

