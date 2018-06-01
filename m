Return-Path: <laurent.joli@kapelse.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56BECE00C4B; Fri,  1 Jun 2018 09:40:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [176.120.128.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 376 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jun 2018 09:40:39 PDT
Received: from stripper.pharmagest.com (stripper.pharmagest.com
	[176.120.128.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20A0E00AD8
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 09:40:39 -0700 (PDT)
Received: from 127.0.0.1 (localhost [127.0.0.1])
	by stripper.pharmagest.com (Postfix) with ESMTP id 858066B2316
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 18:34:22 +0200 (CEST)
X-MIB-FROM: laurent.joli@kapelse.com
X-MIBTO: BKix6Fn39KkNW6xZDl6cUwBEMlwkHw1v0T/KRO0nYQo=
Received: from localhost ([127.0.0.1])
	by stripper.pharmagest.com (MIBD SMTP Server 4.0.0000) with SMTP ID 675
	for <yocto@yoctoproject.org>; Fri, 1 Jun 2018 18:34:21 +0200 (CEST)
Received: from vm-shunter1-prd.sim.pharmagest.com
	(vm-shunter1-prd.sim.pharmagest.com [172.19.32.61])
	by stripper.pharmagest.com (Postfix) with ESMTP id 6646E6B229A
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 18:34:21 +0200 (CEST)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com
	(vm-zimbranemta1-prd.sim.pharmagest.com [172.19.32.35])
	by vm-shunter1-prd.sim.pharmagest.com (courriel) with ESMTP id
	2DC2F80AACE1
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 18:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	47F4A83058
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 18:34:21 +0200 (CEST)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10032)
	with ESMTP id HvxZ0BiT3rQS for <yocto@yoctoproject.org>;
	Fri,  1 Jun 2018 18:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	B864E83059
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 18:34:20 +0200 (CEST)
Received: from vm-zimbranemta1-prd.sim.pharmagest.com ([127.0.0.1])
	by localhost (vm-zimbranemta1-prd.sim.pharmagest.com [127.0.0.1])
	(amavisd-new, port 10026)
	with ESMTP id tzqg-CEebBxA for <yocto@yoctoproject.org>;
	Fri,  1 Jun 2018 18:34:20 +0200 (CEST)
Received: from vm-zimbranestore2-prd.sim.pharmagest.com (unknown
	[172.19.32.41])
	by vm-zimbranemta1-prd.sim.pharmagest.com (Postfix) with ESMTP id
	83D5183058
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 18:34:20 +0200 (CEST)
Date: Fri, 1 Jun 2018 18:34:20 +0200 (CEST)
From: Laurent JOLI <laurent.joli@kapelse.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <744580343.12524344.1527870860299.JavaMail.zimbra@kapelse.com>
MIME-Version: 1.0
X-Mailer: Zimbra 8.7.1_GA_1670 (ZimbraWebClient - FF60 (Linux)/8.7.1_GA_1670)
Thread-Index: BHaRWuDRxKKaTK4z5bRXELxPRF8FBQ==
Thread-Topic: Add --enable-speech-dispatcher
Subject: Add --enable-speech-dispatcher
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
X-List-Received-Date: Fri, 01 Jun 2018 16:40:41 -0000
Content-Type: multipart/alternative; 
	boundary="=_478c803d-8f17-4b06-b796-d2f45a5994a3"

--=_478c803d-8f17-4b06-b796-d2f45a5994a3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello, 

I work on the following context : 

qt: 5.9.2 
SRCREV_qtwebengine = "c11c2c8981e647c1eb2c6753ce77d436b92fff87" 
SRCREV_chromium = "cfe8c60903b327ac94406661350f4ac05aa8c21b" 

So, I use the layer of QT5 : 

https://github.com/meta-qt5/meta-qt5 

with the commit : bbb304456978fa9713932e9ff529d18a5ef2a947 

I can run correctly the browser : quicknanobrowser 

I also can run correctly speech-dispatcher with espak 

When running quicknanobrowser on website using web speech api, it does not work ( no voices listed, no audio output) even if web speech synthesis support seems to be detected. 

Does qtwebengine supports Web Speech API? 
If yes, how qtwebengine must be configured to support Web Speech Api (webrtc...)? 

Regards, 
LJO 

--=_478c803d-8f17-4b06-b796-d2f45a5994a3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: Arial, Helvetica, sans-serif; font-s=
ize: 10pt; color: #000000"><div>Hello,<br><br>I work on the following conte=
xt :<br><br>qt: 5.9.2<br>SRCREV_qtwebengine =3D "c11c2c8981e647c1eb2c6753ce=
77d436b92fff87"<br>SRCREV_chromium =3D "cfe8c60903b327ac94406661350f4ac05aa=
8c21b"<br><br>So, I use the layer of QT5 :<br><br>https://github.com/meta-q=
t5/meta-qt5<br><br>with the commit : bbb304456978fa9713932e9ff529d18a5ef2a9=
47<br><br>I can run correctly the browser : quicknanobrowser<br><br>I also =
can run correctly speech-dispatcher with espak<br><br>When running quicknan=
obrowser on website using web speech api, it does not work ( no voices list=
ed, no audio output) even if web speech synthesis support seems to be detec=
ted.<br><br>Does qtwebengine supports Web Speech API?<br>If yes, how qtwebe=
ngine must be configured&nbsp; to support Web Speech Api (webrtc...)?<br><b=
r>Regards,<br data-mce-bogus=3D"1"></div><div>LJO<br data-mce-bogus=3D"1"><=
/div></div></body></html>

--=_478c803d-8f17-4b06-b796-d2f45a5994a3--
