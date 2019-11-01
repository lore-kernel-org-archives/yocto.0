Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97694E00DAF; Thu, 31 Oct 2019 22:32:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.219.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
	[209.85.219.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 569CAE00ADD
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 22:32:27 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id e14so3491489ybk.0
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 22:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:date:subject:message-id:to;
	bh=0ZnEpLHlXHsnFWEJUJyeyALc9lJyh68umUGv0g9lqts=;
	b=y4c4Lfg5MV5HQDIFpS+DgSfVQsVjMOwMVXlQFOMWOBsvJnAMUMgw6TVUkNwhwUgtI4
	IeFR3+ASr1ICI7wT5DCQCf6qY4ye7Ej3BSZQnUnuuTUF8TaI2zhWwC43Lk8ACZ5Mr6RR
	pJAbUGsHq5GcQsQj+htUZjLTjq1DszFP3mQKgOU6275oafO3q0pFX6AKkCrScJbmL0nx
	gawYeHbcOV2qVHJZXwlEKUPE07ye5RjIZoECw05BqSmdtvB8AJgcWRqFqnHjZMa0wivn
	VfPzeqKq7sISHH6wmYFgBz+ChuCY+wRs62njI5raXWorqwAGHWh21EcJdZgvHLRFo4Nx
	wOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:date:subject:message-id:to;
	bh=0ZnEpLHlXHsnFWEJUJyeyALc9lJyh68umUGv0g9lqts=;
	b=EwP9I3YqmAIenSAvJXbNq4azova05NkyRBMpGirATt4x46BX0nw+gRXnypejAGEg0+
	dQTtgZMFUjXYLMg4kWYf0Yuqm3hsx7xzCva/kjdpyNU7OdbyhijyArFYDfcBLSFrQjoc
	wvmzYA3DJea8DxYdyRP77dSMM9NLGkOTmXv8A9CgU9yrQJweTPkYHtqFlFG4jeL4nBT3
	W+y5671qgAjN7jnibaErXAmi9luNKnZbLdoECFKUT1sNP982RDF004Ybbx2BB7JdNyOU
	AQ+0Hy1BU1srX6Z9xE0+4q8RDzbodg2NCAFh92gvOzchy2O1r1cNfmVCu83gf7VOzdTH
	NxcA==
X-Gm-Message-State: APjAAAXU+V8aWbiDbHbULyHiKnxWusFki0tJJnLyjGH2IyVX5c5dcQoo
	s9qcq2RpRDVooIJm1I80DnQsvhOnndny7g==
X-Google-Smtp-Source: APXvYqzCG4qB5Dj3IfJ/d2u3lqSEHdsEpwi7eWNT3zsxTYjRBS/jRX9zsCVW8u82GULkzcz7BdkcJw==
X-Received: by 2002:a25:3f45:: with SMTP id m66mr7586327yba.97.1572586346258; 
	Thu, 31 Oct 2019 22:32:26 -0700 (PDT)
Received: from ?IPv6:2600:6c64:6780:170b:126:48e3:618c:c072?
	([2600:6c64:6780:170b:126:48e3:618c:c072])
	by smtp.gmail.com with ESMTPSA id
	a6sm2665966ywh.106.2019.10.31.22.32.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 31 Oct 2019 22:32:25 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Fri, 1 Nov 2019 01:32:17 -0400
Message-Id: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.11)
Subject: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Fri, 01 Nov 2019 05:32:28 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_ED5A0B2B-4EB5-4883-B849-5EBC9394395B"

--Apple-Mail=_ED5A0B2B-4EB5-4883-B849-5EBC9394395B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

poky linux build fails when ARM erratum mfix linker switch is specified =
in local.conf:

TARGET_LD_ARCH_append +=3D " -mfix-cortex-a53-843419=E2=80=9D

causes build failure.

Please advise how to use this switch successfully.  I am synced current =
in master branch in all layers as of today.  The switch causes libtool =
link to fail due to missing libbz2.so.  If I don=E2=80=99t specify the =
switch, the build completes without errors.

It is important to be able to build poky linux with this switch to avoid =
certain crash conditions as described in the ARM errata document.

Steve Pavao
Korg R&D=

--Apple-Mail=_ED5A0B2B-4EB5-4883-B849-5EBC9394395B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">poky =
linux build fails when ARM erratum mfix linker switch is specified in =
local.conf:<div class=3D""><br class=3D""></div><div =
class=3D"">TARGET_LD_ARCH_append +=3D "&nbsp;<span style=3D"color: =
rgb(29, 28, 29); orphans: 2; white-space: pre-wrap; widows: 2; =
background: rgba(var(--sk_foreground_min,29,28,29),0.04); =
background-color: rgb(255, 255, 255);" =
class=3D"">-mfix-cortex-a53-843419=E2=80=9D</span></div><div =
class=3D""><span style=3D"color: rgb(29, 28, 29); orphans: 2; =
white-space: pre-wrap; widows: 2; background: =
rgba(var(--sk_foreground_min,29,28,29),0.04); background-color: rgb(255, =
255, 255);" class=3D""><br class=3D""></span></div><div class=3D""><span =
style=3D"color: rgb(29, 28, 29); orphans: 2; white-space: pre-wrap; =
widows: 2; background: rgba(var(--sk_foreground_min,29,28,29),0.04); =
background-color: rgb(255, 255, 255);" class=3D"">causes build =
failure.</span></div><div class=3D""><span style=3D"color: rgb(29, 28, =
29); orphans: 2; white-space: pre-wrap; widows: 2; background: =
rgba(var(--sk_foreground_min,29,28,29),0.04); background-color: rgb(255, =
255, 255);" class=3D""><br class=3D""></span></div><div class=3D"">Please =
advise how to use this switch successfully. &nbsp;I am synced current in =
master branch in all layers as of today. &nbsp;The switch causes libtool =
link to fail due to missing libbz2.so. &nbsp;If I don=E2=80=99t specify =
the switch, the build completes without errors.</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D""><span style=3D"color: =
rgb(29, 28, 29); orphans: 2; white-space: pre-wrap; widows: 2; =
background: rgba(var(--sk_foreground_min,29,28,29),0.04); =
background-color: rgb(255, 255, 255);" class=3D"">It is important to be =
able to build poky linux with this switch to avoid certain crash =
conditions as described in the ARM errata =
document.</span></div></div><div class=3D""><span style=3D"color: =
rgb(29, 28, 29); orphans: 2; white-space: pre-wrap; widows: 2; =
background: rgba(var(--sk_foreground_min,29,28,29),0.04); =
background-color: rgb(255, 255, 255);" class=3D""><br =
class=3D""></span></div><div class=3D"">Steve Pavao</div><div =
class=3D"">Korg R&amp;D</div></body></html>=

--Apple-Mail=_ED5A0B2B-4EB5-4883-B849-5EBC9394395B--
