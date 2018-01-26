Return-Path: <nathan.roberts@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C515E00D75; Fri, 26 Jan 2018 15:25:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nathan.roberts[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC87BE00B5F
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 15:25:38 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id j21so28490079wmh.1
	for <yocto@yoctoproject.org>; Fri, 26 Jan 2018 15:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=baIOHP4LdcalqY/Es2y7w7ul5FiJPykRG+8qAbRsYbU=;
	b=R0kJ3PzD0K+3RAE+gkkr+Ehw7VwAiMdmMyOsK6zjzcUFSFKv9wiyOLR6AxyDUDaGvA
	jw4Kzl4Ethk7wkn/INCAc0LxifM/f+UwXAZuLdJPD/ioFRF28RvSXgnMo31iWbMZilJQ
	qu3pDv/UyRoWPPAITYOOttHdPGVFjZ5sAmdyfbb8rvt5iidjA8fcciBZDVcJvSsqooTe
	JYDDgxZe1lRH2+ZPuoVKyVqIwgZCqbkMTmVQpSQxeKlHMewq+hlLTBQ7e2bBnsc15pBJ
	DSAq+X0B+oR3p0Gu1JI/rModDl6LEti7508GiOQRZk7Q04Glpy65SKgDE/p5P19gJJNn
	6MoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=baIOHP4LdcalqY/Es2y7w7ul5FiJPykRG+8qAbRsYbU=;
	b=jGcm0PLU4pj27Qan8oYfY8e0uNZcmreQhQn9w6H7ec8lEOeuhvJ5VFb+6e/CfW2sPU
	8XJhbFXm8XO4qd6ObJ9sfnMbuYrOwMiHZpaifvGF3UBRI0F2CRnaWtT0E7rtQ4k0/zN/
	y1oBPlwxcwTFiNps6q8fbSdfACfLbve9z+rBwBpvLCGTcmbiMQ3euH+nGb3N7AzArTA/
	WC5RWtNE++udx7zD7igFCFfsLDStXSmSom4CNxKC0Ns76OQS+sRadoPkAJFVj43YB5Zx
	nE2cEiVmu56qu3jLQSXenjlFTr8jYv1aHZmrNsbHCkr3LB+njIN+ZnWX1CeDMtSvAuN5
	f5jA==
X-Gm-Message-State: AKwxytdKt4YprZMBoKCl/JoatMx3KeLDAEST8J7WbjBlMqxaGFK7I2oo
	Sj/zweuNAVg0dg7RkQx9X1umHy5dYYFva2UgNW7Cew==
X-Google-Smtp-Source: AH8x225c1A2I7EC9r5oNaktU0E6ttEMZTtMsU5OYzwwP7VhqqFDJRU8WzFXUt67drg6BYncGEXzTKruMLNVyLkxJlQg=
X-Received: by 10.80.166.218 with SMTP id f26mr35669970edc.266.1517009137636; 
	Fri, 26 Jan 2018 15:25:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.212.204 with HTTP; Fri, 26 Jan 2018 15:25:37 -0800 (PST)
From: Nathan Roberts <nathan.roberts@gmail.com>
Date: Fri, 26 Jan 2018 23:25:37 +0000
Message-ID: <CAGkqu_uOb+J+hphttWKRD-8g2gwVG1P90r3aHQAzW2KOJNoptQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 30 Jan 2018 08:54:36 -0800
Subject: Disable UART Console for Pi 0
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
X-List-Received-Date: Fri, 26 Jan 2018 23:25:39 -0000
Content-Type: multipart/alternative; boundary="94eb2c197ee8c518370563b63631"

--94eb2c197ee8c518370563b63631
Content-Type: text/plain; charset="UTF-8"

extra-build-config.md states
"RaspberryPi 0, 1, 2 and CM will have UART console enabled by default."

I have a Pi 0 (not a Pi 0W), and want to disable the UART console when an
image is built (I know how to manually do it after the iamge is built).

the above file also states:

Users who want serial console support on
RaspberryPi3 will have to explicitely set in local.conf:

    ENABLE_UART = "1"


So I assumed to disable I should add to local.conf

ENABLE_UART = "0"

but when I do this the image wont boot (no error messages).

What is the best practice method of disabling UART console when
building an image?

Nathan

--94eb2c197ee8c518370563b63631
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><font size=3D"2"><span style=3D"background-color=
:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><a href=3D"http://extra=
-build-config.md">extra-build-config.md</a> states<br>&quot;<code>Raspberry=
Pi 0, 1, 2 and CM will have UART console enabled by default.&quot;<br><br><=
/code></span></span></font></div><font size=3D"2"><span style=3D"background=
-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><code>I have a Pi=
 0 (not a Pi 0W), and want to disable the UART console when an image is bui=
lt (I know how to manually do it after the iamge is built).<br><br></code><=
/span></span></font></div><font size=3D"2"><span style=3D"background-color:=
rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><code>the above file als=
o states:<br></code></span></span></font><div><pre style=3D"padding:0px;mar=
gin:0px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;word-spacing:0px;text-decoration-style:initial;tex=
t-decoration-color:initial"><font size=3D"2"><span style=3D"background-colo=
r:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><code>Users who want s=
erial console support on
RaspberryPi3 will have to explicitely set in local.conf:

    ENABLE_UART =3D &quot;1&quot;</code></span></span></font></pre><font si=
ze=3D"2"><span style=3D"background-color:rgb(255,255,255)"><span style=3D"c=
olor:rgb(0,0,0)"></span></span></font></div><div><font size=3D"2"><br></fon=
t></div><div><font size=3D"2">So I assumed to disable I should add to local=
.conf</font></div><div><pre style=3D"padding:0px;margin:0px;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:norma=
l;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;word-spacing:0px;text-decoration-style:initial;text-decoration-color:init=
ial"><font size=3D"2"><span style=3D"background-color:rgb(255,255,255)"><sp=
an style=3D"color:rgb(0,0,0)"><code>ENABLE_UART =3D &quot;0&quot;<br><br></=
code></span></span></font></pre><pre style=3D"padding:0px;margin:0px;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;word-spacing:0px;text-decoration-style:initial;text-decoration-c=
olor:initial"><font size=3D"2"><span style=3D"background-color:rgb(255,255,=
255)"><span style=3D"color:rgb(0,0,0)"><code>but when I do this the image w=
ont boot (no error messages).<br><br></code></span></span></font></pre><pre=
 style=3D"padding:0px;margin:0px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;word-spacing:0px;text-dec=
oration-style:initial;text-decoration-color:initial"><font size=3D"2"><span=
 style=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0=
)"><code>What is the best practice method of disabling UART console when bu=
ilding an image?<br><br></code></span></span></font></pre><pre style=3D"pad=
ding:0px;margin:0px;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial"><span style=3D"background-color:rgb=
(255,255,255)"><span style=3D"color:rgb(0,0,0)"><font size=3D"2"><code>Nath=
an<br></code></font></span></span></pre></div><div><span style=3D"backgroun=
d-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"></span></span><c=
ode></code></div></div>

--94eb2c197ee8c518370563b63631--
