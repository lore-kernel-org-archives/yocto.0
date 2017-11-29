Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 471C2E00D04; Wed, 29 Nov 2017 14:59:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF59DE00CC4
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:59:23 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id 9so9494118wme.4
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 14:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mZ7qK2MGlp6zDuooZNFosw9iAg5ZPs5vgyHYr+W92Ds=;
	b=jo6vPFIfHc4kQYf/zoK7pY2u0Ih79tWKPE5Z6d7vmSUUlWvwEOIFrcbIRg4/0G9ICJ
	nsBHrRFsggZPH8uRgSxG/oycczXQlfyYxldkoHqaWwH/1gVKNaYq0KyYeuyPYgL/gP38
	gehiLTh64Sa4HAIkMidvS4hhg3ZRLh8wMwPg4MFPTV2hz2+UaIN0zCuoXU2orJeKTwdV
	DaUhMTk0Mckg4BQ/H9OPwECWySz2jpyaISV5E6pud2w95VQks7JoLabXovX7srcr2GoX
	2BDib0VLIkU8H4onZiPEzytNaAO5fsol1gjhm6Vj/Wmwjt9zh/LcgvlcJ17ht1pDel8S
	G+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mZ7qK2MGlp6zDuooZNFosw9iAg5ZPs5vgyHYr+W92Ds=;
	b=UedL0Xip6/oSqhFxvJphIp2vqCGVlNowbqsJWiyvSc9rldk6HJ0PwloK1OxTZfZTj9
	6o/2pEyqShJUCwXaKC9UixXMvw2UeAWZhy9ChPS7joVbmdklBFhrADLqrRMgDp27hs+h
	sAsiS97Ms8wZVUG7wJbc/JmVl/c4ZXiXhMd8fQxFZmh4jMl82pEwa48i38Dwo8+hYyBo
	lGpLJpmNQIgwxX74e2YduahM00ToVY8c3Rkf8qqcVgP6Seq1ouBEtD00LvmdaOtgcB5u
	woXkoq33amzQq+zUHCrBo0x6KBG3z6BFeSnten+VY1xSGJWNYob4fejGVTXyHty0iReQ
	7mjA==
X-Gm-Message-State: AJaThX689WLGVvKcu3j5WyIStDT7Q1iQ4nNhEXscHMDKvSvcLzvR+ao1
	cZ7ljQAMEMd5TUNCbI6n2y47r1YLwfh0+Rkh4i0=
X-Google-Smtp-Source: AGs4zMbzrxbGsORA40bwpNUQlCDB+u6E2/dnmTW3ujfNEClnIAobot7OXjErzx73z+Erc15/SwXlH0/AkSaIBg4zzSw=
X-Received: by 10.28.14.195 with SMTP id 186mr273924wmo.56.1511996362713; Wed,
	29 Nov 2017 14:59:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.122.19 with HTTP; Wed, 29 Nov 2017 14:59:22 -0800 (PST)
In-Reply-To: <CAKmWj-16JrBxajKEPmVvg8tFJngsVV1MMNHBkJnHB5HfHSj29A@mail.gmail.com>
References: <CAKmWj-16JrBxajKEPmVvg8tFJngsVV1MMNHBkJnHB5HfHSj29A@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 29 Nov 2017 23:59:22 +0100
Message-ID: <CA+chaQenogeszTqrQEWETNrahYYFLndni=wO79aqz8YvrRSjpA@mail.gmail.com>
To: Paul Knopf <pauldotknopf@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: buildhistory.bbclass "version-going-backwards" for AUTOINC
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
X-List-Received-Date: Wed, 29 Nov 2017 22:59:25 -0000
Content-Type: multipart/alternative; boundary="001a114420b619ecde055f2716d7"

--001a114420b619ecde055f2716d7
Content-Type: text/plain; charset="UTF-8"

I think you can disable version-going-backwards check as any other QA check
by removing it from WARN_QA and ERROR_QA variables.

Even with AUTOINC you should use PR service to get increasing AUTOINC
numbers, so the warning is correct, if you want working upgrade paths on
the device then you need to fix your setup to use PR service.

On Wed, Nov 29, 2017 at 9:50 PM, Paul Knopf <pauldotknopf@gmail.com> wrote:

> I am getting these errors during builds.
>
> clear-app-gitAUTOINC+4d250a7fe4-r0 do_packagedata: QA Issue: Package
> version for package clear-app-locale-es went backwards which would break
> pack
> age feeds from (0:git0+66636e50ea-r0 to 0:git0+4d250a7fe4-r0)
> [version-going-backwards]
>
> I think buildhistory.bbclass should ignore recipes that are using AUTOINC.
>
> Or, a way to disable the version-going-backwards check.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114420b619ecde055f2716d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think you can disable=C2=A0version-going-backwards check=
 as any other QA check by removing it from WARN_QA and ERROR_QA variables.<=
div><br></div><div>Even with AUTOINC you should use PR service to get incre=
asing AUTOINC numbers, so the warning is correct, if you want working upgra=
de paths on the device then you need to fix your setup to use PR service.</=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed,=
 Nov 29, 2017 at 9:50 PM, Paul Knopf <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:pauldotknopf@gmail.com" target=3D"_blank">pauldotknopf@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I am getti=
ng these errors during builds.<div><br></div><div><div>clear-app-gitAUTOINC=
+<wbr>4d250a7fe4-r0 do_packagedata: QA Issue: Package version for package c=
lear-app-locale-es went backwards which would break pack</div><div>age feed=
s from (0:git0+66636e50ea-r0 to 0:git0+4d250a7fe4-r0) [version-going-backwa=
rds]</div></div><div><br></div><div>I think buildhistory.bbclass should ign=
ore recipes that are using AUTOINC.</div><div><br></div><div>Or, a way to d=
isable the version-going-backwards check.</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114420b619ecde055f2716d7--
