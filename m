Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC0B0E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 02:25:24 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id y10so771581wgg.21
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 02:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=LCd8vB6k4edLx3g5LRnkGXVK7V9aCG6HYt2UA6llSaM=;
	b=hiNZ8CDfimbYdWa6M9NvR1srN2iCYHdJFxpNTRdUoXZqOScbhM4nFUCXm/f0B3TNFX
	S2mTyjWdiNsJJhrZxXkP3jT3pcvcHhXktNIwB5kbVWbdfLvFLQ1lTaLVo5UYgiIsDSfB
	FqZjNCshCBSi5V1LqAC8C9lbedohEXc3oXkG8GvqklNr5VKTW740rAcMVFSUAWYD2kYU
	wTitjF0vRhNr5oy811YA98d2WDQJgy58VKE/ZhKyHfa/89vEJ6bSIL6vdNcHzdGDneU5
	CKlwd4D9K5/b95K4J0o/TU5LDEj5KlMOItdCBSXz2fHO5zIi3lfstWoozDruJrlEAN1E
	F3Jg==
X-Received: by 10.180.72.228 with SMTP id g4mr64853051wiv.22.1366622723096;
	Mon, 22 Apr 2013 02:25:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.40.163 with HTTP; Mon, 22 Apr 2013 02:25:03 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Mon, 22 Apr 2013 11:25:03 +0200
Message-ID: <CAAGt+t3dy7C1-gGdypOY4heYF8angEx1S9HZaFCW+WgkfNnnZA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error: runqemu: command not found
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
X-List-Received-Date: Mon, 22 Apr 2013 09:25:25 -0000
Content-Type: multipart/alternative; boundary=f46d043c819ef3c6c204daefa593

--f46d043c819ef3c6c204daefa593
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I downloaded poky-danny-8.0, after editing conf file, i made a
build(bitbake core-image-minimal), after the build completed. When I try to
boot the image it throws  *runqemu: command not found. *Any Ideas?

Thank You,

-- 
Regards,
Zafrullah Syed

--f46d043c819ef3c6c204daefa593
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I downloaded poky-danny-8.0, af=
ter editing conf file, i made a build(bitbake core-image-minimal), after th=
e build completed. When I try to boot the image it throws =A0<i>runqemu: co=
mmand not found. </i>Any Ideas?</div>

<div><br><div style>Thank You,</div><div style><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>

</span></font></div>
</div></div>

--f46d043c819ef3c6c204daefa593--
