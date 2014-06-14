Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDE40E00AEC; Sat, 14 Jun 2014 09:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69F12E003DA
	for <yocto@yoctoproject.org>; Sat, 14 Jun 2014 09:48:34 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id db12so4532704veb.35
	for <yocto@yoctoproject.org>; Sat, 14 Jun 2014 09:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:content-transfer-encoding;
	bh=36CQYIxOfh8EjAfdaEuY7NYeSwQlltEfKXwk91wlboY=;
	b=NW/JcrAL/Hdz0QXmmRDeO9oiQspeO4QgHT9FhMvPmyjaE90ktvxqsoXVlLLOG1AtNT
	/Kese6jaDo7cRXJ5oGv1M6TPnlBG04x5w2Pta1HvlyG+w+8FkG//UTaOVu1R63xxY4hn
	LCItcbsvPOLGSj04qPVZ+JgOVYO9guFpe53caIqkEAzNtNnA9SqqttkCcX9cAeW7r+nK
	cgsouXP6+51kafFF2mup0hAEzA/GAhehXNi4COt0laR/OhoafOjQ4W6jL2Etjj/ofGQD
	0MOKZObW9sEF3rvfxedsP/B3p6DgNJreDEDsycYrgB/xKIb4CkXcVsWltJW/lYfVE+Vi
	VKOQ==
X-Received: by 10.221.7.71 with SMTP id on7mr7347372vcb.18.1402764512455; Sat,
	14 Jun 2014 09:48:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Sat, 14 Jun 2014 09:48:02 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Sat, 14 Jun 2014 12:48:02 -0400
Message-ID: <CAF_dkJCKsqqhrZiWXkirc018mX+jJ2fs-Gdyc9SN2tsm=Q71dw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: What is the best process for applying patches to dora?
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
X-List-Received-Date: Sat, 14 Jun 2014 16:48:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=E2=80=A6either locally (i.e. in my build environment), or globally so that
others can benefit?

My build from scratch no longer works.  It fails the build the x264_git rec=
ipe.

Tracking things down, I see that it fails because the revision in that
recipe referenced by SRCREV (585324fee380109acd9986388f857f413a60b896)
is no longer in the git repository.

Tracking things down even more, I see that this has been fixed in
daisy with commit a714cf870046d736d45aa1c3f891bdc877a3ca0e:

Author: Khem Raj <raj.khem@gmail.com>
Date:   Wed May 28 22:22:54 2014 -0700

    x264: Update SRCREV to match commit in upstream git repo

    It seems that 585324fee380109acd9986388f857f413a60b896 is no
    longer there in git and it has been rewritten to
    ffc3ad4945da69f3caa2b40e4eed715a9a8d9526

    Change-Id: I9ffe8bd9bcef0d2dc5e6f6d3a6e4317bada8f4be
    (From OE-Core rev: b193c7f251542aa76cb5a4d6dcb71d15b27005eb)

    (From OE-Core rev: f2b20b169a462cf4c6e6f341b76add8a0f4d6e3f)

    Signed-off-by: Khem Raj <raj.khem@gmail.com>
    Signed-off-by: Saul Wold <sgw@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>


What is the best way to get this applied to dora?

--wpd

