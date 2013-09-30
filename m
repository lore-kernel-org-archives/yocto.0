Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8534FE01652
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 01:53:58 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id kx10so5639517pab.27
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 01:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+5KQq38oQyiDey7o3zvmQqBS6RRm4wr3aeM0vzRk59o=;
	b=bkXqdFbeeXIpqQAj4Awm6Ra/Ji/PWCusA2WAwk7UAWqz7iWyx4PHxGAeRvtjAiKW23
	zLDxHH5JrqjGsc0IVWqZLS4e7IySZtN19OHs6T5O9R2Qtj6CRpa79YLasasa3VkbiVv9
	/LRji2apqeRsc89Ih72SllotL73CLKqDxADogNnUIKyNjO7nZys6a1a2/e1ZPoLaDRPC
	p448eRZEis+fKwtLLSncDBVB2GovESTrhJeycf9zi5/tRQgos4b1sz2PvxGysVMpqWL3
	iV3DK20rip/jXqnJfMBF0zqxYR8N/hCCDh2s3SUybj5rBPhvO0LX5kjQ6n6ZlHV5XSia
	yedQ==
MIME-Version: 1.0
X-Received: by 10.68.252.33 with SMTP id zp1mr22661424pbc.95.1380531238348;
	Mon, 30 Sep 2013 01:53:58 -0700 (PDT)
Received: by 10.68.232.195 with HTTP; Mon, 30 Sep 2013 01:53:58 -0700 (PDT)
Date: Mon, 30 Sep 2013 11:53:58 +0300
Message-ID: <CABwVrCp5cG1ZuGNZn_HChbCs8MFnoTfDTSvbAU6KvJ9Avp5TsQ@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto external toolchain problem
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
X-List-Received-Date: Mon, 30 Sep 2013 08:54:03 -0000
Content-Type: multipart/alternative; boundary=047d7b2e3cec102d6504e795fa6a

--047d7b2e3cec102d6504e795fa6a
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

I am trying to use a toochain from meta-sourcery layer  - Mentor
Graphics(Code Sourcery) - and I get the following error when building a
recipe:
            ERROR: ExpansionError during parsing
/media/sdc1/fb/alvd/test/broadcom/poky/meta-sourcery/recipes/meta/external-
sourcery-toolchain.bb: Failure expanding variable sysroot_stage_all:
ShellSyntaxError: LexToken(LPARENS,'(',0,0) followed by:
LexToken(TOKEN,'GCC-r22/sysroot-destdir/',0,0)

Can you offer some suggestions, or hints for solving this error.


Thank you,
Alex

--047d7b2e3cec102d6504e795fa6a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,<br><br><span>I am trying to use a toochain=
 from meta-sourcery layer<span>=A0=A0</span>-
 Mentor Graphics(Code Sourcery) - and I get the following error when=20
building a recipe: <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ERROR: ExpansionEr=
ror during parsing=20
/media/sdc1/fb/alvd/test/broadcom/poky/meta-sourcery/recipes/meta/external-=
 <a href=3D"http://sourcery-toolchain.bb">sourcery-toolchain.bb</a>:
 Failure expanding variable sysroot_stage_all: ShellSyntaxError:=20
LexToken(LPARENS,&#39;(&#39;,0,0) followed by:<span>=A0=A0</span> LexToken(=
TOKEN,&#39;GCC-r22/sysroot-destdir/&#39;,0,0)<span></span></span><br><br><s=
pan>Can you offer some suggestions, or hints for solving this error.<br><br=
>
<br></span></div><span>Thank you,<br>Alex<br></span></div>

--047d7b2e3cec102d6504e795fa6a--
