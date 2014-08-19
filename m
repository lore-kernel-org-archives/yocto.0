Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D2EEE004FF; Tue, 19 Aug 2014 10:21:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0135]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB222E0034C
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 10:20:50 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id k14so6835863wgh.32
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 10:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZFqmMjHbUoNtsYIFtoxYdwN5ej37lRIeFQhmoXo/f64=;
	b=YgWdXg7s+9hiYo9GAoIJp0LR5N8sP8QnvzS1miZwFJXB6bUti8aSYLhqu68Kt/u8Kk
	WvjKIpIj8cws3YvjMP+K4RZyJxcsqUnbyKnCz1KwnfOSWseIM0xkGYD/30V0kw3q/m8P
	8+sh3lxR9NEDrPCksJrvyV7X1VHBQLMEUxM5FtVArDBIewE7wp/c5j6sGAkklPBkM+LZ
	7pX5W29U5LrqX8D4TlVNwmRxda4cE6fy8xHIUleGbXBiQppvTPU+7A3o2fLXsLfKLtDF
	Cb2mz67+P6znK/d1dNsjUOE7Li/86Zg9qrUP7JzjdNQaJcy3FYeBFeQ565RGmlYZul5c
	AMAw==
MIME-Version: 1.0
X-Received: by 10.194.20.230 with SMTP id q6mr52955871wje.43.1408468849050;
	Tue, 19 Aug 2014 10:20:49 -0700 (PDT)
Received: by 10.216.208.73 with HTTP; Tue, 19 Aug 2014 10:20:49 -0700 (PDT)
Date: Tue, 19 Aug 2014 12:20:49 -0500
Message-ID: <CA+JN8xOphTVYqWHfx4ebKsHN-0_1O8zY6j1T8mGGeBFwKfRPLw@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Coverity
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
X-List-Received-Date: Tue, 19 Aug 2014 17:21:02 -0000
Content-Type: multipart/alternative; boundary=047d7b5d971b6cc9010500feb530

--047d7b5d971b6cc9010500feb530
Content-Type: text/plain; charset=UTF-8

Hello All,

We have a few code bases that we need to run Coverity on.  Does someone
have an example of how that would hook into a recipe?

Thanks,

Seth

--047d7b5d971b6cc9010500feb530
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>We have a few code bases tha=
t we need to run Coverity on. =C2=A0Does someone have an example of how tha=
t would hook into a recipe?</div><div><br></div><div>Thanks,</div><div><br>=
</div>
<div>Seth</div></div>

--047d7b5d971b6cc9010500feb530--
