Return-Path: <donal.morrissey@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2311E00C3D; Tue, 13 Nov 2018 11:12:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (donal.morrissey[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13500E00BB7
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 11:12:35 -0800 (PST)
Received: by mail-lf1-f43.google.com with SMTP id e26so7896144lfc.2
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 11:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bdx8Oj+M4OlGpSXtqeLoeNlm/2wzSacm7O6mzPI4q2Y=;
	b=ub/EgkYaofaqCkuEnMnZNuCzkzjRHOya9GuvSGHLGzRhot7kCm9EyObyxgkYSKOF1l
	QivFiDEIYwMoGo7hn9GJ0NBHhIPmruN2vHxYCR3o79rRG770KREQlhwQlKJBOKl8EzpA
	PdWzmxLusooeNtn78Qw1bL3vClXxN1cirnnrcew69NsFN41adgY7r8cEyQQ4S4gmVkKA
	R6IMvOCcBJQy+UcG+Btm8DLH14rWS7Eyp+LgYij/grKKuK5OZkrLPvOWGVWkfk6vNcqN
	lYBhhKAKMtBklEUf3c+XOvUpCSWnmcIrkVmzTz08+U72VtovcEEDGYQJXh5JxGysoYuQ
	HDJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bdx8Oj+M4OlGpSXtqeLoeNlm/2wzSacm7O6mzPI4q2Y=;
	b=KAFX2li75m6lI4iE590Z0l+Fq5xKoKkCoJUzRM65u+nDI8nzNqIGvLmmJxBn5XO6cY
	pOXFAjQA5ZVsrk1TeKbhnbhgY1NqnimTFDAUBaOUApfTiKFO75ONdbZudSVheh63yP8+
	EFrsxPwDaRx2c8bcI3k5uZuXLLFJ6To6BsbLpLxuSeluVjCyFpcyYW/+e3ZhpJNfx3Px
	TX9Xj3tyqfB/49Ll85e0xPpq0yhua2jJ2uSqLMOEMxnpQEOnQV7zRs+NK92caDhpDus5
	kb24T/PzzMsdecWX804kJY4YrUpS1zVyMGbRrB6Zu2qTRapprx/yDZTQdd2+Tuc5BGvC
	MXMQ==
X-Gm-Message-State: AGRZ1gKX9GT4GxDhJ6ZRm1zFAi5puIJ8xKrgVMzGlC0rrY6lIU0G00sj
	9QBsuSykoJKeG4TlQkg0yixY47eFAMDnCls7rnFriszc
X-Google-Smtp-Source: AJdET5fBWmUr0hisxR6Wfigi4BLBTn31OSq/t/4jAxXY1/yMwXFGACGci94IVjBXNJ36osIbXHH2fjXWiJitJLR6nPw=
X-Received: by 2002:a19:5d42:: with SMTP id p2mr3833040lfj.83.1542136354460;
	Tue, 13 Nov 2018 11:12:34 -0800 (PST)
MIME-Version: 1.0
From: Donal Morrissey <donal.morrissey@gmail.com>
Date: Tue, 13 Nov 2018 19:12:23 +0000
Message-ID: <CABj1EzHtJ8kqjLGQOh2zTqcP5TD3azHXz0+6RqqnggvA4NpB6Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: wic creates invalid image
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
X-List-Received-Date: Tue, 13 Nov 2018 19:12:36 -0000
Content-Type: multipart/alternative; boundary="0000000000009a5d35057a909958"

--0000000000009a5d35057a909958
Content-Type: text/plain; charset="UTF-8"

Hi There,
I have a problem with an image being created by wic. If I add more than 4
partition definitions to the wks file, the generated image will include an
additional partition with no Fstype, and spanning the full length of the
additional partitions.

Take the following wks file:

part --source rawcopy --sourceparams="file=<long path>/image-r0/uboot.env"
--ondisk "mmcblk0" --align 4096 --no-table
part --source bootimg-partition --ondisk "mmcblk0" --fstype=vfat --label
boot --align 4096 --active --fixed-size 40
part --source rootfs --ondisk "mmcblk0" --fstype=ext4 --label primary
--align 4096 --fixed-size 147456k --exclude-path data/
part --source rootfs --ondisk "mmcblk0" --fstype=ext4 --label secondary
--align 4096 --fixed-size 147456k --exclude-path data/
part --ondisk "mmcblk0" --fstype=ext4 --label appdata1 --align 4096
--fixed-size 147456k
part --ondisk "mmcblk0" --fstype=ext4 --label appdata2 --align 4096
--fixed-size 147456k
bootloader --ptable msdos

wic will create a .direct file with the following structure:
Num     Start        End          Size      Fstype
 1      12582912     54525951     41943040  fat16
 2      54525952    205520895    150994944  ext4
 3     205520896    356515839    150994944  ext4
 4     360709632    666894335    306184704
 5     360710144    511705087    150994944  ext4
 6     515899392    666894335    150994944  ext4

Note the start and end addresses of partition 4, it spans from the start of
partitions 5 (appdata1)  to the end of partition 6 (appdata2).

If I modify the wks file and remove the entry for appdata2, the created
direct file is valid:

Num     Start        End          Size      Fstype
 1      12582912     54525951     41943040  fat16
 2      54525952    205520895    150994944  ext4
 3     205520896    356515839    150994944  ext4
 4     356515840    507510783    150994944  ext4

Any suggestions on what is going on here?

Cheers,
Donal

--0000000000009a5d35057a909958
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi There,<br>I have a problem with an image being created =
by wic. If I add more than 4 partition definitions to the wks file, the gen=
erated image will include an additional partition with no Fstype, and spann=
ing the full length of the additional partitions.<br><br>Take the following=
 wks file:<br><br>part --source rawcopy --sourceparams=3D&quot;file=3D&lt;l=
ong path&gt;/image-r0/uboot.env&quot; --ondisk &quot;mmcblk0&quot; --align =
4096 --no-table<br>part --source bootimg-partition --ondisk &quot;mmcblk0&q=
uot; --fstype=3Dvfat --label boot --align 4096 --active --fixed-size 40<br>=
part --source rootfs --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --label p=
rimary --align 4096 --fixed-size 147456k --exclude-path data/<br>part --sou=
rce rootfs --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --label secondary -=
-align 4096 --fixed-size 147456k --exclude-path data/<br>part --ondisk &quo=
t;mmcblk0&quot; --fstype=3Dext4 --label appdata1 --align 4096 --fixed-size =
147456k<br>part --ondisk &quot;mmcblk0&quot; --fstype=3Dext4 --label appdat=
a2 --align 4096 --fixed-size 147456k<br>bootloader --ptable msdos<br><br>wi=
c will create a .direct file with the following structure:<br>Num =C2=A0 =
=C2=A0 Start =C2=A0 =C2=A0 =C2=A0 =C2=A0End =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Size =C2=A0 =C2=A0 =C2=A0Fstype<br>=C2=A01 =C2=A0 =C2=A0 =C2=A012582912 =
=C2=A0 =C2=A0 54525951 =C2=A0 =C2=A0 41943040 =C2=A0fat16<br>=C2=A02 =C2=A0=
 =C2=A0 =C2=A054525952 =C2=A0 =C2=A0205520895 =C2=A0 =C2=A0150994944 =C2=A0=
ext4<br>=C2=A03 =C2=A0 =C2=A0 205520896 =C2=A0 =C2=A0356515839 =C2=A0 =C2=
=A0150994944 =C2=A0ext4<br>=C2=A04 =C2=A0 =C2=A0 360709632 =C2=A0 =C2=A0666=
894335 =C2=A0 =C2=A0306184704 =C2=A0<br>=C2=A05 =C2=A0 =C2=A0 360710144 =C2=
=A0 =C2=A0511705087 =C2=A0 =C2=A0150994944 =C2=A0ext4<br>=C2=A06 =C2=A0 =C2=
=A0 515899392 =C2=A0 =C2=A0666894335 =C2=A0 =C2=A0150994944 =C2=A0ext4<br><=
br>Note the start and end addresses of partition 4, it spans from the start=
 of partitions 5 (appdata1)=C2=A0 to the end of partition 6 (appdata2).<br>=
<br>If I modify the wks file and remove the entry for appdata2, the created=
 direct file is valid:<br><br>Num =C2=A0 =C2=A0 Start =C2=A0 =C2=A0 =C2=A0 =
=C2=A0End =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Size =C2=A0 =C2=A0 =C2=A0Fstype=
<br>=C2=A01 =C2=A0 =C2=A0 =C2=A012582912 =C2=A0 =C2=A0 54525951 =C2=A0 =C2=
=A0 41943040 =C2=A0fat16<br>=C2=A02 =C2=A0 =C2=A0 =C2=A054525952 =C2=A0 =C2=
=A0205520895 =C2=A0 =C2=A0150994944 =C2=A0ext4<br>=C2=A03 =C2=A0 =C2=A0 205=
520896 =C2=A0 =C2=A0356515839 =C2=A0 =C2=A0150994944 =C2=A0ext4<br>=C2=A04 =
=C2=A0 =C2=A0 356515840 =C2=A0 =C2=A0507510783 =C2=A0 =C2=A0150994944 =C2=
=A0ext4<br><div><br></div><div>Any suggestions on what is going on here?</d=
iv><div><br></div><div>Cheers,</div><div>Donal</div><div><br></div></div>

--0000000000009a5d35057a909958--
