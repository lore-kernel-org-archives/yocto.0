Return-Path: <navani.srivastava@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A759CE0155E
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 07:28:12 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id v19so4638991obq.21
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 07:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zIq9fyuXSxdhuMSadAR4sYo04Y+lhKXF7vcFn2s1uIw=;
	b=xHkWwq/jbCuV7u4+7GW+Tr6+4SaHsACclnvKfodihgykRG+BEckInP/D50Bg1acwHZ
	Y9mAI95tmn4lzLvQiWLgkQurLiKJzOm/tIGGG02kEMea5qAzcXobR6PJGB6cp8XEJuV4
	zGn1zcHC6YeUyA2u61kPY4MKuoUpUVKQFASqDOdlxKAOCRR3IlkeqJY9MeGj7XDkhv3D
	FO4ej/Q4gHPB25o6iYwopBfgHai/HbDcKPfEyxTwHeUrv/ESOxJNev1o2aUxGEKlrlZw
	3WeRMI+wJIUGQtzV+ALTLz/oSgh7QijNdDfCRneNSyk5RXLcxGpCaaGcOCgXfMYULu/v
	giVg==
MIME-Version: 1.0
X-Received: by 10.60.145.239 with SMTP id sx15mr12140355oeb.57.1371565692388; 
	Tue, 18 Jun 2013 07:28:12 -0700 (PDT)
Received: by 10.182.221.5 with HTTP; Tue, 18 Jun 2013 07:28:12 -0700 (PDT)
Received: by 10.182.221.5 with HTTP; Tue, 18 Jun 2013 07:28:12 -0700 (PDT)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE1BA55B7D@POCITMSEXMB05.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1BA55B7D@POCITMSEXMB05.LntUniverse.com>
Date: Tue, 18 Jun 2013 19:58:12 +0530
Message-ID: <CA+Z6RkWkUiy0omM_fYteVco1r_RQTbJdRpoqURrvrTAbB4ACgA@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Qt build error for Debug and Release mode
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
X-List-Received-Date: Tue, 18 Jun 2013 14:28:13 -0000
Content-Type: multipart/alternative; boundary=047d7b5d474ee18f2404df6e85a5

--047d7b5d474ee18f2404df6e85a5
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I am using poky-danny (Poky-8.0). I am facing problem in building Qt
application.

 When we are building Qt application with =93qmake CONFIG+=3Ddebug && make=
=94 it
appends =93-g=94 to build the application in debug mode but when we are
building application in release mode by issuing following command  =93qmake
CONFIG+=3Ddebug && make=94, then also it appends =93-g=94 to it.

So building Qt application in release mode also results in debug mode
output.

Any fix for this?

 Thanks and Regards
Navani Kamal Srivastava

--047d7b5d474ee18f2404df6e85a5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I am using poky-danny (Poky-8.0). I am facing problem in building Qt app=
lication.</p>
<p>=A0When we are building Qt application with =93qmake CONFIG+=3Ddebug &am=
p;&amp; make=94 it appends =93-g=94 to build the application in debug mode =
but when we are building application in release mode by issuing following c=
ommand =A0=93qmake CONFIG+=3Ddebug &amp;&amp; make=94, then also it appends=
 =93-g=94 to it.</p>

<p>So building Qt application in release mode also results in debug mode ou=
tput.</p>
<p>Any fix for this?</p>
<p>=A0Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>

--047d7b5d474ee18f2404df6e85a5--
