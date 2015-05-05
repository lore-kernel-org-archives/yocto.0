Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AB5EE00998; Tue,  5 May 2015 01:30:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC063E00961
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 01:30:28 -0700 (PDT)
Received: by wgso17 with SMTP id o17so174541477wgs.1
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 01:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kjrqqrWteTYHKD+zG8u3HTaFMTz2AmsLRC+F4u4Qbso=;
	b=PpJ6zQWU3aK2S/Ffs07oYp7pmc3Ky5dvV9avetPAMZyUY7MDTJaBAU2r0LSy++5E7D
	jsi2hTATE+r5Xz8ze68an4zKePw95XHuoIDMCCfO7CKAgB5oMHx4cJ2aKOBI+UwiGQpQ
	rWoVqroJnZWBTxTE67YaHhY5rQKVRSIDUGsPpBqvTqiDnpO68EBERefKzoGyKudxVBVf
	/jiKkvhgBp2uAQVMd5IwcJXlTktp+S4RFq/pmnlQYpJh2/Y9tERPq7OhFvpj/2eNWLQL
	wQ/AqZeQCJTfb9idTl68XS2RTzQXvnTv4MGH+62X5oX26o8AFN1MN1oB7P4EczBkGxs6
	e0Rg==
MIME-Version: 1.0
X-Received: by 10.181.13.113 with SMTP id ex17mr1937456wid.12.1430814627068;
	Tue, 05 May 2015 01:30:27 -0700 (PDT)
Received: by 10.194.121.105 with HTTP; Tue, 5 May 2015 01:30:27 -0700 (PDT)
Date: Tue, 5 May 2015 10:30:27 +0200
Message-ID: <CABc_YGDJ=yvOkU7Bpbwq-oxbJ7Ec4ZHgL-fy2BR2+pTKwSZWdQ@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: Package group in one ipk package
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
X-List-Received-Date: Tue, 05 May 2015 08:30:32 -0000
Content-Type: multipart/alternative; boundary=f46d043c7f0c9600d30515517de2

--f46d043c7f0c9600d30515517de2
Content-Type: text/plain; charset=UTF-8

Hi,

I have a question. I created my own package group containing 12 packages
and I want if possible to make yocto to create one ipk package to system
update instead of twelve. Is it possible? I can not fin any solution to it.

Regards,
Marcin

--f46d043c7f0c9600d30515517de2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have a question. I created my own=
 package group containing 12 packages and I want if possible to make yocto =
to create one ipk package to system update instead of twelve. Is it possibl=
e? I can not fin any solution to it.</div><div><br></div><div>Regards,</div=
><div>Marcin</div></div>

--f46d043c7f0c9600d30515517de2--
