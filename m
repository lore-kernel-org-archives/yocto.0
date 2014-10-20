Return-Path: <eddy.lai.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A417BE00861; Mon, 20 Oct 2014 02:27:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddy.lai.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A84E0071C
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 02:27:04 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id i138so3305239oig.23
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 02:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=8alIqbJvwZqG7Zv+JLxcOfhJVbzekl5MdHWHu9Y93qY=;
	b=pPbbo9UYK3gwDXWiwQ26gJSF/t/1s1fLc2Lhk7BytTz72a3+3JoTRXoQKaA97MTzM3
	mjfgFKoQcpQ7ftzpU2uftPT6ASZD91e5/8HEfUp0obxCnoCR6gWbV/gJwOh27BMI9sDV
	L/niV2HXxCNUifrQp7ZB6PkE4TA4oBLGEATRORPoE7CEqADPHsxZyNMFrCPUi4rZ6Yeu
	nmNcZu5Y0p/MfBOtR5yFCl4SVjo1pFbKi3XNmX98jbSbANeJzKQXEXLbcWVPl7hr9FTw
	mUAy0sZGCVYR6SVwk5yJ5ytjNUe4MEduXSlIcjBv6lOhhtTqFkLRQ/ECa/uMEYwgCXgz
	Dq6A==
MIME-Version: 1.0
X-Received: by 10.202.77.75 with SMTP id a72mr21175472oib.8.1413797224302;
	Mon, 20 Oct 2014 02:27:04 -0700 (PDT)
Received: by 10.76.72.4 with HTTP; Mon, 20 Oct 2014 02:27:04 -0700 (PDT)
Date: Mon, 20 Oct 2014 17:27:04 +0800
Message-ID: <CACrgodd5fQP3yWfc7eYbVg8+oGPQWU4EG9thKmYV35-NfNX0HQ@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-security] nmap build failed
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
X-List-Received-Date: Mon, 20 Oct 2014 09:27:08 -0000
Content-Type: multipart/alternative; boundary=001a1135308256ce460505d7519a

--001a1135308256ce460505d7519a
Content-Type: text/plain; charset=UTF-8

build with yocto 1.6.1 on Ubuntu 12.04,
have add extra dep. to local.conf according to REAME
  /poky/openembedded-core/meta \
  /poky/meta-openembedded/meta-oe \
  /poky/meta-openembedded/meta-perl \
  /poky/meta-security \

but got following error message:

$ bitbake -k core-image-full-cmdline
ERROR: ExpansionError during parsing
/poky/meta-openembedded/meta-perl/recipes-perl/libtest/
libtest-harness-perl_3.30.bb: Failure expanding variable
do_fetch[file-checksums], expression was
${@bb.fetch.get_checksum_file_list(d)} which triggered exception
MalformedUrl: The URL:
'${CPAN_MIRROR}/authors/id/L/LE/LEONT/Test-Harness-3.30.tar.gz' is invalid
and cannot be interpreted

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--001a1135308256ce460505d7519a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>build with yocto 1.6.1 on Ubuntu 12.04,<br></div=
>have add extra dep. to local.conf according to REAME<br>=C2=A0 /poky/opene=
mbedded-core/meta \<br>=C2=A0 /poky/meta-openembedded/meta-oe \<br>=C2=A0 /=
poky/meta-openembedded/meta-perl \<br>=C2=A0 /poky/meta-security \<br><br><=
/div>but got following error message:<br><br><div><div>$ bitbake -k core-im=
age-full-cmdline<br>ERROR: ExpansionError during parsing /poky/meta-openemb=
edded/meta-perl/recipes-perl/libtest/<a href=3D"http://libtest-harness-perl=
_3.30.bb">libtest-harness-perl_3.30.bb</a>: Failure expanding variable do_f=
etch[file-checksums], expression was ${@bb.fetch.get_checksum_file_list(d)}=
 which triggered exception MalformedUrl: The URL: &#39;${CPAN_MIRROR}/autho=
rs/id/L/LE/LEONT/Test-Harness-3.30.tar.gz&#39; is invalid and cannot be int=
erpreted<br><br>Summary: There was 1 ERROR message shown, returning a non-z=
ero exit code.<br><br><div><br></div><div><br></div><div><br></div></div></=
div></div>

--001a1135308256ce460505d7519a--
