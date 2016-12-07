Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB36CE00D49; Wed,  7 Dec 2016 08:12:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B81E00D40
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 08:12:47 -0800 (PST)
Received: by mail-qk0-f174.google.com with SMTP id x190so418410210qkb.0
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 08:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bgqj+v7V0Wi5LdbJ9VXtP+pRlLn1US0Xpawupe00qdg=;
	b=GNl12j1B7IqgWBLP1BaP0xB5/3hJMovLx+35EL7wm8/RiI+YtnNZAIxL8VJCbH1P/7
	SNcIHiF9mQQUsRTaVUHQwZswqpAaLxx4CkqSpTW1UoXOLEOr0IzOCNW2h8UGXaF/+mMs
	VhKKf8c9W28gwr9KWYlFeFok4HX3wNB6KlExlb4u0CNHx0CTMFaJaYjz7DF//FXiYImP
	aF47TaXnh8FMjd4oUNPu+gLFa5fGDU8J/cLmzOtGwP5+JtaEN3pAxTWglLp6xqv88PAV
	W3sbMJQkHqfGAhsSW/vBEFo5ko5jZJs7XDYoBZWgx5cANosf/aa8lbpiQ7zPbT9ThB/x
	RZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bgqj+v7V0Wi5LdbJ9VXtP+pRlLn1US0Xpawupe00qdg=;
	b=mMRokh73wohuSJ8ZCuwiK8y8Y4fzisakwtuIPJNS5MAXpE0RVgBldrW2L7NJUcH2wi
	Xdr0Yvywep+7QeLOMuresXCXhV0FhzU+8pfnqu7nWWKIXOSvpSCu7aDKqcYObjvmyExX
	pOrVaoRTHrCOMP2vb9AqXy6OTFNepxZj2mRQ3krJrfYLIxfcDt8QWHz1UjfaO5bBxcYR
	A2kXbEHvsSPNhJC7MbaiyI9D888lalWYd3M/ZLudJFFK3CRlhlPJsO9+anrYF6qAM/pa
	58j/tux9hjOPhIToMRngypZese7WqBLHnUOf2GljIvWs/wpF4aID4tcmsWzZ3/Xh7E2n
	PQQg==
X-Gm-Message-State: AKaTC02Ns0EfPKB+84NctasCuR+k6VzOdgn+D5ZKF+nvyWl4BbNwH9P/xN7jJPHpcYv2aXDkONYWxMcGAte+mf9t
X-Received: by 10.55.207.78 with SMTP id e75mr70243752qkj.36.1481127166632;
	Wed, 07 Dec 2016 08:12:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Wed, 7 Dec 2016 08:12:26 -0800 (PST)
In-Reply-To: <d9a1a2ab-9791-f15d-24f2-ddbc31dbf0fa@linux.intel.com>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
	<0cfba38f-d090-68d0-5c09-a20a5f5e1973@linux.intel.com>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8B7@SESTOEX04.enea.se>
	<3230301C09DEF9499B442BBE162C5E48AC0CF8F6@SESTOEX04.enea.se>
	<d9a1a2ab-9791-f15d-24f2-ddbc31dbf0fa@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Dec 2016 16:12:26 +0000
Message-ID: <CAJTo0LanFkXx6MtOciKPjXD9UHLQfyAtW4N+HYZT57g8hwmoiA@mail.gmail.com>
To: Mariano Lopez <mariano.lopez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"mariano.lopez@intel.com" <mariano.lopez@intel.com>
Subject: Re: cve-checker tool
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
X-List-Received-Date: Wed, 07 Dec 2016 16:12:50 -0000
Content-Type: multipart/alternative; boundary=001a1145b7b8a279e5054313ca42

--001a1145b7b8a279e5054313ca42
Content-Type: text/plain; charset=UTF-8

On 7 December 2016 at 14:58, Mariano Lopez <mariano.lopez@linux.intel.com>
wrote:

> > We have more recipes which have CVE patches but they are not reported.
> > I have analyzed these; some of these CVEs are still marked as reserved
> on Mitre  and are not present in the nvd.xml files (although they are
> public (e.g. Busybox:
> > https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-2147).
>
> cve-check-tool will only check against the database that got from the
> nvd.xml files, and these files won't have information for not yet fully
> disclosed CVEs, so that is why you will find these cases frequently in
> OE recipes (Armin does a great job with CVEs).
>

A lot of CVEs get reserved but never actually updated in MITRE.  This is
why the planned successor to cve-check-tool plans to download the Debian /
RHEL / etc security databases to fill in the gaps (I'm not sure what the
state of this rewrite is as we didn't write this tool).

Ross

--001a1145b7b8a279e5054313ca42
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 December 2016 at 14:58, Mariano Lopez <span dir=3D"ltr">&lt;<a href=3D=
"mailto:mariano.lopez@linux.intel.com" target=3D"_blank">mariano.lopez@linu=
x.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span c=
lass=3D"">&gt; We have more recipes which have CVE patches but they are not=
 reported.<br>
&gt; I have analyzed these; some of these CVEs are still marked as reserved=
 on Mitre=C2=A0 and are not present in the nvd.xml files (although they are=
 public (e.g. Busybox:<br>
&gt; <a href=3D"https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-20=
16-2147" rel=3D"noreferrer" target=3D"_blank">https://www.cve.mitre.org/cgi=
-<wbr>bin/cvename.cgi?name=3DCVE-2016-<wbr>2147</a>).<br>
<br>
</span>cve-check-tool will only check against the database that got from th=
e<br>
nvd.xml files, and these files won&#39;t have information for not yet fully=
<br>
disclosed CVEs, so that is why you will find these cases frequently in<br>
OE recipes (Armin does a great job with CVEs).<br></blockquote></div><br>A =
lot of CVEs get reserved but never actually updated in MITRE.=C2=A0 This is=
 why the planned successor to cve-check-tool plans to download the Debian /=
 RHEL / etc security databases to fill in the gaps (I&#39;m not sure what t=
he state of this rewrite is as we didn&#39;t write this tool).</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1145b7b8a279e5054313ca42--
