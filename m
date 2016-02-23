Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 222E2E00D1E; Tue, 23 Feb 2016 12:10:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B72E00CCC
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 12:10:05 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id g62so216799593wme.0
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 12:10:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=c4PBEzR2dc3ibHTrw9Npc6plo6+oUW9oRhj9Ipk7N2s=;
	b=dGQpV8guwa0wcxQ7xiHVv8qus81LDCVtR6wbx2Y58ofnC795POtu7LcqIY7w/1NDOA
	O2uPPLS8FFE48d5C5PMNhaRVpqXzT2EJwbGB1lNTphzkazs3qQ8VzjHiuMFouOzvEu5k
	uIuXWSgrqtmqHJLVvkEzHIWDFM6Vg9nY04OlD5HeVIi3qPYiG8cl9MtPc+PojQ1T6/UO
	MiNrWTe7KCQ8rZ3dbnA98q66DeBwZ++XMIUeaUs1PbB5WQdvbQAW6I5pVDzSKQFoIxOh
	9ulKa3EVCdZEuyJynVPw8xMCuW4Zr/KVohZeN5WCuTj4/o7VtH0II+QLg3QH/3m8YI7z
	5CGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=c4PBEzR2dc3ibHTrw9Npc6plo6+oUW9oRhj9Ipk7N2s=;
	b=HmUQVnyPiDFfFYG+BCzG7aKluSVw2EjDxhcyAR4BSo2ipnkqs9udp4V+J3mzvThDkR
	Bpjbfzo3e1uJs04eQ0DbZ0y4lbNT00ZJgW3dhHXOYX/4tZZeftPk/O/WFbRZGjtpr+G7
	7gytGxwPijmjiL7AKLgaBqZtt8ep5OT7BTo1g12gEMSS84g0w5MnYBINO2dhjnLDc/py
	pcaptAFmTqClbHWBhBx6d7xikOlkh88A4wWnseptOukcy94Bq3RfavfcNtZyBXKBoa3o
	dFUDLFv0RCVEq1X8ExFeoRydKkk0ejMYCQP1d16wQ6j1yi3w5mWkdWksDcEW0wf+0ZDs
	WbuQ==
X-Gm-Message-State: AG10YORXjoVyuFjWaKu52bJWxQ8AKTv1+WzyPQqRYaeY2kOo/9c5sPwrR/hZMzyd+fErIXVrNirP80Ounf1SPQ==
X-Received: by 10.194.95.40 with SMTP id dh8mr40210997wjb.146.1456258204165;
	Tue, 23 Feb 2016 12:10:04 -0800 (PST)
MIME-Version: 1.0
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Tue, 23 Feb 2016 20:09:54 +0000
Message-ID: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, urnen81@yahoo.es
Subject: [meta-chip] How to flash yocto's output into CHIP
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
X-List-Received-Date: Tue, 23 Feb 2016 20:10:10 -0000
Content-Type: multipart/alternative; boundary=047d7bea350ef5ec23052c758835

--047d7bea350ef5ec23052c758835
Content-Type: text/plain; charset=UTF-8

Hi,

I'm wondering if anyone managed to flash the CHIP board with a (successful)
yocto image build.

I didn't succeed but here are the few things I found :

Comparing the files expected in CHIP-tools/ and the ones available in Yocto
deploy/image/chip/ I see some are missing in yocto :
uboot-env.bin
sunxi-spl-with-ecc.bin
I tried using the ones downloaded with chip-update-firmware.sh but it
doesn't work...

While flashing, at some point, the chip (in FEL mode) disconnects the USB
connection. If it goes well the chip reconnects as a ttyACM0. If it doesn't
go well (which is my case), chip never shows up !

If anyone managed to get the thing working please let me know. If not I am
willing to try any idea you may have.

Regards,

Valentin

--047d7bea350ef5ec23052c758835
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m wondering if anyon=
e managed to flash the CHIP board with a (successful) yocto image build.<br=
><br></div>I didn&#39;t succeed but here are the few things I found :<p>Com=
paring the files expected in CHIP-tools/ and the ones available in
 Yocto deploy/image/chip/ I see some are missing in yocto : <br>uboot-env.b=
in<br>sunxi-spl-with-ecc.bin</p>

I tried using the ones downloaded with  chip-update-firmware.sh but it does=
n&#39;t work...<br><br></div><div>While flashing, at some point, the chip (=
in FEL mode) disconnects the USB connection. If it goes well the chip recon=
nects as a <span class=3D"ember-view" id=3D"ember1076"><span class=3D"searc=
h-highlight">ttyA</span>CM0. If it doesn&#39;t go well (which is my case), =
chip never shows up !<br><br></span></div><div><span class=3D"ember-view" i=
d=3D"ember1076">If anyone managed to get the thing working please let me kn=
ow. If not I am willing to try any idea you may have.<br><br></span></div><=
div><span class=3D"ember-view" id=3D"ember1076">Regards,<br><br></span></di=
v><div><span class=3D"ember-view" id=3D"ember1076">Valentin</span></div></d=
iv>

--047d7bea350ef5ec23052c758835--
