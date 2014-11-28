Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16183E0077F; Fri, 28 Nov 2014 02:09:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A306AE0034B
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 02:09:20 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id n3so18071051wiv.5
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 02:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=MXIZrXj0uZBASWXCfaB7td8GwoZI8R9h0XKAYa/ecso=;
	b=z14lAm1KMv+sA0KSz66ZAn7LJlZ0vGC70LIbodtXyE1C796QY73Mmd5CPqZBO6gnW5
	Z2EPVz+Ntzhj92G83CXL5P1oA65DWqa6UXa6tEL7G6aEiNrvCy9elZE+OX/89qIlpCH5
	tsaWKkX6waL04axT+lQIHcGbrczJ58AQJO1OI5gujD0g53yjeliv3I4RLmX3/PgOwqJS
	+kxw8JKf2nFJe2GQoz+Zzt9RJ7R9dfDpMp5LLrEuOJ0wIoFWIcFpXg1BvGLY0VA7DUnZ
	EKfWaJuWBVCoJVPj4ZGRHWvXpbINUaefp9sSXSRAbheUPXNjB83QUQajvYN/KG6V0YtG
	dabQ==
X-Received: by 10.194.85.137 with SMTP id h9mr23741576wjz.70.1417169359416;
	Fri, 28 Nov 2014 02:09:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.10.11 with HTTP; Fri, 28 Nov 2014 02:08:59 -0800 (PST)
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Fri, 28 Nov 2014 11:08:59 +0100
Message-ID: <CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
To: Matthias.Heise@atlas-elektronik.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_fetch linux hangs after defconfig/conf-fragment change
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
X-List-Received-Date: Fri, 28 Nov 2014 10:09:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2014-11-28 10:29 GMT+01:00  <Matthias.Heise@atlas-elektronik.com>:
> Hi all,
>
>
>
> I=E2=80=99m quite new to yocto and currently am playing around with all k=
inds of
> basic functions and procedures of yocto to step by step learn and get to
> know yocto and bitbake.
>
> Currently I=E2=80=99m trying to store the kernel config settings in some =
way in my
> layer to have it modular. So I read about config fragments. Unfortunately=
 I
> can=E2=80=99t test what I did as when running bitbake the do_fetch for th=
e linux
> source is started and doesn=E2=80=99t end. Even when enabling/disabling o=
nly one
> line in the defconfig file, which I tried as test, this happens. That isn=
=E2=80=99t
> normal is it ? What can I do about this ?
>
> Thank you,
>
> Best regards,
>
> Mat
>

Hi,

you can increase the bitbake debug level with the "-D" flag, it can be
used multiple times like:
bitbake -DDD <recipe>

Usually this should show enough information to see what's going wrong.



--=20
Regards
Samuel

