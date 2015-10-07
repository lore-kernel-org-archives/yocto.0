Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52000E009C5; Wed,  7 Oct 2015 13:33:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20561E00D8A
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 13:33:24 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so29925171ykd.1
	for <yocto@yoctoproject.org>; Wed, 07 Oct 2015 13:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=tqH81UbpDKrheX9bJMwaB4SH1eOQip8VuA1Wxo/2DHc=;
	b=TTuaFhRkSGDTpoKWacGh5OXtyDR3a5mb6DGascQcDdMHBSa9YWeQfg9/ub4W5IP3my
	FFHISSmxcSQLRT/Vt3IKWnFTwkOyecxFVbrzaREokGrhif3onLNJtYttOYsSQoRWdZ9q
	6tyAOjlGgrWXRNMCGldTWCE5/eRP6bQJPWOHz0VcoPveFAL3vVJcPR01O+PHp5U/pmHe
	D6CvPQZ3xgTPQXprrcW4tbwDhmAKbrZ63H2VpEE2NjFZWe7lJiTtfY1+lGcqNSnDwxC1
	RUxfPuwbtQ91YhrqouKVF9aIP3YRqwGKNa2cMCh2ewTktu4MRI+GX32kIidk7PHoXTAe
	iwRA==
MIME-Version: 1.0
X-Received: by 10.129.135.3 with SMTP id x3mr2601581ywf.131.1444250004344;
	Wed, 07 Oct 2015 13:33:24 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 7 Oct 2015 13:33:24 -0700 (PDT)
In-Reply-To: <C9092D70-8048-4B9A-A47E-0D31EABC9E66@curtisembedded.com>
References: <C9092D70-8048-4B9A-A47E-0D31EABC9E66@curtisembedded.com>
Date: Wed, 7 Oct 2015 17:33:24 -0300
Message-ID: <CAF3SDA7w1U+a536Tv=TpSGZ2vhC2p0evUi0HSk347FA4ezVTCQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Allen Curtis <allen.curtis@curtisembedded.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: svn fetch problem?
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
X-List-Received-Date: Wed, 07 Oct 2015 20:33:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

The build system creates a tar.gz file from the SVN checkout. Probally
the devshell opens on this .tar.gz exploded, not at the folder checked
out.

What I do is checkout manunally and use toolchain to compile. So I do
fix/compile/test cycle on my own workcopy and using toolchains
provided by Yocto. Then I copy the binaries/libraries to target
manually and test it. Once everything is fine I test the build inside
Yocto.

Cheers,

2015-10-07 15:49 GMT-03:00 Allen Curtis <allen.curtis@curtisembedded.com>:
> Hello,
>
> I am fetching my source code from SVN in my recipe file. The build works =
fine. However if I open a "devshell", the .svn directory is missing so I ca=
n not checkin any modifications. I looked at svn.py and it looks like it sh=
ould be doing a checkout operation.
>
> How do I fix this?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Do or do not. There is no try"
  Yoda Master

