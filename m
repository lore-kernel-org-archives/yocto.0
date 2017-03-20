Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51F8CE00ADB; Mon, 20 Mar 2017 04:07:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 279E8E00AC8
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 04:07:36 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id y18so28312204itc.1
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 04:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ii8ec7gqTNSLmkVzvsJfxtsWcLBVW51hksCdb7WiXzQ=;
	b=gWKmBCkSdR2iCo1JJqTd5jdMAaVx4UMR4+0sqjSJ0dZxte+eUFOzyUskCkDBikwdTr
	sKuRUx6VkcvGfjoKAoiYeZ8NUi64crjDiyJJgf1Fw7UOBTyltH3ksVAYqyWEnowJf8Tk
	W6/H+sdsf6I3Uc4tHU+J3WzEEAr8r30vibXdc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ii8ec7gqTNSLmkVzvsJfxtsWcLBVW51hksCdb7WiXzQ=;
	b=hPjRnnLtX9Z6zmoyd59k8WyOEOIps2ofiph91PE+e4rd53HbTtlUM6hJQ6ohO+Mf5Q
	dBgxraoq1dEK+z3KoDBbOh2dNF4Jgnh4CgHE+e62NtEq0xhQGH4D48C29HMxrgVjuv4J
	zJJeEdYMa0jeufoWPIKGNOxK+u13k7A1qgDOh1X95GukizrZnqtIXt+0ASuthw4zipR6
	inofFoKYexBl69yVzT/oG99IpbPwPzGe6zJhSx3Y+tkpP0yulYs4XOIJiyOpclGN5BTK
	XeXzr/KgJZVuk9Ycgn/pR5cMkkxJ7Rye52aERKKSRLKugSQyPApMM+7D7ImO9JkEdhd+
	JmAw==
X-Gm-Message-State: AFeK/H3Mj2bk/cGh6TiENOzML/iu7tONGR+jo7/DqTpqnnT50NZZpxvpbFDXxJ6kTr9Ip4yXagf7H3Ech2Zx+g==
X-Received: by 10.36.134.65 with SMTP id u62mr8442325itd.34.1490008055747;
	Mon, 20 Mar 2017 04:07:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Mon, 20 Mar 2017 04:07:35 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Mon, 20 Mar 2017 16:37:35 +0530
Message-ID: <CALDHXtc=M_cfCZO-e=2A2cib6b7v9N0jKL-99CoPTpS4kv+0iw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
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
X-List-Received-Date: Mon, 20 Mar 2017 11:07:39 -0000
Content-Type: multipart/alternative; boundary=94eb2c088fb8e02ce2054b27887d

--94eb2c088fb8e02ce2054b27887d
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I am trying to build the gstreamer packages , But i am getting following
erros.

*bitbake  gstreamer1.0-libav*

ERROR: Nothing PROVIDES 'gstreamer1.0-libav'
ERROR: gstreamer1.0-libav was skipped: *because it has a restricted license
not whitelisted in LICENSE_FLAGS_WHITELIST*
ERROR: gstreamer1.0-libav was skipped: because it has a restricted license
not whitelisted in LICENSE_FLAGS_WHITELIST


what is this license errors ?
what may be the problem, how to solve this ?


Thanks and  Regards,
Ravikiran

--94eb2c088fb8e02ce2054b27887d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi everybody,<br><br></div>I am t=
rying to build the gstreamer packages , But i am getting following erros.<b=
r><b><br></b></div><b>bitbake=C2=A0 gstreamer1.0-libav</b><br><br>ERROR: No=
thing PROVIDES &#39;gstreamer1.0-libav&#39;<br>ERROR: gstreamer1.0-libav wa=
s skipped: <b>because it has a restricted license not whitelisted in LICENS=
E_FLAGS_WHITELIST</b><br>ERROR: gstreamer1.0-libav was skipped: because it =
has a restricted license not whitelisted in LICENSE_FLAGS_WHITELIST<br><br>=
<br></div><div>what is this license errors ?<br></div>what may be the probl=
em, how to solve this ?<br><br><br>Thanks and=C2=A0 Regards,<br></div></div=
>Ravikiran<br></div>

--94eb2c088fb8e02ce2054b27887d--
