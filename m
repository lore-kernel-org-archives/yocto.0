Return-Path: <prashant.a@pathpartnertech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E044E009CE; Thu,  2 Feb 2017 21:21:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 800CAE009CA
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 21:21:30 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id v23so18044183qtb.0
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 21:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pathpartnertech.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=A+KdASJRfiTYKX9Nlc2vCzT+2x34ZgyL2ouewoJRqWI=;
	b=mKRHwiWekbV0wwyk1R0HdJ67+HtEGWukc2mu+DbKv+IUAB+90eNzZi9fJF9l43ZoH+
	WN0vYA1hhXcmtl3ZHnAHwThKVfbjPr9bfs+kKs8JLFEoRGm9n3qKIO8jemoK2EDMb2C+
	nxCDzt1g/yosMPgAS2fueUMmkrph/SMtRYhACN1LaYF8dxPaOwgIuI4Unzcy3GOhcTGs
	tNSM4Z1PKCfTSxc8r1ZWbQq6Hh8u/l6unL8zpL+tPYPpd4PZ952VGF9P/qVsXXEYiT9M
	jS11Qhbx06mhQUk+GXAlzNxViGRHyqzTqt3N2JS5020t37VON7GP1my0DCWpEneAtlxg
	cuAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A+KdASJRfiTYKX9Nlc2vCzT+2x34ZgyL2ouewoJRqWI=;
	b=BS335b/OUKHB40WssnxX+uurCOjOY+9MKWb9oSSBTj3YdtEVPGph4Z+jl0xB8+hyOr
	lcBsIfgfnDon36GlJhlntIB5NwhJrbOPjU3iCILyOQAk2LKZY8BrJFrLz4SL0gAJuUYr
	8gBsVRQBPPrBJCK4QvqGmfYgGNYoYfN4XAqeHWPr5jsJvBXprX4+/kl+C/mjDYGUnDgo
	A5sjYNkEOQlSnHb6znon19ofoKc0vk4rxRH6lF1wtHLDqFA3x+usFI02FcO+0ZUMInUk
	J3Q1ccn4cT3X047DdQrfB4QSHctPTROfKo1VZg6fgnKAPsA/+EzfJ+Uu9WNGM5Ya5zE8
	7whA==
X-Gm-Message-State: AIkVDXIYEy/1YexMty7q3rXZ312x9VU5uoMhPkX7af+X1n9MWjz4C2MzqTM19Xvfvp9B9KfRqQuywAg3FvLHCy3AnxtAMqvERXt2wMZ68XT/KinEfGX9AmuvPtfbeosqIbJmhFckPVcK3yMbMued
X-Received: by 10.237.36.85 with SMTP id s21mr12069203qtc.80.1486099290299;
	Thu, 02 Feb 2017 21:21:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.38.153 with HTTP; Thu, 2 Feb 2017 21:21:30 -0800 (PST)
From: Prashant Andani <prashant.a@pathpartnertech.com>
Date: Fri, 3 Feb 2017 10:51:30 +0530
Message-ID: <CA+=be-isZFZGy59RFWwtzX3a+mKrwUw6pHcHMcxaQX=QN0S7gw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 03 Feb 2017 06:58:08 -0800
Subject: optimize rootfs using strip
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
X-List-Received-Date: Fri, 03 Feb 2017 05:21:33 -0000
Content-Type: multipart/alternative; boundary=001a113bfc704cb5130547997489

--001a113bfc704cb5130547997489
Content-Type: text/plain; charset=UTF-8

Hi,

I want to remove unwanted packages but most of them are dependent. So not
able to remove easily.

can i strip all binary and library before creating rootfs, if possible tell
me where to add flags?
Can you help me to remove packages like kbd shadow dbus?


-- 
Regards,
Prashant

-- 
 

This message contains confidential information and is intended only for the 
individual(s) named. If you are not the intended recipient, you are 
notified that disclosing, copying, distributing or taking any action in 
reliance on the contents of this mail and attached file/s is strictly 
prohibited. Please notify the sender immediately and delete this e-mail 
from your system. E-mail transmission cannot be guaranteed to be secured or 
error-free as information could be intercepted, corrupted, lost, destroyed, 
arrive late or incomplete, or contain viruses. The sender therefore does 
not accept liability for any errors or omissions in the contents of this 
message, which arise as a result of e-mail transmission.

--001a113bfc704cb5130547997489
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I want to remove unwanted packa=
ges but most of them are dependent. So not able to remove easily.<br><br></=
div><div>can i strip all binary and library before creating rootfs, if poss=
ible tell me where to add flags?<br></div>Can you help me to remove package=
s like kbd shadow dbus?<br><br clear=3D"all"><div><div><div><div><br>-- <br=
><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div>Regards,<br></div>Prashant<br></div></div>
</div></div></div></div></div>

<br>




<p><span lang=3D"EN-IN">This
message contains confidential information and is intended only for the
individual(s) named.</span><span lang=3D"EN-IN"> </span>If you are not the =
intended
recipient, you are notified that disclosing, copying, distributing or takin=
g any
action in reliance on the contents of this mail and attached file/s is stri=
ctly
prohibited<span lang=3D"EN-IN">. Please notify the
sender immediately and delete this e-mail from your system. E-mail transmis=
sion
cannot be guaranteed to be secured or error-free as information could be
intercepted, corrupted, lost, destroyed, arrive late or incomplete, or cont=
ain
viruses. The sender therefore does not accept liability for any errors or
omissions in the contents of this message, which arise as a result of e-mai=
l
transmission.</span></p>

--001a113bfc704cb5130547997489--
