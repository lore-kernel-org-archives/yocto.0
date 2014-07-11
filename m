Return-Path: <lchristina26@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25944E003FA; Fri, 11 Jul 2014 14:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D3DE00342;
	Fri, 11 Jul 2014 14:47:13 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id at20so1438447iec.11
	for <multiple recipients>; Fri, 11 Jul 2014 14:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=k6GoWBNVp4n9XcXYYRal41MVbaQFAz64ovIiShiD7VE=;
	b=ONIiagA5jq2mT57H46ONKv+2IGkyLwawAMxQ4S4ejCT3ginOcg6vr1Qo5Jy+1ULmGn
	U81gKvpEJH4tqrdsmZnBnAiRpNYh1tyxqIUzElpLkP7Mkljw0KPEu2phOTh2jAu3MCCb
	LyLMV6AQ9WtBkPDLDMZAvcO2rai5EcvuZuZow6OU1Xg1+j2e1UQ5Kp1B40c5TxzGzPUE
	nmjIfKPTGkvxItV00SckkP8SggIepufk3p/EV3IoYOIDAaLGz72UJuEhf3hbgIWYsSrA
	GdU2LHzSTioub22M8d63TV8aMrbYbIXbDoQm0BfNS7ZHLG3gzb8gnoTK4Z0RGTV9ujCu
	29hA==
MIME-Version: 1.0
X-Received: by 10.50.225.98 with SMTP id rj2mr7876532igc.42.1405115233221;
	Fri, 11 Jul 2014 14:47:13 -0700 (PDT)
Sender: lchristina26@gmail.com
Received: by 10.64.11.102 with HTTP; Fri, 11 Jul 2014 14:47:13 -0700 (PDT)
Date: Fri, 11 Jul 2014 15:47:13 -0600
X-Google-Sender-Auth: b02-1wOZ9zxZieMv5uY0d8_61oo
Message-ID: <CAL0pqZ0JznEDkTPUG+fBQwf3BX_MbRbeCXbMFyJ4f98Py25b+w@mail.gmail.com>
From: Leah <leah@wolfssl.com>
To: yocto@yoctoproject.org, meta-intel@yoctoproject.org
Subject: CyaSSL library now available for use in Yocto Project
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
X-List-Received-Date: Fri, 11 Jul 2014 21:47:19 -0000
Content-Type: multipart/alternative; boundary=001a1132f1785840cf04fdf1e257

--001a1132f1785840cf04fdf1e257
Content-Type: text/plain; charset=UTF-8

CyaSSL lightweight SSL library is now available for use in Yocto Project
images! Check out our layer which we built and tested using the
Minnowboard:
http://yassl.com/yaSSL/Blog/Entries/2014/7/11_meta-wolfssl_Layer_for_Yocto_and_OpenEmbedded.html


-- 

Leah Thompson
www.wolfssl.com
leah@wolfssl.com
406-570-1389
Skype: lchristina26

--001a1132f1785840cf04fdf1e257
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">CyaSSL lightweight SSL library is now available for use in=
 Yocto Project images! Check out our layer which we built and tested using =
the Minnowboard: <a href=3D"http://yassl.com/yaSSL/Blog/Entries/2014/7/11_m=
eta-wolfssl_Layer_for_Yocto_and_OpenEmbedded.html">http://yassl.com/yaSSL/B=
log/Entries/2014/7/11_meta-wolfssl_Layer_for_Yocto_and_OpenEmbedded.html</a=
><br>
<div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div><div><div><p></p>Le=
ah Thompson<br></div><a href=3D"http://www.wolfssl.com" target=3D"_blank">w=
ww.wolfssl.com</a><br></div><a href=3D"mailto:leah@wolfssl.com" target=3D"_=
blank">leah@wolfssl.com</a><br>
406-570-1389<br></div>Skype: lchristina26<br><div><div><br><br></div></div>=
</div></div></div>

--001a1132f1785840cf04fdf1e257--
