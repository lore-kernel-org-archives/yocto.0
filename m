Return-Path: <piotr.betlej@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DFA2E008A4; Sun, 23 Jun 2019 01:47:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (piotr.betlej[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A32EAE008A4
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 01:47:05 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id m206so7583630oib.12
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 01:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1aDFyEfT/tZXLPoGBC3GEqZ/rnTd5agnRlVxQmYAOY8=;
	b=msScqafImqh3k8YJRH7Fy0EmMAwJPGV37VFyB2hPF6dem3pddJ1AzvZ7ezxRYaKihu
	Ah9RX/n9VDhITk8fI2A7mXfinSc+3QifFVCOfZNaHbDfnZY7YvxiGUuI5yfy/zoandFe
	p+pz0F8EIne+tluGdv5w8ghqSIzbjIHexskFfRMF7D4yTHvQwudIlN0TjnZVXzTGbJTI
	/OkHvvhNQfid39F4R6JSmVwacyo5Hooe3/2xB/Q4JRLlazqkthxoGh8qs3ltQaOZIH/E
	+FULjK4wAQu1UtueKYemPcqBmk/nhn1G0udHT6octRJOed2ZPCzec352vEm0m39E5eEG
	aPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1aDFyEfT/tZXLPoGBC3GEqZ/rnTd5agnRlVxQmYAOY8=;
	b=PSr03L+3fTxbn78eFsWdrJUik7HGr170GDHLWfOUuESJpIp/d7GW1MkqgoZokev2z6
	XPGTFYdQXrGEPOwrG0UXYiiKxo6/6Q38I8+TYPHIQOIYxDBwjfNsIRYEf+zRpr0tziq8
	fWph4lSwVY9Masn6zfSGCrDt8s1Z5l4fHhcKqg7YRVT/IENXy4xlGELnLBpDaQxzeyTa
	YFJFsvrQWtTUWRbaIbdQ0c1QnTs1rM97HP2NdGHitoc3Y/f+BRfp89JFqTJJa33nV31J
	RxSasXW2FP9tBd6xQi0C/CGbz0fJb050vLKXxosjanWaUGRNQjiP1V8RWwyHFzfsDpO7
	j01g==
X-Gm-Message-State: APjAAAU+Y8FcDj00DJMHDPmlcPxBkRWHY9/WUBva+vjBY9dnuCEv3A92
	/ANMWFxr38GbIEa89eW/0UGqlPw1NCmVsPJAhff3dy8ej9M=
X-Google-Smtp-Source: APXvYqzsg5CmImOCoiseUcp34aHAEOe/qs7eDlAWVMcZ+dBNhGEnjRGWHnNuWwzIt9dSl3kVTEnqcnQxQvJs4X+Qgmw=
X-Received: by 2002:aca:eb57:: with SMTP id j84mr7741799oih.17.1561279624405; 
	Sun, 23 Jun 2019 01:47:04 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Betlej <piotr.betlej@googlemail.com>
Date: Sun, 23 Jun 2019 10:46:53 +0200
Message-ID: <CAPLYstDpCM=6uwF=0gzA9u-C=LU0zfPnbWNsh-V9M0GL+g2wtw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Sun, 23 Jun 2019 08:47:07 -0000
Content-Type: multipart/alternative; boundary="000000000000686596058bf9bd64"

--000000000000686596058bf9bd64
Content-Type: text/plain; charset="UTF-8"

Hi all,

this happens if one compiles a plain makefile project, since there is no
-Wl,-soname,my_library.so.1 linker option added automatically as it is in
case of using autotools or cmake for recipe.
DNF checks content of the so file and if it does not have SONAME inside, it
refuses to continue rootfs processing displaying confusing message "nothing
provides my_lib.so ...". There should be a better warning message or some
clean policy for it.

Regards

Piotr Betlej

--000000000000686596058bf9bd64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>this happens if one =
compiles a plain makefile project, since there is no -Wl,-soname,my_library=
.so.1 linker option added automatically as it is in case of using autotools=
 or cmake for recipe.</div><div>DNF checks content of the so file and if it=
 does not have SONAME inside, it refuses to continue rootfs processing disp=
laying confusing message &quot;nothing provides my_lib.so ...&quot;. There =
should be a better warning message or some clean policy for it.<br></div><d=
iv><br></div><div>Regards</div><div><br></div><div>Piotr Betlej<br></div></=
div>

--000000000000686596058bf9bd64--
