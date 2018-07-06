Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F23F9E0115D; Fri,  6 Jul 2018 08:20:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC3D1E00D38
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 08:20:14 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id q12-v6so10228439qtp.6
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 08:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=A/hPJ7XSJj+/6iT7UiyRotR620z++6Lq+SRswf4YPoc=;
	b=oUVjq1wmwwWiHdLPxI6eQcYy2yKdDwZsCi726XBFO0ZhYf/Sekkluia+Gt+LNXHJV2
	P+iHXeo2/73EeHPS/WIOIrBG9E9KfAgrfZ8C5W3D4Y5YjVuMXib/n0Ep0cLEFhqV7vXm
	5o8MoquRSXfQZmbdltQ/BhZpJy+qKdvvSQSteJ4t1Pv+CLrkPmRuJdLNVzcfLJEy5GGz
	hdcdcUh2CWm80xlNEDOxnQePPK0ZYGTPBIEipvgC2SY0qzjJkV4myXqnuJmS8FGNa0k3
	33r3SVG3DCyuV9y4ljEzs6GK2Ne+AEmAdhnDzs0cPAnGtQu+4SEn/5UNJIZ3iXnqbTyR
	jqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A/hPJ7XSJj+/6iT7UiyRotR620z++6Lq+SRswf4YPoc=;
	b=g00C+NoYc/cDG2IhEsMeDkIaFmLJnKru1Xp9ZFhv1d5cL12Rz+prebd7o4sMqpbLRi
	+Z00xPj+plDluMNlf1BP4aSFoBkJ/FbVQPcIYqZ4RkZeiYZTxjwXGxqN7JWp3A406Plx
	k0rYxrP4ZgCqAXqeDB/bu7t191jv/uP5iAgRsZfn/p8JiWf/yAFu5+OgbS7rUDD4Eohp
	waX6StooMIB968Xx1sCV8JZiO24FToK6N7At7F1Bsypwyy3XpRfWbby6orQIlSMfs+N2
	UotNXy7WMdV3tSOEqp7z0VtqyHmga+irU4HYEaoc9dOI15fAbXEeme82wdWHPKVkT0Dq
	wZrw==
X-Gm-Message-State: APt69E1HpyIdSa/rr2ACZnvwDQnD5V4PUIdRjZeoCqoMzqyq9sHJ2ws8
	tr01J3mA4owghIshoFqr6FoOUn+edn0QKLczNJwYl2Wo
X-Google-Smtp-Source: AAOMgpeB1K+OuXQTVrtRTEHMaHbLABq+Q8NqZbyzqYIkaEt3DZ2s5Kej/8ABuqKezl1/84/s38jwslPXuWXo/A95ouY=
X-Received: by 2002:ac8:2432:: with SMTP id
	c47-v6mr9749673qtc.355.1530890413580; 
	Fri, 06 Jul 2018 08:20:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 08:20:12 -0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Fri, 6 Jul 2018 11:20:12 -0400
Message-ID: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Fri, 06 Jul 2018 15:20:16 -0000
Content-Type: multipart/alternative; boundary="0000000000004b3cc50570563340"

--0000000000004b3cc50570563340
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there a way to keep the source code of a package to be able to modify it
and then compile?

For example, with LTIB ( Linux Target Image Builder ), it was possible with
a command to extract the source code from a package, make modifications and
then re-compile?

Thanks,
S

--0000000000004b3cc50570563340
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi,</div><div><br></div><div>Is there a way to keep the source code of a package to be able to modify it and then compile?</div><div><br></div><div>For example, with LTIB (
<span>Linux Target Image Builder</span>

), it was possible with a command to extract the source code from a package, make modifications and then re-compile?</div><div><br></div><div>Thanks,</div><div>S<br></div><div><br></div><div><br></div><div><br></div><div><br></div><br></div>

--0000000000004b3cc50570563340--
