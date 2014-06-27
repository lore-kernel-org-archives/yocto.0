Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 292DEE002AA; Fri, 27 Jun 2014 10:10:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
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
	*      [209.85.216.43 listed in list.dnswl.org]
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E655AE00288
	for <yocto@yoctoproject.org>; Fri, 27 Jun 2014 10:10:14 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id k15so4251033qaq.16
	for <yocto@yoctoproject.org>; Fri, 27 Jun 2014 10:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=1G/dKl0IBCau8RDYhIuxl5mZwIOjWFqYV4Ys9HQCk3E=;
	b=ljNsmHJ6rQyizA6jPNaiqYiQ4YODcl3H8AtEBGLOZGxyjUHpaGnYKovcFxZFkCaViJ
	gzCwlgEWsa6GP4+ncGEtIrE7dBWa7/MpwoPIN10oas1xEHG7LPEoTdsbsG9MtBpmVSO8
	YmHQotf6oal5D8pTCjNYx5E4yHhrKf3QUvthL4rIEE8wmDCuArK5blQgkJLwimIF6MCP
	8anaIIdIq3C4Oz7O/6c0uygu1lQuZ3RQdOxRfgO7+0nUbkho1nkaIIapD9bqje4o2LLK
	VfX/1WI4488JjAWDoPnwAK7LrQ84nFSgf75QcCFkJA2bFeDdvdsgii7+6+OcYinlV/A4
	squg==
X-Received: by 10.224.138.9 with SMTP id y9mr35966774qat.1.1403889013130; Fri,
	27 Jun 2014 10:10:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Fri, 27 Jun 2014 10:09:52 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 27 Jun 2014 14:09:52 -0300
Message-ID: <CAMCfZKGgSLTbM1NCXpgQnhx+1AXNKTazoF-YuyPFAkgxzCnMEA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Encrypted root filesystem
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
X-List-Received-Date: Fri, 27 Jun 2014 17:10:28 -0000
Content-Type: multipart/alternative; boundary=001a11c20026ee933804fcd461dc

--001a11c20026ee933804fcd461dc
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I did some search on Google but I could'n found any instructions on how to
achieve this with YP/OE build system.

How can I get a rootfs encrypted with YP? The image will be installed in a
NAND memory.

If some could point some directions it will help me a lot.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c20026ee933804fcd461dc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Folks,</div><div><br></div><div>I did some search on =
Google but I could&#39;n found any instructions on how to achieve this with=
 YP/OE build system.</div><div><br></div><div>How can I get a rootfs encryp=
ted with YP? The image will be installed in a NAND memory.</div>

<div><br></div><div>If some could point some directions it will help me a l=
ot.</div><div><br></div><br clear=3D"all"><div><div dir=3D"ltr"><div>Regard=
s,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Em=
barcados<br>

<a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;=
utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=
=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock &#39;n roll*/=
<br></div>

</div>
</div>

--001a11c20026ee933804fcd461dc--
