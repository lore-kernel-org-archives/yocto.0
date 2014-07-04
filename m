Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08BF1E006F7; Fri,  4 Jul 2014 03:12:52 -0700 (PDT)
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
	*      [209.85.216.176 listed in list.dnswl.org]
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BDC2E006F3
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 03:12:46 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id w7so1349584qcr.35
	for <yocto@yoctoproject.org>; Fri, 04 Jul 2014 03:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=km23IGl6vhxW/bl6rY1YKgWQflKy0hNOnbNN7maM40E=;
	b=utSuV1zeZIsXbvpqm/O+o770a23nlcfASUq8GPeU8GqCh5QO2ARvPOeYzjoP418cZA
	7tgcPW1gp4UFE6nKCs/hhNgR9cpqyaVs+lKqeu7hGEd59FTogXrgXiLC2YoX9r3/CpeE
	HBgUILNAw2fyF3/gzoU5pwCmZQi5OtDS3rGr3+Pa8fp2lcjBUKscAFlROUbxTULWO78k
	vRYHJ9HJH+A4CxlvUSJf7i+PT12v8Ro+au1PM4SZZeDFsJlDJYI4cQUjbC61G0TcySjL
	6srYvz6/QWkcF/4HcDBhbq/nWgK0lcZZWyX43zg4KT2i0cc4ISxa9YkbzXrJqUAiey/D
	Nksg==
X-Received: by 10.140.41.116 with SMTP id y107mr15802476qgy.78.1404468766508; 
	Fri, 04 Jul 2014 03:12:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Fri, 4 Jul 2014 03:12:25 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 4 Jul 2014 07:12:25 -0300
Message-ID: <CAMCfZKF_XTjxmJ9Z59x9eQq2AG8339ibnHentOHkfd=F9A33vQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Changing SysVinit default runlevel
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
X-List-Received-Date: Fri, 04 Jul 2014 10:12:52 -0000
Content-Type: multipart/alternative; boundary=001a11c125e8ed0a9404fd5b5dae

--001a11c125e8ed0a9404fd5b5dae
Content-Type: text/plain; charset=ISO-8859-1

Folks,

Despite of using ROOTFS_POSTPROCESS_COMMAND to change /etc/inittab, is
there another method provided by build system to set the default runlevel.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c125e8ed0a9404fd5b5dae
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Folks,</div><div><br></div><div>Despite of using=A0RO=
OTFS_POSTPROCESS_COMMAND to change /etc/inittab, is there another method pr=
ovided by build system to set the default runlevel.</div><div><br></div><br=
 clear=3D"all">

<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcad=
os.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_ca=
mpaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.b=
r</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div>

--001a11c125e8ed0a9404fd5b5dae--
