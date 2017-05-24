Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06FB4E00B45; Wed, 24 May 2017 06:27:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD32CE00AF8
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 06:27:11 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id k74so153682537qke.1
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 06:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=A+xd6N9Z9MBiVKVR52ZwAagLC8l16LiUsHC8WOf2IlU=;
	b=VMDdSWYP06hxIbt6kT4WVFAhYjuMp+1oz6XGrlNY003iCaJodBx9jK4tO7RSV3+C+j
	3GPtK/S2Fwv1xGOetoKNFzmmHR02r8RLWSmdAtE0xSchm+fr5aSWyj1pAft4nkmrT2oI
	D6okvq9XZ9pxZTME/feQxkjfAPHa/9cIvOfvzwPkewXtLGy4Eni2UPsQ8aq1tponyTJw
	J6KM0ZUpH/FLcYMLpj6uLy7VawFfDlmYCdQHzQOviHg+GiZxfscbZeU6DE0Y+GjIuVjz
	EHHRJHDeCYKAp59nPmhDrLd2V7va3jM2skCpl96zn4ai8VS0MZx641K3FwTdFywCdTfK
	obrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=A+xd6N9Z9MBiVKVR52ZwAagLC8l16LiUsHC8WOf2IlU=;
	b=s46IP36gfof7clLq5Zd5Nk/1pZKZnR+fmmbvp26hxCydo5j1I3Xk3fVchnc3L0tfBw
	pmSOSa9KU6kI3KyXCiDAs94UWRjCXLvr3prRWZN17cHZ0zExvFEAovM8/jPXjcqK8lB/
	0Z7SAbhKymsr4oDguwKIXvYkxNa+18YB5FsRDttEJIvkMnhIAe7ntZZAhWzwyWiFCQJK
	H7rPmKq+pAwsqc+WXHANlb8mZg3dd2uGEOm/Y9dTY7xFvia1VyOzb76HiVjFld3O/0Wo
	WzgbRmLnHIskeDz/j2Q1jBB5pfAMUcstfIw79IoeEdjlEvXXUqlKB0WQ7oIkyTtXU81I
	1GtQ==
X-Gm-Message-State: AODbwcDe3Etc/fQcC2tNK9434ZTpv8ZHcq6HSye0HcWZbF238o+/K+JI
	DkLaGVuhcBsdV3cDuxCsLhUaSR7jUGey
X-Received: by 10.55.18.163 with SMTP id 35mr35008882qks.228.1495632430534;
	Wed, 24 May 2017 06:27:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.41.115 with HTTP; Wed, 24 May 2017 06:26:49 -0700 (PDT)
In-Reply-To: <201bc784-23ea-c40d-beb4-511901b59157@mlbassoc.com>
References: <201bc784-23ea-c40d-beb4-511901b59157@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 May 2017 14:26:49 +0100
Message-ID: <CAJTo0LZaXqxUF=p4m5m6Ch6oWBc=N3+uHni-6ia3PrhDDmrykA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include libraries?
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
X-List-Received-Date: Wed, 24 May 2017 13:27:15 -0000
Content-Type: multipart/alternative; boundary="001a11475b40bca7ac0550450f2b"

--001a11475b40bca7ac0550450f2b
Content-Type: text/plain; charset="UTF-8"

On 24 May 2017 at 13:20, Gary Thomas <gary@mlbassoc.com> wrote:

> I have an image which needs to include the libcups2 package from
> the cups recipe.  If I try adding this to my image recipe
>   CORE_IMAGE_EXTRA_INSTALL_append = " libcups2"
> I get this error:
>   ERROR: Required build target 'my-demo-image' has no buildable providers.
>   Missing or unbuildable dependency chain was: ['my-demo-image',
> 'libcups2']
>
> However, I can get it to build with this
>   MACHINE_EXTRA_RRECOMMENDS_append = " libcups2"
>
> What's the difference between these two approaches and why doesn't the
> first
> one work at all?
>

Does the latter actually work?  Recommends won't fail if the package
doesn't exist, or is getting pulled in via another route.

I've a feeling that you actually want the pre-renaming name here so try
cups-lib.

Ross

--001a11475b40bca7ac0550450f2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 May 2017 at 13:20, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":1is" class=3D"a3s aXjCH m=
15c3a67d4f3c4fb0">I have an image which needs to include the libcups2 packa=
ge from<br>
the cups recipe.=C2=A0 If I try adding this to my image recipe<br>
=C2=A0 CORE_IMAGE_EXTRA_INSTALL_appen<wbr>d =3D &quot; libcups2&quot;<br>
I get this error:<br>
=C2=A0 ERROR: Required build target &#39;my-demo-image&#39; has no buildabl=
e providers.<br>
=C2=A0 Missing or unbuildable dependency chain was: [&#39;my-demo-image&#39=
;, &#39;libcups2&#39;]<br>
<br>
However, I can get it to build with this<br>
=C2=A0 MACHINE_EXTRA_RRECOMMENDS_appe<wbr>nd =3D &quot; libcups2&quot;<br>
<br>
What&#39;s the difference between these two approaches and why doesn&#39;t =
the first<br>
one work at all?<br></div></blockquote></div><br>Does the latter actually w=
ork?=C2=A0 Recommends won&#39;t fail if the package doesn&#39;t exist, or i=
s getting pulled in via another route.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">I&#39;ve a feeling that you actually want =
the pre-renaming name here so try cups-lib.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11475b40bca7ac0550450f2b--
