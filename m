Return-Path: <apetroaiecristeamihaela@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EAEEE0175C; Tue,  5 Jun 2018 07:59:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (apetroaiecristeamihaela[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A8D1E01754
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 07:59:17 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id o12-v6so2772313wrm.12
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2018 07:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=aYsDAw3BuG8LP7vWDjRl82vZhD+NZSR5h7X67xx3stU=;
	b=j/z5xO9hP86+BgDfF3jyPg5KSS31zNiM8/ICk42hcu0VRDWp/0oJRNstaNh+QEQEQI
	lC90ru+KvosFb4EoVeMmsLUrsbdnH+qopUIV+fnKGEnHcnxuOInXFincLRLFus/XloK2
	EOpV7uv2n8FYEU+kwLjt7XVFlocot7xRUj0t1UEdVf2a2b3t8EkmL/zs692jIB99YtAL
	RnIU00oQYoWsPrI4l5FAmaxzVTVewYT2BNMW9ctTSQDQKfVe8CuBf9jrRBRFswOTwGd7
	oGKmAMO0MDrHFzg2S2lhHO1PVlhYCqSz4CbjdfJOh18WVBwQiykjlK3iqQ5zImucEn+Y
	6Y1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=aYsDAw3BuG8LP7vWDjRl82vZhD+NZSR5h7X67xx3stU=;
	b=By2/GCDXD2LpbowckVPSHvDdcquZzFVgQpjBNOZOTxgWAUHh7MmN4/5pJc4VLEV/+p
	YoQmSsLmdHQqaBoMf2QzKRCdWCxinZts4e9chjXqr3H7CKaBzRWmgzNlEcTyye4xHv1z
	AJhxPC2HbPu/0or+ISrfDY6HIBjHSZYLBAixeH1HtiMeoZomWue6PsNaTWzKeAD0mvRh
	tJjcB8OOeeA3Qph2qSr+b7pGd3jFgGqcMG+g4nFrmz9AjXxK6INPWqcRfvfAIRRuW9nM
	aIN1LvGuFNm81S1/YCOouU8WEwSGra1NGRo3HU/v3yT07HhR0GMPkfxq7sverG2DXvpa
	BF2w==
X-Gm-Message-State: ALKqPweLeCX9hKrNceG+byrARsq7nZfpBQS7hrMWEHPwLt4l77j/g4Gm
	Pwsc+E/T6K/gMLkrMQkqOcQ=
X-Google-Smtp-Source: ADUXVKLDJGrEGg4eH74AxijytapUUJRapWP7PTFQB8qwY7ZjWPz3SEHI5NHCPoo6/pwQPYaRbvk/6A==
X-Received: by 2002:adf:b782:: with SMTP id
	s2-v6mr18855347wre.247.1528210756560; 
	Tue, 05 Jun 2018 07:59:16 -0700 (PDT)
Received: from uos-147711.clients.soton.ac.uk (boldrewood.soton.ac.uk.
	[152.78.0.15]) by smtp.gmail.com with ESMTPSA id
	u7-v6sm34109696wrp.44.2018.06.05.07.59.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Jun 2018 07:59:15 -0700 (PDT)
From: Mihaela Apetroaie-Cristea <apetroaiecristeamihaela@gmail.com>
Message-Id: <A33D6C2E-A641-476F-8ECA-CF92032A47E4@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Date: Tue, 5 Jun 2018 15:59:14 +0100
In-Reply-To: <CAALXFYwLpD0yr1s2CA9XT0X2iRhi_ApaAjW1Mra6ZonJb+s_kA@mail.gmail.com>
To: =?utf-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
References: <443D9650-0A26-433A-AC22-F61DBFDE1221@gmail.com>
	<CAALXFYwLpD0yr1s2CA9XT0X2iRhi_ApaAjW1Mra6ZonJb+s_kA@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.5.20)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: partitions resizing on the fly
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
X-List-Received-Date: Tue, 05 Jun 2018 14:59:18 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A56584E9-8309-4C77-B2B8-5C11EF390475"

--Apple-Mail=_A56584E9-8309-4C77-B2B8-5C11EF390475
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,=20

Thanks for your answer. However, my question is whether there is a =
mechanism such that the root will keep it=E2=80=99s minimal size, but be =
able to expand if there is free space on the disk when new files are =
added (not necessarily to occupy the whole free space), and shrink back =
if files are deleted. At the moment I am happy to flash it with the =
minimal size, but it runs out of space when I want to add something to =
the partitions, although there is extra space on the disk that it could =
take. I know the implementation of this is complicated, but I am =
wondering if anyone knows a solution for this.

Thank you

> On 5 Jun 2018, at 15:50, Iv=C3=A1n Castell <icastell@nayarsystems.com> =
wrote:
>=20
> I managed this issue redefining this script in my custom layer (rocko =
branch):
>=20
>     scripts/lib/wic/canned-wks/mkefidisk.wks
>=20
> and setting a bigger size for the root partition (80GB in my case):
>=20
>     part / --source rootfs --ondisk sda --fstype=3Dext4 --label =
platform --align 1024 --use-uuid --size 80000
>=20
> Its not very nice, I know. But yocto can't know the real size of your =
root device until writing the final image.
>=20
> I don't know if this is the best way to fix this  but it works.=20
>   -- Ivan
>=20
>=20


--Apple-Mail=_A56584E9-8309-4C77-B2B8-5C11EF390475
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for your answer. However, my question is whether there =
is a mechanism such that the root will keep it=E2=80=99s minimal size, =
but be able to expand if there is free space on the disk when new files =
are added (not necessarily to occupy the whole free space), and shrink =
back if files are deleted. At the moment I am happy to flash it with the =
minimal size, but it runs out of space when I want to add something to =
the partitions, although there is extra space on the disk that it could =
take. I know the implementation of this is complicated, but I am =
wondering if anyone knows a solution for this.</div><div class=3D""><br =
class=3D""></div><div class=3D"">Thank you<br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On 5 Jun =
2018, at 15:50, Iv=C3=A1n Castell &lt;<a =
href=3D"mailto:icastell@nayarsystems.com" =
class=3D"">icastell@nayarsystems.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">I managed this issue redefining this script in my custom =
layer (rocko branch):<div class=3D""><br class=3D""></div><div =
class=3D"">&nbsp; &nbsp; scripts/lib/wic/canned-wks/mkefidisk.wks<br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">and =
setting a bigger size for the root partition (80GB in my =
case):</div><div class=3D""><br class=3D""></div><div class=3D"">&nbsp; =
&nbsp; part / --source rootfs --ondisk sda --fstype=3Dext4 --label =
platform --align 1024 --use-uuid --<b class=3D"">size 80000</b><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D"">Its =
not very nice, I know. But yocto can't know the real size of your root =
device until writing the final image.</div><div class=3D""><br =
class=3D""></div><div class=3D"">I don't know if this is the best way to =
fix this&nbsp; but it works.&nbsp;<br class=3D""><div class=3D"">&nbsp; =
-- Ivan</div><div class=3D""><br class=3D""></div></div><div =
class=3D"gmail_extra"><div class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><br class=3D""></div>
</div></div>
</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_A56584E9-8309-4C77-B2B8-5C11EF390475--
