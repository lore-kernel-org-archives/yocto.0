Return-Path: <saiprasad.b@pathpartnertech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 265F5E00A39; Tue,  9 Jun 2015 22:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
Received: from mail-yh0-f45.google.com (mail-yh0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEC56E00A25
	for <yocto@yoctoproject.org>; Tue,  9 Jun 2015 22:01:06 -0700 (PDT)
Received: by yhid80 with SMTP id d80so16106973yhi.1
	for <yocto@yoctoproject.org>; Tue, 09 Jun 2015 22:01:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=slgbKfMXTqdHJykpay+GzKaISM5Juo6/VFhInNh8BH8=;
	b=WsTSw9b5SGZj7gu9mPzRtkB6IrA86fQgbRwySweKKRyrh8e/ai1vchAwUT6Ou7blYa
	6uhLySVpufq3aOcWrVTfwsAkBU/4bXfVWdZ1t+sViDSJaSK4QS9jDSb5Y4GYO9t5tL+W
	bhxy0MtQt52S7znvpI2GPtYD+TP8lpo2VAQlcvZ04QWm7VroE2/2RDaOcEFlsLei39Zp
	h+yjDHAbzRJxudX+1G5fB7Lrl29YY03aqabys1SF4C0I/bF6Z/BUNvssa1OAP/Z2G1Se
	pu88MqVD9i8l7dxef38lguzj/17HYCo8NqfGYeMkic9T84tkzGaVftKFbMgMKzkjD/Iv
	nerA==
X-Gm-Message-State: ALoCoQmZZaN8PG3mUjqRMCWiZZ+v13ALPPO7eKnG0Sa/ERzZB+zErUzL2y9uNkrIkLAjywW+u0nZ
MIME-Version: 1.0
X-Received: by 10.170.51.209 with SMTP id 200mr1447509ykt.77.1433912465889;
	Tue, 09 Jun 2015 22:01:05 -0700 (PDT)
Received: by 10.37.117.69 with HTTP; Tue, 9 Jun 2015 22:01:05 -0700 (PDT)
Date: Wed, 10 Jun 2015 10:31:05 +0530
Message-ID: <CAJuK9Ta-4bgWo9R0W=6p3z3SHfBiYgzH3Fm8i=VtXeZCTW1_Hw@mail.gmail.com>
From: Sai Prasad B <saiprasad.b@pathpartnertech.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 10 Jun 2015 08:01:56 -0700
Subject: Node.js dependency issues
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
X-List-Received-Date: Wed, 10 Jun 2015 05:01:09 -0000
Content-Type: multipart/alternative; boundary=001a1137d56c2b325d051822c310

--001a1137d56c2b325d051822c310
Content-Type: text/plain; charset=UTF-8

Hi ,

   I hope this is correct place for my doubts on yocto. If not please
ignore this mail.

   I am trying to install node.js on yocto. I added the nodejs recipe and
when i do bitbake an rpm package is generated, but when i try to install it
i see that there are lot of dependency issues and hence the installation is
failed. Please find the error logs as below.

   error: Failed dependencies:
        libgcc1 >= 4.7.2 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libssl1.0.0 >= 1.0.1e is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libdl.so.2(GLIBC_2.4) is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libm.so.6(GLIBC_2.4) is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libgcc_s.so.1 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libpthread.so.0(GLIBC_2.4) is needed by
nodejs-0.10.25-r7.armv7a_vfp_neon
        curl is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libstdc++.so.6 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libcrypto.so.1.0.0 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
        libgcc_s.so.1(GCC_3.5) is needed by nodejs-0.10.25-r7.armv7a_vfp_neo


Any help would be really grateful.

Thanks and Regards,
Sai

--001a1137d56c2b325d051822c310
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi , <br><br></div><div>=C2=A0=C2=A0 I=
 hope this is correct place for my doubts on yocto. If not please ignore th=
is mail.<br><br></div>=C2=A0=C2=A0 I am trying to install node.js on yocto.=
 I added the nodejs recipe and=C2=A0 when i do bitbake an rpm package is ge=
nerated, but when i try to install it i see that there are lot of dependenc=
y issues and hence the installation is failed. Please find the error logs a=
s below. <br><br>=C2=A0=C2=A0 error: Failed dependencies:<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libgcc1 &gt;=3D 4.7.2 is needed by nodejs-0.=
10.25-r7.armv7a_vfp_neon<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libs=
sl1.0.0 &gt;=3D 1.0.1e is needed by nodejs-0.10.25-r7.armv7a_vfp_neon<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libdl.so.2(GLIBC_2.4) is needed =
by nodejs-0.10.25-r7.armv7a_vfp_neon<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 libm.so.6(GLIBC_2.4) is needed by nodejs-0.10.25-r7.armv7a_vfp_ne=
on<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libgcc_s.so.1 is needed by=
 nodejs-0.10.25-r7.armv7a_vfp_neon<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 libpthread.so.0(GLIBC_2.4) is needed by nodejs-0.10.25-r7.armv7a_vfp=
_neon<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 curl is needed by nodej=
s-0.10.25-r7.armv7a_vfp_neon<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
libstdc++.so.6 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libcrypto.so.1.0.0 is needed by nodejs-0.=
10.25-r7.armv7a_vfp_neon<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 libg=
cc_s.so.1(GCC_3.5) is needed by nodejs-0.10.25-r7.armv7a_vfp_neo<br><br><br=
></div>Any help would be really grateful.<br><br></div>Thanks and Regards,<=
br></div>Sai<br><div><div><br></div></div></div>

--001a1137d56c2b325d051822c310--
