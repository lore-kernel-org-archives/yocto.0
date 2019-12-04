Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.786.1575419078419724966
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 16:24:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=hLIKwKPi;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12139E00EBF; Tue,  3 Dec 2019 16:24:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.130.125 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic316-15.consmr.mail.bf2.yahoo.com (sonic316-15.consmr.mail.bf2.yahoo.com [74.6.130.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54399E00EBB
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 16:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1575419074; bh=uDJLyWbtuU+KSXvDCjGLjV7jurFMx3leIqOykMGpfoI=; h=Date:From:To:Subject:References:From:Subject; b=hLIKwKPiBQUzvh5j9VrrtjVGPByoDhy7M/2toTiZbE42aeTafMlvBbVBfODO/Qhlgp1CYejTECg1CvBncCb4dZeKovBaHzlz10lKiA8K5VoPYlImdoaXvQpQDtZHYCDIp82hHOBMXJkWk2ky4ZeTQ3Z5hzNsmjomIY5lACiKAkKPdlC/g61Zm3wn+oNm9KIKSLcu7jZLtPly4z5WI4+knc/Sr0naZyQKDVklCkUt/7kmNFOthhlEnRdR9Z+exfIp9tMKmKzk04Vb/Yk8P+rSPtXAYhCddkI9pggtfqJ9To6qeRXuabXZkGM35fBjY5voWRqUAlPDq6ihC7nbX9bIfA==
X-YMail-OSG: TC9wVfsVM1nU668YOy6hxg3tmcUTiNULuTyiObKmUfa0y75WeRHnNpRLcqu1qR1
 Z9QXwiJSqKZSgQpq_zLer.EQz3TkL1Uu0hD85Xn1jACrbobbmrnlLjE2nfA3TJew.Lj2OiXj0lGZ
 OB8dibTV4lxD4Ke.4gjOuYcJcZoa3i1ru7ab.92xfyTo8mBpESVh0Uxk3ZNq8tGRVrXAaAUtm.1d
 4RIgSl.Nk3vf6gh0RnHDVKJ4gvJAcACeL9Ngp0t5s2VzOg3_jTCfsJ4PXhEE8wotlLmCswsAkSxH
 1Y9JIx0bwxlB24Ol0PYJr_yQI35RpfH35jwOm6AJr0ZLU9G764Qg.EUz3SA9jL9CKOFsaPhTludx
 fj5SBCsdkU6dIhnrzK1tjwGEAglAwHQyWwAnuk_KjlwkvbSoYwe.Kpx2d_.Ss9m69QxHJWHPUKIk
 i6PbGoNMseVUbo3DoYkeVQwPWdqIlOxpxTV0_04ZxK96NXEZJZU_DvGALuUudiElRgHoBPb48kPc
 uVWCGqdSF.CypmaqVRWv7GB4R3n6I5XW_ePGCCpyuwJGFdrzQ.KFUdTiu_zl5EVaKHkje3FHVqew
 XPfiyafZUmsF9GjiYwL6e.mAmOfJbq2rlo77ln59JPFSl3IoH9PgXSUbLpx5R6H_w1doD0JaRGM8
 5KyVWP096NEGqKM_WXGmAyS3OEckEIsoFbcjmzmwsevU.6MBDIP0HgumAFzkM.ogNQVx6Onef8Zt
 7ACYBVDH3Ez0x7tp1iLDM._9a85j4Ag_LcE5GJCW4hPQ7qr8nlvPChsYmQeLlR1XjmoX57yFMeSJ
 Sgz1A7YPrnSXQ9BWFVBPUSIFXrYW8hjnV9OcCaBrzBx7NNKnfZGrHDttGw9IHnyEYSR5jv.kVPMY
 prXCjkeUl_aQofZadkkK3e0dzeMZ4peiDjj258VII0hyXDcixdGsEBFe_59hFwLRaO9FCm4Vz3Va
 ptSeYL3Gl.uXtO9RyrVCgivcSVLIS.w4ZU6WMqoA6LGxh1kntZQGey3G5.frpp6Cpt9qIixMNmpe
 5GjpQT9FYjX3hA6WEeY3WoMwG9tqRJNYZfnU.gSB7C9cYarpveKt7bLnkPRKIJnci14M4GN9Uz94
 wek3XrhOr0YMZJOdtRNQfRfZfATU5kN1z_FpBx.GrcusnREsUDWYcS6U8aIiOqNrJ2hd9PODtwSZ
 JYe25DFQDVMrBa.EpWmH5qaM_CR16LvavPb1THaEMQ3Y05KgWPn1nK3jIQ7qSqOrgStxL7hYYCf8
 BZzpK5UibBW4uj7jSuKwvhRYnhs1O9V6kjjk3QkEl33uLvcrZV7Q40bvHEmZhCV3WiqfnkKCLyvv
 c68MmYTASznSwBDk0NWWc3Ic-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Wed, 4 Dec 2019 00:24:34 +0000
Date: Wed, 4 Dec 2019 00:24:31 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <477398133.5584303.1575419071624@mail.yahoo.com>
Subject: raspberry pi Rpi3 does not boot to login prompt.
MIME-Version: 1.0
References: <477398133.5584303.1575419071624.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_5584302_100273013.1575419071622"

------=_Part_5584302_100273013.1575419071622
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,I am testing a zeus rpi3.=C2=A0 Any and all help is appreciated.
I created a rpi2 core-image-minimal and built a micro sd card.which booted =
okay.I then modified the build/conf/local.conf file for a raspberrypi3.
The rpi3 core-image-minimal does not boot to login prompt.This is the outpu=
t as it is booting[=C2=A0 =C2=A0 =C2=A03.27169] lan78xx 1-1.1.1:-mdiobus: p=
robed[=C2=A0 =C2=A020.921838] raddom: crng init done[=C2=A0 =C2=A020.926490=
] radom: 3 urandom warning(s) missed due to ratelimiting
see the jpeg file doc/rpi3fails.jpeg in repo=C2=A0https://github.com/develo=
ne/raspberrypi2_yocto-zeus
devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/conf/local.con=
f raspberrypi3/conf/local.conf=C2=A039c39< MACHINE ??=3D "raspberrypi2"--->=
 MACHINE ??=3D "raspberrypi3"
devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/conf/bblayers.=
conf raspberrypi3/conf/bblayers.conf
Let me know if I can provide any additional information.
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_5584302_100273013.1575419071622
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf61a27c4yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div><div dir=3D"ltr" data-setdir=3D"false"><div><div dir=3D"ltr" dat=
a-setdir=3D"false">Hello all,</div><div dir=3D"ltr" data-setdir=3D"false">I=
 am testing a zeus rpi3.&nbsp; Any and all help is appreciated.</div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div>I created a rpi2 core-image=
-minimal and built a micro sd card.</div><div>which booted okay.</div><div>=
I then modified the build/conf/local.conf file for a raspberrypi3.</div><di=
v><br></div><div>The rpi3 core-image-minimal does not boot to login prompt.=
</div><div>This is the output as it is booting</div><div>[&nbsp; &nbsp; &nb=
sp;3.27169] lan78xx 1-1.1.1:-mdiobus: probed</div><div>[&nbsp; &nbsp;20.921=
838] raddom: crng init done</div><div>[&nbsp; &nbsp;20.926490] radom: 3 ura=
ndom warning(s) missed due to ratelimiting</div><div><br></div><div dir=3D"=
ltr" data-setdir=3D"false">see the jpeg file doc/rpi3fails.jpeg in repo&nbs=
p;<span><a href=3D"https://github.com/develone/raspberrypi2_yocto-zeus" rel=
=3D"nofollow" target=3D"_blank" class=3D"">https://github.com/develone/rasp=
berrypi2_yocto-zeus</a></span><div><br></div></div><div>devel@mypi3-15:~/ra=
spberrypi2_yocto-zeus $ diff raspberrypi2/conf/local.conf raspberrypi3/conf=
/local.conf&nbsp;</div><div>39c39</div><div>&lt; MACHINE ??=3D "raspberrypi=
2"</div><div>---</div><div>&gt; MACHINE ??=3D "raspberrypi3"</div><div><br>=
</div><div>devel@mypi3-15:~/raspberrypi2_yocto-zeus $ diff raspberrypi2/con=
f/bblayers.conf raspberrypi3/conf/bblayers.conf</div></div><br></div><div d=
ir=3D"ltr" data-setdir=3D"false">Let me know if I can provide any additiona=
l information.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div c=
lass=3D"ydpf61a27c4signature">Edward Vidal Jr. e-mail develone@sbcglobal.ne=
t 915-595-1613</div></div></div></body></html>

------=_Part_5584302_100273013.1575419071622--
