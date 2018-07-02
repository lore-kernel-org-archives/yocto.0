Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1087E00B58; Sun,  1 Jul 2018 22:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224D8E00AAB
	for <yocto@yoctoproject.org>; Sun,  1 Jul 2018 22:27:03 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id w13-v6so6249920ywa.5
	for <yocto@yoctoproject.org>; Sun, 01 Jul 2018 22:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=/9obzhz0DQYYPYya7/clZlgXxi95KdzWAALsGaHZi5U=;
	b=gsuV2vqaWjJp77bz9cYxsQfsbpL7nNC5dqUDjQ31w23sNXUWlnLFX+px3KRYm0xIMZ
	SGAdAhx8ltXgA0NGoFu81L0ycUnNjhA7FvGlgOGmRwz6dxAyKQI6okeghYiufSVEKMZx
	TCaj5Z97CnDapU9sO3b2PZWVxDIaApcQR6Z5bqecL+ZxpoLNRjTtqgcSXRRTHyqXlfBv
	ZgntE+snmnkH6BDeKE0LhhRQuzfahjbHglvHhV2zEZw91cw8JYRXfmCwJDlzz8/hYpuJ
	FUBOa0uaxMnUi39+/VNiOXglfD0AGEWXbJu3jfewJviExZVVwUFRng+OqgCZkm17GNfC
	cnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=/9obzhz0DQYYPYya7/clZlgXxi95KdzWAALsGaHZi5U=;
	b=ebq5rkKVED4Tj0F9VDCAQGAoMXF0jvGl0nGz3n05sHs06CSlIcU3/Yo3wf/d0fgA22
	9AvK4YouVni7O/sCLBRVFHzJjGOI8fnzQL/2IpC6/rY+FJSoyZI9vZa9HvYgdwlqE69t
	QkG/ADAMbfINdAD/BWB+I3tg89LIbleGq1SZN8BPFdEXl0Ylas6In3ul2R1p4Z7PmdHp
	M91mjMys3QaVcW9vlirSY5BXVyk6jOU4frSxlGu/jqdEzq9vpJu/X53LzH8TzmOzSxP+
	dSiifidoikAsXIg9lh/B0lEr00BxeaMbteBKsCILKdgDpoghQgzsFvJHk+XdGb8M0EXX
	dc1w==
X-Gm-Message-State: APt69E1JBQRbtekkk7sM+Yty2i26MD0/TNWv3edhcD1IH6MeZ6t0CEg/
	CCJEzybfzAwM/e5DxH7SPZ64kLac/yM9oo0enmg=
X-Google-Smtp-Source: AAOMgpfFuUwMQDkHTdUqvghQ1k28dg2uXnclsjSV97Fs84RsOUp63SIjmK0NWwuEuL5k39GtN7tHgEFdgg1+1BCVwBU=
X-Received: by 2002:a81:27cf:: with SMTP id
	n198-v6mr11762532ywn.13.1530509223319; 
	Sun, 01 Jul 2018 22:27:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:ae0b:0:0:0:0:0 with HTTP;
	Sun, 1 Jul 2018 22:27:02 -0700 (PDT)
In-Reply-To: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
References: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
From: techi eth <techieth@gmail.com>
Date: Mon, 2 Jul 2018 10:57:02 +0530
Message-ID: <CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Basehash value changed issue
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
X-List-Received-Date: Mon, 02 Jul 2018 05:27:04 -0000
Content-Type: multipart/alternative; boundary="00000000000094de1f056ffd7245"

--00000000000094de1f056ffd7245
Content-Type: text/plain; charset="UTF-8"

Hi,

Can anybody give me hint over below issue.

Thanks

---------- Forwarded message ----------
From: techi eth <techieth@gmail.com>
Date: Thu, Jun 21, 2018 at 6:30 PM
Subject: Basehash value changed issue
To: yocto@yoctoproject.org


Hi,

I am facing issue with basehash value changed while building image on one
of my test board (Ref of beagle bone) on morty branch.

Error :
gateway.bb.do_rootfs, the basehash value changed from
e685a429b8df6dcff60063f087d425ee to 3f98a102f48ea8722835ad0d65bfbc1f. The
metadata is not deterministic and this needs to be fixed

When i run bitbake-diffsigs -t gateway do_rootfs
I found below O/P.
basehash changed from 8e6b9498c9704590bd016491efcbf9f9 to
3f98a102f48ea8722835ad0d65bfbc1f
Variable TIME value changed from '112854' to '115745'

After googling I found that TIME need's to be added in vardepsexclude list.
I added below in conf/distro/machine.conf but error persist.
do_rootfs[vardepsexclude] = "TIME DATE DATETIME"

Please suggest me where & what has to be added to come out of issue.

--00000000000094de1f056ffd7245
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Can anybody give me hint over below=
 issue.</div><div><br></div><div>Thanks</div><div><br><div class=3D"gmail_q=
uote">---------- Forwarded message ----------<br>From: <b class=3D"gmail_se=
ndername">techi eth</b> <span dir=3D"ltr">&lt;<a href=3D"mailto:techieth@gm=
ail.com">techieth@gmail.com</a>&gt;</span><br>Date: Thu, Jun 21, 2018 at 6:=
30 PM<br>Subject: Basehash value changed issue<br>To: <a href=3D"mailto:yoc=
to@yoctoproject.org">yocto@yoctoproject.org</a><br><br><br><div dir=3D"ltr"=
><div><div><div><div><div><div>Hi,<br><br></div>I am facing issue with base=
hash value changed while building image on one of my test board (Ref of bea=
gle bone) on morty branch.<br><br>Error :<br>gateway.bb.do_rootfs, the base=
hash value changed from e685a429b8df6dcff60063f087d425<wbr>ee to 3f98a102f4=
8ea8722835ad0d65bfbc<wbr>1f. The metadata is not deterministic and this nee=
ds to be fixed<br><br></div>When i run bitbake-diffsigs -t gateway do_rootf=
s<br>I found below O/P.<br>basehash changed from 8e6b9498c9704590bd016491ef=
cbf9<wbr>f9 to 3f98a102f48ea8722835ad0d65bfbc<wbr>1f<br>Variable TIME value=
 changed from &#39;112854&#39; to &#39;115745&#39;<br><br></div>After googl=
ing I found that TIME need&#39;s to be added in vardepsexclude list.<br></d=
iv>I added below in conf/distro/machine.conf but error persist.<br>do_rootf=
s[vardepsexclude] =3D &quot;TIME DATE DATETIME&quot;<br><br></div>Please su=
ggest me where &amp; what has to be added to come out of issue.<br></div></=
div>
</div><br></div></div>

--00000000000094de1f056ffd7245--
