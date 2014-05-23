Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C02A8E0073A; Fri, 23 May 2014 07:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f45.google.com (unknown [209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55919E00716
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 07:29:34 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id z60so7940424qgd.4
	for <yocto@yoctoproject.org>; Fri, 23 May 2014 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=ZYH7AOGBlhcRerEFfIjIAcxEhyj6vapioqkEEZbIlmE=;
	b=gVdMxdCA8ieJH4yyZesgbQ2s30eF50z+hwuHHEePL3DCPj+E2nPmidZOa2g83b/wGe
	F1E/TXKVV+vdWip3wP08xvJPQDptT0FLf/+BpCuV5OdfcvS7tl/tX+RXo5lZhK9NTImK
	a7NbLSYGlZ5U5eVaRGNe+keBrMZNR4exKPA1DxVcVOR1DGyDRklN2pAC14bw6YQxqEVG
	gFa6yUqpUA01o6vcsX22vzjbCPQXC2kaihEP8/HGXmNRxrSa5e2W2Dp6Ya50L+mQiXZy
	L7FoF35eLHPJgaTc8rJWT0xrn9bI1XeJ4HVHQziNsTQtKJpjxbTEV/+Zu6lRo/9Ei9E6
	Fprw==
X-Received: by 10.224.38.204 with SMTP id c12mr6648167qae.1.1400855374083;
	Fri, 23 May 2014 07:29:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Fri, 23 May 2014 07:29:14 -0700 (PDT)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 23 May 2014 11:29:14 -0300
Message-ID: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Setting default system python version
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
X-List-Received-Date: Fri, 23 May 2014 14:29:39 -0000
Content-Type: multipart/alternative; boundary=001a1134a5e0f43c7004fa120e5f

--001a1134a5e0f43c7004fa120e5f
Content-Type: text/plain; charset=ISO-8859-1

Folks,

I did not fount it on manuals.
How can I set the default system python version for an image?


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a1134a5e0f43c7004fa120e5f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Folks,</div><div><br></div><div>I did not fount it on=
 manuals.</div><div>How can I set the default system python version for an =
image?</div><div><br></div><br clear=3D"all"><div><div dir=3D"ltr"><div>Reg=
ards,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div>

--001a1134a5e0f43c7004fa120e5f--
