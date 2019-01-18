Return-Path: <sethamclean@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C18DE00CE2; Fri, 18 Jan 2019 07:24:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sethamclean[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B60DE00C94
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:24:13 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id p6so4858158wmc.1
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iMwit0ohpmUTHEi2eDLa1AQ3j5OT4jOdpe0ixW1knOc=;
	b=FKNzeEHqPMXzFXZA3bmRrhaSEekzn5pdB8eKCYp3MOsJOrMC3B4whHmb0eyP9AxwcO
	FPeknswhCwZNAEiSvqPNjs1NnC1ZqFSgyF+k24fnczYbCLHlja2gFYaBN67GcdK0pJos
	+J0rt57Dp1TNf4xaPLjKBU6ezVg5uNw6dow/hdASHNp81NpEAX9FXNLthB9D2wLOyU2j
	6bStr32sBbPDkEONPQT6LGQ1dIbfZldDQAjEaD4sxg9vOy0TlScxuGE/tDtdkMTJlCRZ
	2g/ZBesN5e4rGeIqQlGekSgEw4mCk3wzHSAgUv98Xa8oHbymy9xeFL5RX6nX9igRTEBX
	5AsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iMwit0ohpmUTHEi2eDLa1AQ3j5OT4jOdpe0ixW1knOc=;
	b=EvrL6yVfO51tfe/g4UYAXBDFM3acbmf5seULicCwhgrjJdf67fYI8QeehYMuQG8vTu
	kudJEFKdH5mkTGd1CjFTnhzNoNBQTujAQ1UZcfFVSlgtoZwQvE4TbJzoHuy+hpjD+X19
	0pSo56Ir/4Yp0LpiEgGsTWrSPjcIwecUT2J+Qpmmb6hgSBe05RKqCyObPu89BaN1cHQd
	I3ETOU4Gv6QpVO6lcaAd2dWrwzYENRhokD6iC2IajkDME7gMzokoY958o1pbAARQqMQR
	4c+0LmnCtBnmh7/QqLfxtBNwOomIzUF8WrCQRrTsgmypd1Jg6xkKq/0NWv7Mrr1VvveE
	WUpg==
X-Gm-Message-State: AJcUukcgoKgj0JbcektVL6RRcVzI2+ObN6X26RT1kDA2bhhlrugWWuAG
	fcwzHiZAnh+RykNXyL+c3UkSZURJcztrsnRSBWy8FQ==
X-Google-Smtp-Source: ALg8bN4GVnmp263hRyprdvYZPRp8s3HuRgT26lXiKb9aVm92sFtHcsXeAYaENhDY5CkXUfD4os0kuw5e3F4t0MUQrfk=
X-Received: by 2002:a1c:c008:: with SMTP id q8mr14573436wmf.99.1547825052218; 
	Fri, 18 Jan 2019 07:24:12 -0800 (PST)
MIME-Version: 1.0
From: Seth McLean <sethamclean@gmail.com>
Date: Fri, 18 Jan 2019 10:24:01 -0500
Message-ID: <CAJWg_GmVLZURNCSscw7CQDRbJTqmZmt=QJJKgMTfUSbW7xM8Kw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Rebased Python 3.7.1 patch
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
X-List-Received-Date: Fri, 18 Jan 2019 15:24:14 -0000
Content-Type: multipart/alternative; boundary="000000000000697c63057fbd1a48"

--000000000000697c63057fbd1a48
Content-Type: text/plain; charset="UTF-8"

I've rebased and made some minor changes to a Python 3.7.1 patch from
patchworks. I'd be interested in seeing this patch make it into master if
possible.

Could anyone provide any guidance on the process of submitting a patch?

Thanks,

Seth

--000000000000697c63057fbd1a48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve rebased and made some minor changes to a Python 3=
.7.1 patch from patchworks. I&#39;d be interested in seeing this patch make=
 it into master if possible.<div><br></div><div>Could anyone provide any gu=
idance on the process of submitting a patch?</div><div><br></div><div>Thank=
s,</div><div><br></div><div>Seth</div></div>

--000000000000697c63057fbd1a48--
