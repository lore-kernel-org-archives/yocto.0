Received: from sonic311-23.consmr.mail.ne1.yahoo.com (sonic311-23.consmr.mail.ne1.yahoo.com [66.163.188.204])
 by mx.groups.io with SMTP id smtpd.web12.52136.1629277685011026729
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 02:08:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=SXeOHrha;
 spf=neutral (domain: yahoo.com, ip: 66.163.188.204, mailfrom: fransmeulenbroeks@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629277684; bh=qRu5xIxJt2KPTeMhWxOldjGKiLVcef9hhdL1a/x4SPM=; h=Date:From:To:Subject:References:From:Subject:Reply-To; b=SXeOHrha0P/1+UDJQS/CIsHkhbTXJcoCe5N5UA3dLpx2fPb5pR/+1OHg2ggmVvMILQBcYlBTvvAFA+w+atJynCuRx/XKIOdhh55cRxbu1+TIcU0EVjNRkKmwsFIMpfOtqFw/saMZIXtXjbfBvFzMmLuZ7hzeQcuj60vv2+esLvtSwGNbWkVkEtpLSW4uZeoNyqf5w+YUhvaghEQ/6Uy8myuaXBmIHlBQFFmlikYcs21gJ7yvhSEipylMouUEbH7gUXz+GBqd6vYRXvk+OM++FOKSaJ3ROszDxUIpS63Xz4RDcOdiZ5bVSfKRLxYJK7qxefxAYZspigs3jyzmGZf+RQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1629277684; bh=Vz91PTZwmeu2rVi/eSmTEa+8fZRZ3i3x3eGDcrH1tUU=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=DH2fXXBEiDSB8obbpaBP+bYxdLGjqu6363RyMJo8Zz2Ip1de9Shih+UhO31wIloaRS4EdH0tfI2uUtT58rP/OOJmLRFzKCdbQzhqofKHa06q2V2VtosahFAn877oneTQeE32muVUYVeB140nYDOgyYA52cpBFRELAk+u6vEydHqoDJ9ZBX70FVxPyHeumkjDShL/17qf/aCRjO3tPB1B2PvWnpR2SHpTPV2bkCyqjJNp7hxGR3JkltRIGcmX6L1H8rChn4Nx0x/IaFNDM3bgIZezEgJfIL1AUZTh79p+zpnOZ3vd2kmE4Ciwp8BE8QeBoiyX5KogNSzCx9NlIZa9JQ==
X-YMail-OSG: 0lOttKwVM1mS76_kpEs04E590bWFIDJJYwPc2M5El0WXS2ByecRHypGrVa.aHk7
 VhWgfuZddtt9AMahVPBWQ6cUOpL_YKijzIsCbVRh4KZpJEv6TOE.TupqJL7V_glh6cLfbfAf7Geg
 ZIYbBBkAcT5vw75DSAV.wTxMCFIlehr5bgEoOMa38hJ1peqHQP9eDtw0ARekjulDdzXEA66NPzRC
 S0cREkvJ5qfHEZzfxWijtPEiu5lPa2eny4Abpj699NrvpbvlWVLuuTujrS6rLmvmJJDUG2ZTrPgB
 HDNm0Byd0EeZ_n9vYPGyZiYTNAwU79vEFiJSdfJtBsus_XdLsYKAmwkTCa25uLm3t6JXsDkPEj9H
 3ZZxNV94Z272IHONwMFI0m.3D4tWhEfzMtrx_ems28qdGdJDAki5LJTNYx_Th_zqnBskxRPbqU5y
 f9TGiTNn7zdyM31lmBspC0iVJfCqqf.c3PCRmfrzdlH8QRJjOi5XQPiuq1dlJCB5vvndZC72WB9D
 yWJZFFpTBF9QoHDF4qXAh8Q_3D6MfqClaGLqHoJ6YWaz8I0cgSA3DVXBmLPlskrVz.M5q.eoO8I2
 Z1KfpgUMhqUp8s2Iev7fRGWipYFYHP3T_t19_77Ria0f_bKcxhXJttGvYidvC96VlVC4UHfGZXFu
 JKGnFCVF9ZmO9cuJqjNijlvlz0zVH1FQ2x5Odd6S5WDGzsQoMlNl7NdaSiHU5m1Z_OIAd3Vr5RCl
 6uButU1WEvD9sEKHKokgFqetCXZmWefT34pyJtzYkL63GmF0kvqFDyFu7DTggo4W.wzQDskNsh08
 oXy8ikVxPhsd7ehMGmpBQni9n5F2crhLMOx0YFyxH_7dQAaj8nDiF14m_X2dxZaLKWAbDSWNHhZP
 _rl8lpG49uhYSq_x.9iUt63AwGVOmqcCL83HteFl.oulmrpwy41Xu3l6qNmuxmvifVDjgaNf3NgR
 Y2EpD.UnsGvVohwB_Z2CNVKS6hW1mHPEXrcM4lOxJPQdIxWUHKjOPaIvtZufRnZt0WjArHwElYFG
 noIA2zptdyM7WZE5FN8KqrX6ieWmKufXSzC3d3CadK8Ipj4ErYmw_UAL17G_aJaTEuR7OzP56Ypv
 QIrZIivtmM3L7YicOUIrxUKu9PFXcbk5slo6qliS40XFbiSbgKh7fgR0UZ_nXiU42gTsYUa31x95
 g22EQaWlUyXOlSzkQ_pJcGbnMk4XsfmH72wzF7pw7HFX1nYtIKCDalGta8GMDyZDYV1EMpojna7d
 4RDBooHYnaotSpRjNR6aVYO.qUnfpjbpvJnA1VvJ3Sga6vk1nyOJTH2xowxPfTezUZpMS.hEsJ62
 AhQx9tSAkB7JiuRIRBZpNOhFLM8owBBoSCNMHP9LocKjCKmx_RTqeV8OpOIg1TM0K.qCADsSY1Pw
 qGxEDbFGBwjykPsuSkFcKMisRVJO1ln6rN3AgM5jl4_l6vwedf7DOrEFqO5.ddFezOl7pHCpacKu
 9Da4FFyi3.HC7RbIi7sS7dG4iuolrPwp_oUVe1sQCJ9Dr_cP7I3AfvF6PoT6PRXiBXqiQv6I29gQ
 fTWCFieME6YA20fCqaI0j48ds1gZAbReAqsthR_vgQWpMGfrHXTKy0JwwPIIKeVVAKhsBY82vgXp
 .BCzBDiYpLZUYjbDWX82Pa7t0Jue_kVCm9iFNdaWLOj5pp8LB7S7aZEa5lWbQYQcqS4DBaqYY8BJ
 bDmq8IwYvsIL9ims0tVy06Gu3m.qr1KG8iWojvI0avycgrhLAXLjX8WxFTD.paGqYsT2w4Z97JAL
 GrvEUwUXL8m5O18R60LTA1jM9P7.n2uIvie8rlxAEqtAt89s3KCdh2lSIQtmC3cFzgadg8.KvbhY
 srOfJfTUcC.XksZvT.q9vC4JtGq13aWDYFXn02_iqJSR4ufZbt7ILg8em2D3oZWBxmWS5YftB6Jg
 PlJbxbKbirmkcbI_ehr4dGnqjbwX2bDyVkuYJ8Hmez3j.6Xg4kl__pE6Vk2ugZ4LDuC0.HHBDRZM
 Nf2ujHgaDiPqKm_21I5kjqMRytVnbxV15LFmGw2RjZ.wrE8m4nYk78.S4Wb4TMUVvD._M4KIyHo3
 Mfv_qkvw5ZVtynXTmRwZhhKiX6lnaYfF7qJUSPkwrMif3b3m70nWN04TH9Kp6goipKcZeeVW_86l
 NoT2O5o501eRoABGWiN1HVgk7UyXTE_m4pXWEf50k8Npn0l7bes8cCi.uit2oRWVca7BnyB3XQsK
 7cYHqDpvoPYWf7kS94Bh3NP0SEd0m2Xa3NpYphAqs0ZqOXqm_.YfiZrFikN5kOples4xkX1iCCB2
 aPvdvPKG3exEeCpD8B7c60g--
X-Sonic-MF: <fransmeulenbroeks@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.ne1.yahoo.com with HTTP; Wed, 18 Aug 2021 09:08:04 +0000
Date: Wed, 18 Aug 2021 06:23:27 +0000 (UTC)
From: "Frans Meulenbroeks" <fransmeulenbroeks@yahoo.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <560218609.1701935.1629267807962@mail.yahoo.com>
Subject: Weird bitbake generation behavior
MIME-Version: 1.0
References: <560218609.1701935.1629267807962.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.18850 YMailNorrin
Content-Type: multipart/alternative; 
	boundary="----=_Part_1701934_1627084662.1629267807961"

------=_Part_1701934_1627084662.1629267807961
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
I share an sstate-cache with my fellow developers and I was assessing why s=
ometimes things got rebuild even though I did not expect this.One of the th=
ings I discovered was that we had two versions of of glog/0.3.5-r0 in sstat=
e.=20
The difference was caused run.do_configure where one user had this in run.d=
o_configure
do_configure() {
=C2=A0=C2=A0=C2=A0 cmake_do_configure
=C2=A0=C2=A0=C2=A0 # remove WORKDIR info to improve reproducibility
=C2=A0=C2=A0=C2=A0 if [ -f=C2=A0 "/workdir/build-nano/tmp/work/aarch64-sora=
ma-linux/glog/0.3.5-r0/build/config.h" ] ; then
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sed -i 's/'$(echo /workdir/build=
-nano/tmp/work/aarch64-sorama-linux/glog/0.3.5-r0 | sed 's_/_\\/_g')'/../g'=
 /workdir/build-nano/tmp/work/aarch64-sorama-linux/glog/0.3.5-r0/build/conf=
ig.h
=C2=A0=C2=A0=C2=A0 fi
}

whereas the other just had:
do_configure() {
=C2=A0=C2=A0=C2=A0 cmake_do_configure
}


The weird thing is that these two builds were about a day apart, they were =
build on the same system with as far as I know the same metadata, the same =
distro, the same image etc etcUser settings should also be the same (we bui=
ld under docker and I checked, we used the same version of ubuntu in the co=
ntainer (18.04). (Actually the containers were generated from the same Dock=
er file and docker inspect tells me the images are identical).
Anyone an idea how this happens and where that extra snippet comes from? (I=
 grepped for the string "reproducibility" in the bitbake folder, but that d=
id not help)BTW we're using dunfell
Thanks a lot, Frans

------=_Part_1701934_1627084662.1629267807961
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" data-setdir=3D"fal=
se"><br></div><div dir=3D"ltr" data-setdir=3D"false">I share an sstate-cach=
e with my fellow developers and I was assessing why sometimes things got re=
build even though I did not expect this.</div><div dir=3D"ltr" data-setdir=
=3D"false">One of the things I discovered was that we had two versions of o=
f g<span>log/0.3.5-r0 in sstate. <br></span></div><div dir=3D"ltr" data-set=
dir=3D"false"><span>The difference was caused run.do_configure where one us=
er had this in run.do_configure</span></div><div dir=3D"ltr" data-setdir=3D=
"false"><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false"><div dir=3D"ltr" data-setdir=3D"false"><div dir=3D"ltr=
" data-setdir=3D"false"><div>do_configure() {<br>&nbsp;&nbsp;&nbsp; cmake_d=
o_configure<br>&nbsp;&nbsp;&nbsp; # remove WORKDIR info to improve reproduc=
ibility<br>&nbsp;&nbsp;&nbsp; if [ -f&nbsp; "/workdir/build-nano/tmp/work/a=
arch64-sorama-linux/glog/0.3.5-r0/build/config.h" ] ; then<br>&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sed -i 's/'$(echo /workdir/build-nano/tmp/wor=
k/aarch64-sorama-linux/glog/0.3.5-r0 | sed 's_/_\\/_g')'/../g' /workdir/bui=
ld-nano/tmp/work/aarch64-sorama-linux/glog/0.3.5-r0/build/config.h<br>&nbsp=
;&nbsp;&nbsp; fi<br>}<br><br></div><div dir=3D"ltr" data-setdir=3D"false">w=
hereas the other just had:</div><div dir=3D"ltr" data-setdir=3D"false"><br>=
</div><div dir=3D"ltr" data-setdir=3D"false"><div>do_configure() {<br>&nbsp=
;&nbsp;&nbsp; cmake_do_configure<br>}<br><br></div><div><br></div></div></d=
iv><div>The weird thing is that these two builds were about a day apart, th=
ey were build on the same system with as far as I know the same metadata, t=
he same distro, the same image etc etc</div><div dir=3D"ltr" data-setdir=3D=
"false">User settings should also be the same (we build under docker and I =
checked, we used the same version of ubuntu in the container (18.04). (Actu=
ally the containers were generated from the same Docker file and docker ins=
pect tells me the images are identical).</div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Anyone an idea =
how this happens and where that extra snippet comes from? (I grepped for th=
e string "reproducibility" in the bitbake folder, but that did not help)</d=
iv><div dir=3D"ltr" data-setdir=3D"false">BTW we're using dunfell</div><div=
 dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false">Thanks a lot, Frans<br></div></div></div></div></div></body></ht=
ml>

------=_Part_1701934_1627084662.1629267807961--
