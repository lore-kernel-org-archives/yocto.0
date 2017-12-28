Return-Path: <kondrashovks1989@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A82A2E00DBA; Thu, 28 Dec 2017 03:37:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kondrashovks1989[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FED0E00D84
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 03:37:43 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id m20so31887229lfi.6
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 03:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/iECd7n03QYPD10JLxpfGjkjt5Urb9EY9muUxzpLxDs=;
	b=FghjldfO5nRfT+t9w0w5Dsss6Ts3/5iiYa+6EN/xrYgt42hHPRayza+phmcKHhX1vD
	oYvXBHf2dQKI7LNEmZjxXM5X6uKbLx77t2thr5Ka++PxRc4qfsEBe1RBBPMdt3XoTEyP
	HRCbE/M4rRv5hub/1Fp4W7Y/h7cQTW1Q7QrmL+q7YykVrdQsZe1oLBTViOo1buwdjZtu
	e70QvqN9qP5OX7r4i+vGFjzg10I+A3Sv4ClspLOFJrSmrIUCl9pmk64Jw1mI4wQ9w33b
	WE0DhFiXzB79TLdV21kyc8eRxZqC063BDQNt7hXwS17iAe0UDQA6jHPvmNljc/wVmRTS
	AXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/iECd7n03QYPD10JLxpfGjkjt5Urb9EY9muUxzpLxDs=;
	b=jWmpDFDg6F9ncDkjFR7ZpDH0uC4LYpomJwqlc4W4YezRHqQnjm9so5zbIv4dKf8/8W
	LdI4REM0J06QeX2s66pVNHfy/PX6lEaloh+LY28Q+kWFoRC6taFnxWW2xp/cQcvH+xSf
	pM8BaVzeXohb6+GwmsNuibH6yD1BSw+LDcXVhZy5A2wdP7HLldpD1uX9NU/EMAOgDPEN
	sDT6xdOG9RhmzO0XfIl8vXfpVLVgOUlj/5AD21Ov/f8vASvA5o3/OW6WEcy491hdZj6D
	cbvLXvVBjWDXLUaWedp9Bg6LFtHDk2SpRw1eCLTxCRdyHMsXnu8d0zIO5DG6u2m1iCd0
	EvDQ==
X-Gm-Message-State: AKGB3mJyZRs+pfVj8IAV8D+f5WtsI5BxfKce32i1aX8mME+Dqc2ZlA13
	IjvFHx95IzqltVLItTDB7lhh/b4lGxPnsVCxuk4=
X-Google-Smtp-Source: ACJfBouOnvi7u6rnAxSbNqv2fNSybc0wxkxooFgjcQa58UJAcuwEzRRDP0/EBkL8EzFgnJSpC7iXExnKW0RjLxkIESI=
X-Received: by 10.25.56.68 with SMTP id d4mr11492929lfj.31.1514461062618; Thu,
	28 Dec 2017 03:37:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.179.68.181 with HTTP; Thu, 28 Dec 2017 03:37:42 -0800 (PST)
From: Kirill Kondrashov <kondrashovks1989@gmail.com>
Date: Thu, 28 Dec 2017 12:37:42 +0100
Message-ID: <CACm3r4pXMHtKg53xBTPkLZ=Pnf8sBRrd6GTQsHi+zJ+CZXphPg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 04 Jan 2018 08:38:29 -0800
Subject: Smart Project Manager
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
X-List-Received-Date: Thu, 28 Dec 2017 11:37:45 -0000
Content-Type: multipart/alternative; boundary="f403045e9ac4a9e19a056164f1ef"

--f403045e9ac4a9e19a056164f1ef
Content-Type: text/plain; charset="UTF-8"

Hi guys!

Is there some existing C/C++ API for smart pm? I have to interface it from
Qt software and wonder if there's some other way rather then just
intercepting python scripts output.

-- 
--------------------------------------------------------------------------
Best regards,
Kirill Kondrashov
--------------------------------------------------------------------------

--f403045e9ac4a9e19a056164f1ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys!<div><br></div><div>Is there some existing C/C++ A=
PI for smart pm? I have to interface it from Qt software and wonder if ther=
e&#39;s some other way rather then just intercepting python scripts output.=
<br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">-----=
---------------------------------------------------------------------<br>Be=
st regards,</div><div dir=3D"ltr">Kirill Kondrashov<br><div>---------------=
-----------------------------------------------------------</div></div></di=
v></div></div>
</div></div>

--f403045e9ac4a9e19a056164f1ef--
