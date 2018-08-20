Return-Path: <bernardoaraujor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEDCCE00BC0; Sun, 19 Aug 2018 17:33:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bernardoaraujor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3552E00874
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2018 17:33:37 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id z8-v6so14502102qto.9
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2018 17:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qmBq48UFEIeTiUvnDbOyleQx4ay32ihPeSIQG4BADjM=;
	b=izYIIK5R5W9pkzVvfwNL61nfipLHr7o+uiysyNQTNfeQqDSE89xIv+iaw1vH/VUdVL
	T0NWgSNbswv00Ro8mFP4owD5evGCj6NBTDYkLfb0Pm5O7kOqdjitAwgC+Zy29QWKTzTm
	C14ayw4Rd3M/iDhhgj29mfi1n0zfGNVD6t8AOVWy6hEDN6Uvegwvej4AxVOYUD5ArSNd
	l9E2lEsE1jGtmFfbliPgF0FF6XlzjT9HrR6+MqCos5i7J/gy5rhZKfWSIr/XhA/jAf3X
	WMqJpTAkBYj0oAZLLtLcZeSd1OXd1wkVQRjFJKq9FuxqFFwO4DT4O/KvbDbuAc6l0Jq5
	DRHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qmBq48UFEIeTiUvnDbOyleQx4ay32ihPeSIQG4BADjM=;
	b=GasgtsvQJQCU+glARyaiocJVbe3oGADCyBL51rqFbTx73jaV5YH1wnzlTg/Q+tT05U
	lIco48bhLjaqOg+uFLckGSyhbnk0PWXy+dOs/nMHzqKJhLr/fQRDv4jzvmHMusWBIR8j
	KS+pJyDI8V6cwAappZlfxmHqiBUkISi0oSIz/BXft4WoLI8jpMqovpoFOCLKfYS4ZRmy
	WtuKJXMrhdDxqmdLH/T0jQePt/bWPpW0k8/ENu9c6BEivivyJBzPH/fJErRX/FesyxWp
	SVXQ4LIS5OxRKOVTpz1ZodJYfKwV5FZSB4XgB11K2H0h1tND40bG0v3DELRygPBzb7kQ
	vzQw==
X-Gm-Message-State: AOUpUlHL4f3FpggtkGnBz0qtgMcCjNel+hZtHdSWet6I7I46EuQsYuc3
	7LTTQjzxeoCMXzz4Dzi7gi4HsvTA56lWX9nkSt9ChmuY
X-Google-Smtp-Source: AA+uWPzRsSSQDAq0jqBv+RErFpvL37xc0z0EhKmNtH1bEZlsy1IR2Fnim3vARM5P7rCXwCmxUNH3fHj6o7M3rkn9bi0=
X-Received: by 2002:ac8:21d2:: with SMTP id
	18-v6mr43366455qtz.70.1534725216511; 
	Sun, 19 Aug 2018 17:33:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9aec:0:0:0:0:0 with HTTP; Sun, 19 Aug 2018 17:33:16
	-0700 (PDT)
From: bernardo araujo rodrigues <bernardoaraujor@gmail.com>
Date: Sun, 19 Aug 2018 21:33:16 -0300
Message-ID: <CAO7XzZZTV26E-Ek+YbTG-MuNpFU9KWOKMATyk_4iCnX7236j9g@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 20 Aug 2018 01:04:39 -0700
Subject: PyBuild based OpenEmbedded/BitBake recipe
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
X-List-Received-Date: Mon, 20 Aug 2018 00:33:38 -0000
Content-Type: multipart/alternative; boundary="0000000000005bab2a0573d30f3a"

--0000000000005bab2a0573d30f3a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey everyone.

I need to port PhantomJS <https://github.com/ariya/phantomjs> to be cross
compiled inside the OpenEmbedded/BitBake system.

Looking at PhantomJS' github repo (https://github.com/ariya/phantomjs), I
realized it's a PyBuild based project. However, I couldn't find any BitBake
class like the setuptools or pypi that would support the build.py script.

Does anyone know whether porting PyBuild projects to BitBake is even
possible? If not, why?
Regards,
Bernardo Araujo Rodrigues

Electronics Engineer | Engenheiro Eletr=C3=B4nico
Electrical and Computer Engineering Masters Candidate | Mestrando em
Engenharia El=C3=A9trica e de Computa=C3=A7=C3=A3o.

Mobile | Celular: +1 626 545 6598
Skype: bernardoaraujor44
GitHub: https://github.com/bernardoaraujor
LinkedIn: https://www.linkedin.com/in/bernardoaraujor/
ResearchGate: https://www.researchgate.net/profile/Bernardo_Rodrigues3

--0000000000005bab2a0573d30f3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-vote">Hey everyone.=C2=A0



</div><div><div class=3D"gmail-votecell gmail-post-layout--left">

            </div>

           =20
<div class=3D"gmail-postcell gmail-post-layout--right">
    <div class=3D"gmail-post-text">

<p>I need to port <a href=3D"https://github.com/ariya/phantomjs" rel=3D"nof=
ollow noreferrer">PhantomJS</a> to be cross compiled inside the OpenEmbedde=
d/BitBake system.</p>

<p>Looking at PhantomJS&#39; github repo (<a href=3D"https://github.com/ari=
ya/phantomjs">https://github.com/ariya/phantomjs</a>), I realized it&#39;s =
a PyBuild based project.
However, I couldn&#39;t find any BitBake class like the setuptools or pypi =
that would support the build.py script.</p>

<p>Does anyone know whether porting PyBuild projects to BitBake is even pos=
sible? If not, why?</p>
    </div></div>Regards, <br><div class=3D"gmail_signature"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Bernardo Araujo Rodrigues<div=
><br><div>Electronics Engineer | Engenheiro Eletr=C3=B4nico</div><div>Elect=
rical and Computer Engineering Masters Candidate | Mestrando em Engenharia =
El=C3=A9trica e de Computa=C3=A7=C3=A3o.</div></div><div><br></div><div>Mob=
ile | Celular: +1 626 545 6598</div><div>Skype: bernardoaraujor44</div><div=
>GitHub:=C2=A0<a href=3D"https://github.com/bernardoaraujor" target=3D"_bla=
nk">https://github.com/bernardoaraujor</a></div><div>LinkedIn:=C2=A0<a href=
=3D"https://www.linkedin.com/in/bernardoaraujor/" target=3D"_blank">https:/=
/www.linkedin.com/in/bernardoaraujor/</a></div><div>ResearchGate:=C2=A0<a h=
ref=3D"https://www.researchgate.net/profile/Bernardo_Rodrigues3" target=3D"=
_blank">https://www.researchgate.net/profile/Bernardo_Rodrigues3</a></div><=
/div></div></div></div></div></div>
</div></div>

--0000000000005bab2a0573d30f3a--
