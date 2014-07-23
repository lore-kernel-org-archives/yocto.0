Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEA29E00576; Tue, 22 Jul 2014 20:20:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.30 listed in list.dnswl.org]
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1555DE00558
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 20:20:37 -0700 (PDT)
Received: from mail-lb0-f172.google.com ([209.85.217.172]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU88qBW9NSMj8bnRM6fh93Mi/RjCQ+QFc@postini.com;
	Tue, 22 Jul 2014 20:20:44 PDT
Received: by mail-lb0-f172.google.com with SMTP id z11so431858lbi.17
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 20:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=fQpfoFy/aP8JCD13eSGA2XMMTnm3aUvQ2oLeB/D80CA=;
	b=QHv+3/6aMriIexYR1zufOzB4zl9pmkbbvF24dwZYaXxN+SiLLzx/k4ZICLnctLbCSC
	84BkLmY2/ZhXnqpnAd5EtRSUSkNcl1gmtNooenHzdniYH2EK030+fX5DwORMLjLi8Wie
	YnjL6haQXBj5MG4+dDdRnYPHdONb252+XiMLLaRqugiC7Cf0ZM43MhOtaYQMjAVqXT4F
	ASlUjXKRzhJs7S94VLcIITI5NiInybPuOZtckMsEb3tXmkDksrCxoKsnXhIPgeeZQ6Ga
	81nf+MsvCE5kDEUIH4kd4P0Vc0dqhA2dOtyMj2xSaAy+HbWWzvwBAAlRp5lBR8+sqR5V
	3oVA==
X-Gm-Message-State: ALoCoQlsA6s33ikZIaqbS0pCtsVwr04gDFb7dHZR6Cl/VzAhctEPlMH1ADj9zdxy/WBzj/OtRjZfJW3ToKrh29O8/NMZ+CE0HOIvzHKYjD513fld/CJ4scfdbrZMyDBjKkmxKGfrOWLR
X-Received: by 10.152.120.195 with SMTP id le3mr39205542lab.16.1406085635817; 
	Tue, 22 Jul 2014 20:20:35 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.152.120.195 with SMTP id le3mr39205520lab.16.1406085635422; 
	Tue, 22 Jul 2014 20:20:35 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Tue, 22 Jul 2014 20:20:35 -0700 (PDT)
Date: Wed, 23 Jul 2014 11:20:35 +0800
Message-ID: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SDK not contianing archive libraries
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
X-List-Received-Date: Wed, 23 Jul 2014 03:20:46 -0000
Content-Type: multipart/alternative; boundary=089e01227abcd2dea204fed3d21c

--089e01227abcd2dea204fed3d21c
Content-Type: text/plain; charset=UTF-8

Good day,

I have bumped into a problem when compiling from my generated SDK (-c
populate_sdk). I have archive libraries (.a) that were not reflected in my
SDK's lib dir in sysroots. However, my shared objects (.so) are present. I
needed both .a and .so to be present in my SDK. With the former being the
problem, how can archive libraries be included in SDK? I've checked in my
poky and all .a are installed successfully in tmp/sysroots.

Thanks,
Joseph

--089e01227abcd2dea204fed3d21c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day,<div><br></div><div>I have bumped into a problem =
when compiling from my generated SDK (-c populate_sdk). I have archive libr=
aries (.a) that were not reflected in my SDK&#39;s lib dir in sysroots. How=
ever, my shared objects (.so) are present. I needed both .a and .so to be p=
resent in my SDK. With the former being the problem, how can archive librar=
ies be included in SDK? I&#39;ve checked in my poky and all .a are installe=
d successfully in tmp/sysroots.</div>
<div><br></div><div>Thanks,</div><div>Joseph</div></div>

--089e01227abcd2dea204fed3d21c--
