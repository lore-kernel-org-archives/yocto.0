Return-Path: <h4nn35.work@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47A52E009D9; Fri, 22 May 2015 05:51:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (h4nn35.work[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53080E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 05:51:33 -0700 (PDT)
Received: by wichy4 with SMTP id hy4so46261322wic.1
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 05:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=D7S50MlM8Kt2nbSRmVEcCoIKqReVoEoneWB9GCy+oMI=;
	b=wXjjspxA4CVMLdWQZtJXlymLzOD56LLbeChVvOl96oZkWALudi9q9cPJ0PX/vOO1oC
	QWpRMvaA7ixTkG32TBhYRLYJDZxYDtVp/zYPeMf+OSmcqYpWwMpi/daeb1jMHXeCSxU2
	vZwAG1S+XizKvDgn6munVB4f0xs4mXXH6mFyyTON0GC5nKwxz5JGGCLz/5JnNTenQPF/
	aTERzFEIsT3Ac+/NcHCOasEZLenup1NrQOXRVe3HLddiIgKELTUm9c/zczONeRVCEgEw
	KXsW6dFHUYzAUO7A9+YarzygXtwSfOvTyyAhUjDnzvxhNARXc70g2HpLd5paHy0JO6TI
	DgVQ==
MIME-Version: 1.0
X-Received: by 10.180.198.10 with SMTP id iy10mr7426632wic.16.1432299093229;
	Fri, 22 May 2015 05:51:33 -0700 (PDT)
Received: by 10.27.128.68 with HTTP; Fri, 22 May 2015 05:51:33 -0700 (PDT)
Date: Fri, 22 May 2015 14:51:33 +0200
Message-ID: <CAHvQdo1a2ZvvW7WLYRdS_6ru6GLPNYxD8Rwugg6C5tvSCN-81w@mail.gmail.com>
From: Johannes Pointner <h4nn35.work@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-oe] build error using read-only-rootfs with samba
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
X-List-Received-Date: Fri, 22 May 2015 12:51:36 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I recently upgraded to fido and tried to build core-image-x11 but I
get the following error if I include the samba package:

Collected errors:
* extract_archive: Cannot create symlink from ./var/log to
'volatile/log': File exists.

I think I was able to find the cause of the problem, it seems that
samba package is trying to install /var/volatile/log/samba as well as
samba-base package by using the volatile script.

But I'm not sure, why the samba package is creating /var/volatile/log/samba.

Thx,
Hannes

