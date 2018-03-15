Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81037E006E9; Thu, 15 Mar 2018 05:22:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBDF8E00547
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 05:22:13 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id u5-v6so8949170itc.1
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 05:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=S9eN0mZCcnNF6TGqXp3fetRF3HkelseHKDcIE5gLTlQ=;
	b=Labwos5DqrYdN0wiAuwGg68ybU0d8rmWtDcly7zwmE2bmqzLt7oSrwJIHtpoW3Nrub
	YVq11ofEik1t4d5LwTbOGQ7y/DFwO9FAMFZ+8EVPyqd9M0SiW0cGSNdKrb+PjUdiN1nS
	2VfLhLITxWJZalQvsXNC+cBgetPMymLw30Mfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=S9eN0mZCcnNF6TGqXp3fetRF3HkelseHKDcIE5gLTlQ=;
	b=GdMRecE/SQ4H6p+k0BSy+Z35eY+7Wj+k5f+FfXRkEsQZQ4tH5bIpYpZWxveTBwpXCC
	+U+Q/ghJKJhdijaSYvfRucq21ii8R7uXQWJzLFcty5g72LDNmO6mV584FVIysLJzugZX
	QOJMU+Yhb5B0LELbhhXdlYtlZtwy9SieGSh/xoD3n9uN3P7DREvsPE4+8jhHO+P2mjnz
	ku5bKFQuAddnyVcvYzzIBOOwEg5XHoMplZKkQhDXEsbhzlzpSicSCqrr9l9DIWkoYsMi
	WqVqiKIvbua5ARWNEpcpdx4dOx0FBBQlS/0ylRyVesJKaNdtAfcEPiKp+gUevPtXVtDO
	EZnQ==
X-Gm-Message-State: AElRT7FoY81YUvn+rXKAOGNdPCurYlh+UnLtUTnkbZ8FfcgEWXHO720n
	E+BWs7BmfEN/OZS1FnCqkC7G+IWcd4xrqXO8ROULZGtT
X-Google-Smtp-Source: AG47ELvFWcPBPw3qjdPfhgkKRG9BRsHXoqocV7GV+ySa1MkuTPWQUsuOUj5LVBMRST8BVQJQg4+2D7gZY1CQhRYrbIE=
X-Received: by 10.36.144.7 with SMTP id x7mr6231940itd.128.1521116532996; Thu,
	15 Mar 2018 05:22:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Thu, 15 Mar 2018 05:22:12 -0700 (PDT)
In-Reply-To: <CAALXFYz8FSAKqG8dTYy4Or5kyDPxmQ7-Snws5cVW89CHePEL3g@mail.gmail.com>
References: <CAALXFYz8FSAKqG8dTYy4Or5kyDPxmQ7-Snws5cVW89CHePEL3g@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 15 Mar 2018 13:22:12 +0100
Message-ID: <CAALXFYz0GR3QYM5OLfSK9+XBSVHmOCKqdtQ18XFw5shXMqweuA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kickstart file to customize rootfs mount opts not modifying fstab as expected
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
X-List-Received-Date: Thu, 15 Mar 2018 12:22:15 -0000
Content-Type: multipart/alternative; boundary="94eb2c07ec229c92de0567728ae7"

--94eb2c07ec229c92de0567728ae7
Content-Type: text/plain; charset="UTF-8"

After some googling I fixed my issue customizing mkefidisk.wks script, adding
"rootflags=data=journal" to the line related with the bootloader:

    bootloader --ptable gpt --timeout=5 --append="rootfstype=ext4
console=ttyS0,115200 console=tty0 rootflags=data=journal noapic"

Now my rootfs is mounted with "journal" flag enabled:

    # mount | grep sda
    /dev/sda3 on / type ext4 (rw,relatime,nodelalloc,data=journal)

I don't know if this is the most proper way to manage this issue, but at
least it works now.

If some of you knows a better way to manage this, please let me know about
it.

Thank you in advance! :)

--94eb2c07ec229c92de0567728ae7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After some googling I fixed my issue customizing <span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline">mkefidisk.wks script,=C2=A0</span>adding &quot;rootflags=
=3Ddata=3Djournal&quot; to the line related with the bootloader:<div><br></=
div><div>=C2=A0 =C2=A0 bootloader --ptable gpt --timeout=3D5 --append=3D&qu=
ot;rootfstype=3Dext4 console=3DttyS0,115200 console=3Dtty0 rootflags=3Ddata=
=3Djournal noapic&quot;<br></div><div><br></div><div>Now my rootfs is mount=
ed with &quot;journal&quot; flag enabled:</div><div><br></div><div><div>=C2=
=A0 =C2=A0 # mount | grep sda</div><div>=C2=A0 =C2=A0 /dev/sda3 on / type e=
xt4 (rw,relatime,nodelalloc,data=3Djournal)</div></div><div><br></div><div>=
I don&#39;t know if this is the most proper way to manage this issue, but a=
t least it works now.=C2=A0</div><div><br></div><div>If some of you knows a=
 better way to manage this, please let me know about it.</div><div><br></di=
v><div>Thank you in advance! :)</div><div><br></div><div><br></div></div>

--94eb2c07ec229c92de0567728ae7--
