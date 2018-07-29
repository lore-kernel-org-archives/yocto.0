Return-Path: <karim@gillani.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08F48E00B57; Sat, 28 Jul 2018 21:47:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F469E006EC
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 21:47:47 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id h20-v6so9853448wmb.4
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 21:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gillani-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=J4JNoPyfzKmDdRckpAzJELn8miXqjF4z7VTkP6dSsrE=;
	b=ebVPxrZti/C9OefW8cDHi1y60AhkO+VpHGXg0fKmZH6w9LuTXRhJ3jJ5/ZQX+R6DO+
	88pduatHIsN/a/sZRjBrIwtJtdhWzhbg43UANH2krmyb65MEghicGmNCeSta5MiUxpJ8
	JGTFuUANKehJhZO4nPDa1ZxGTlhlYIfgtqV1Zl9l2yn813L+dEIFY9nXVDD5myjGXDUa
	OfNc/DB2wy3dwBxCJ0lNp2q7MBBpU0E/4GAnVS6eKK532iRExt7h/YapuOpZGyHy51dd
	QohiQ+y2VuvxSnSJzJ3bo3l4HxG1GzQmN9YUC99JA7+fdzbeTMLCCP0bZexnao5hFOZb
	Qzcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J4JNoPyfzKmDdRckpAzJELn8miXqjF4z7VTkP6dSsrE=;
	b=aGD0Ux9fKEDMTbpcEljJrcUaQ7bgAXpTbEUaLh2+1HJVKf3UFWd9dLnGmPTiulC+rk
	JmvvBRBBO86XAnfUeyhjRx/pW2QUy4z8RKAqdHblEes+jeuFAG4JkzSn2ALSIpm5pbhU
	dxq/hCxGmlMw0SM6403myfIijgsJhHXIqSejTuC5oeyZo4+37+/ULn4di8rTdmkxrmRt
	lZYQQSRRZFpBuBWs9iH8kctprX2UqV5TSXdzgTrkJuUeiqPDCHHPXo89mgS9dKY3/Ek0
	VHRIfeerdTUkCYgiEPE2y+2NiHhC+Jf/lVDW9RZU9QBOmjVROKHZTfq+hn2Dlgzbamkd
	UHZA==
X-Gm-Message-State: AOUpUlF8FApgTGYLv30BLNx0hlnRSyDKz9fhIpi01e/ziiexbN6Nf53K
	xS6gcgEJGPQLSlEy0RmDq0gRBxTLwrlNB5Bry/iHD0iB
X-Google-Smtp-Source: AAOMgpfvvspIWX09RK8rOxaMCUdUfcPBblQ53qDxXqbsadyPCP4wJdXOXf66nLuu18YsCwniJceSfQALac+mDmlAz9w=
X-Received: by 2002:a1c:b484:: with SMTP id
	d126-v6mr10217533wmf.17.1532839666006; 
	Sat, 28 Jul 2018 21:47:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:e1d4:0:0:0:0:0 with HTTP; Sat, 28 Jul 2018 21:47:45
	-0700 (PDT)
X-Originating-IP: [70.66.183.99]
From: Karim Gillani <karim@gillani.org>
Date: Sat, 28 Jul 2018 21:47:45 -0700
Message-ID: <CAN3t-YCYAT417M2TMLrS=5MsMR0r2Vb6a6MU5=yUv6FzE82VzA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: File copy to bootfs
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
X-List-Received-Date: Sun, 29 Jul 2018 04:47:48 -0000
Content-Type: multipart/alternative; boundary="000000000000ca553205721c0b16"

--000000000000ca553205721c0b16
Content-Type: text/plain; charset="UTF-8"

Is there an easy way to copy a couple of files to the $bootfs  (/boot
directory)?

when I copy files there, they show as if they are in /boot but they are not
on the bootfs partition.

Thanks
Karim

--000000000000ca553205721c0b16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there an easy way to copy a couple of files to the $boo=
tfs=C2=A0 (/boot directory)?<div><br></div><div>when I copy files there, th=
ey show as if they are in /boot but they are not on the bootfs partition.</=
div><div><br></div><div>Thanks</div><div>Karim</div></div>

--000000000000ca553205721c0b16--
