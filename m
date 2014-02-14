Return-Path: <dorin.lazar@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB47BE007DD
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 13:43:07 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id l6so15044291oag.7
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 13:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=suw5Tg1H27KbtzmkqtmZrBMOOW5szjnm2sq2/aPGy/Q=;
	b=CAugjaeYHNadd2ORuIbBbeQ2hfUq16U9wVhP0O0ArwOsC320Ro7b8eRh/uTidF6zcM
	8+ow10c7A+UeVcGcxf+V7HdmhKqZ0R3m2dDRm5sj2zcU4hScympgLhUJP6QdLTv7pKuZ
	3UsuD+pcgyRy+nnlB8deVdo5jEkt9V75uzEuY/iGKGx8GXttCgWZeySVQ/iQgiKhDR2w
	jhX7JfIOtPrhiSodEEF/Jssg6B8eFyRx/E5fM8YYvzyIS1Aw7YqxkU8QWK4caG+UdzG+
	9pDgHzYT4fD4n5Dok7MXvTBfVQH8vQc1FIqCEhI64yUR+tB8oq+FNxZ5+ty+EQhXmdrA
	FSrg==
MIME-Version: 1.0
X-Received: by 10.60.116.166 with SMTP id jx6mr8678232oeb.22.1392414186132;
	Fri, 14 Feb 2014 13:43:06 -0800 (PST)
Received: by 10.60.141.40 with HTTP; Fri, 14 Feb 2014 13:43:06 -0800 (PST)
Date: Fri, 14 Feb 2014 23:43:06 +0200
Message-ID: <CAH1=ZYd5QL15kdtP15E0vvwrKfTRNPh3+_N9PL4e83siEg_wyg@mail.gmail.com>
From: Dorin Lazar <dorin.lazar@gmail.com>
To: yocto@yoctoproject.org
Subject: Update for the quick start guide
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
X-List-Received-Date: Fri, 14 Feb 2014 21:43:07 -0000
Content-Type: multipart/alternative; boundary=089e0129534ef1dcf704f264b08f

--089e0129534ef1dcf704f264b08f
Content-Type: text/plain; charset=UTF-8

Hi everyone,
In the quick-start page, when Fedora packages are listed,
perl-Thread-Queue.noarch should be added as well; otherwise the build won't
pass the latest sanity checks.
Many thanks,
  Dorin

--089e0129534ef1dcf704f264b08f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div>In the quick-start page, when Fedora pack=
ages are listed, perl-Thread-Queue.noarch should be added as well; otherwis=
e the build won&#39;t pass the latest sanity checks.</div><div>Many thanks,=
</div>
<div>=C2=A0 Dorin</div><div><br></div></div>

--089e0129534ef1dcf704f264b08f--
