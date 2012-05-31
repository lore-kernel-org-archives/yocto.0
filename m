Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EAADE013D4
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 07:01:50 -0700 (PDT)
Received: by eekb45 with SMTP id b45so415686eek.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 07:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=HgUnyOSGDNXWdqmQvo3dV81+sByoiv00G1yzSCvzlCk=;
	b=ujn47t792iPLs4sAkciBb26Qr1xUOwQzRpkzwmbEpFJ6/WdeIWVhnNm7Ybdq4z1oT+
	gnMASwBVkva+JEkKtVCnGciQHJOtSQ1QaB4UMcY52YLzPSCDJzi8DVISXwoKN+uUS952
	avaDnarkzgat0FbQ8AFojiKcjGpKj43FoNo2+8peOLx6ki0a3O4CcOKQLM1yaIU0U27v
	CfBWfgvRimEBUpH78oPUqjxlOAnB//Ykq83NEbZfYFmz8f+fb7/XpCYFr4scruklMhX3
	hZMIPJ/BamGskxlR+YjAmvS7CVcZYyACJLE9UyguyG/29HDBJl1/ib6pm0DmZ30eZupk
	+ixQ==
Received: by 10.14.39.70 with SMTP id c46mr9148902eeb.118.1338472909795; Thu,
	31 May 2012 07:01:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Thu, 31 May 2012 07:01:19 -0700 (PDT)
In-Reply-To: <4FC74DF9.3070401@enea.com>
References: <4FC74DF9.3070401@enea.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 May 2012 07:01:19 -0700
Message-ID: <CAMKF1soZ7Ss7s245Y4xtGBypheW5RSDgJMCRAr1FG2xF5cE3-w@mail.gmail.com>
To: =?UTF-8?Q?David_Nystr=C3=B6m?= <david.nystrom@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PR and bbappends
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 31 May 2012 14:01:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 31, 2012 at 3:54 AM, David Nystr=C3=B6m <david.nystrom@enea.com=
> wrote:
> Hi All,
>
> Is there a good way to get the layer name ?, I want to add
> PR .=3D "+${LAYER_NAME}.0" to my bbappends for clarity and versioning whe=
n
> having multiple meta layers.
> Where a bbappend:s on package X can reside in one, two or more layers.
>

you could look into  bitbake-layers tool
bitbake-layers show-overlayed will show the recipes overlays
if thats the problem you are trying to solve


> Best Regards,
> David
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

