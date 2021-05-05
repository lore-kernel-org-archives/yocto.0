Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web09.9629.1620227481151466679
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 08:11:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=PE7xlo+c;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.19, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 6357B1297
	for <yocto@lists.yoctoproject.org>; Wed,  5 May 2021 11:11:20 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Wed, 05 May 2021 11:11:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=VrAiq8MnIRalmfdfb8b4XVLUtePOqmS
	3+MFCOl52azM=; b=PE7xlo+c3P/i9R9UkDZol9vdPOG1IRRxWtxzB7aKw4pYKp8
	CvkyuKoE7kzNBne2YoJ8ke+A2w/yi0N3l4unnFSeSQaFk9yFb1hHR1R2mqDTNWAA
	Pz6Dlk7f2l1D9k6EZPuICzlnt54ej8wAcbmFvsSciJHpLG54DUBOY+5m5n/pfLIP
	xnMJ0/oUBoCs1OzSZuz4BFIclCfrcm5LUZGwx3UGEjkR8U5GmLsOqS4Nia0ltaEo
	EVZU3Sx53g44T1YqQ6kVv+kGKADQd8OjOea6BIjA2IVkLtdiFmA2wnbJJUlDZW6w
	Y6tVg4jpGFXW8H54xFIbU6gYRv/EuTSo0PGnpKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=VrAiq8
	MnIRalmfdfb8b4XVLUtePOqmS3+MFCOl52azM=; b=gUdOB0IQcAUksxcdB2uvWD
	W0gbJ290y1oDkBMglNubW36Z0FV7LBQHFyS4PhJjGooYGx0uXGdHQgdfInTvHlQ6
	jejkq97Qzj29bQzq9XLSE5amGzanNId6pVj6LPWsDwpu6D/wvjvB/A8R2G2oxnyC
	Nq6JRX+Go5pO+nu2oABecs0kZbDp13sMlNLKM1FTEhv35usr0uLseGwLddfTl5TA
	zJllDHMYYegZeACTDBUbT+kKXaqm8i72oMI9BCQSMcuAL8OCbhUATRK9fqh3bJFK
	BQ7KH6Q6RctYajEDBplN0FYtQr//TN8gSaikbhqMO7E40gDLne2pSxUyALDVLlaQ
	==
X-ME-Sender: <xms:l7WSYEX5NiHnxRsBikZCLBSBTRb2Vtv9mCz7Uj5R9CWseE19uXg_HQ>
    <xme:l7WSYIk87nGY2zUAWX2_yK6J5Qxb262LwxLQqunAVsHvtUaCBfbmeNLnmiT2awMpI
    HYQG-o-aN5eHXLs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefkedgkeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsegrtd
    erreerredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceo
    ofgrnhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeelhedthf
    ehieetfeetgfdvjeefueelheevgfdvkeeiheejfedvueehveffudejvdenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrsh
    htofgrihhlrdfhof
X-ME-Proxy: <xmx:l7WSYIY0fyDddJK012qAb7fJJP8s5esuxRpDtOVBxwx4CMkrWO9NCg>
    <xmx:l7WSYDUtxQOypWc17ts_QTLImKB5wK0zw1rUqLNwP0F8oHyKGV5VdQ>
    <xmx:l7WSYOmhsaD9VGVRG2kC5sZZ3GUp3luiPLZDkAyNopeThHgCDrosMA>
    <xmx:mLWSYKxnMdvns2DONenr2vn4PaqXKTo0PD4Q0DL9swFraHPw6CpJpA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id D6C1C2E0062; Wed,  5 May 2021 11:11:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-442-g5daca166b9-fm-20210428.001-g5daca166
Mime-Version: 1.0
Message-Id: <e229e3ff-5fd1-4026-92a8-c40ca4cf8633@www.fastmail.com>
In-Reply-To: <28966.1620221649842149776@lists.yoctoproject.org>
References: <c72280d9-2a35-4774-aa2e-25f48141479f@www.fastmail.com>
 <28966.1620221649842149776@lists.yoctoproject.org>
Date: Wed, 05 May 2021 17:10:59 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi] Booting a Raspberry Pi 4 using PXE
Content-Type: multipart/alternative;
 boundary=33980d4b58984f458000dac8e5f96948

--33980d4b58984f458000dac8e5f96948
Content-Type: text/plain

Hello Anton,

Am Mi, 5. Mai 2021, um 15:34, schrieb Anton Antonov:
> I don't know what exactly you mean by "whenever the Raspi is booting over the network". 
> When a machine boots from network (i,e. using DHCP/BOOTP) then usually DHCP server points to, for example, a TFTP server where the kernel and initramfs should be obtained from and kernel parameters. So, you need to check your DHCP/TFTP/etc servers configuration for kernel parameters. 

The boot files (kernel, kernel parameters, device tree overlays, ...) served by TFTP are bit-identical to the ones present at `/boot` of the usb stick.

When I boot over PXE/BOOTP/DHCP/TFTP/etc, something seems to replace all occurences of `8250.nr_uarts=1` with `8250.nr_uarts=0`. When I boot using usb drive using the exact same files, this doesn't happen and uart is active.


Regards,
Manuel

--33980d4b58984f458000dac8e5f96948
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hello Anton,<br=
></div><div><br></div><div>Am Mi, 5. Mai 2021, um 15:34, schrieb Anton A=
ntonov:<br></div><blockquote type=3D"cite" id=3D"qt" style=3D""><div>I d=
on't know what exactly you mean by "whenever the Raspi is booting over t=
he network". <br></div><div>When a machine boots from network (i,e. usin=
g DHCP/BOOTP) then usually DHCP server points to, for example, a TFTP se=
rver where the kernel and initramfs should be obtained from and kernel p=
arameters. So, you need to check your DHCP/TFTP/etc servers configuratio=
n for kernel parameters. <br></div></blockquote><div><br></div><div>The =
boot files (kernel, kernel parameters, device tree overlays, ...) served=
 by TFTP are bit-identical to the ones present at `/boot` of the usb sti=
ck.<br></div><div><br></div><div>When I boot over PXE/BOOTP/DHCP/TFTP/et=
c, something seems to replace all occurences of `8250.nr_uarts=3D1` with=
 `8250.nr_uarts=3D0`. When I boot using usb drive using the exact same f=
iles, this doesn't happen and uart is active.<br></div><div><br></div><d=
iv><br></div><div>Regards,<br></div><div>Manuel</div></body></html>

--33980d4b58984f458000dac8e5f96948--
