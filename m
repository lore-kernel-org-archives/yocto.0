Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 051DAE00CFF; Thu, 25 Feb 2016 10:51:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ED64E00CFA
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 10:51:10 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id c200so42322754wme.0
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 10:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:reply-to:user-agent:mime-version;
	bh=VnwJYPbWgbOegvRMKLkDbaEdwNDZHkVDMLJIsBw8e+I=;
	b=Q/MZ2AOBqgaVRtki4OcabWcIHOVrUcQC4vW3G+3WTplREg1pJmPJ6jsIOZ8DT/eWX1
	aGPTpJCM0FsG7s4yIW1S/I+yvi6ysj/ywKqQdKhm8E4q1TwZsvnvqBpq80SZDOxLHPw2
	aFA2MP2leOzPgfgUZxYhJVJ73IL4LHJUjBiy+74fItJO4/DMDtykqTTpVkAsD83JWPiM
	Vx0Kqxeo08fF2nbH/dQlz7OXa6VO9T6SlTdayml0RMbTe698ZpaX0nG3awksW4s2qU6K
	UaF2XqIOmcvhIs5KfB82RIEQZxuYShTMakjxqMeVnCkD9OOf9Vh1uEhpSEAc4jtGw/AI
	J/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:reply-to
	:user-agent:mime-version;
	bh=VnwJYPbWgbOegvRMKLkDbaEdwNDZHkVDMLJIsBw8e+I=;
	b=Ucc4MmYTFL5dV65VNnlCwItPNjjzmEic6tSAM1TC2j/LLomyKvomI6xVCKWl4D5pHK
	01lV+ESWoPMlEQajTbC3lkRebfiPG3JxIaBPAVr+Bvut8GFCK0agl8ICGlrGsmslApg4
	MFSMwKnHGt6cxeH4/5LTMCt3uucwN2SCW6BahrW/ChUyRenh04Pl5X5wosp3gD73JqOZ
	DjPhfyAxZ/Vdj5G06mmy2HzSQb8MAi7Xip5loAC0/MBdN54qBRzJN6E1qAyUf5uMAkY/
	hA2Tluusx0ertk44kaV3mR1oAJ874nmOLaglctGyCmG3eI+JjWEjVQgoE6eWKGvLX7LH
	ob2A==
X-Gm-Message-State: AG10YORQ06QurEjz68SX5SbdWQWgJVVKxowxt3Pddek31mfI5jtK3SZNiR0ZK8JFFma9MQ==
X-Received: by 10.28.21.14 with SMTP id 14mr159852wmv.39.1456426270120;
	Thu, 25 Feb 2016 10:51:10 -0800 (PST)
Received: from [127.0.0.1] ([80.95.0.196]) by smtp.gmail.com with ESMTPSA id
	o128sm4427388wmb.19.2016.02.25.10.51.07 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Feb 2016 10:51:09 -0800 (PST)
From: Marius <mdlcameras@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 25 Feb 2016 18:51:02 +0000
Message-Id: <em2f6c4217-bc39-481e-9458-8463775ad3dc@marius-pc>
User-Agent: eM_Client/6.0.24316.0
Mime-Version: 1.0
Subject: Using the hardware graphics acceleration with qt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Marius <mdlcameras@gmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Feb 2016 18:51:12 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB430C1163-09D9-4378-A0FB-36B3747B233F"

--------=_MB430C1163-09D9-4378-A0FB-36B3747B233F
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am not sure how to get QT to use the BBB graphics acceleration. I=20
assume that the linuxfb is not using the GPU features of the chip.

I am using  the BBB without desktop (x11). How do I ensure that QT uses=20
the GPU. I cannot see from the recipes how to configure QT.Any examples=20
will be very helpful.

Regards
Marius


--------=_MB430C1163-09D9-4378-A0FB-36B3747B233F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<HTML><HEAD>
<STYLE id=3DeMClientCss>BLOCKQUOTE.cite {
	PADDING-LEFT: 10px; MARGIN-LEFT: 5px; BORDER-LEFT: #cccccc 1px solid; PADD=
ING-RIGHT: 0px; MARGIN-RIGHT: 0px
}
BLOCKQUOTE.cite2 {
	PADDING-TOP: 0px; PADDING-LEFT: 10px; MARGIN-LEFT: 5px; BORDER-LEFT: #cccc=
cc 1px solid; MARGIN-TOP: 3px; PADDING-RIGHT: 0px; MARGIN-RIGHT: 0px
}
.plain PRE {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; FONT-WEIGHT: normal; FONT-STYLE:=
 normal
}
.plain TT {
	FONT-SIZE: 100%; FONT-FAMILY: monospace; FONT-WEIGHT: normal; FONT-STYLE:=
 normal
}
A IMG {
	BORDER-TOP: 0px; BORDER-RIGHT: 0px; BORDER-BOTTOM: 0px; BORDER-LEFT: 0px
}
BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
.plain PRE {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
.plain TT {
	FONT-SIZE: 10pt; FONT-FAMILY: Tahoma
}
</STYLE>
</HEAD>
<BODY>
<DIV>I am not sure how to get QT to use the BBB graphics acceleration. I=
 assume that the linuxfb is not using the GPU features of the chip.</DIV>
<DIV>&nbsp;</DIV>
<DIV>I am using&nbsp; the BBB without desktop (x11). How do I ensure that=
 QT uses the GPU. I cannot see from the recipes how to configure QT.Any =
examples will be very helpful.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Regards</DIV>
<DIV>Marius</DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV></BODY></HTML>

--------=_MB430C1163-09D9-4378-A0FB-36B3747B233F--
