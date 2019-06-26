Return-Path: <daniel.wenninger92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BD51E00D6A; Wed, 26 Jun 2019 08:23:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.wenninger92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7BD8E00A5C
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 08:23:19 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id n5so1120381otk.1
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 08:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=P7Wa4JTFI8WiSkHRBJGdG/0vhnaBLE5iYyEm8krpFO4=;
	b=m1BF2ZiRbbXNa1MmkQhrIbcnwZMqKaFjQYMnqqsLjELJQQ/gyTNAUcK4eRUgeJ7AoQ
	5QrwutPXTwgkOEDmgwuNCvjijMKarKDaaUVq4kmNJEYe3+xFKI6xphR7atUfZuqB8gic
	MqblQhERS+GKXeaq61X40tTFuOUbYDprS4Xh0pHmpYFZbhdqNzFOy3HgufVxYtgKcCjS
	6FGXS60hkVtbC2FtndgtTT/YL3cJjdvXS2qMrmSlSAnUkEeSN5PEoH2ah3Ov0yl5IHpL
	j1YsrsZ9ge6ilFtHaOV9qjIrw/a5apT4vgIG0RKykGMP1tkwPLVM9fAKU7I3r007ng9Y
	LsDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=P7Wa4JTFI8WiSkHRBJGdG/0vhnaBLE5iYyEm8krpFO4=;
	b=W/4fVgY/L/K7LQ77rMnb3wJTearZBoPykVp5MDpg9D7KA+BHXJ771AuzKrDY6GVP3p
	dEkOrwkVAi00T3Lsx6nGpEDcGXYTAcWJnqQuNan9/icVE2Y5a9ZWGAKwgSDSUp7w8bQi
	tngRog2fcgTNFYVUMZt5MsP/uVHRcvk16QmOaIRtm6Ed3zEYWDvLotYJzAIfe4S8yxlv
	MNO5YP4AD0fmo0NSZmOL9zWz7n4JskO6+0berscnswcwZObkqAJGJsW5hQWktfJAGE+V
	ecqlJwn88aTPcjOkn14kpxdq5vPlnlnbP1bX9Tzax24sj6ziS3XXYNvg0fJ0CMnG4BiX
	fPhQ==
X-Gm-Message-State: APjAAAXNsw3exaV3J1gDXntu7WbJ9Ops+uSUxLY4RIBtyk3vuU4TVRzI
	/GBHrJlJbtma4ik9elFx7xgD/TO57g+hu2f627Qecnb8
X-Google-Smtp-Source: APXvYqw9RpUe+OiFcgbk5POowCz052fbaV1ZOGYaRxNgkmd5VRTCfJwjjNC4IpbyKCEyjnRQY8BIr7sf7t5OfWSdYfs=
X-Received: by 2002:a9d:7203:: with SMTP id u3mr3745939otj.313.1561562598853; 
	Wed, 26 Jun 2019 08:23:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAy0wo=CnCgCWREHKugwrfWWL2RdPtZ9dZWGuB2NTPDoEA@mail.gmail.com>
In-Reply-To: <CAEmXcAy0wo=CnCgCWREHKugwrfWWL2RdPtZ9dZWGuB2NTPDoEA@mail.gmail.com>
From: danwe <daniel.wenninger92@gmail.com>
Date: Wed, 26 Jun 2019 17:23:07 +0200
Message-ID: <CAEmXcAxmtRtXSOf9dPD5gokFymDmCWNG9D55krgokOsCQ6GXXw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 08 Jul 2019 02:27:29 -0700
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Wed, 26 Jun 2019 15:23:20 -0000
Content-Type: multipart/alternative; boundary="000000000000ffd1e7058c3b9ffb"

--000000000000ffd1e7058c3b9ffb
Content-Type: text/plain; charset="UTF-8"

Hi,

while using the command:
daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake core-immage-full
cmdline
I get the following ouput:
````

Loading cache: 100% |############################################| Time:
0:00:03

Loaded 1358 entries from dependency cache.

Parsing recipes: 100% |##########################################| Time:
0:00:12

Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65
skipped, 0 masked, 0 errors.

ERROR: No recipes available for:

  /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend

  /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend

  /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend



Summary: There was 1 ERROR message shown, returning a non-zero exit code.
````

How can I solve this?

Thanks.

Daniel

Am Mi., 26. Juni 2019 um 17:11 Uhr schrieb danwe <
daniel.wenninger92@gmail.com>:

> Hi,
>
> while using the command:
> daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake
> core-immage-full cmdline I get the following ouput:
> ````
>
> Loading cache: 100% |############################################| Time:
> 0:00:03
>
> Loaded 1358 entries from dependency cache.
>
> Parsing recipes: 100% |##########################################| Time:
> 0:00:12
>
> Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65
> skipped, 0 masked, 0 errors.
>
> ERROR: No recipes available for:
>
>   /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
>
>   /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
>
>   /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend
>
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ````
>
> How can I solve this?
>
> Thanks.
>
> Daniel
>

--000000000000ffd1e7058c3b9ffb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>while using the command:=C2=A0</div=
><div>daniel@daniel-VirtualBox:~/bbb$ MACHINE=3Dbeaglebone bitbake core-imm=
age-full cmdline=C2=A0</div><div>I get the following ouput:</div><div>````<=
/div><div><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size=
:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">=
Loading cache: 100% |############################################| Time: 0:=
00:03</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;fon=
t-size:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"E=
N-US">Loaded 1358 entries from dependency cache.</span></p><p class=3D"MsoN=
ormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Li=
beration Serif&quot;,serif"><span lang=3D"EN-US">Parsing recipes: 100% |###=
#######################################| Time: 0:00:12</span></p><p class=
=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:=
&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">Parsing of 832 .bb=
 files complete (829 cached, 3 parsed). 1361 targets, 65 skipped, 0 masked,=
 0 errors.</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001p=
t;font-size:12pt;font-family:&quot;Liberation Serif&quot;,serif"><span lang=
=3D"EN-US">ERROR: No recipes available for:</span></p><p class=3D"MsoNormal=
" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberat=
ion Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0 /home/daniel/meta-bbb/re=
cipes-connectivity/openssh/openssh_7.%.bbappend</span></p><p class=3D"MsoNo=
rmal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Lib=
eration Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0 /home/daniel/meta-bb=
b/recipes-qt/qt5/qtbase_git.bbappend</span></p><p class=3D"MsoNormal" style=
=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Ser=
if&quot;,serif"><span lang=3D"EN-US">=C2=A0 /home/daniel/meta-bbb/recipes-s=
upport/ntp/ntp_4.2.%.bbappend</span></p><p class=3D"MsoNormal" style=3D"mar=
gin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Serif&quot=
;,serif"><span lang=3D"EN-US">=C2=A0</span></p><p class=3D"MsoNormal" style=
=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Ser=
if&quot;,serif"><span lang=3D"EN-US">Summary: There was 1 ERROR message sho=
wn, returning a non-zero exit code.</span></p></div><div>````</div><div><br=
></div><div>How can I solve this?</div><div><br></div><div>Thanks.</div><di=
v><br></div><div>Daniel</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Am Mi., 26. Juni 2019 um 17:11=C2=A0Uhr schri=
eb danwe &lt;<a href=3D"mailto:daniel.wenninger92@gmail.com">daniel.wenning=
er92@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>while using the command:=C2=
=A0</div><div>daniel@daniel-VirtualBox:~/bbb$ MACHINE=3Dbeaglebone bitbake =
core-immage-full cmdline I get the following ouput:</div><div>````</div><di=
v><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;fo=
nt-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">Loading =
cache: 100%
|############################################| Time: 0:00:03</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">Loaded 135=
8 entries from dependency cache.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">Parsing re=
cipes: 100%
|##########################################| Time: 0:00:12</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">Parsing of=
 832 .bb files complete (829
cached, 3 parsed). 1361 targets, 65 skipped, 0 masked, 0 errors.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">ERROR: No =
recipes available for:</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0
/home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0
/home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0
/home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">=C2=A0</sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font=
-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US">Summary: T=
here was 1 ERROR message shown,
returning a non-zero exit code.</span></p></div><div>````</div><div><br></d=
iv><div>How can I solve this?</div><div><br></div><div>Thanks.</div><div><b=
r></div><div>Daniel</div></div>
</blockquote></div>

--000000000000ffd1e7058c3b9ffb--
