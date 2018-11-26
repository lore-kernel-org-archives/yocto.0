Return-Path: <slaterc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728E2E0097C; Mon, 26 Nov 2018 00:11:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (slaterc[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17E72E0097C
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 00:11:02 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id k98so15757640otk.3
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 00:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=J9aO8y0ARVyAZR0lSOZWoJC0yS9qBZpZGSivBrNZpcs=;
	b=Mn9elAtC1Enfq63CdlBTjDWfPMohBnoJpLcXM2tLR+jriaFrgXG3psAzueAFi18fIJ
	NwVvucrJSDVGBIeNg9Ehi++VpYJGGmnopMcxCdOx6o84+uaItfLddVgTksXgFMAkmY06
	0rq6iM97lvmPNp6nat362LF6DQ2pZVUn6F61JbWAbAUsgfI9f8c1dR2ovC2l/QMBWYfV
	EFhR6AOCbNGKva2YagPONwG1hWBN18QMAEXxwf1JNYFkrwBjhqCLQXEMWqi4wEOZt9o+
	JR2aqrgY/WFdH5382qutaQYw6QDifEKU13m8z/etTj+vI8XcS46EKtLamsmBxLXL6Z2B
	U3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J9aO8y0ARVyAZR0lSOZWoJC0yS9qBZpZGSivBrNZpcs=;
	b=U1Vn2VI9hlvph0TtIYWxO6p+vf+zq2sbrEEpo1BEJuYSE6hSRBZJADwmXKb19wm1gN
	zyIqMQOUyXkqjQMGe+5UDdWohqVrFRK6ZowHwylC1JZ4zM3bgeTQFQg7GemQhzr7oVPh
	84tEzTBkf0UqhO434apzBGJObjRa5a0Y9C4bVCU4ffEN8O+WDMUO1NKqC+0mcMoHTGpO
	X6yJ2b+5SpYeW2Xw2UdQH5q/bBAgEgWXTseHOjUB34E0QEAvUl18E50IRlTHqieg0chy
	9YefZQJJMSdhXflHJd9LENqHTpKhwgu6hhQwuPuyC8AHmnoSQH95KL2xsNS1+30X0KUU
	1Rbg==
X-Gm-Message-State: AA+aEWb1E5+t7TF2g8UGNnqDOdXgI8nqw4p2/wn9Xm5lW4lg3IYpj4Rr
	jumQLUJ0oAXkksOYVGuBF+wyJzocmkzNq7e4bqS8FeZi
X-Google-Smtp-Source: AFSGD/WaUus/OX79sCWWUoauVa2ZEGe+hXSKw/7SzdxYobBuW1x1Edfbbn3718FppDcSATrmdGBuBHGnNUTHUcf3C6A=
X-Received: by 2002:a9d:22e2:: with SMTP id y89mr7664660ota.108.1543219862281; 
	Mon, 26 Nov 2018 00:11:02 -0800 (PST)
MIME-Version: 1.0
From: Conor Slater <slaterc@gmail.com>
Date: Mon, 26 Nov 2018 09:10:51 +0100
Message-ID: <CAH+z4xSGhYr_KdE1_k+9ro2W1qqFQcv+_XkBUdOpREQrEHLGuQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta/recipes-devtools/python/python3_3.5.5.bb - no venv module
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
X-List-Received-Date: Mon, 26 Nov 2018 08:11:03 -0000
Content-Type: multipart/alternative; boundary="000000000000b3a4cc057b8cdf21"

--000000000000b3a4cc057b8cdf21
Content-Type: text/plain; charset="UTF-8"

Dear All,

After adding python3 to the install I appear to be missing the standard
Python module venv. The module should be a standard part of Python 3.5.5.

Has this been disabled? If so, how and where?

How do I enable it so it is built?

Best Regards,

Conor.

--000000000000b3a4cc057b8cdf21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div>After adding python3 to the i=
nstall I appear to be missing the standard Python module venv. The module s=
hould be a standard part of Python 3.5.5.</div><div><br></div><div>Has this=
 been disabled? If so, how and where?</div><div><br></div><div>How do I ena=
ble it so it is built?</div><div><br></div><div>Best Regards,</div><div><br=
></div><div>Conor.</div><div><br></div><div><br></div><div><br></div></div>

--000000000000b3a4cc057b8cdf21--
