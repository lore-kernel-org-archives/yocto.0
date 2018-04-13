Return-Path: <haoyuin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38678E00C44; Fri, 13 Apr 2018 01:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED, DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE,
	NML_ADSP_CUSTOM_MED, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ah_wan_la[at]yahoo.co.uk)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C518BE00ADB
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 01:38:13 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id m200-v6so11469571lfm.4
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 01:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=Jg9vKinVkjRnazKqSiZ2bQO2YBLvOK3No03lYaVt2nw=;
	b=gRHClHqh/V5wZR07d/en8Nb4ZDiESAO85wqVc+x0O2KRUg0fHIo/39pfC6KyikORC7
	h29I4O1Zorioy1wZrROd6sNNAI3qRpF/5o3032iogFYP/q9j5mH4N9Vra5MxHHAhe3oV
	rBIbxw2x3urlwPQBQH7sPFBDxfQ9fN/kUwCYH71hRIxvSd98lY3A9tuIDzNQPEqeVzg5
	OMqyzO/wiKM0jUw8nDmaOFYqG7lAqQ+kfl4a9p4LXpadRTm0eu7GnLSzVVMLVZNFktfZ
	iMrs3E3ghePkq/yr2J/4Chqvs6q9700LzQROt2cYrKZm3Scd2Zfq+C8052gQKGKeH9Ad
	LT5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=Jg9vKinVkjRnazKqSiZ2bQO2YBLvOK3No03lYaVt2nw=;
	b=OCbofA0XL2kfjT6UpDapEQtbdJuffL1bEO3oS++0lnplLX5G1xbAXYhLpKkjPyEBF+
	bZzF+sIMaWSNA2dBr4QOwFU2s8dySCAroaRUMAHrqgCZAsa/+7wW4uYfIKguuM74ZGHK
	UH08A3tY9cmtmBIrAWsVM82wZ2yz14lr1E5O0G79gO92leMJfv7vjxX5HGbQkMSM4IST
	HpYoXgJvyPKKssTX6mojxIzw89zUlVXt2BMhOGoIBZW1gSOQpuOoZp/9u83QmavJePH9
	SWCTXZlZGFrL8zcHC5j+b8swC0s7XsXRn/AljjxsviA5lgspWciaY/3Y+jKemoo2YIyM
	y/9w==
X-Gm-Message-State: ALQs6tBCvG0JRBQbunlyBM3Gr+/2k/XYVV/NJABOmWn1crA4zTDvEMo8
	rcb8HzERvuX7gQ/UhJGTRQgvXVkorh+Fp4m7cIZh9Q==
X-Google-Smtp-Source: AIpwx48e4M2CfsTBbntF5cli0Zo3CcYDFDfqf2g9m8pEpLVwsbiS+vzAOacRoZBxRrkP59YKoQBWnLmtVQbjFeJXFW0=
X-Received: by 10.46.155.1 with SMTP id u1mr2662010lji.130.1523608692269; Fri,
	13 Apr 2018 01:38:12 -0700 (PDT)
MIME-Version: 1.0
Sender: haoyuin@gmail.com
Received: by 2002:a19:d482:0:0:0:0:0 with HTTP; Fri, 13 Apr 2018 01:37:31
	-0700 (PDT)
From: ah wan la <ah_wan_la@yahoo.co.uk>
Date: Fri, 13 Apr 2018 16:37:31 +0800
X-Google-Sender-Auth: cVPVVD8oRinxUOv5j5Bf0uEp0So
Message-ID: <CAFvVEARSfMOTUdFTnJuM+YytL_F7gbD-B+g1a2yAbgf1bwiNHQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to set MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS under my custom layer
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
X-List-Received-Date: Fri, 13 Apr 2018 08:38:15 -0000
Content-Type: multipart/alternative; boundary="883d24f17298e1287a0569b6ca30"

--883d24f17298e1287a0569b6ca30
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am trying to add kernel modules to rootfs.
I tried adding configuration  MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_append =
" kernel-module-module1" into <machine-name>.conf  is OK, module1 get
installed.
I also tried adding same configuration into build/conf/local.conf also OK,
module1 get installed.
But my final goal is to get this customization into my custom layer, eg.
under meta-custom.
I tried to create core-image-minimal.bbappend and add this
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_append  but module1 is not installed
into the rootfs.
I checked environment with bitbake -e core-image-minimal and found that
the  MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS did append with kernel-module-module1
but somehow it still not getting installed.
May I know the correct way to set MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS under
my custom layer?
For some other dependencies I have to remain using the same machine name
and therefore cannot create a new custom machine config (correct me on this
if wrong).

Thank you.

Regards,
Ahwan

--883d24f17298e1287a0569b6ca30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi all,</div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif">I am trying to add kernel modules to rootfs.</div>=
<div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">I tri=
ed adding configuration=C2=A0 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_append =
=3D &quot; kernel-module-module1&quot; into &lt;machine-name&gt;.conf=C2=A0=
 is OK, module1 get installed.<br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">I also tried adding same configuration =
into build/conf/local.conf also OK, module1 get installed.</div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">But my final go=
al is to get this customization into my custom layer, eg. under meta-custom=
.<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif">I tried to create core-image-minimal.bbappend and add this=C2=A0

<span style=3D"color:rgb(34,34,34);font-family:verdana,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_append<span=
>=C2=A0 but module1 is not installed into the rootfs.</span></span></div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">I check=
ed environment with=C2=A0bitbake -e core-image-minimal and found that the=
=C2=A0

<span style=3D"color:rgb(34,34,34);font-family:verdana,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS did append =
with=20

<span style=3D"color:rgb(34,34,34);font-family:verdana,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">kernel-module-module1 but somehow it still not =
getting installed.</span></span></div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif">May I know the correct way to set=20

<span style=3D"color:rgb(34,34,34);font-family:verdana,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS under my cu=
stom layer</span>?</div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif">For some other dependencies I have to remain using the s=
ame machine name and therefore cannot create a new custom machine config (c=
orrect me on this if wrong).</div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">Thank you.</div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif">Regards,</div><div clas=
s=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Ahwan</div></d=
iv>

--883d24f17298e1287a0569b6ca30--
