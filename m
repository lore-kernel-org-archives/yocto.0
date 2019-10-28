Return-Path: <shravan@bluesparq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2478E00D60; Mon, 28 Oct 2019 14:45:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
	[209.85.221.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 760A8E0053F
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 14:45:51 -0700 (PDT)
Received: by mail-vk1-f170.google.com with SMTP id r85so2406496vke.3
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 14:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bluesparq-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=XDgLlc3roO7uQBD7sg9LYiOMO8rTDd9ZHAglRJrVea4=;
	b=NK7MEy7ud2t+DNdY2W5A1GbKbscpCiZ+EvjRu+lT3oeU9LasgZ+NQ4/G4UAjJt8hdf
	Vwy+GpgbzU/bPX+h18u2OooGPd8LWMWfhsfzv7IeagyLe/67Q+ndUhegVwG3ahmywZMs
	u5mKzSqrfXtXFnzIcr558v//pVh8EkEhp6l3VqHeNlHwIqhpR+a1k4QrTXZ4CVq0LlRy
	6VyHKneMHPIdssX81kByfAxR/MM+1vseSoi0tvARH9LBvnoXrynL+sOZ6JwhvXu4OPqm
	vRYc/hKjX265DS01oCfAEW1Mk2QqcPVg6laOxIKpfGDw/cfB4xbmlpC+kGkvo8bOOk5J
	e4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XDgLlc3roO7uQBD7sg9LYiOMO8rTDd9ZHAglRJrVea4=;
	b=YBa1mxN7ZEXrW3Qa4wXRPjWWSlOteqX5YQTOX0STSf+FeoMUkAZRb/tmbs4Zi9zG9z
	I9ZnOu0hIJqA2E2i96jsW+Da7erQQ6Ww1sPftmvhDfb0Y0ZcoK0S1uoZ/x3sinGm/rTo
	Qkzx8ZSPDjtKzdV6UYQE8aBR8VFJAOpEC4ZYN2/S75jltGXHycr0GI4BpJlo4pOnqejw
	HTsBQ+uWL8Rg4DenGCFhUuoFJTkcYo6agEvuNwn7gD8vi26do0rpuWF7iRaxcNyTHU/q
	VEbHgHha4qrSrmXMXur0YSjAArvyTowJntznXSwCAmPnaORm6cKrhoaqtUk0TLeAjNm+
	RTuw==
X-Gm-Message-State: APjAAAVVmMtO6hia/aP2K+m33X7m0UCEz2QchaLtj+x/j/ocPggBlicp
	azXmJRO648iLK8puFgxQLbNff32+IhsLQ/DKkHrDrH9G
X-Google-Smtp-Source: APXvYqxk8wxTPxtWOG5WVi2Frc/+KpvgPbMvPpESB+4tsm2YSIzKIr5FpvSAULV5H/Ksl6N2uK0j+oX3XN2SMUXg8fk=
X-Received: by 2002:a1f:1897:: with SMTP id 145mr9957039vky.47.1572299150446; 
	Mon, 28 Oct 2019 14:45:50 -0700 (PDT)
MIME-Version: 1.0
From: Shravan Singh <shravan@bluesparq.com>
Date: Mon, 28 Oct 2019 17:45:38 -0400
Message-ID: <CABjzrPQWBM9W--UuP0Cp2Gxy-yztf2st7+s75vmNt-uh+7Et3A@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 01 Nov 2019 12:07:53 -0700
Subject: minicom hangs when Attempting to communicate with ttyUSB1
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
X-List-Received-Date: Mon, 28 Oct 2019 21:45:52 -0000
Content-Type: multipart/alternative; boundary="00000000000057e66f0595ff6c5b"

--00000000000057e66f0595ff6c5b
Content-Type: text/plain; charset="UTF-8"

Hello All,

I have GSM module which enumerates as /dev/ttyUSB0 and ttyUSB1.
When I try communicating with the module using minicom. The application
hangs.
As in, I am unable to send an AT command and I am unable to exit minicom.

The command that I am using is
*minicom -b 115200 -D /dev/ttyUSB1*

So to debug the situation I used Raspberrypi buster image and tried the
same steps.
And I was able to communicate with it.

What could be the problem here? I have usbserial module on both the images
installed.
Am I missing some other packages.



Regards,
Shravan Singh
(239) 243-0838

Blue Sparq, Inc.
928 NE 24th Lane unit 4 and 5.
Cape Coral, FL 33993

IMPORTANT: The contents of this email and any attachments are confidential.
They are intended for the named recipient(s) only. If you have received
this email by mistake, please notify the sender immediately and do not
disclose the contents to anyone or make copies thereof.

--00000000000057e66f0595ff6c5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>I have GSM module=
 which enumerates as /dev/ttyUSB0 and ttyUSB1.</div><div>When I try communi=
cating with the module using minicom. The application hangs.</div><div>As i=
n, I am unable to send an AT command and I am unable to exit minicom.</div>=
<div><br></div><div>The command that I am using is</div><div><b>minicom -b =
115200 -D /dev/ttyUSB1</b></div><div><b><br></b></div><div>So to debug the =
situation I used Raspberrypi buster image and tried the same steps.</div><d=
iv>And I was able to communicate with it.</div><div><br></div><div>What cou=
ld be the problem here? I have usbserial module on both the images installe=
d.</div><div>Am I missing some other packages.</div><div><br></div><div><br=
></div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><span style=3D"background-color:=
rgba(255,255,255,0)"></span>Regards,<br>Shravan Singh<br>(239) 243-0838<br>=
<br>Blue Sparq, Inc.<br>928 NE 24th Lane unit 4 and 5.<br>Cape Coral, FL 33=
993<br><font size=3D"1"><br>IMPORTANT: The contents of this email and any a=
ttachments are confidential. They are intended for the named recipient(s) o=
nly. If you have received this email by mistake, please notify the sender i=
mmediately and do not disclose the contents to anyone or make copies thereo=
f.</font><br></div></div></div></div></div></div></div></div></div></div></=
div>

--00000000000057e66f0595ff6c5b--
