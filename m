Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6E07E00950; Tue, 23 Apr 2019 03:07:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C18CE008F2
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 03:07:52 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 64so12259110otb.8
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 03:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uRuMTJjKBB9fgKv1f/8d9SlIKFvGgb4ziHofz+nByqA=;
	b=btyQjd3Y5R2DRGyrkStQuykSuW7SwyI0lw4Dfx38DUstDavkTTDSf8oHfg4CU6pkcN
	gstlA6K2y4n2FZdSwFDeE1YSkhqBYsaqeQMEyTW2dbFJgHiE6pzauYdddFhEm7GbTrQ8
	svXw7VU12keu4E3BXG0/r2OmWjWQdEqgNL8sbUOHkk3fHiGJROgmnynoJcwUEgRHFFC/
	kGKfK/Tn4H10yslta/T8gynHwT57FHMiqgOxABOi69Eth+skjfbvODwvhEMZZ/dSRXwQ
	Xd5uTCz1F4Qme6Xsb/CiEfvbw/NNHezx+jYf+v8/EmIzX9jjlZyP5YWjtq07CJ6Nau60
	AO2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uRuMTJjKBB9fgKv1f/8d9SlIKFvGgb4ziHofz+nByqA=;
	b=OKXEBbvGI3ghXGaXK5jowJXC6nxn4pO1UCIHX3fbTd2EAodl9Zzs670SJ/dvhkPryg
	+NfjyvF3JhaL/QuGULRm2vsXWZvhYMiOZTyyi5P5NqbdzkFgLdZfsz5jHSg0XLv6ebc6
	ELfC5OQ8tJOJyBxr3//h516jTndZDYj9Quq+rbeNnXYdNRUbVyJ9YlvddM4SVz/ew+2g
	BPwu6Ek1AwU+x1N+oRL2hQDak7+bxWkTL+3AxTDCFiOEE09PI0OrH/9mH9+HTacTTSlx
	F+rbh7Rfw8tS/ILoKL4OtwIhxbSYUzb4S58h3iKRNO1ezNaLCkAn7+c6/7wcEOxJqI8s
	f1ew==
X-Gm-Message-State: APjAAAXPbQcVqmN6yQmvcg9OYJN/LoJZ+GFblFusURhvatGCNBIsW6jT
	WzF3xvpPLPPLUmXcETYyp0+RUumOPxSYqz45iE6VVF8B
X-Google-Smtp-Source: APXvYqzYk2uhLn/3Dn7t1HTPMdsYBah1r65d0PQ6VMszgUYVoH7aNbellyAit4rrSL+g+UUbRMNLQ0f9WrKmERZzfPg=
X-Received: by 2002:a9d:6ad1:: with SMTP id m17mr855229otq.108.1556014071538; 
	Tue, 23 Apr 2019 03:07:51 -0700 (PDT)
MIME-Version: 1.0
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Tue, 23 Apr 2019 15:37:40 +0530
Message-ID: <CAA_f9ePxLuPytZav9z=9qcJzTNHZKvoqfyPJd4LZxVzBgQ6BnQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to remove packages from Image coming because of RDEPENDS
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
X-List-Received-Date: Tue, 23 Apr 2019 10:07:52 -0000
Content-Type: multipart/alternative; boundary="000000000000ffe95205872fc1b6"

--000000000000ffe95205872fc1b6
Content-Type: text/plain; charset="UTF-8"

Hi,

How can we remove inclusion of any package which comes because some other
package RDPENDS on it?

For example, rpcbind recipe RDEPENDS on shadow and libpam packages, because
of which if IMAGE_INSTALL+="rpcbind" is mentioned in recipe ( even though
shadow and libpam are not added like this explicilty) , shadow and libpam
packages get packaged in Image rootfs.
This even includes any bin/sbin provided by shadow/libpam, even when they
are not needed in rootfs.

Is there an optimum way to control inclusion of RDEPENDS packages?
One way is to use ROOTFS_POST_PROCESS and remove specific files after
do_rootfs task is done.
But is there a way to remove entire package, instead of removing each file ?

Warm Regards,
Priyanshu Sharma

--000000000000ffe95205872fc1b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>How can we remove inclusion of any =
package which comes because some other package RDPENDS on it?</div><div><br=
></div><div>For example, rpcbind recipe RDEPENDS on shadow and libpam packa=
ges, because of which if IMAGE_INSTALL+=3D&quot;rpcbind&quot; is mentioned =
in recipe ( even though shadow and libpam are not added like this explicilt=
y) , shadow and libpam packages get packaged in Image rootfs.</div><div>Thi=
s even includes any bin/sbin provided by shadow/libpam, even when they are =
not needed in rootfs.</div><div><br></div><div>Is there an optimum way to c=
ontrol inclusion of RDEPENDS packages?=C2=A0</div><div>One way is to use RO=
OTFS_POST_PROCESS and remove specific files after do_rootfs task is done.=
=C2=A0</div><div>But is there a way to remove entire package, instead of re=
moving each file ?</div><div><br></div><div>Warm Regards,</div><div>Priyans=
hu Sharma</div><div><br></div></div>

--000000000000ffe95205872fc1b6--
