Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 089F4E00D3F; Fri,  1 Jun 2018 05:00:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA194E00C99
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 05:00:23 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id y72-v6so14443910lfd.2
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 05:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=aO0iU8HOAhhbPXcdK8fqAWYOIsgk9ihfmdoTyRX1Po0=;
	b=iv2OarGAZRPw7lzq+CxyIPZNNSWJtg7SpONUsKtJQ0lnWMmQUnOGTGips2d4yDJWjC
	82ECnxe3OHxZItGgvzruz4iNcxbh19WP/KMsQ+cp3PWeiwMixP6xGvdWW+NyCnRxqeJ5
	/47x8/Lc/+WwkxWt5zske68FIYUHO4GB3zxBm/2eFNjkv0gs/HSsB/0/Qp8NGOOt/ZMt
	1OU32c3+7kBsNPx1klDmw7q1vfS0sBHEAqx7i+6Nq+mIOwo8mPFgtI9VIyfMo2ofxncV
	IwjnJC9Ny0u3mCKDSj7IKZxcdGWJU/cF9Z1DAbxLF1Y13g1juJhR+XM4LxOjcAiOgVWj
	ROsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=aO0iU8HOAhhbPXcdK8fqAWYOIsgk9ihfmdoTyRX1Po0=;
	b=QnOj4Y1lGdrJy07q48dnVjCQiJOVEd+PEQWvG5ZCWTXU0SFNwQ9jlJMZThNxMrdIZr
	3/S++ozfW9Q3ZWnEWIuLgMpreEOTve7RK1CeohS5l8lngymqe6WmImdPn0/sziXtd++Z
	utsHYQA1KdBR68ostr063rUDkVcLB906uPx6/pMGLvq+HYV/VBJqGo+zDxpNzdnB1VqI
	fgxxjYW1KkgBStZlHojdNFDVWL+kx5oOiXgmooQC4oMa528q8iBNO+DtHA3gfKoKowi1
	ZZmUPlgJi7AA1WqG5im+rsRbs9JNUe38AmVNQcA69afQECkJ8N79humRd+1ig2FMTvJq
	W3mg==
X-Gm-Message-State: ALKqPwd2gPmWpDhpZlvHMX+hjukJyp4chyP6rEevgGEijD1uBdBjLq8Q
	S4CYPmYq1IJ9Ymq6zEbTt8Q=
X-Google-Smtp-Source: ADUXVKKvwz0JLzV3JN405EpXPHSJNQhQypztCmyPXyN6Kpq/RNkjnDy3CMYCDe9wmbA8txk4PSKlBA==
X-Received: by 2002:a19:1329:: with SMTP id
	j41-v6mr6474803lfi.141.1527854422393; 
	Fri, 01 Jun 2018 05:00:22 -0700 (PDT)
Received: from ?IPv6:2001:999:50:283b:1461:469d:a64a:edf2?
	([2001:999:50:283b:1461:469d:a64a:edf2])
	by smtp.gmail.com with ESMTPSA id
	w62-v6sm2193282lff.57.2018.06.01.05.00.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Jun 2018 05:00:21 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (15E302)
In-Reply-To: <CAOT_U5ZS1gvRzqyrstEeWfepDGKR1gaxzHv3Hz-iRk6evhMazA@mail.gmail.com>
Date: Fri, 1 Jun 2018 15:00:18 +0300
Message-Id: <3F80E17E-D0D0-42FD-8A92-C83B2F21160E@gmail.com>
References: <CAOT_U5b9-3yK1PRieqixN86pXSPeTdDfzca42vS2ZndXTb6_Fw@mail.gmail.com>
	<CANNYZj-Haidas8Y4f_Wqyf-yYfhRjLe1UFT-HfOt-jxY=kNunA@mail.gmail.com>
	<CAOT_U5ZS1gvRzqyrstEeWfepDGKR1gaxzHv3Hz-iRk6evhMazA@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wic appending ".1" to a file name on multiple images build
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
X-List-Received-Date: Fri, 01 Jun 2018 12:00:25 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

It probably goes to some log file?

Alex

> On 1 Jun 2018, at 14.56, Alan Martinovic <alan.martinovic@senic.com> wrote=
:
>=20
> Yeah, a deep dive it is then. :)
>=20
> Am just trying to print from the code using the Python debugger (as
> used in the source file).
>    self._log.debug("Print this")
>=20
> but it's not printing anything even when running bitbake with -DDDvvv
>=20
> On Fri, Jun 1, 2018 at 12:52 PM, Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
>> 2018-06-01 13:38 GMT+03:00 Alan Martinovic <alan.martinovic@senic.com>:
>>> Building them at the same time causes an issue:
>>>=20
>>> Traceback (most recent call lastd):
>>>  File "/home/alan/workspace/senic-os-dev/oe/scripts/lib/wic/filemap.py",=

>>> line 120, in _open_image_file
>>>     self._f_image =3D open(self._image_path, 'rb')
>>>  FileNotFoundError: [Errno 2] No such file or directory:
>>> '/home/alan/workspace/senic-os-dev/build/tmp-glibc/deploy/images/senic-h=
ub/u-boot-sunxi-with-spl.bin.1'
>>>=20
>>>=20
>>> The cause of the issue seems to be that `wic create`,
>>> even though it gets the correct file path through the
>>> wks file ("u-boot-sunxi-with-spl.bin")
>>> somewhere in the execution of wic create that
>>> fiile gets renamed (to "u-boot-sunxi-with-spl.bin.1")
>>> and results in an above issue.
>>>=20
>>> This only happens when the images are built in parallel,
>>> running each separately gives no errors.
>>>=20
>>> Am open for suggestions on how to approach this. :)
>>=20
>> By applying code archaeology skills obviously, which are a must-have
>> for anyone involved in Yocto :)
>>=20
>> Specifically here: where and how is self._image_path set? What are the
>> places in code that call into the path setter? Where do they get the
>> image name from? Does any of them manipulate the name and/or rename
>> the file and why?
>> Should the name include the image name to avoid such clashes and
>> races? And so on. :)
>>=20
>> Alex

