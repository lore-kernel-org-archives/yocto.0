Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52963E00A51; Thu,  9 Jul 2015 18:30:49 -0700 (PDT)
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
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 923BAE009D6
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 18:30:38 -0700 (PDT)
Received: by lagc2 with SMTP id c2so253644316lag.3
	for <yocto@yoctoproject.org>; Thu, 09 Jul 2015 18:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=yK5y1onx1PlutMbWIGcjd+nOaO+mGVmqLeVx7WsX9hQ=;
	b=fjaXPEjtqSxCVwN+ApToldXPmc7k/ir1ldwx5i38qrmE0yHhFQqNiYdq84pmFytfjP
	afEnnvHIpJiVJ97/eyWzmDVeDbcZ8/9dLTqn8H/jxRKfDJ+SgeisdALc4YSoahTbxHzQ
	CbhJtPT8XMqcz5SryMo8YWlO+zbqdg5hUvO+EIQC+Blzo+eJajtiQaW8tPfr6+Q0rjTG
	e21mKbsv76CucttTn1clIeBhLunVZ0BNUoXituJPMHo191NYD6joNtls6wTLwkEPwcn5
	pGOlTpeYisan6aroSMui3MZERVVIjDCtP4sjsNly2IHsrVukxFieGAnsTZjeeW1S1QbP
	sa2g==
X-Gm-Message-State: ALoCoQlrmg17fwdOt0oItwfhVwSq4GbKw4UnZ1kNlgdfd9rcrro7gnOwcmiMoAtD3T/o/BUcHPtg
X-Received: by 10.112.185.100 with SMTP id fb4mr17528788lbc.79.1436491835991; 
	Thu, 09 Jul 2015 18:30:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Thu, 9 Jul 2015 18:29:56 -0700 (PDT)
X-Originating-IP: [81.108.63.159]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 10 Jul 2015 03:29:56 +0200
Message-ID: <CAK18fxGVOvkCmNfmd6Q3ydxpaRXcpxWSB-dNKYa3epQvLXDC2g@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Masking out hddimg in bootimg bbclass
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
X-List-Received-Date: Fri, 10 Jul 2015 01:30:49 -0000
Content-Type: multipart/alternative; boundary=001a11c3ca229b7fdb051a7b514e

--001a11c3ca229b7fdb051a7b514e
Content-Type: text/plain; charset=UTF-8

Hello,

Reading the bootimg bbclass, I see that iso and hddimg fstypes are masked.
Any reason why? The log doesn't really help much:
http://lists.openembedded.org/pipermail/openembedded-core/2014-February/089634.html

--
Andrei Gherzan

--001a11c3ca229b7fdb051a7b514e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Reading the bootimg bbclass, I s=
ee that iso and hddimg fstypes are masked. Any reason why? The log doesn&#3=
9;t really help much:=C2=A0<a href=3D"http://lists.openembedded.org/piperma=
il/openembedded-core/2014-February/089634.html">http://lists.openembedded.o=
rg/pipermail/openembedded-core/2014-February/089634.html</a></div><div><br =
clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></div>
</div></div>

--001a11c3ca229b7fdb051a7b514e--
