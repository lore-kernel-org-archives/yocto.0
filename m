Return-Path: <m.bishop2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B985CE00DB1; Thu, 31 Oct 2019 08:49:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (m.bishop2[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F360E00DA7
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 08:49:51 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id 18so7255398ion.6
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 08:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KxRKmYClwA7356zdoihUCA5fve/25GuNA1gVPchifpM=;
	b=qqWZNwN8BzGPwgszjevN+1qQNr01dwVKb/AZ2wP98NXGzQs9GMbpkHEw4vKMFW4ofc
	vdVQuftuOtCK+PRrgZbCMiYB5+9rrcAZIqxNuhRdsyxXO3i+NROIqMQgiYDJiAbvqyNr
	A01xuQj0Vfrx+NnMA9RA72rS7cE7sPKnTLHzZQ6s+mX2dRW2gH0gX8QzJwEd/SRWW/u4
	qkdDQG7ubLo423RX10ByHzdy3oeLZno1EiG4ioFf1q8G92xZ2efkK8mlJs0ChcPGRybF
	BF8s3LQAkwDOGPdyCQACgE4xf6PsNpgRkkeiiu+oeVNTVYZVi1yF+gpAJDjXEcpX41+u
	7HHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KxRKmYClwA7356zdoihUCA5fve/25GuNA1gVPchifpM=;
	b=OIfwX/3/oqlpKNGxkp7FeUDumUj8KzxiJ4g3rRaOYn3edu3U+FmgTflE4UVRFZiA5U
	LuBPWYl1BlfuSiP5/meJ4FTtl/eHvCrM8AN8PLpNrp+zxNboJFqVuVQmQAcKuZ4Knb6B
	r+upwuwpxwU9tI5epFp+btlMvGTSwswcDzseIBxmu2TnI+TOnNWjWYhtq+s4HRLluTxa
	50UdKt5+Eo0rZq1LUPddqzgKuS6dnOoIG/FLqPqGGZof5yy6DfL0guwEnqa7QMeoobfW
	oOCFpSokR9Jv+u76fnFmbtNbRINo1nGOOCoEoegvwFTj5/ZX3/0k1JXMf9GCVVTOa1h8
	bFRw==
X-Gm-Message-State: APjAAAVBdbMCEAWaGtGwMVwCMVBEr/plGjB3WnV7jtdFBBcnBk8wZq/s
	2bHr5bBEAoT1SldCtAcTb5eoukMu7qhnCTu1G6vu
X-Google-Smtp-Source: APXvYqxT2v/4qSUUxro3NTtEMCQLnfjxDTYZI+eD/Ai6ybQYB5Z+4J/qBeCAtt1mTFfWnVzrgnnw+rdZDun5tCMdCR0=
X-Received: by 2002:a02:ce5b:: with SMTP id y27mr1242851jar.38.1572536990108; 
	Thu, 31 Oct 2019 08:49:50 -0700 (PDT)
MIME-Version: 1.0
From: "Bishop ." <m.bishop2@gmail.com>
Date: Thu, 31 Oct 2019 11:49:38 -0400
Message-ID: <CAMdxf7veSHDxNm6=azcAUf8S83EU5ZeCrfgECzKrPzXhFsrLXg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: GCC version 8 upgrade
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
X-List-Received-Date: Thu, 31 Oct 2019 15:49:52 -0000
Content-Type: multipart/alternative; boundary="000000000000b110b7059636cc58"

--000000000000b110b7059636cc58
Content-Type: text/plain; charset="UTF-8"

How silly would it be to try and get GCC sdk v8 complied and installed for
Jethro?

--000000000000b110b7059636cc58
Content-Type: text/html; charset="UTF-8"

<div dir="auto">How silly would it be to try and get GCC sdk v8 complied and installed for Jethro?</div>

--000000000000b110b7059636cc58--
