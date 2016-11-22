Return-Path: <whulxh@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A78B1E00563; Tue, 22 Nov 2016 13:25:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (whulxh[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.180 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B3BE0049F
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 13:25:11 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id c47so21122193qtc.2
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 13:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=i8pQS/KIjs9GW3ofM7E07kfjfpYr0e72euQvIjPcF0o=;
	b=r5gqOrKfZf2jeB8xL51H+kKtAH3S1ooDbao4MHCxG5FCyU0EFXtFShrLncxZoyjDeB
	DcuL6UKIekYOx9b+g7IUywsiBtdjlslqGgBCR8bCqyeFzpezrbIzL3/cdwGU82qZi5Ul
	cvlHkabKe2xmwN2dfteS6ISbzA9ZES8hh52aYPA3xXmS6Tv+mlz9gZqVXfzvLMYZB+P7
	2fcb6qq6RlJCE/WbmXd8c3TF3cL44taZpz6Kj6MFjbEstm/xVeZC8NWdCmfSMEwxNtcD
	91ge8qbqAUJ4T4LzgFCOSH00ppnVQe8fRW/UDrFD/pe77TV2LyIkQ6GnOA2dJDaPaT8b
	KZKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=i8pQS/KIjs9GW3ofM7E07kfjfpYr0e72euQvIjPcF0o=;
	b=LiL0y3qEoZyWeCBKwYvMDC0ZVWoZymZ4x0EKrjmpLUGHwWIFDt3UY27QkWPwWZblhG
	S+2OUhtcMTH1u+pxDWT+febzCfI7vNXKwVtu54RqcBiSYq88M/BGJEM+MKyksTXhSVGR
	daTqJlGX0GmR3QXB1wPYhwjZxdaOyJiNNu7P2XHqHPjiX1RDUduNkjpVNWOnpcEDIGQD
	UBpvzODnL+o6qMsJ1I3FzDicMODCX88QX910byS/c1T7gv9cdGf+n1CI4QPNCEg0FjPf
	NDR+6p/Zqu9R7UmyIohbw2X25vA7N7a8OQtsUjkjC70mhdcwCIfhsm7hozHSc6QS7voj
	WNEg==
X-Gm-Message-State: AKaTC03UD3fy16hdEmUx4Ic/doCArkc+TrOLegm0OXcVuX79g5XH8P5ESGrs/1lRialgz3J2F65J4ynqLvv40g==
X-Received: by 10.237.32.205 with SMTP id 71mr14953183qtb.237.1479849910949;
	Tue, 22 Nov 2016 13:25:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.115.3 with HTTP; Tue, 22 Nov 2016 13:25:10 -0800 (PST)
From: Xiaohui Liu <whulxh@gmail.com>
Date: Tue, 22 Nov 2016 13:25:10 -0800
Message-ID: <CAFxSfzhpwMx-imzDyd5cPHwpVgbNgLXptpidmPP7oYEaGDZK9Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: When is a task rerun?
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
X-List-Received-Date: Tue, 22 Nov 2016 21:25:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c0c5e66435d2c0541ea6877

--94eb2c0c5e66435d2c0541ea6877
Content-Type: text/plain; charset=UTF-8

Hi everyone,

Under what condition will a task be rerun? My understanding is that each
task has a signature/checksum stored somewhere in tmp/. If the checksum
changes, bitbake will look for shared state cache in SSTATE_DIR and then in
SSTATE_MIRRORS. If no match is found, the task is run. Is my understanding
right? Plus, where is the checksum stored in tmp/?

Thanks in advance.

Best,
Xiaohui

--94eb2c0c5e66435d2c0541ea6877
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>Under what condition will =
a task be rerun? My understanding is that each task has a signature/checksu=
m stored somewhere in tmp/. If the checksum changes, bitbake will look for =
shared state cache in=C2=A0SSTATE_DIR and then in SSTATE_MIRRORS. If no mat=
ch is found, the task is run. Is my understanding right? Plus, where is the=
 checksum stored in tmp/?</div><div><br></div><div>Thanks in advance.</div>=
<div><br></div><div>Best,</div><div>Xiaohui</div></div>

--94eb2c0c5e66435d2c0541ea6877--
