Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56E05E00C34; Wed,  3 Feb 2016 07:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 084A1E00951
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 07:07:24 -0800 (PST)
Received: by mail-yk0-f175.google.com with SMTP id z13so20602105ykd.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 07:07:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=WByCOyEAZaSbbtOkAsI2ZS12mAORT7qzxMlav+7IXxo=;
	b=r74jlj1s8xRj31Lb2AH33KkpCd+Co/sKZ2M9JLl5kHDdJAh4Fc7gG7XWcAfXU5dDNn
	/HKITvp+hAaHUVvJzAspGLgzlR0YCNAqe1eCoHUkOUiucF4v5XsnAx2UpQWa8G9t/RG4
	McFFKWEiaqJakLcXyy+RmiJg7b0wCL8ehnhDDqwNXyzHlc/0ubgQ/cyFc9cUfnApvNWx
	BBgf14ky1QJn/ttPvjb7biTSDs9m5M/hFzl8/avEkT73yRVBvx3CnErqD2BqhUpRG6Bh
	Aa2vGlESysa+g8zwkzyUjL0K/5DkJ7eHDZirsvqOSHNCFilUBEUN78JtlGo4qeF5w/CA
	MggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=WByCOyEAZaSbbtOkAsI2ZS12mAORT7qzxMlav+7IXxo=;
	b=c0o54srEtoOUgGIhyMx3VD7tWcaAikUMkOolsU8Usv+jxICI7hVlTSiUf7Bpb1/irh
	ECORWkLlqj1V1cTuUtiMY8epvWP7bZDoNofTfo3mGLvE0Sla8jO5iKxP774uHkki5Bbw
	qXtfLdtskpE/gWc/oGW3UgqbjypYkN4VHp4LO5N8rruWDng/KAJtwvJXKTz71Xz6U0Ak
	hZ7rBWGk1Om94mVS6vsAb7EEN65cKWrwhZ65VezCVPcZuTJUQHCvR07hjxk30cpF3hOf
	41/lOVBaJgmlCnnaOP6xOOjhNf6adefI7Nz25SlpwCbtGoJVTR69oQ25UZmFHHHiChRO
	H3sA==
X-Gm-Message-State: AG10YORn+kmI5GKE2JbOUkLwc3SDtW9f90XwBcUFWaBhqjB7V7K6ewsBwT5qLIADQJ5vizPvUCjNbBIZQLVApg==
MIME-Version: 1.0
X-Received: by 10.129.94.8 with SMTP id s8mr1163814ywb.309.1454512043808; Wed,
	03 Feb 2016 07:07:23 -0800 (PST)
Received: by 10.37.88.197 with HTTP; Wed, 3 Feb 2016 07:07:23 -0800 (PST)
Date: Wed, 3 Feb 2016 15:07:23 +0000
Message-ID: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
To: yocto@yoctoproject.org
Subject: Which Toolchain is being used to build Yocto ?
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
X-List-Received-Date: Wed, 03 Feb 2016 15:07:29 -0000
Content-Type: multipart/alternative; boundary=001a11491ca0b15efe052adef91c

--001a11491ca0b15efe052adef91c
Content-Type: text/plain; charset=UTF-8

Hi,

Building jethro on a Ubuntu14.04 system. I want to ensure that each person
in the team is using the same tool-chain version.

I notice there is a meta/recipes-devtools  -  I assume this pulls in from
build/downloads - so gcc-5.2.0.tar.bz2 for example. Does the tool-chain
comprised of these recipes get built by /usr/bin/gcc before being used to
compile Yocto ?

If this is the case then assuming we configure for off-line builds and used
the same build/downloads content as well as the oe-env ( from
oe-init-build-env ) then we'll all be on the same tool-chain version. Or
have I missed something ?

Thanks,
Mark

--001a11491ca0b15efe052adef91c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>Building jethro =
on a Ubuntu14.04 system. I want to ensure that each person in the team is u=
sing the same tool-chain version. <br><br></div>I notice there is a meta/re=
cipes-devtools=C2=A0 -=C2=A0 I assume this pulls in from build/downloads - =
so gcc-5.2.0.tar.bz2 for example. Does the tool-chain comprised of these re=
cipes get built by /usr/bin/gcc before being used to compile Yocto ?=C2=A0 =
<br><br>If this is the case then assuming we configure for off-line builds =
and used the same build/downloads content as well as the oe-env ( from=C2=
=A0 oe-init-build-env ) then we&#39;ll all be on the same tool-chain versio=
n. Or have I missed something ?<br><br></div><div>Thanks,<br></div><div>Mar=
k<br></div><div><br><br></div><div><br></div></div>=C2=A0=C2=A0=C2=A0=C2=A0=
 <br></div><br><div><div><div><br><div><br><br></div></div></div></div></di=
v>

--001a11491ca0b15efe052adef91c--
