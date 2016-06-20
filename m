Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F98EE00984; Mon, 20 Jun 2016 14:54:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D25E5E008FF
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 14:54:05 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id n127so529991iof.3
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 14:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/IFTlk7wDi8kllM/RJmCYuNxX6bqoSnCLksyXLVqEmI=;
	b=JMURJONJs6hDUPBrt/U4Fxd3J6b7dQmVUZqv3cjiubvNDTPlvvsUXjauC+pfJTDRKO
	UDZjoVN51siSYp1jE1+Dfkjcl6UzGRC9c/yeBFffZemnK799biWGHcZwBcXGaXyk4Tuo
	yFM4QZgYnEay2gycf9GmjDGSq+DYij05avCPrJgsuYlgDOxRklvECfevt9f5K1zwkdGq
	IBnMml3UbMo8ro9Pt9DWHDcEgTpoHmQNULkWOHQF1QSZvAM3ZanDS/pnkdQ5A8jQRUUX
	I8UORSVYcHizrN9s4/4ZdVKEM8Bfvv+pBSHifbFcmucSStgOVfCyp56HUeyeC1XINJQt
	gI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/IFTlk7wDi8kllM/RJmCYuNxX6bqoSnCLksyXLVqEmI=;
	b=fyG8xwrVfhiAzpomzqbPSZbGC+z0FP+jWCt/ayjNkiccb6Qzcepgdn+hfnrQdLA0vy
	QzfXeUYSgCP5yIBBX+MeDeSrYQ8UUM07ROhs4VAex2a5BrmJdPZok6dnbVmtlJGUQaYW
	8C1jl82hKqyJIl9R/VrSaOaI3i0uC6Fqm4gS4QP28Z/e2EfkWUKvNDzaU4DlF68fQ58d
	MC4NUD8UP5Xn4J0/0mQlLq0BUSA7Zk3XPC5wwoR/4MyeAbM8G3Z5JaUzjQmbPGCR366B
	p1oui0BTXTQcWbSl3oUIzPV4/2aZO698yTlJIidmEBqr3miwlWhFYjbvQsQn5e2CGr+P
	n5kA==
X-Gm-Message-State: ALyK8tL8gjG7e6BP4SWq5CQdnfb0Ua6SV2c7hU9rIlNRqL6FO6O2Qm2Pp/fyDBYB0pEsnBAZsITzZteWKZOUsqsF
X-Received: by 10.107.154.210 with SMTP id c201mr25210516ioe.99.1466459644626; 
	Mon, 20 Jun 2016 14:54:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Mon, 20 Jun 2016 14:53:45 -0700 (PDT)
In-Reply-To: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
References: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Jun 2016 22:53:45 +0100
Message-ID: <CAJTo0LbdLtJRBZLetB9TL_wpU=42NkMxQY1t46q3cKaNQjQAkA@mail.gmail.com>
To: OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <Openembedded-core@lists.openembedded.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: [oe] Patchwork users: Help test new version
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
X-List-Received-Date: Mon, 20 Jun 2016 21:54:08 -0000
Content-Type: multipart/alternative; boundary=001a1140fab6322ff10535bcbe38

--001a1140fab6322ff10535bcbe38
Content-Type: text/plain; charset=UTF-8

On 20 June 2016 at 18:47, Michael Halstead <mhalstead@linuxfoundation.org>
wrote:

> OpenEmbedded is nearly ready to upgrade to a new version of Patchwork.
> The new version offers several new features that will allow OpenEmbedded
> to improve developer workflow and automated checks on incoming patches.
>

Woohoo!

Thanks Michael (and everyone else who helped on this over the months).

Ross

--001a1140fab6322ff10535bcbe38
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 June 2016 at 18:47, Michael Halstead <span dir=3D"ltr">&lt;<a href=3D=
"mailto:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfou=
ndation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":19z" class=3D"a3s aXjCH m1556eed05b0636a7">OpenEmbedded is nearly read=
y to upgrade to a new version of Patchwork.<br>
The new version offers several new features that will allow OpenEmbedded<br=
>
to improve developer workflow and automated checks on incoming patches.</di=
v></blockquote></div><br>Woohoo!</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Thanks Michael (and everyone else who helped on =
this over the months).</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a1140fab6322ff10535bcbe38--
