Return-Path: <jaymin.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F72AE00B51; Thu, 11 May 2017 05:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jaymin.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85228E00AF8
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 05:55:07 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id n23so8561891pfb.2
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 05:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=shYmWtrVff/jdrjLfNBQA9ZNGZ5gtSkr2ximDOyU/nE=;
	b=F4ukZRJ/3zOj+PmqYFDLiIz4h8vgah4Ie6FMbvq99OM0eJAbIjQshq82XWZTyq3R1l
	vGy42eGTsxSPKiA4ls2LhLdUv8yqF2ebmQFc91D/CiWemZwFlxBt9iWMeu0FzEe5230B
	FvSJbsXjfexmVHuyYy1kr6y0YY4+AWYfSSjdUmNmqEEStdln29fSrWYwFQC0wryBu1fP
	rlOrjudpGqbVNOcKEafmLK9kaPoZNVYSPvw5xQVBscJA5o+9s3MD5dcUsafp6D47Q1W4
	r02pXq6lYDRI063zs0uJQ1LGNl0v13IfjB2BGsKcLEPnq3a5jgFHTFUdo6AIxf+eb+ta
	JkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=shYmWtrVff/jdrjLfNBQA9ZNGZ5gtSkr2ximDOyU/nE=;
	b=gorYuNss+5pm5cN2g8oTtKjdO/TKyBiaxRBv/fq9WfH0RJwARecU8pHQvwlfAu5/Nk
	jmVrEtxiRX+y5HCrLHqnBxbcAJA0ts4i5rTvz4u3/uRHOv2YIIBTJrghfXO2fmFB7Bxr
	nMMHnPd0DwkUr89bVi/epmFMaiqwS4C/kYxQ30TJla1nNJ+h/FVhVCLlQ6Uka53nDgfm
	TTnIIGfcnYtz5GBHIlkzxbZ10f9ug/4+YOwWkS3pd1c5dlq45URJlEY078ISHu55s+0n
	O1ZabXkOnGx6C4pYsushWGuRLKFAdTPm+FfXPYXO0jV4CnKUulfV2sNngaFl+JrIzq76
	1DdQ==
X-Gm-Message-State: AODbwcCSEDEZZJ1nVrDo35tuP5pC9F5QxFeNje5H7hXIMMob6+S+XbaY
	9kcB33lcQlusOAMfv+7GmPjxnt149fQk
X-Received: by 10.99.155.17 with SMTP id r17mr117563pgd.193.1494507306830;
	Thu, 11 May 2017 05:55:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.182.6 with HTTP; Thu, 11 May 2017 05:55:06 -0700 (PDT)
From: Jaymin D <jaymin.linux@gmail.com>
Date: Thu, 11 May 2017 18:25:06 +0530
Message-ID: <CAL02zyt=UufSDO-2v0F3A+_tZGkMiYpUQeGKb9mpebjr0br_dw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 16 May 2017 12:05:36 -0700
Subject: Add 'mongodb' package in Yocto (Jethro branch)
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
X-List-Received-Date: Thu, 11 May 2017 12:55:08 -0000
Content-Type: multipart/alternative; boundary="f403045dcf06234fcd054f3f195a"

--f403045dcf06234fcd054f3f195a
Content-Type: text/plain; charset="UTF-8"

Hi Team,

I want to add 'mongodb' package into my current Yocto (Jethro branch) build.

I have tried to add in - CORE_IMAGE_EXTRA_INSTALL += " mongodb", also tried
to add " boost" package too. But, it couldn't compile.

The error was:

*ERROR: Required build target 'core-image-base' has no buildable providers.*
*Missing or unbuildable dependency chain was: ['core-image-base', 'mongo']*

I have also tried this - "
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/mongodb/mongodb_git.bb?h=master
"

But, bitbake was failed.

What would be the possible reason of failing the bitbake?
In which file I have to make changes for adding the 'mongodb' package?

All suggestions are welcomed.

Thank You,
Jaymin

--f403045dcf06234fcd054f3f195a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Team,<div><br></div><div>I want to add &#39;mongodb&#39=
; package into my current Yocto (Jethro branch) build.</div><div><br></div>=
<div>I have tried to add in - CORE_IMAGE_EXTRA_INSTALL +=3D &quot; mongodb&=
quot;, also tried to add &quot; boost&quot; package too. But, it couldn&#39=
;t compile.<br><br>The error was:</div><div><i><br></i></div><div><div><i>E=
RROR: Required build target &#39;core-image-base&#39; has no buildable prov=
iders.</i></div><div><i>Missing or unbuildable dependency chain was: [&#39;=
core-image-base&#39;, &#39;mongo&#39;]</i></div></div><div><i><br></i></div=
><div>I have also tried this - &quot;<a href=3D"http://cgit.openembedded.or=
g/meta-openembedded/tree/meta-oe/recipes-support/mongodb/mongodb_git.bb?h=
=3Dmaster">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/reci=
pes-support/mongodb/mongodb_git.bb?h=3Dmaster</a>&quot;<br><br>But, bitbake=
 was failed.<br><br>What would be the possible reason of failing the bitbak=
e?<br>In which file I have to make changes for adding the &#39;mongodb&#39;=
 package?<br><br>All suggestions are welcomed.<br><br>Thank You,<br>Jaymin=
=C2=A0</div></div>

--f403045dcf06234fcd054f3f195a--
