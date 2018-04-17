Return-Path: <akshaya.cool.cool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CD33E00C5C; Tue, 17 Apr 2018 01:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akshaya.cool.cool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5BEAE009BC
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 01:05:52 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id q9-v6so25944071lfk.9
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 01:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Nm5LmBk4rmF797Q05mbq1Xt5cTPbC1qltdpUjvdHXSk=;
	b=fNmsNLr7Qvhtcib+QnNPXO9o/BbOHfzCisDpuh3fb6LtZ0JKy6SXWcJjb5W0e4ys2j
	sJHpxCBsL12gOzO7QaYRyYghlFLbDaVdrcb9Idd521kQIX7mGZWfvnQRu26xcw+qfEKs
	jO4wD1OLvmFUXUSa//qrRT1ysfro7DExH6dzOHkUH+glS/QbIuRTWKYWXGM+904cxAaw
	aqUncySt4B6BBQInG6sTw2DUnKwn53HU8daNRrGv4KgOT5sRpKs0mrrHO0XBIHLvdHqh
	F52V6sebTGSZ7GhC9Qxz4RXs455XPzWf35M3VDkmaU8nuAzVXlNG/h2h8EHPdWCfojrZ
	MaFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Nm5LmBk4rmF797Q05mbq1Xt5cTPbC1qltdpUjvdHXSk=;
	b=YnqzILp+XJXFfKs7SUkxi/tg5bDnR1KNjs2E4OHoiL5NLgDPeMKzq+skL414v/QEdz
	lY84+CzwA7YMBh/2arjU/K83IXfwbIuU739ZFHSMlG0GrySKFyo64dj3h/6u2urkXkFa
	yu7V4mj7pcsfEaWwRlRYWg2CuojewDgIRRN71DgNFxTcYtrC+ldQMmudzBIV1jB4HKC5
	ZoMaKv3VvTmURFJ8nSpGyqyN9D1bSwx4NYZAmy5BZ7PkHZ0MHWZAzVNfwzQfz4MK5kfc
	lz94WX0LPeSKYABxejYeeXzMRMVYwsD2VGbwauaOXZrcX0qoVMLALuBRiN3viy1bYDSX
	cyCg==
X-Gm-Message-State: ALQs6tAVthIt1i5ziJh7xwqFgABG+2i33l7t8KiKTU4xZqQNfS4aIWAO
	KjNWfqF6Yr2kPnFPBRbDbOs0U2625tpbIrr9Ugc=
X-Google-Smtp-Source: AIpwx48a5AUKRaLbjrC5jxH+9scqs8UssWLECF1qKNJcYZtN8T4R9px+hrBd+ow22ZOaUeIjFBYpiCfpYQvNRkwUY5M=
X-Received: by 10.46.2.143 with SMTP id y15mr754911lje.36.1523952351136; Tue,
	17 Apr 2018 01:05:51 -0700 (PDT)
MIME-Version: 1.0
From: akshaya dalu <akshaya.cool.cool@gmail.com>
Date: Tue, 17 Apr 2018 08:05:40 +0000
Message-ID: <CAJnnP-WR_cEiSaStPu-ePebg8-_vhFgfDOpWfzU+scqykwGM_w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Can't able to locate sysroot folder
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
X-List-Received-Date: Tue, 17 Apr 2018 08:05:53 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cde0a8b5266056a06cec7"

--94eb2c1cde0a8b5266056a06cec7
Content-Type: text/plain; charset="UTF-8"

Hello,
           I am very much interested to work in yocto project . As a
beginner I face some problems. Hope you give me a solution to my problem.
* My basic need : * I want to run a sample hello world program in qemulator
in eclipse IDE.
*Work done so far by me : *I referred yocto documentation and installed
Ubuntu 16.
After installing Ubuntu I installed eclipse wit all necessary package and
software.
To execute code in emulator I need sysroot and target tool chain location.
So I followed steps to install sdk installer  through bitbake
core-image-sato - c populate_sdk command and while running the installer or
. Sh file , environments setup was built in /home/poky/build/tmp/deploy
/sdk location. BUT THAT FILE WAS MISSING IN TAT LOCATION AND CAN'T ABLE TO
SOURCE THE ENVIRONMENT SETUP.   By mistake I have tried bitbake
core-image-sato - c populate_sdk_ext command also. Will it cause any
problems??? Can you   help me??

Thanks
Regards
Akshaya

--94eb2c1cde0a8b5266056a06cec7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0I am very much interested to work in yocto project . As a beginne=
r I face some problems. Hope you give me a solution to my problem.=C2=A0</d=
iv><div dir=3D"auto"><b>=C2=A0My basic need :=C2=A0</b>=C2=A0I want to run =
a sample hello world program in qemulator in eclipse IDE.</div><div dir=3D"=
auto"><b>Work done so far by me : </b>I referred yocto documentation and in=
stalled Ubuntu 16.</div><div dir=3D"auto">After installing Ubuntu I install=
ed eclipse wit all necessary package and software.</div><div dir=3D"auto">T=
o execute code in emulator I need sysroot and target tool chain location.=
=C2=A0</div><div dir=3D"auto">So I followed steps to install sdk installer=
=C2=A0 through bitbake core-image-sato - c populate_sdk command and while r=
unning the installer or . Sh file , environments setup was built in /home/p=
oky/build/tmp/deploy /sdk location. BUT THAT FILE WAS MISSING IN TAT LOCATI=
ON AND CAN&#39;T ABLE TO SOURCE THE ENVIRONMENT SETUP.=C2=A0 =C2=A0By mista=
ke I have tried bitbake core-image-sato - c populate_sdk_ext command also. =
Will it cause any problems??? Can you=C2=A0 =C2=A0help me??</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Thanks=C2=A0</div><div dir=3D"auto">R=
egards=C2=A0</div><div dir=3D"auto">Akshaya=C2=A0</div></div>

--94eb2c1cde0a8b5266056a06cec7--
