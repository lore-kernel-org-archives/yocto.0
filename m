Return-Path: <zertsekel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D7DE00C15; Fri,  2 Nov 2018 02:08:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zertsekel[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6498FE00A10
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 02:08:00 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id d6so2237765itl.4
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 02:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VK7TZGxxX9YYGUPk8yL/MiqPdWUoMuAwT1xbU4Axzeg=;
	b=hr4Dy37X7VFp11NKp5O1FCGqJI9iNNOy2TB1lBO4SQxLGBOqJF+s3Ftb7Sgp5HqLhS
	OV0c4BT2s/bYYlL7HQQPmXIm9qVmV5Apj59wpv9hezOpai8xuP+rq29mKwoH3xlk7bhs
	XLUM9Wkgs/pgBhtpIuNgOl1FCjC7XU67fgvxGbiFh0VFej8M/XWVh3GMKf/neUrehI/c
	SyDxTEC/CqLN9nH2IXFZL4fEwCLL6QYFhzpLaZujLaBeBLNdTKerfYQJmj37boQc1VXZ
	poZOPyczaztp8GLxVdt/Qm0OJTAqc53mY6+tfx6d6+4h+KH9aquVm5wqo94BWt9B8gg4
	h8rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VK7TZGxxX9YYGUPk8yL/MiqPdWUoMuAwT1xbU4Axzeg=;
	b=FnBvgs7yrkwUd5GbMbtVruu57H5PU6i5Dum9h9flR2WRV/wQFQ0oMXw98EWBM+Bp5M
	ofLLJohF967Kw9hATyYsrFkRRhVJywxEcpLzcvD7WoehvwOJcfQx/bzWXuFZX/DhSrg6
	C6ysEt73hJCchUye3inoze2qLjw6E9q6CJruN7HnBhMDSGN4l72vg6db1kZCmbF4BkPo
	BmM316Fpe1AMRP0DLEWBUedkDRB/oexskZb90nLzzxVtKbTas4MOU8mnaWkNu1Fel4Uf
	6QOuOgnudnWGiHep4QCTja8wiABttSKnHve17oTfhkJz2fSwD+h4J4use2AHxXX54X4l
	J8Wg==
X-Gm-Message-State: AGRZ1gLI56ouzOT7JGQCa05sOBTfiqg4/d6JtMGL++hADJT+vbBfg8pR
	D87ygYXO+Mm1UXUwy5lAo+0k5TBR5lsgQcaQUxI=
X-Google-Smtp-Source: AJdET5f5dcHGh3kqZhT4UkCpmH/7NIVkKpOsm3FVSR+fdAc5+BtTQPXq62EeSZ3lmLfsNKaQM9ffMNFah6X89zQPEwE=
X-Received: by 2002:a24:b648:: with SMTP id d8-v6mr37836itj.115.1541149679785; 
	Fri, 02 Nov 2018 02:07:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAK4Yt2m6UT_HaA72q43ppbPzvpSJF6QvmRkUeFXFSqJK+uBtcQ@mail.gmail.com>
In-Reply-To: <CAK4Yt2m6UT_HaA72q43ppbPzvpSJF6QvmRkUeFXFSqJK+uBtcQ@mail.gmail.com>
From: Kosta Zertsekel <zertsekel@gmail.com>
Date: Fri, 2 Nov 2018 11:07:48 +0200
Message-ID: <CADxo8W+-OLoDq=y8QNxskHvQnM_6dKYyhzhF6zvp28mL=HJD2w@mail.gmail.com>
To: Zolee K <zoleelikesdebian@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: force a factory-preset sdk to quemu
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
X-List-Received-Date: Fri, 02 Nov 2018 09:08:02 -0000
Content-Type: multipart/alternative; boundary="000000000000359aa00579aadf0c"

--000000000000359aa00579aadf0c
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 2, 2018, 10:28 Zolee K wrote:

> I got my board with Yocto based SDK but there is no quemu in the
> configfile by default. Is it possible to add quemu capability manually to
> factory-preset sdk?
>
If Yocto SDK you have is actually Yocto eSDK (extended SDK), you can try
the below:
$ MACHINE=qemux86 bitbake build-image

--- Kosta Z

>

--000000000000359aa00579aadf0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr">=
On Fri, Nov 2, 2018, 10:28 Zolee K wrote:</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"auto">I got my board with Yocto based SDK but there is no qu=
emu in the configfile by default. Is it possible to add quemu capability ma=
nually to factory-preset sdk?</div></blockquote></div><div dir=3D"auto">If =
Yocto SDK you have is actually Yocto eSDK (extended SDK), you can try the b=
elow:</div><div dir=3D"auto">$ MACHINE=3Dqemux86 bitbake build-image</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">--- Kosta Z</div><div class=3D=
"gmail_quote" dir=3D"auto"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div>

--000000000000359aa00579aadf0c--
