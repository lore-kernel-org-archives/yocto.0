Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87CB3E00DD0; Mon, 12 Feb 2018 07:21:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A62E009BB
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 07:21:57 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id k19so20935451lfj.1
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 07:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IFdH70BBw4eUurLofFMVB4eRAe1uchi7++OECP0AVdM=;
	b=V5xUb9CglSwoJYd1aimIbVbtcFdQKPY1bR5HNGP5PSo1jkj1eA7N9Ll3BXRWc99L/Q
	BYW1G33X+Xio4+DhC0TSW89ACpLuBzzNVs5nR2FrWWFAsxnp9rNy3cCnokyTPXrfcwVv
	FB09o+NwpaqhzhrECQTJocVmoppW6z2M6dK/8CXY/EEwmEBRnw43j12Ybxq9gA01qLWB
	QWnMBFmZDgxsu4wS9DCSIyn3h1bQonlvxnNrDzSVFeJtrC8OpJkmmXLcKpW9TDT73gsS
	eUTcI+dFB56TxmQS3RJ2gQ3Om1vNsEgcwIdIVvu8nz1qxHqumspVkUjlbpWLxz8KpyeV
	24cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IFdH70BBw4eUurLofFMVB4eRAe1uchi7++OECP0AVdM=;
	b=G6keugIBg4LLKE8eH9ilCJwvF/yg90Qz5ewdPe2pKB/ibiMR8D7qOqqhDzeHcG6XCf
	Xxj1itsRJUfObonu3vwiSJDHatRh4O1NLwQ+g6oCi9aGDW0qfK+tEDGmm3I00esfqm67
	lHCa3DnU1oKvUXBLDzuc5qOKbiUFQeCLnDevcWzxaW7AyR2zgAAcdEAHyA+Urcn9h92e
	qOM+LHYPpwIeF/nw1KWnoe+GKE9Kda8EQ74FvxQxgjfAtx9nULiiw5JNEbirp34dC7m8
	YQt5oOz/0CVdW55HSdXzCiQQPnxw3TaScgy4Xdm0+GsH1BfyyzphDqXRRv8IRjK+cOlj
	VGCQ==
X-Gm-Message-State: APf1xPB4mZu8pcdsM4Wpv8Pt0ifiX9jqTRLYefRDrgCfi8tzLogmL9ha
	OiJsFXbt+ZR/791HUffuNp53kPyA2G1SepdUNSU+mA+I
X-Google-Smtp-Source: AH8x224ezFvn+iYFGpAeiE0vdyNMnYy+xMDVJBvSFtAYgQyk0po0E1pWTvEIZMP5v7wW+093DYVC701Ue3TcoYLqAvo=
X-Received: by 10.25.78.79 with SMTP id c76mr7129044lfb.98.1518448916536; Mon,
	12 Feb 2018 07:21:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.217.21 with HTTP; Mon, 12 Feb 2018 07:21:55 -0800 (PST)
In-Reply-To: <MWHPR13MB1584BDB6AC757E1A07976D2E9EF30@MWHPR13MB1584.namprd13.prod.outlook.com>
References: <MWHPR13MB1584BDB6AC757E1A07976D2E9EF30@MWHPR13MB1584.namprd13.prod.outlook.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 12 Feb 2018 10:21:55 -0500
Message-ID: <CAHUNapS3e9mG1Z2nfUFG0zQNGn_oTABWX9NqbN+d1hf-pFp0RQ@mail.gmail.com>
To: Peter Spierenburg <peter.spierenburg@nautel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Here is my BSP for the adzs-sc589-ezlite eval board.
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
X-List-Received-Date: Mon, 12 Feb 2018 15:21:58 -0000
Content-Type: multipart/alternative; boundary="94eb2c1ce15c47a1ec05650570f2"

--94eb2c1ce15c47a1ec05650570f2
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 8, 2018 at 8:43 AM, Peter Spierenburg <
peter.spierenburg@nautel.com> wrote:

> I've created a board support package for the adzs-sc589-ezlite evaluation
> board from Analog Devices.
>

Would you consider adding it to the layer index?
http://layers.openembedded.org/layerindex/submit/

--94eb2c1ce15c47a1ec05650570f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Feb 8, 2018 at 8:43 AM, Peter Spierenburg <span dir=3D"ltr">&lt;<a href=
=3D"mailto:peter.spierenburg@nautel.com" target=3D"_blank">peter.spierenbur=
g@nautel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div id=3D"gmail-m_-3942684795950657604divtag=
defaultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibr=
i,Helvetica,sans-serif" dir=3D"ltr"><p style=3D"margin-top:0px;margin-botto=
m:0px">I&#39;ve created a board support package for the adzs-sc589-ezlite e=
valuation board from Analog Devices.<br></p></div></div></blockquote><div><=
br>Would you consider adding it to the layer index?<br><a href=3D"http://la=
yers.openembedded.org/layerindex/submit/">http://layers.openembedded.org/la=
yerindex/submit/</a><br><br>=C2=A0</div></div></div></div>

--94eb2c1ce15c47a1ec05650570f2--
