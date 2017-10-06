Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1FB6E00DA7; Fri,  6 Oct 2017 13:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EDA3E00CC6
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 13:40:07 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id f3so31513593oia.2
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 13:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=rzAaJ73CiFlCheG8pCZ7IjH+JboHKIKXgDpqDrR5M+I=;
	b=M3YN5cC/scBon5NIGzTQjoNQbhKb1WFxCbJTeYXJdhU/hQxamDu5jyqVUjgOGDmo8r
	D72EwHicqW1zDshfDkwQKJyqLNqqQYPiSYoQEKAJLpqLXKQ6UKEWonQe4J33pVHPeJa0
	5rOKnc6lFq/UlIaQBqIMYwHDsJiqK6RogleWfTTGwRQiALW2njZsHuAwtkicdoNth7V/
	HK22sv5nXnIBGeVZ9jOFgTku0o0pRUE4i90lpqvRR5nP4Gz6m12e6NG2OkZ7kpt6eZUV
	rMHLnq5prF6h8+M0rgzy3RFKzFuxvuszEfSkiLmnb+/7gPy2IMHcvn/sqg3dsnsXwI28
	wVFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=rzAaJ73CiFlCheG8pCZ7IjH+JboHKIKXgDpqDrR5M+I=;
	b=D1ulxKfFJvfJb49Fst2rpYrf1rWd/oVSaWGbn0zN81ytPMSwBV4jeBg//azR+Sehlh
	6wo6HKJs44kLucpKtpnryw9qVSE9S4gaHGfaM+skLPESUXvfiReMaD8RIexmbadzPw+U
	Ay9f7l42Hh0ShrWsR7w5VjSIgue9S0GSeK60wkkhxMlu9aUKNddWeoVnn3+h+5n83KUP
	rlUUOPk5NvuVfpdq+aTqhaDVTYUu3OKV84rc3tYdJKfdCOIQeQxrjw4Mujei3rhzx4/n
	UMMzjlKNuroUQwDNqp0AYh4OVcOd9Zx1ntsURltLInoITNaxYbNQVAIs/BccW9T1QbGS
	Emzw==
X-Gm-Message-State: AMCzsaUuIjqScaTfTcn2JP5Jvzvc0j8Q3Iw8ASr/KLUfsbJ4ce2ge3TE
	2GuztP8w1R2szW21r5FvFn5s6AogIL/oFtC1vmcEUg==
X-Google-Smtp-Source: AOwi7QDMKPpFbiKMCsGjCMMQmTXqdCRebdW5OgetMaprKtpvY/rKxzxWZCVJKk/1wsKowhTzBrwk+0LBTxqW0PMieu4=
X-Received: by 10.202.171.216 with SMTP id u207mr1487630oie.430.1507322406206; 
	Fri, 06 Oct 2017 13:40:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.14.100 with HTTP; Fri, 6 Oct 2017 13:40:05 -0700 (PDT)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Fri, 6 Oct 2017 16:40:05 -0400
Message-ID: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Subject: Basic question: "core-image-minimal" v.s "core-image-base" ?
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
X-List-Received-Date: Fri, 06 Oct 2017 20:40:08 -0000
Content-Type: multipart/alternative; boundary="001a113cecb895c5a1055ae6d8d3"

--001a113cecb895c5a1055ae6d8d3
Content-Type: text/plain; charset="UTF-8"

Hi, all:

I have a basic question: how to tell the difference between
"core-image-minimal" and "core-image-base"?
* If we look at file* \poky\meta\recipes-core\images\core-image-base.bb
<http://core-image-base.bb>*
===================================================================================
SUMMARY = "A console-only image that fully supports the target device
hardware."

IMAGE_FEATURES += "splash"

LICENSE = "MIT"

inherit core-image
===================================================================================
* how can we tell that "core-image-base" will include "support for a
variety of hardware such as WIFI, bluetooth...", as compare to
"core-image-minimal"?
* Do I miss any other document that I need to read?

Thanks!
Jerry

--001a113cecb895c5a1055ae6d8d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi, all:<br><br></div>I have=
 a basic question: how to tell the difference between &quot;core-image-mini=
mal&quot; and &quot;core-image-base&quot;?<br></div>* If we look at file<b>=
 \poky\meta\recipes-core\images\<a href=3D"http://core-image-base.bb">core-=
image-base.bb</a></b><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><div style=3D"margin=
-left:40px">SUMMARY =3D &quot;A console-only image that fully supports the =
target device hardware.&quot;<br><br>IMAGE_FEATURES +=3D &quot;splash&quot;=
<br><br>LICENSE =3D &quot;MIT&quot;<br><br>inherit core-image<br></div>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br></div>* how can we tell that &quot;core-image-base=
&quot; will include &quot;support for a variety of hardware such as WIFI, b=
luetooth...&quot;, as compare to &quot;core-image-minimal&quot;?<br></div>*=
 Do I miss any other document that I need to read?<br><br></div>Thanks!<br>=
</div>Jerry<br></div>

--001a113cecb895c5a1055ae6d8d3--
