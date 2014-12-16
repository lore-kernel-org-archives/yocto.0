Return-Path: <bo@vikingsoft.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D9ADE00928; Tue, 16 Dec 2014 07:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22D21E008F6
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 07:32:21 -0800 (PST)
Received: by mail-yk0-f180.google.com with SMTP id 9so5954578ykp.25
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 07:32:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=dvRKrxcDmIjMhr1NhweNwxDW/D9vV626C07z+Y67dFk=;
	b=chUh5UUzq9w2APc6tnLNUnB7g1BsJ7vhNtPQX6j4OBFqnm/HMC2UO1NKyfEAg/pxN2
	4xd5qDlCPYuevF+2LluB2B7dC4euvImbaD8lQJlR6+9KmzCBBjY5zCUw6Gs9vlS6qmLI
	+D2UzkpRCgnYuOocvbWZRJjFHxwPTzSkhJa/JeezbUI/K2k7Mz8FdwNJ/c1FqEenKoQX
	8U0YrSp5HTmXG+wLBs4LV1Xc/TTKxstqfR5Q3tXCsTeMzzWavAFL0ahrKuSRe8ZsYdFP
	5z/P72Ln0+O/TVpUNUtuAun9bGWdSQn4r8RTYvHddgj0rF7N3r2Q2aK4+d1QInxnJtO0
	MSaA==
X-Gm-Message-State: ALoCoQmAvJHFJR/IBhhYQH1DD2+nYNaA0y8Jxdt9lYDtapQUwG4YF2nsPVV+lMSsOjuMdLj+j4I4
MIME-Version: 1.0
X-Received: by 10.170.120.143 with SMTP id m137mr30181875ykb.61.1418743941269; 
	Tue, 16 Dec 2014 07:32:21 -0800 (PST)
Received: by 10.170.229.212 with HTTP; Tue, 16 Dec 2014 07:32:21 -0800 (PST)
Date: Tue, 16 Dec 2014 16:32:21 +0100
Message-ID: <CAOsPRKUZW8neMAY5paLNCvagHPFPyh_kE_1uZ6s7JeqibbL6NQ@mail.gmail.com>
From: Bo Thorsen <bo@vikingsoft.eu>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 16 Dec 2014 08:44:33 -0800
Subject: Japanese fonts and UTF-8 for the target system
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
X-List-Received-Date: Tue, 16 Dec 2014 15:32:30 -0000
Content-Type: multipart/alternative; boundary=001a1137dffea5a5be050a5710ca

--001a1137dffea5a5be050a5710ca
Content-Type: text/plain; charset=UTF-8

Hi everyone,

I inherited a Qt 5 based project that runs on a yocto built linux. It's
1.6, AFAICS.

There are two problems that I have some problems fixing, and I don't know
enough about yocto builds yet to figure those out.

The first is that Japanese and Korean fonts are not shown correctly in the
Qt application. I can see in the list of fonts from the QFontDatabase that
Japanese fonts are available. The list of fonts match exactly the list I
have on my desktop machine. But a test string doesn't show the Japanese or
Korean chars in the UI. The weird thing is that I can show Russian and
Danish chars, so I do have UTF-8 capable font rendering. Something must be
missing on the system for font-config (or whatever renders the text) to
find a font that can show those languages. If some of you have hints about
what I need to do, I'd be very happy to hear about them.

The target machine has been built without any kind of locale info. There
are no locales, charmaps etc, on the system. And LC_*, LANG and LANGUAGE
are unset. I need to find some way for the target machine to run
en_US.UTF-8 as the standard locale because the users will save files with
filenames in their own language.

I hope you have some pointers about some of this for me.

BTW, please CC me, as I'm not subscribed to this list yet.

Sincerely,

Bo Thorsen,
Viking Software.

--001a1137dffea5a5be050a5710ca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I inherited a Qt 5 based p=
roject that runs on a yocto built linux. It&#39;s 1.6, AFAICS.</div><div><b=
r></div><div>There are two problems that I have some problems fixing, and I=
 don&#39;t know enough about yocto builds yet to figure those out.</div><di=
v><br></div><div>The first is that Japanese and Korean fonts are not shown =
correctly in the Qt application. I can see in the list of fonts from the QF=
ontDatabase that Japanese fonts are available. The list of fonts match exac=
tly the list I have on my desktop machine. But a test string doesn&#39;t sh=
ow the Japanese or Korean chars in the UI. The weird thing is that I can sh=
ow Russian and Danish chars, so I do have UTF-8 capable font rendering. Som=
ething must be missing on the system for font-config (or whatever renders t=
he text) to find a font that can show those languages. If some of you have =
hints about what I need to do, I&#39;d be very happy to hear about them.</d=
iv><div><br></div><div>The target machine has been built without any kind o=
f locale info. There are no locales, charmaps etc, on the system. And LC_*,=
 LANG and LANGUAGE are unset. I need to find some way for the target machin=
e to run en_US.UTF-8 as the standard locale because the users will save fil=
es with filenames in their own language.</div><div><br></div><div>I hope yo=
u have some pointers about some of this for me.</div><div><br></div><div>BT=
W, please CC me, as I&#39;m not subscribed to this list yet.</div><div><br>=
</div><div>Sincerely,</div><div><br></div><div>Bo Thorsen,</div><div>Viking=
 Software.</div><div><br></div></div>

--001a1137dffea5a5be050a5710ca--
