Return-Path: <jbaptiste.marie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4484E00D77; Wed, 18 Sep 2019 01:39:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jbaptiste.marie[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.45 listed in list.dnswl.org]
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A09D3E0098A
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 01:39:41 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id z26so5644951oto.1
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 01:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Gja6UUdqYDkgYld4rkTCId4IZmJtpHWMCdnNA7a3Er4=;
	b=dCcQ07K1K55lOJOYhB8dXSG+RXgk16ruY+3QjEyZx2EcThR30BHaF/bCF+149RiWKT
	pW06/uPgBS9BbCa1cxV6WTfaEcaDqjKKGxE0TU/t5ifDBQZh5jljd89GKba9iXQO1Vzm
	kVM+r67qiyPcSds0Ck5o0eBpD+dvB6HgE8Efbldd80lIBaldRhb0uegVmteyNz9WfA/c
	cFy8DYSsEb7u9SoniNbS3okax4rH3UaeW3/kCqi3dvtjnoewZKNJkaAgDkFEn5QLmycQ
	e2sIgYsg+eN3PGJae/i/1NE0rTVbZQ/CWB1wtwIizzLH3Rl4qVDXlJZz71c979lgih3K
	4z7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Gja6UUdqYDkgYld4rkTCId4IZmJtpHWMCdnNA7a3Er4=;
	b=jBAq5pwBPueqzVszIClzgKrQv0u4PqsZmeTKs4VHXeIW7fnel208tAY4KcMMKs3L7Q
	S4BRkrpi4+TQxb3zoHdXhIKx1lSdZCEe86zMj4LkSqzmcA29jnquZjKMteveI9OSneCg
	EUUVlWrcqkXdukVqcODbXMQbdIGbYHjGzRnM81mCHSHmDT391ZYaVfkQUnVFrqO6Sfxh
	JgESQpwg4DVvobl0OHo+uSHKik1lbt9eC8iIlPv7J5IWV9kpKBA3RoxorpBZ0XbCDwjh
	hANfAYqX6FZjh1Lsl4TJvd8/kycUvWwWnCL4TXfBtu462pVVPBK7/F0a5gJxX33L301O
	8vlw==
X-Gm-Message-State: APjAAAX+Vn+UZN8EeAoNs5+2wMnJbzoOWtg4qeLLoThOiuMdZX373CRB
	EAmEoEu61gaiDJe2l6mq796GXXRty+dZGiWq8JbeIve2CyM=
X-Google-Smtp-Source: APXvYqw8N77WUzKLtFdQVc/nimMQaLQjn9xWZxtUyHBPRkS9tiRD5YerAgqJFMU9uHesoDxKH8+wDCRSnGT0vDzfx0s=
X-Received: by 2002:a9d:7006:: with SMTP id k6mr2080418otj.303.1568795980980; 
	Wed, 18 Sep 2019 01:39:40 -0700 (PDT)
MIME-Version: 1.0
From: Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
Date: Wed, 18 Sep 2019 10:39:30 +0200
Message-ID: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 20 Sep 2019 08:04:32 -0700
Subject: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Wed, 18 Sep 2019 08:39:42 -0000
Content-Type: multipart/alternative; boundary="0000000000002be5060592cfc7a3"

--0000000000002be5060592cfc7a3
Content-Type: text/plain; charset="UTF-8"

Hello,
I am facing a problem that has already been addressed but not solved yet.
When building "bitbake core-image-sato" for SolidRun iMX6 SOM, I always get
an error message during configure task of matchbox-panel-2. The error is
the following:
checking for glib-2.0
                  gmodule-export-2.0
                  x11
                  gdk-x11-3.0
                  gtk+-3.0... no
configure: error: Package requirements (glib-2.0
                  gmodule-export-2.0
                  x11
                  gdk-x11-3.0
                  gtk+-3.0) were not met:

No package 'gdk-x11-3.0' found

If I run bitbake gdk-x11-3.0, I get:
ERROR: Nothing PROVIDES 'gdk-x11-3.0'

Any idea of what is wrong please?

Thanks for your help.

--0000000000002be5060592cfc7a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I am facing a problem that has alrea=
dy been addressed but not solved yet. When building &quot;bitbake core-imag=
e-sato&quot; for SolidRun iMX6 SOM, I always get an error message during co=
nfigure task of matchbox-panel-2. The error is the following:</div><div></d=
iv><div>checking for glib-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 gmodule-export-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 x11<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 gdk-x11-3.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gtk+-3.0... no<br>configure: error: Package=
 requirements (glib-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 gmodule-export-2.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 x11<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 gdk-x11-3.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 gtk+-3.0) were not met:<br><br>No package &#39;gdk=
-x11-3.0&#39; found</div><div></div><div><br></div><div>If I run bitbake gd=
k-x11-3.0, I get:</div><div>ERROR: Nothing PROVIDES &#39;gdk-x11-3.0&#39;</=
div><div><br></div><div>Any idea of what is wrong please?</div><div><br></d=
iv><div>Thanks for your help.<br></div></div>

--0000000000002be5060592cfc7a3--
