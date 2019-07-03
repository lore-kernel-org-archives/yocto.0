Return-Path: <sb@baader.hu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA437E00CF4; Wed,  3 Jul 2019 09:53:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D143E00C43
	for <yocto@lists.yoctoproject.org>;
	Wed,  3 Jul 2019 09:53:31 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id d17so3081341oth.5
	for <yocto@lists.yoctoproject.org>;
	Wed, 03 Jul 2019 09:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=baader-hu.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=U99tlp9ZgmX5nX+yMUfYPJjuPGG/A9hU/LM9CZKd1o4=;
	b=MauHRnvHikqZ4nutd34sRSvHYza7aN3pxnf6237V760somLr9bIdmyzmTaYnqp42pq
	OlB33cP7dDZSxHFHUB5aMKhr0gYD0jkLrZnr+BB3U2FpHOrVLUKC/Gr0jVEWrTNYAKM9
	6e7MHPDCVAfKQM03+lL+Sl318T5l/hDtnbNuzlYItgUMMPqlQjTLwvEMm8OkCHVNeXeP
	AXZRDb1t4jU6rndVRfOnnx1aUjIJ3skgv6ji2R3+xZGtIQ3v/baiayMHUlo4+RCGqN4+
	VBZSipKnMjnWsjs3QLwR+lQkKCC4YP1+sCc0dTB3PFhX5i1nFGhWBWc1aBbIX0aYlwaC
	YyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=U99tlp9ZgmX5nX+yMUfYPJjuPGG/A9hU/LM9CZKd1o4=;
	b=eptg1jy3yLWP4pPKTcEU6JRc5bc3OuT4CWV7CgTYsHMMp9v0PIixUYWHfCkgGDBWjc
	/pw9rGGS+CVdx5t1vucEhBLh6dFhvTyve++Ru7gDJrST5qc0I/UVWCnfdp6kmVHJarfd
	5MB5zJmovJwogJyPammDBVHuk0Y6ooN0LCDbm3Wr2nNVW29K376VvAPCRhrs5Ha0kkXh
	xPKD0ydH10q6RDxNNKuH0N9CZV1sDx3yTZTIMIVVGdSKf9xT7gCHVDCpDHgcVI78VPE8
	erU1oPSs88bqP3eE7uuC5YR0iT6PAwOwtKQ0mh4Vujevb6qDlCOopUVlDtTvQS1aeM/U
	PuUA==
X-Gm-Message-State: APjAAAXifNyDnfIu7ww8G4sPZE82pwMtl0aG6TSCi03bhfXZer12EkJv
	8ubwAoXxHvMJx+f8f7aWaMmYPyiZKOhrE5konZ519djx1gIj9Q==
X-Google-Smtp-Source: APXvYqyHZ+J9aSc9q78U6xyeP46VR2rz9dA22b4+h3zrRhA5tsa/Wflm9so+yr25lCHg7gxYak9OtIRHnxCC6Zqulh4=
X-Received: by 2002:a9d:7a82:: with SMTP id l2mr30937117otn.120.1562172810273; 
	Wed, 03 Jul 2019 09:53:30 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Szabolcs_B=C3=A1der?= <sb@baader.hu>
Date: Wed, 3 Jul 2019 18:53:19 +0200
Message-ID: <CAH_3R3JqkPYpSbK2Bwdf6eUbqJv6N3gpdC2Xr98JP9hJBAmW8Q@mail.gmail.com>
To: yocto@lists.yoctoproject.org
Subject: How to run script before mount rootfs
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
X-List-Received-Date: Wed, 03 Jul 2019 16:53:32 -0000
Content-Type: multipart/alternative; boundary="0000000000006f37ee058cc9b35d"

--0000000000006f37ee058cc9b35d
Content-Type: text/plain; charset="UTF-8"

Hi,

I created for Raspberry Pi a simple OS-boot-switcher. I change a param from
rootfs, reboot and new OS run. I would like to add to for this flow a
parameter to create ro boot and rootfs.

I would like to read this parameter at boot and depend on this choose which
OS will load. How could I define this at boot (eg. from cmdline.txt or with
a shell script or load c code ..?). What is the best idea/ way to do that
within Yocto?


Thanks in advance,
Szabolcs

--0000000000006f37ee058cc9b35d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I created for Raspberry =
Pi a simple OS-boot-switcher. I change a param from rootfs, reboot and new =
OS run. I would like to add to for this flow a parameter to create ro boot =
and rootfs. <br></div><div><br></div><div>I would like to read this paramet=
er at boot and depend on this choose which OS will load. How could I define=
 this at boot (eg. from cmdline.txt or with a shell script or load c code .=
.?). What is the best idea/ way to do that within Yocto?</div><div><br></di=
v><div><br></div><div>Thanks in advance,</div><div>Szabolcs<br></div></div>

--0000000000006f37ee058cc9b35d--
