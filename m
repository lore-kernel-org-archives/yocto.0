Return-Path: <alessioigorbogani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50817E0088B; Tue, 23 Apr 2019 02:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alessioigorbogani[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27AE6E006D8
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 02:20:15 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id d8so7789752vsp.2
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 02:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qvf78+l551I7yEsaRkdYWl2lzJC5EkLPVKUhrsUHAJA=;
	b=KIrPtklzWR7GkqKkHjU5qFcLE/pHaLl8GfJ8Y7+xl5H4zlrFuXntFdLNqXToVG8Hz7
	iJdv+ZARlqegx+38m3xDZtTUluyXnrSe+Dkjqz1vbK3p2ayOdJubBYkwLT5rqW3eaaDc
	P8M8kgXcu2wTf4w856oeYqYYXcOvvZhKF5zJsA1AD3kOq++6hqC25fDvmkJP8g7LtbEX
	zx3CW4Ll+D5m84ER6FRtDt4cySRLGExF69K88wSWt2vqHwvX+OB45GRkq58Kt28TSu45
	PMQD14+EXVIHTfleacDltfwLfIwCsBKpgEKo01w+wXS2XNDB27EuBZcHz1qaRuCxEKjB
	1e7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qvf78+l551I7yEsaRkdYWl2lzJC5EkLPVKUhrsUHAJA=;
	b=mg5z5Ie2N4Obh7eH3K0YhK+OaRdXsups9oxuAaxSxWnzbSlq5rJoNE6oqdOlEBB0vH
	TjWX9XR1WC1XOEKgsoO78fzLPAdD346QnRYJs+20uPVdRSYyN72VBwN7a1faD3i2apOO
	FJc3zzDsv27N6VWlnIaGqQSHSOhacdNPw53uWqFR8KMGfZUwEmAwn2i+QnarqFuiJKAA
	fZp5TAIgSSFbQUUGWuAZfC1cfvSF4f1cVC6GTdoZLDyfx+jygvPmOBxREeDr5Jtc8OgV
	vQMlCptnfj9qIjvRGmgA5xvm9zgFeTNDbMvUq7hEdBqhUWDzm7Rzt2tfPOblbKug8vuD
	GkGw==
X-Gm-Message-State: APjAAAX0UfGd3c+xQgbA1hN97/uOIeNaePYtlAjm2yx6ssxa9DXhmLNq
	Yo4xiW9NKVHsCwEY2wNusiucwJWV8CS8ZsfunLO1YApo
X-Google-Smtp-Source: APXvYqzITVshJi1JhO45VyBTRdMKOzpcdNUeMh/kREgHJIbWUoEMlZzVIWeh7MrGO4EgXcDCYwX8HPW6Mvvvo0XMLz0=
X-Received: by 2002:a67:ba15:: with SMTP id l21mr13226558vsn.240.1556011214603;
	Tue, 23 Apr 2019 02:20:14 -0700 (PDT)
MIME-Version: 1.0
From: Alessio Igor Bogani <alessioigorbogani@gmail.com>
Date: Tue, 23 Apr 2019 11:20:01 +0200
Message-ID: <CAPk1OjELjHPtwrpuXJJzZZvf_9vGFWJ-CKo4jW73m1FjNJtgQw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Generate an SDK with both 32 and 64 bit versions of the glibc
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
X-List-Received-Date: Tue, 23 Apr 2019 09:20:17 -0000
Content-Type: multipart/alternative; boundary="000000000000b68b7705872f1721"

--000000000000b68b7705872f1721
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to install a third parted developed tool (closed source)
into my x86_64 SDK. Unfortunately it is composed by a mix of 32 and 64
bit binaries thus `bitbake myimage -c populate_sdk` fails with:

Error:
 Problem: conflicting requests
  - nothing provides libpthread.so.0 needed by
nativesdk-scw-2019-r0.x86_64_nativesdk

I guess that libpthread.so.0 is the missing 32 bit variant of the glibc library.

How can I make bitbake to install 32 bit version of the glibc
alongside the above mentioned tool?

Thanks in advance!

Ciao,
Alessio

--000000000000b68b7705872f1721
Content-Type: text/html; charset="UTF-8"

<div dir="auto"><pre style="white-space:pre-wrap">Hi all,

I&#39;m trying to install a third parted developed tool (closed source)
into my x86_64 SDK. Unfortunately it is composed by a mix of 32 and 64
bit binaries thus `bitbake myimage -c populate_sdk` fails with:

Error:
 Problem: conflicting requests
  - nothing provides libpthread.so.0 needed by
nativesdk-scw-2019-r0.x86_64_nativesdk

I guess that libpthread.so.0 is the missing 32 bit variant of the glibc library.

How can I make bitbake to install 32 bit version of the glibc
alongside the above mentioned tool?

Thanks in advance!

Ciao,
Alessio</pre></div>

--000000000000b68b7705872f1721--
