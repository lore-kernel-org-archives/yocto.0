Return-Path: <fed@spad.cc>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59ADAE008FF; Fri, 23 Jan 2015 11:24:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F72E0086F
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 11:24:03 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z20so3665809igj.4
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 11:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spad.cc; s=googs;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=vi8Mr5kuQ878jOTqFNezk0geExwA3SfJxOnTV8pByyw=;
	b=d6T3Za1R/ys/iaQLAQazUoTfPYxmCHax6tpfKFIO+2VBreIhHNwG9RZskuZE7F/hAg
	b26KKRad2FcLBcU7TlQVcOFYknck8M6uhCPi37sCPazpu9mPdGROzS4gSgu7NNY5k4wO
	KroNSDAVoLwY8lxMT845CEfeOuN1Baeu/68Js=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=o-nigiri.me; s=google-o-nigiri;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=vi8Mr5kuQ878jOTqFNezk0geExwA3SfJxOnTV8pByyw=;
	b=ZlQua3sNkxtyukGiurJitlX+61WCIDQSxGBuutr9LAusi/pQyL1FR2xSDQ3H+Ur3mH
	ugn1Cq8z46pr/KTZzlgSIRZDdaOr5g24Ovmos0cR14fbHZmGSIGYIz3+wPsARwvC6eD4
	IifjWtlbcwu6ijdpK2tRJDnyqYf9UOkuSn3v4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:date:message-id:subject:from
	:to:content-type;
	bh=vi8Mr5kuQ878jOTqFNezk0geExwA3SfJxOnTV8pByyw=;
	b=TSnxl12drpnPZ1KyConvTLKEcw9SKmWabJtewrpd102+WTsOhtkNapfss7EzNDpT1O
	sZEwL6IjHqFTTDBp3Vs+0Z+vtP+sMoHdjuxy7DUsrylce0XXic+dakLHHrjOoRHwq9ug
	xCj7g1x0AY+NnQrUbyksMZFjyVOGKoWfsyQn2B3vAVjsIwHadkHnz7MSYHSSPb7n+1Iv
	Jvl3XwsSfT0+Du+ydtLTwUI4HZS5cBv5Mikt2qYrR1/jzOKNGLsH7edK39v7sRY6nDQG
	qGlyDYvnivMk5doORA6cRDxyVSoh/zFnYekgHyJlJKsTvdkCwlgDHQxPI5Mde4ItpYDn
	A1HQ==
X-Gm-Message-State: ALoCoQmplV+hSqdMTkYE6TLD761CWCuivVLw4KKky0WoryNQVLa9mqqYfOiK5IDo7Zb3C6HxIn/G
MIME-Version: 1.0
X-Received: by 10.50.254.4 with SMTP id ae4mr3683863igd.10.1422041043175; Fri,
	23 Jan 2015 11:24:03 -0800 (PST)
Sender: fed@spad.cc
Received: by 10.50.245.143 with HTTP; Fri, 23 Jan 2015 11:24:03 -0800 (PST)
X-Originating-IP: [50.196.160.108]
Date: Fri, 23 Jan 2015 11:24:03 -0800
X-Google-Sender-Auth: r8yiBdZnx9YYxukL3quV9KAH1ck
Message-ID: <CAJ-FT2X0TdWcgL1z6=hOdhduVCrt66ne93DE6ZP8Ood+5pjCHA@mail.gmail.com>
From: Ma O-Nigiri <ma@o-nigiri.me>
To: yocto@yoctoproject.org
Subject: RPM Installation to Host Sysroot
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
X-List-Received-Date: Fri, 23 Jan 2015 19:24:19 -0000
Content-Type: multipart/alternative; boundary=001a11343b923c437a050d56bbd4

--001a11343b923c437a050d56bbd4
Content-Type: text/plain; charset=UTF-8

I am on yocto 1.3.2 and need to add a few libraries to my sysroot for cross
compilation.

I have built the libsigc++-2.0 library with bitbake and have the resulting
RPM. What is the appropriate method for installing the rpm to
/opt/poky/1.3/sysroots ?

Cheers

--001a11343b923c437a050d56bbd4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am on yocto 1.3.2 and need to add a few libraries to my =
sysroot for cross compilation.<div><br></div><div>I have built the libsigc+=
+-2.0 library with bitbake and have the resulting RPM. What is the appropri=
ate method for installing the rpm to /opt/poky/1.3/sysroots ?</div><div><br=
></div><div>Cheers</div></div>

--001a11343b923c437a050d56bbd4--
