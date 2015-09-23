Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0AB4E00C71; Wed, 23 Sep 2015 09:51:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5007DE00A8C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 09:51:02 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so122939342igc.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 09:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=knrSZoDlmmiVGHWRez34niqQxH/y9lLMom2N8Om4IR4=;
	b=o6Wb8H2SeIx2A+YU8A9fELhshuS3t7b+TkJK06JE9c6ZqlKfhko7SQarGjAbmXHHYG
	vWQSBtAscIBR4rr6pboCvxHKy2F/upzGiEgaf8+fcvx/gF4Jko6Ses8KTra5F78SyaMO
	GcD0zwi/2wVUHa5Va7lW6CRO3hDOa78Pv0OluDI/dJbrznw8cayOpJQji4xEJaYYjfQ9
	1FhQ/o0xmhMwEo0UfWiq/ogaIAJXSO6HaapY4bfPnbLzz94litM90eEvia11NnlCOv8j
	lqiUC1Oj+klcNnjZ2IRcQM37xeqCq/VqWgW4EgcS2lR20d50TKBhyVywrceGGylSKnFI
	PDDA==
MIME-Version: 1.0
X-Received: by 10.50.110.105 with SMTP id hz9mr14700066igb.77.1443027061746;
	Wed, 23 Sep 2015 09:51:01 -0700 (PDT)
Received: by 10.107.142.130 with HTTP; Wed, 23 Sep 2015 09:51:01 -0700 (PDT)
Received: by 10.107.142.130 with HTTP; Wed, 23 Sep 2015 09:51:01 -0700 (PDT)
In-Reply-To: <5602c0f1.4831320a.a4fa4.48f6SMTPIN_ADDED_BROKEN@mx.google.com>
References: <5602c0f1.4831320a.a4fa4.48f6SMTPIN_ADDED_BROKEN@mx.google.com>
Date: Wed, 23 Sep 2015 09:51:01 -0700
Message-ID: <CAMKF1spDKFjO_3=2dJeF9KcEBepG+creiKOfHL2RwSS3Dp9vHQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: andy.pont@sdcsystems.com
Cc: yocto@yoctoproject.org
Subject: Re: psplash wierdness
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
X-List-Received-Date: Wed, 23 Sep 2015 16:51:05 -0000
Content-Type: multipart/alternative; boundary=089e0115fbea6ab0d005206ceb11

--089e0115fbea6ab0d005206ceb11
Content-Type: text/plain; charset=UTF-8

Your initrd is missing /dev/null device it seems. You need to create it
dring build or some runtime mechanism
On Sep 23, 2015 8:10 AM, "Andy Pont" <andy.pont@sdcsystems.com> wrote:

> I have spent all morning fine tuning psplash on a PXE booting system using
> an NFS mounted root file system (all built with Yocto 1.8 for the
> intel-core2-32 machine) and all is exactly as I need.
>
> When I boot the system using an initrd of the same file system the first
> output from the init process is:
>
> /etc/init.d/rc: /etc/rcS.d/S00psplash.sh: line 28: can't open '/dev/null'
>
> Line 28 of S00psplash.sh corresponds to the call to /usr/bin/psplash to
> display the image to hide the init messages.
>
> Am I being a complete numpty (highly probable) or have I missed something
> about using an initrd?
>
> Thanks,
>
> Andy.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0115fbea6ab0d005206ceb11
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Your initrd is missing /dev/null device it seems. You need t=
o create it dring build or some runtime mechanism </p>
<div class=3D"gmail_quote">On Sep 23, 2015 8:10 AM, &quot;Andy Pont&quot; &=
lt;<a href=3D"mailto:andy.pont@sdcsystems.com">andy.pont@sdcsystems.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I have s=
pent all morning fine tuning psplash on a PXE booting system using<br>
an NFS mounted root file system (all built with Yocto 1.8 for the<br>
intel-core2-32 machine) and all is exactly as I need.<br>
<br>
When I boot the system using an initrd of the same file system the first<br=
>
output from the init process is:<br>
<br>
/etc/init.d/rc: /etc/rcS.d/S00psplash.sh: line 28: can&#39;t open &#39;/dev=
/null&#39;<br>
<br>
Line 28 of S00psplash.sh corresponds to the call to /usr/bin/psplash to<br>
display the image to hide the init messages.<br>
<br>
Am I being a complete numpty (highly probable) or have I missed something<b=
r>
about using an initrd?<br>
<br>
Thanks,<br>
<br>
Andy.<br>
<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--089e0115fbea6ab0d005206ceb11--
