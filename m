Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A789DE009A0; Tue, 12 Mar 2019 11:45:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A219BE007B3
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 11:45:15 -0700 (PDT)
Received: by mail-it1-f179.google.com with SMTP id x189so6132989itd.3
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 11:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5W1EtlKzm7NQ6sbHPs5VchXO3wlmeGSrkXPuT7jkgKU=;
	b=cRV2JVWnQdzZkMgs/fFC1kK/1NeyVVtvZ4MLaUgEtHP8qrvQEjcLh6ncVeNczGiz6K
	GQAXxKWwMkjWwZ+4wT4XX7WXqd4Y30HGXlKY/DFvHCS7QxRHllfuRZxdNtbmPspbdzEa
	kmZ+f9ZXZGBNaU8NzoqsjV5xuIw+USKE6bURQSoacrK9jl9WbiOYUcTnImYxwXmdEKXt
	EzTPif8vio8lMRqsaqB1tjqbR7Q8/xg5BwSHBcDoLHYthBTGN4PI2/cePkIGmMRKl4Ry
	3rJ5/n9U8aD/3TuFziIwPIPaFGUtXPMDnScSWD/o9I2KKRwRdYQD3QPYOWgetT/HiNhp
	Ik8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5W1EtlKzm7NQ6sbHPs5VchXO3wlmeGSrkXPuT7jkgKU=;
	b=N/EuRUc2M4R7C3ovuGNi59lIrU+vwf0IR/Y2lGE21EGXOnni6AwClK7NhP32+zdH2b
	NSZulND4RDv8dpHyn5Glqiku5F2f9oVzwLJw1bwQPUkmLzNnagwZQ5xcWNfEP6dptGxy
	zEJt0/qBazmjFvGka3oC51g3+FfJEflm3XnqbDOIAQDGmAUgoG+Nt3OIF1z7ebeDqNRU
	0o+X7S7iARrIACQFzGNgbZI24FFxaBQMyJqg0V7+a2KPyG7M9nXuAL5vgjH8zcGqSZ/G
	TGR7EKRbVmMF2nAqVWxiSF6bRe9m1J72xnDM8LSqKAHf465eqJDwJcP//c465rcmp5iP
	MYAA==
X-Gm-Message-State: APjAAAXonNqhjiVwaTXh6/jM4uKtWDNY6cuTc+08Cv6i1no/WLRivdC6
	QMCD8+CTZRFrN5fGjA8LDSOkptgV6nceoUcl5pTZYsjz
X-Google-Smtp-Source: APXvYqwrU+2xqCdzlmGBckdwVdmvkDu1B91NcmQRpr2WJTTdtzldn/CGDBp+tmxG9ZFhztdef2I7XBsbkKPVdHRDmhE=
X-Received: by 2002:a02:9109:: with SMTP id a9mr2681857jag.36.1552416314757;
	Tue, 12 Mar 2019 11:45:14 -0700 (PDT)
MIME-Version: 1.0
From: Emily S <easmith5555@gmail.com>
Date: Tue, 12 Mar 2019 13:45:04 -0500
Message-ID: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 18:45:16 -0000
Content-Type: multipart/alternative; boundary="000000000000fc23ab0583ea162e"

--000000000000fc23ab0583ea162e
Content-Type: text/plain; charset="UTF-8"

Hi all -

It seems like now you need to depend on coreutils to get /usr/bin/env
working, why is that? Coreutils is a bit big and takes awhile to compile.
This wasn't the previous behavior, and I'm wondering why it was changed.

Thanks!
Emily

--000000000000fc23ab0583ea162e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all -=C2=A0</div><div><br></div><div>It seems like=
 now you need to depend on coreutils to get /usr/bin/env working, why is th=
at? Coreutils is a bit big and takes awhile to compile. This wasn&#39;t the=
 previous behavior, and I&#39;m wondering why it was changed.</div><div><br=
></div><div>Thanks!</div><div>Emily</div></div>

--000000000000fc23ab0583ea162e--
