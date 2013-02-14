Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 42464E00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:40:00 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id m8so1624373vcd.37
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:39:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=wMub6u0WHnSL/sr7RHBPaJdY4QIg4lJ3rmUU2HEubII=;
	b=luPFdvyHTe4dJpZh9KZiWOYSQ/q7puNdAq4rc5bP1sTgWtWNKf1/H2L94DZz/a/SRl
	wbWGf/ozhtcHBSz/MCXfv6gplJWLLZx/eHNV4EnbLpMizCnLrrS3vKqKr9xND/KNN7xB
	itzifbq5nrpIo8xhBRFOY1LoPvk3tSp5xLMAHDt06DK06NtQM3xdv1svq3MdvJluVKgW
	FHcII7C5KMMxyRPBRY1FGma57rSIV7BlY6Z7uruTMP/rXjwVLLgrTTXOUwan236G/m/B
	JEtP+VRa9m4dfC/2paq/fv6JHhIaklOcDRVn8qBzvd6wgNBNJPXVqHx3mgeNe5kLfCdS
	+O8g==
X-Received: by 10.58.231.196 with SMTP id ti4mr35786024vec.25.1360863599117;
	Thu, 14 Feb 2013 09:39:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 09:39:39 -0800 (PST)
In-Reply-To: <1360863083.63962.YahooMailClassic@web140001.mail.bf1.yahoo.com>
References: <CA+gsK-o5NBuaCcukAohuMh06VXpxyJVD9Bz=G7W8r0hu-TV9Mw@mail.gmail.com>
	<1360863083.63962.YahooMailClassic@web140001.mail.bf1.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 17:39:39 +0000
Message-ID: <CAJTo0LboEa_ZWSbSqt5Bb0wtRhG-wdmGt=Tv5SEUgi=7rgCKtg@mail.gmail.com>
To: Andre Bella <scancool@yahoo.com>
X-Gm-Message-State: ALoCoQmgLE3tpgpw6yYq5y2TiJ9n7wFbs8GTQV5bIA/6g8ekUjCw0WGU+zpn5mDiW0CVGzWNX2fu
Cc: yocto@yoctoproject.org, Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: select installation packages
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
X-List-Received-Date: Thu, 14 Feb 2013 17:40:00 -0000
Content-Type: multipart/alternative; boundary=047d7bdc91b669c58804d5b2bf5a

--047d7bdc91b669c58804d5b2bf5a
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 17:31, Andre Bella <scancool@yahoo.com> wrote:

> but my question is there a menuconfig to select what to build like in
> buildroot?
>

Hob has a UI, but if you're using the commandline bitbake then you'll have
to edit packagegroups, images, or your local.conf manually.

Ross

--047d7bdc91b669c58804d5b2bf5a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 14 February 2013 17:31, Andre Bella <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:scancool@yahoo.com" target=3D"_blank">scancool@yahoo.com</a>&gt;</span>=
 wrote:<br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

but my question is there a menuconfig to select what to build like in build=
root?<br></blockquote></div><br>Hob has a UI, but if you&#39;re using the c=
ommandline bitbake then you&#39;ll have to edit packagegroups, images, or y=
our local.conf manually.<div>

<br></div><div>Ross</div>

--047d7bdc91b669c58804d5b2bf5a--
