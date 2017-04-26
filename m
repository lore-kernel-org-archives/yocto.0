Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A66E00939; Wed, 26 Apr 2017 10:11:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5351CE00777
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 10:11:46 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id u65so56769966wmu.1
	for <yocto@yoctoproject.org>; Wed, 26 Apr 2017 10:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=50Gg3gTtTbT5tuVY1A1HQrGsvDnJyt0UIg71j2POxsk=;
	b=rLiWssHR3p96vJYUTOH1Lxy2ueSL7XO2TsUuxwvpM/oDOaRrQAtsAjJb6+63S4Bz9K
	PVVEgLmRDi+dSFtYlaZJD5XjKHjpXqcYWheZ35EOyUxYVJkeEP8iOvkHq5ZJoc+UI8sa
	Byqqr3BItsUwgerxlERu0DWiKUZ939EUB0kdXPfoa6JEjhrXX7ESvAoAbtObGsKlmCV1
	x0eUlYB4A85rWMTOSqyc5KaMqAeuEsLDdYgdXik2cD1xHukzGvMNC6t3PCYRfG81NVfm
	ABLchIms21mBPXYfakj5QgNiWc3hp6APZjC+Z5NI7JFObnI7hb9H7sHpuoppmAkFvaKu
	rWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=50Gg3gTtTbT5tuVY1A1HQrGsvDnJyt0UIg71j2POxsk=;
	b=USHiqNCxd1It3tVYMpYXZsUI9KrzctuMCPuRc2EauRjJnCDDCTiaP0EkxB/NLGPD8F
	VH0tcips5r4gtDNQ7A4AQ9y/E6uvBlWPW3GfvlpsTKB4AaDLKAVoWV9KSoyljWWbFEmm
	+k7mbNKJrHG1gaqJQJmGCOB3NNN0zSvQp1QONUyx8+HjWXMFH4Si4Gb7zv0cwQ/HzrvE
	csHiofbkf4Yed7w0qiErU5a5aMlLYuuXgi3PoW8tYzAGD5ZtjlIrGIxOGPLFI9kjKLBf
	J0PgfxiwwMAgufQrkt6h50iANX0+2uUT7r7nCmusClQM0+xkicdxl2ZIX8z1Nbn6iEqW
	ae1g==
X-Gm-Message-State: AN3rC/6R6s6sdGxMojkVA8vuupSaUtqJgAiyeKSplUuf00I/yhB0EwxJ
	D6fry18m9SfVl4mlUGWFbh9NXEdprw==
X-Received: by 10.80.208.210 with SMTP id g18mr1667888edf.143.1493226705508;
	Wed, 26 Apr 2017 10:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>
	<201e0392-340d-a4ea-8676-b8d2a860538d@gmail.com>
	<04f82361-20d9-b82f-3698-5265e8e8af3a@xevo.com>
In-Reply-To: <04f82361-20d9-b82f-3698-5265e8e8af3a@xevo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Apr 2017 17:11:34 +0000
Message-ID: <CAMKF1sqEvo2FjsvWJhn8u9BURS=myQ=Y8DsyT3dSuuXBdUdN-w@mail.gmail.com>
To: Martin Kelly <mkelly@xevo.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: How should we handle GCC 6 and -isystem /usr/include?
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
X-List-Received-Date: Wed, 26 Apr 2017 17:11:51 -0000
Content-Type: multipart/alternative; boundary=94eb2c1cd0be59e38c054e14efb3

--94eb2c1cd0be59e38c054e14efb3
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 26, 2017 at 9:50 AM Martin Kelly <mkelly@xevo.com> wrote:

> On 04/25/2017 05:44 PM, Khem Raj wrote:
> >
> >
> > On 4/20/17 5:04 PM, Martin Kelly wrote:
> >> Hi,
> >>
> >> After compiling a package with GCC 6, I noticed the following error,
> >> which is a known issue:
> >>
> >> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70129
> >>
> >> The problem is caused by adding -isystem /usr/include, which breaks the
> >> GCC 6's #include_next. I see that Khem Raj already removed this for the
> >> nativesdk [1], but it seems we need a similar fix for other packages, as
> >> we are still adding -isystem in meta/conf/bitbake.conf:
> >>
> >> [snip]
> >> BUILDSDK_CPPFLAGS = "-isystem${STAGING_INCDIR}"
> >> [snip]
> >
> > You must be not using master since it has been fixed by
> >
> http://git.openembedded.org/openembedded-core/commit/meta/conf/bitbake.conf?id=88ec93d152762aedeaa231d2732e9d4b9843795a
> >
>
> The bug is referenced is actually exactly that commit (just in poky
> rather than oe-core); it looks like I mistyped, as I should have said:
>
> [snip]
> export BUILD_CPPFLAGS = "-isystem${STAGING_INCDIR_NATIVE}"
> [snip]


Those are used for building native packages only


> That said, after further root causing the issue, I found that -isystem
> /usr/include was *not* coming from BUILD_CPPFLAGS but instead from QMake
> translating -I /usr/include into -isystem /usr/include, as is mentioned
> in this Qt bug:
>
> https://bugreports.qt.io/browse/QTBUG-53375
>
> So, AFAICT, what I referenced in bitbake is not really an issue, and the
> real problem is related to QMake.
>

--94eb2c1cd0be59e38c054e14efb3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Wed, Apr 26, 2017 at 9:50 AM Ma=
rtin Kelly &lt;<a href=3D"mailto:mkelly@xevo.com">mkelly@xevo.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On 04/25/2017 05:44 PM, Khem =
Raj wrote:<br>
&gt;<br>
&gt;<br>
&gt; On 4/20/17 5:04 PM, Martin Kelly wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; After compiling a package with GCC 6, I noticed the following erro=
r,<br>
&gt;&gt; which is a known issue:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70129" r=
el=3D"noreferrer" target=3D"_blank">https://gcc.gnu.org/bugzilla/show_bug.c=
gi?id=3D70129</a><br>
&gt;&gt;<br>
&gt;&gt; The problem is caused by adding -isystem /usr/include, which break=
s the<br>
&gt;&gt; GCC 6&#39;s #include_next. I see that Khem Raj already removed thi=
s for the<br>
&gt;&gt; nativesdk [1], but it seems we need a similar fix for other packag=
es, as<br>
&gt;&gt; we are still adding -isystem in meta/conf/bitbake.conf:<br>
&gt;&gt;<br>
&gt;&gt; [snip]<br>
&gt;&gt; BUILDSDK_CPPFLAGS =3D &quot;-isystem${STAGING_INCDIR}&quot;<br>
&gt;&gt; [snip]<br>
&gt;<br>
&gt; You must be not using master since it has been fixed by<br>
&gt; <a href=3D"http://git.openembedded.org/openembedded-core/commit/meta/c=
onf/bitbake.conf?id=3D88ec93d152762aedeaa231d2732e9d4b9843795a" rel=3D"nore=
ferrer" target=3D"_blank">http://git.openembedded.org/openembedded-core/com=
mit/meta/conf/bitbake.conf?id=3D88ec93d152762aedeaa231d2732e9d4b9843795a</a=
><br>
&gt;<br>
<br>
The bug is referenced is actually exactly that commit (just in poky<br>
rather than oe-core); it looks like I mistyped, as I should have said:<br>
<br>
[snip]<br>
export BUILD_CPPFLAGS =3D &quot;-isystem${STAGING_INCDIR_NATIVE}&quot;<br>
[snip]</blockquote><div><br></div><div>Those are used for building native p=
ackages only</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
That said, after further root causing the issue, I found that -isystem<br>
/usr/include was *not* coming from BUILD_CPPFLAGS but instead from QMake<br=
>
translating -I /usr/include into -isystem /usr/include, as is mentioned<br>
in this Qt bug:<br>
<br>
<a href=3D"https://bugreports.qt.io/browse/QTBUG-53375" rel=3D"noreferrer" =
target=3D"_blank">https://bugreports.qt.io/browse/QTBUG-53375</a><br>
<br>
So, AFAICT, what I referenced in bitbake is not really an issue, and the<br=
>
real problem is related to QMake.<br>
</blockquote></div></div>

--94eb2c1cd0be59e38c054e14efb3--
