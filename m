Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FAF3E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 13:19:57 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so7296498obc.13
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 13:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=ojYtsZa/pPQuLfi3M9fE2Tc5Zlr3fV1GhAQAAqCrpOU=;
	b=pN8shbpjM/oS/rTXSQfbudFCSjT1y8tE4dsBW7/rbpHF/NC4AiexKEG/qouhkREvtD
	gZpd2Kxi7pFMfrbNMq/ZRGWaxrUYk4mBzwEu3BF4nCANWg4VkiAZ+PMggAwpLlai5Z9e
	UY1oYcqiH7V0b4Ck+E8y7cV/6YTIEhrLYA2g3GDZcNWaIAD37MyN9VpzyeqdUixurK/j
	zKfma6nDqsZuaf06o82Oz73FgdSaIA7eWPjbgs7Vw+l6oFovnekWTTgq8z7kviUelO0G
	9CFqTQBcu2aBMZqSmSSMuOEr3VNB2v9MoNa0qOQQYU6/CBMS8L2SFrEytgQNCRrkKmGt
	dynQ==
MIME-Version: 1.0
X-Received: by 10.60.44.9 with SMTP id a9mr2154382oem.67.1377721196796; Wed,
	28 Aug 2013 13:19:56 -0700 (PDT)
Received: by 10.60.142.41 with HTTP; Wed, 28 Aug 2013 13:19:56 -0700 (PDT)
In-Reply-To: <CAFZh4h_2zm=TU5Egmfxqkj9aUZoFf-zrXPB3TbtK03C3RfLFcg@mail.gmail.com>
References: <CAFZh4h_2zm=TU5Egmfxqkj9aUZoFf-zrXPB3TbtK03C3RfLFcg@mail.gmail.com>
Date: Wed, 28 Aug 2013 16:19:56 -0400
Message-ID: <CAFZh4h_izMzmN-nzBLH7myJtiLWGz0EdKce7MJYw1KkjzPhpmA@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is there a OE core based mgetty?
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
X-List-Received-Date: Wed, 28 Aug 2013 20:20:00 -0000
Content-Type: multipart/alternative; boundary=001a11c2e73e88e59704e507b63a

--001a11c2e73e88e59704e507b63a
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Aug 27, 2013 at 6:56 PM, Brian Hutchinson <b.hutchman@gmail.com>wrote:

> Hi,
>
> I need mgetty and don't see it anywhere in any of the OE core based
> layers.  Did something replace it?  I'm trying to migrate some OE classic
> work to OE core based distros.
>
> Regards,
>
> Brian
>

Ping!  I'll take that as a "No" then.  :)

So .... I'm working on adding this to OE Core based distros ... should it
go in meta/recipes-connectivity?  The ppp stuff is in
meta/recipes-connectivity so I'm thinking that's where it belongs???

Regards,

Brian

--001a11c2e73e88e59704e507b63a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Aug 27, 2013 at 6:56 PM, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><p dir=3D"ltr">Hi,</p>
<p dir=3D"ltr">I need mgetty and don&#39;t see it anywhere in any of the OE=
 core based layers.=A0 Did something replace it?=A0 I&#39;m trying to migra=
te some OE classic work to OE core based distros.</p>
<p dir=3D"ltr">Regards,</p>
<p dir=3D"ltr">Brian<br></p></blockquote><div><br></div><div>Ping!=A0 I&#39=
;ll take that as a &quot;No&quot; then.=A0 :)=A0 <br><br>So .... I&#39;m wo=
rking on adding this to OE Core based distros ... should it go in meta/reci=
pes-connectivity?=A0 The ppp stuff is in meta/recipes-connectivity so I&#39=
;m thinking that&#39;s where it belongs???<br>
<br>Regards,<br><br>Brian <br></div></div><br></div></div>

--001a11c2e73e88e59704e507b63a--
