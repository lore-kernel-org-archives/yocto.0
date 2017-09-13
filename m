Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 364A3E00C2B; Tue, 12 Sep 2017 23:42:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_IMAGE_RATIO_08, 
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM,T_REMOTE_IMAGE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.41 listed in dnsbl.sorbs.net]
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* 0.0 HTML_IMAGE_RATIO_08 BODY: HTML has a low ratio of text to image
	area * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C892DE00C14
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 23:42:21 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id r20so40668949oie.0
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 23:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zobI74On565REHrErbkDQhlwcZkmIj3wpYUPvmEkf/g=;
	b=L3stN+Lg3Qcli8LpXKaYtwCPiZ7rQMEm7E3oY6bx3XS/+4UENhGwIw+9sTRmPUUldD
	2LcWk5/KQzOK9eqWlL+tIJIifx6Iy2U5KYB/KXi5bdRK1GJTrm/VD029GMbh14ECbdCA
	czRSUPOHKVKVhAQB3FND4wdUTXNQ/n6ozYse1ishttQLon4QcpViNXC2a8pnwv/m0cDh
	CyzMkRsmkfi1XJy92+RyqjS5RMQcDTV6mgsNTYgqmDTmyF92bZKGiHTCG93zovDgxpfu
	izcgV/cqaJvJhU6O4A5Fjf2yVgwcTJqgjq/mEmOihSoUH8msAb1xHDOLkQPgpZlWaM0t
	cTLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zobI74On565REHrErbkDQhlwcZkmIj3wpYUPvmEkf/g=;
	b=I5HV8I8V4OFamL2m4OkmKB7bVH+mEMVB7iv6EEdv6vAKnF4Xy2B1301HQVozpmzs2t
	/kQbanUYXFktB2dk74/DqLwYIVqech5L9iPsA6hyqDV+TRNn4/4Evu1YnnDL1VUbiowE
	KqeJTDm7aRd+eNNcGBfkxWDZBYTDpAjNROtfsfG2CzfxZ3U6I5gBdlwADRETHSMOvXFj
	IX+Chra2xpDKZVu3nlutJW+Yj1DLjpMZcXoSXI5d9o5WpIHnCdmHxJ0u/Of01Z8PeKK0
	8fnj8hVFtqaB69iO4tXobEevdAtLIlkPgo2/ZkipvcolhTMwK5eZacMZe2nfSTBpGX/H
	kBMA==
X-Gm-Message-State: AHPjjUi5txN+NfxLL9O9nxiePeB6g06hYIHc6vCHy+DO3KHJXiTOsKAs
	27B42TffCd80g0wjgfndvnDKyAjFYhp8beLg8uNBeA==
X-Google-Smtp-Source: AOwi7QCMNVRxfIoopmZMc0xx2+8+SNFDLRwAKuIl/maBJbXHLfQHLEToqjrzUBPIsRPzOmzkmzN+Pl74VO7yorEXv+Y=
X-Received: by 10.202.175.137 with SMTP id y131mr16599584oie.114.1505284940535;
	Tue, 12 Sep 2017 23:42:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Tue, 12 Sep 2017 23:42:20 -0700 (PDT)
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 08:42:20 +0200
Message-ID: <CABFXn3EX5-upvpAHh10c402Z1gmh1g2G0j=D=ubC7oYC3GEXhw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-ros] festival-2.3-r0 do_compile: oe_runmake failed
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
X-List-Received-Date: Wed, 13 Sep 2017 06:42:22 -0000
Content-Type: multipart/alternative; boundary="001a113cf64c2a9e2005590c7641"

--001a113cf64c2a9e2005590c7641
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i want to install festival on the target image,
it gives me this error *"ERROR: festival-2.3-r0 do_compile: oe_runmake
failed"*
i have added the meta-oe to bblayer also .

how to solve this error ?

--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>



=E2=80=8C

--001a113cf64c2a9e2005590c7641
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"mailtrack-img" alt=
=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mail/d053c74=
d67836e1a285988e9d01c8f8816256ab3.png?u=3D1822760">i want to install festiv=
al on the target image,=C2=A0<div>it gives me this error <i>&quot;ERROR: fe=
stival-2.3-r0 do_compile: oe_runmake failed&quot;</i><br clear=3D"all"><div=
>i have added the meta-oe to bblayer also .</div><div><br></div><div>how to=
 solve this error ?=C2=A0</div><div><br></div>-- <br><div class=3D"gmail_si=
gnature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#=
777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span=
 style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><span style=3D"=
color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,Emoji=
Font;font-size:16px"></span><div><font color=3D"#777777" face=3D"Tahoma, sa=
ns-serif, Arial, serif, EmojiFont"><span style=3D"font-size:13px">Graduated=
 from Faculty of Engineering - Electronics and Communications Department at=
 Cairo University.</span></font><br></div><div style=3D"color:rgb(0,0,0);fo=
nt-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px=
"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D"noopener no=
referrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sa=
ns-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Linkedin</sp=
an></font></a><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahom=
a,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=
=C2=A0</span></font><a href=3D"https://github.com/yahiafarghaly" rel=3D"noo=
pener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-family:T=
ahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">GitH=
ub</span></font></a></div></div></div></div></div></div>
<br><br><br>=E2=80=8C</div></div>

--001a113cf64c2a9e2005590c7641--
