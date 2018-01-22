Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40DBFE00E3F; Mon, 22 Jan 2018 07:29:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD954E00CD9
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 07:29:42 -0800 (PST)
Received: by mail-oi0-f46.google.com with SMTP id y141so6177652oia.0
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 07:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=x8PClDhkMbdmfSQLtj2TDSo4W3iCr3qAIFyBn6rZQHQ=;
	b=kE/tu0XboPuwV+sNQoHynWGp5WefSNCIAuVfr7wk1441lo0XvLD45eIRsXTfKdn0ZJ
	ySLeRciQj5rpdxnmweca1X/G9fYi9xE7W0b5K49XM9mutlpr0ajlV1ESpy9ru6ExC16q
	yq6u74NejsuIHkDM4AdzIgcfrS30chjJaHcHvUZsIF72MGVGg7l6pZZx1trAVd0zelGx
	0KCunwSbbNgDiMXbsk/SlTetV3tpE9sOlTLEbSz4PxX7XPCGwFF75yc22uwT7x0Qy7bZ
	Z9gHEotMSeyIY/zm5q3W9rPIfi7ou87fuK+j7cZ7uBoV6iBtNo0jl/l6nivZr8S1XDib
	an0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=x8PClDhkMbdmfSQLtj2TDSo4W3iCr3qAIFyBn6rZQHQ=;
	b=ddQdd/cc8HGJRy6dNozV8z3ybbT6iDpTPTzTQvcBwgn64nSC6lD2ewjYlYxSXz6oMr
	wD6WaYqJKzQLwTAVAVExM28JBkBhzcXhQbEjOeqz5UhVWyh+lb0BCR1kwDP9QV96km6T
	4QRnuGW9eoH2IXbtPyYevWblSDOAql91q6lvUTl97Dfrepw1toEhgBW1tq9x74Y4RQ6R
	tC3zVoIi8wYvVGCUi4qmjWl5Ksus18Y+4v0Id5W576NAjFeojwpJnHKSE7sqqa68umRO
	WY4+JiD4DzaGqpeMoUD36VBVa4sIGFsHyR79HlvV++NdfoZBhuMVO09KUYfAaPgt39i1
	hQog==
X-Gm-Message-State: AKwxyteXkuZ7LUyCUTHuizrz4HyFcyZ7jTHZhotg89KI6y8lyKSudgPM
	n894tFVcO3JAJn7gKSUrKWNGKAUGuFemc1C4dUg=
X-Google-Smtp-Source: AH8x227zV44/WDNuOd6Lv5RblQ8jGqsbsuSvJ/ntjzKfDl927wLrQardu617ML3g5a3jXPFE8U4HzGMc6KOOqC+nnWE=
X-Received: by 10.202.74.144 with SMTP id x138mr4113566oia.130.1516634981693; 
	Mon, 22 Jan 2018 07:29:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.14.50 with HTTP; Mon, 22 Jan 2018 07:29:41 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Mon, 22 Jan 2018 10:29:41 -0500
Message-ID: <CAE0QtjM717OgG1m3rWpqoc_PV3LoAyjgfoL+-JyEc54Wjdn-SQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto for BeagleboneBlack: how to enable user-LEDs?
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
X-List-Received-Date: Mon, 22 Jan 2018 15:29:43 -0000
Content-Type: multipart/alternative; boundary="001a11c14fa0567e6d05635f199f"

--001a11c14fa0567e6d05635f199f
Content-Type: text/plain; charset="UTF-8"

I build yocto image for BBB(Beaglebone Black) with default settings, then:
bitbake core-image-sato
* After I boot the image, all LEDs are off
* And I check folder "/sys/class/", there is no sub-folder "leds"

So how can I enable LEDs when building yocto image?
should I change/add image any distribution/feature, or package groups?

Thanks!
Jerry

--001a11c14fa0567e6d05635f199f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I build yocto image for BBB(Beagl=
ebone Black) with default settings, then: bitbake core-image-sato<br></div>=
* After I boot the image, all LEDs are off<br></div>* And I check folder &q=
uot;/sys/class/&quot;, there is no sub-folder &quot;leds&quot;<br><br></div=
>So how can I enable LEDs when building yocto image? <br></div><div>should =
I change/add image any distribution/feature, or package groups?<br></div><b=
r></div><div>Thanks!<br></div>Jerry<br></div>

--001a11c14fa0567e6d05635f199f--
