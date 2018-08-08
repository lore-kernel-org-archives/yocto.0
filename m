Return-Path: <jdhanasekarmca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33A42E007D1; Wed,  8 Aug 2018 05:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdhanasekarmca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8651E003D7
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 05:58:59 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id s7-v6so3258273itb.4
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2018 05:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=62izn6vPLfUZs5Da7+FJ7zfDPxH7qemhIDzNpFroqX8=;
	b=H4ix2FNXHEiWSmWosGUsQYqN+mmJ/tggonDkuMZkt+WkgUHVmO8OyE6IO92LlwZMjK
	FQdf/o48byAhmXkKVEQe//b0jNgizsaRmkcHwQuHzqmGAFTirPk9rLDX1O5CyPjBlTLi
	qe3LQLTAeCvIAzXe4DJIAH1fOlO57MIeF2JDDsHDHioOkFMV/arNZDTtSOlJ1L2Hfrgo
	54e55pvPRexqUPTPl5omEs9FqdyhIbzaf4rtuPOii9e5q6mpta32C+UYwAKQPiYrgBU9
	7rOPvYYlnxAqpZS9KxPN3qdq6YFArFmOUM5beKrYkLUXXRPpwoWHjijt/4r4nIQizFKA
	ZXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=62izn6vPLfUZs5Da7+FJ7zfDPxH7qemhIDzNpFroqX8=;
	b=cfnAu14RkQ2+VSKz+ycHFXMpfJEf/6XjRGsZHJ/4FfiN8nw1SHB0Q/umU8TGunJcBR
	JoYI37gaLLjengVngMjT3NBHMirM2+CfuOZ8TdFrpxPeAj50cHeL7QyooPNzyV8cmrjP
	g5EZYRUxnpQQZsrpp8RyVRpUgApowAfLNA5I8uwi0z/n4Snp0xNC7V78uvdzXQiMMYDD
	ulbNtdTF6uvdiPXU2dpc8kygQa7D+Z1GbRq81IQdkvV/WKvZq6fRoHLpz52uLLfZ4Ple
	R+yMfl/llMiqbyZKDNJie98xTCXoyG6gYkM2JqSd9yoBsqDT/ZI/d0i8MJjlNr1cGtdX
	KtJw==
X-Gm-Message-State: AOUpUlEXd11sArJrd8lYyRnJpH6jpq68YeIMXm7D1nNiMnlYz3QlEY8T
	dpk23yJZvCELwEuLoauZAGI731HB5obcM6IzcWSTJnUN
X-Google-Smtp-Source: AA+uWPwYZCwIqtlyxdNntoQbi35gkLc4Mkcap8654yShGbjOeum8J8ojAg3TIJSQYVFQ8BZNvKew658UCVyAJkmUKjM=
X-Received: by 2002:a02:2505:: with SMTP id
	g5-v6mr2301648jag.112.1533733138971; 
	Wed, 08 Aug 2018 05:58:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6952:0:0:0:0:0 with HTTP;
	Wed, 8 Aug 2018 05:58:58 -0700 (PDT)
From: Dhanasekar Jaganathan <jdhanasekarmca@gmail.com>
Date: Wed, 8 Aug 2018 18:28:58 +0530
Message-ID: <CAE4v+fRrFSmqOR_rfkdhRTh7emfam5MPimncM7PgUJok+hTXeg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-intel] Getting black screen for Install option
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
X-List-Received-Date: Wed, 08 Aug 2018 12:59:01 -0000
Content-Type: multipart/alternative; boundary="000000000000edd4b00572ec120f"

--000000000000edd4b00572ec120f
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have created yocot bootable USB live image by this command "* sudo dd
if=core-image-sato-intel-core2-32.hddimg of=/dev/sdb1"*
"

After power on my system, I have got three options,

1. boot
2. install
3. Reboot into firmware.


When I select "install" to install yocto on mSata, I am getting black
screen.
I am using com port serial console for video propose. My board has no
support for onboard or offboard VGA.

If you have solution for this issue, please provide me.

HW details:

Board : Intel Atom C200 CPU , Mohon Peak
BIOS: Coreboot + UEFI Payload.


Thanks,
Dhanasekar

--000000000000edd4b00572ec120f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr"><div>Hi Al=
l,</div><div><br></div><div>I have created yocot bootable USB live image by=
 this command &quot;<b> sudo dd if=3Dcore-image-sato-intel-<wbr>core2-32.hd=
dimg of=3D/dev/sdb1&quot;</b><br>&quot; <br></div><div><br></div><div>After=
 power on my system, I have got three options,</div><div><br></div><div>1. =
boot</div><div>2. install</div><div>3. Reboot into firmware.</div><div><br>=
</div><div><br></div><div>When I select &quot;install&quot; to install yoct=
o on mSata, I am getting black screen. <br></div><div>I am using com port s=
erial console for video propose. My board has no support for onboard or off=
board VGA. <br></div><div><br></div><div>If you have solution for this issu=
e, please provide me. <br></div><div><br></div><div>HW details:</div><div><=
br></div><div>Board : Intel Atom C200 CPU , Mohon Peak</div><div>BIOS: Core=
boot + UEFI Payload.<br></div><div><br></div><div><br></div><div>Thanks,</d=
iv><div>Dhanasekar<br></div></div>
</div><br></div>

--000000000000edd4b00572ec120f--
