Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9A7BE00D6D; Thu, 17 Aug 2017 16:37:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE5CE00726
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 16:37:43 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id f11so81936946oic.0
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 16:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ep3TTbt7ktpqa4ReYUGQhHNur+bASwcXbxGMXczMXNA=;
	b=PqP6atKcCC5B6CKE+JCansC9R9MHkMqOhcbt5ZjXPSi49w/0mLu3iXBKJFiMaqofU6
	4hovEeD52mWCU0tkUMcpfY72Q7KTw7kC8vQsAKs+CRhHJ6CpJ2ZbjIWuVKGCyZxE5rSm
	xNxSAKHaOwoI2l7EfyBiNVyLmZ6xgWlP8gM8WfMd3qCRsZnnpviHeKZu8As6FDAMWSWe
	1R0tcBGK43rO3kkiKObLEQWxUyhzAzKX/p1OZGKImj21jWEky2wLPZkS9d8bJYPigXSn
	TOkfQXVDjTrXSg2EB/6+G3aMe58ftkxHok4/VvN+QClH9JktMuJxdCtQKKoxgPq9PsW3
	WZ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ep3TTbt7ktpqa4ReYUGQhHNur+bASwcXbxGMXczMXNA=;
	b=qqyZW1mf7io+Jnxn8hIItCD6GoXAccsNRE/whQYvdNKvvOHXPE8UhN1u82F552lhIY
	jU5JdzgfUeiR7/a7Ii1kLz11fxYjqDHbKf71B5b8Yv5EK66Uq6dg8uCbHDZpD4Ez+U85
	nMVFc5JwGQ8GwJT1Tnk9TgWbfg6iucuMRLoC542FIlZF4RnK7n9j5bWbdEnWL3VNlqA4
	Fk/EmV+fU/MJMs1KJJKcePIsXpKgSitnBNsRXlKtEd1ItWeMEIVnCk+NWRXVLih/Jzm4
	MT+M2yuzC7HRHbiCzAokJQj16psJrbDMs02BtS4lHP/H3+GY8+G2c4poqImmuYR43Yvw
	H8Gg==
X-Gm-Message-State: AHYfb5jccEmcW7AAqmrnqd2NIwT1y2l8K9hlDpP7Mth/vioCs/BZZnPu
	po4P520uQtAkx1dXvWCBzNTvxQbKMQ==
X-Received: by 10.202.177.133 with SMTP id a127mr8280347oif.70.1503013062815; 
	Thu, 17 Aug 2017 16:37:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.44.5 with HTTP; Thu, 17 Aug 2017 16:37:41 -0700 (PDT)
Received: by 10.74.44.5 with HTTP; Thu, 17 Aug 2017 16:37:41 -0700 (PDT)
In-Reply-To: <1502979391.28682.1.camel@linux.intel.com>
References: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
	<1502979391.28682.1.camel@linux.intel.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Fri, 18 Aug 2017 07:37:41 +0800
Message-ID: <CAByQQ_q3ss3NQKgV9n7D7c1ZVRXLogzf2uvTxeBoA_RnnXZxLg@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd to nand flash chip?
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
X-List-Received-Date: Thu, 17 Aug 2017 23:37:45 -0000
Content-Type: multipart/alternative; boundary="001a113cd3f0b3b6df0556fb7f21"

--001a113cd3f0b3b6df0556fb7f21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

How can I edit boot loader command prompt ?
On Aug 17, 2017 10:07 PM, "Leonardo Sandoval" <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:
> > Dear Yocto Team Members=EF=BC=8C
> >
> > I tried to dd *.wic to nand flash but always got kernel panic, it can
> > not find rootfs
> > when I dd the same file to sd card, it worked.
> >
>
> from the bootloader command prompt, you may need to change the root
> kernel parameter and point to the device where the filesystem resides.
>
>
> > I copy only *.wic file to usb drive n dd it.
> > Do I need the whole directory of images for dd? or I need hddimg?
> >
> > Regards,
> > Riko
> >
>
>
>

--001a113cd3f0b3b6df0556fb7f21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p>How can I edit boot loader command prompt ? </p>
<div class=3D"gmail_quote">On Aug 17, 2017 10:07 PM, &quot;Leonardo Sandova=
l&quot; &lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com">l=
eonardo.sandoval.gonzalez@linux.intel.com</a>&gt; wrote:<br type=3D"attribu=
tion"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Thu, 2017-08-17 at 18:37 +0800, Rik=
o Ho wrote:<br>
&gt; Dear Yocto Team Members=EF=BC=8C<br>
&gt;<br>
&gt; I tried to dd *.wic to nand flash but always got kernel panic, it can<=
br>
&gt; not find rootfs<br>
&gt; when I dd the same file to sd card, it worked.<br>
&gt;<br>
<br>
from the bootloader command prompt, you may need to change the root<br>
kernel parameter and point to the device where the filesystem resides.<br>
<br>
<br>
&gt; I copy only *.wic file to usb drive n dd it.<br>
&gt; Do I need the whole directory of images for dd? or I need hddimg?<br>
&gt;<br>
&gt; Regards,<br>
&gt; Riko<br>
&gt;<br>
<br>
<br>
</blockquote></div>

--001a113cd3f0b3b6df0556fb7f21--
