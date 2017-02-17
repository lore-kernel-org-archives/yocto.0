Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6A2CE0094C; Fri, 17 Feb 2017 14:39:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 133E6E00726
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 14:39:38 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id 62so17658477oih.2
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 14:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ftfhydJOpxzfabsRu8LlfnBp4ZGWH2d7iPz5t4VQ/iE=;
	b=S6XxkJeCnK3ppokeBkyVeS5IwDumF7tq5RAnXN1F+fu4A8BGNk+35TEOD/Gv3ouIbw
	7Ng2sSCB70GQDh5cA2loL+yivqXMBBQUPDZbFT9CT4ZV9CLCZtFWNnK0ZUBln4kkxTen
	pf4GRnC//v1MBUhVVUc5v68Fz5ygPtkZO4xp9FEnGX96y14M4foiAoUjezeXKr2jO4sJ
	3BAdxoVYjh0jK6P77hS1gfmbpkZobble8VaMyh+JrBZ1zjTb4rO+PfuvAY3NQTisrpnK
	z/r9VFSNhzRJ5MVT8vTRQMCVjyXaGOgYiQStBcZewwy3hUsvQx4NJmU++XIhH698Swbg
	DvVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ftfhydJOpxzfabsRu8LlfnBp4ZGWH2d7iPz5t4VQ/iE=;
	b=YvYKTjYq+s8EnlSlo8e5bJRZ5SaajtLl/OP3QgcxeDqyZxEE9dMqqXlcXfWyjUH8j0
	/FojsQsm5ntge/7vPIzy0lZxXBJsiM94DHy6ZT0Vt2ovVRmSwfoqaGpes1tMGaGqOipc
	RsZN7Ac6DOx495NqfsmrJlmQS2trNV2cFjRKDhz+fidk2P9wha0B3JaXkAogT54Whz88
	QY2Nt3wEsu4AbRRZiMU0DwD1x/bodUK9/vxldjzqbDp4AenKjUIeWbRoR2DiQov2Vi1d
	yFkAiMSnKL3vYWJxIFyuBCGTBAqiaVCCgBaEom0Dev5GTDizEOvvYYx4EqE+NIbj0shX
	YXmA==
X-Gm-Message-State: AMke39kTsJPkizYiB8qPcDsmODNj19d2R/Um3/vla0219r5HNC2lDJBdIDSKathKE+2FAjR1dqTfmkz6dXZI6A==
X-Received: by 10.202.71.137 with SMTP id u131mr5667536oia.111.1487371178010; 
	Fri, 17 Feb 2017 14:39:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.5.8 with HTTP; Fri, 17 Feb 2017 14:39:17 -0800 (PST)
In-Reply-To: <1487366767-28347-1-git-send-email-anibal.limon@linux.intel.com>
References: <1487366767-28347-1-git-send-email-anibal.limon@linux.intel.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Fri, 17 Feb 2017 15:39:17 -0700
Message-ID: <CABcZANksgFTdb52szMJVWo4EWxDT9ZA6hpnznHAfGH-KB15CnA@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Fri, 17 Feb 2017 22:39:42 -0000
Content-Type: multipart/alternative; boundary=001a113e3c68b6f1a20548c19608

--001a113e3c68b6f1a20548c19608
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 17, 2017 at 2:26 PM, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux=
.intel.com>
wrote:

> +    parser.add_argument('-l', '--layer', metavar=3D'LAYER_DIR',
> +            help=3D'Layer to test compatibility with Yocto Project',
> +            action=3D'store', required=3DTrue)
>

The behavior of this argument is quite unintuitive. First, this path isn=E2=
=80=99t
actually used as the layer directory, detect_layers searches down from that
path to *find* layers in that subdirectory, so the argument isn=E2=80=99t w=
hat it
says it is. Second, why are you making an option mandatory rather than just
using arguments?

That is, why `layer-compat-layer.py -l layerpath` rather than
`layer-compat-layer.py layerpath`. If you change the call to
`parser.add_argument(=E2=80=98layer=E2=80=99, =E2=80=A6)` it=E2=80=99d chan=
ge to the latter behavior.
--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--001a113e3c68b6f1a20548c19608
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Feb 17, 2017 at 2:26 PM, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">&=
lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal=
.limon@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div id=3D":dp" class=3D"a3s aXjCH m15a4df4b55dec0a4">+=C2=A0 =C2=A0 pa=
rser.add_argument(&#39;-l&#39;, &#39;--layer&#39;, metavar=3D&#39;LAYER_DIR=
&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 help=3D&#39;Layer to test compat=
ibility with Yocto Project&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 action=3D&#39;store&#39;, requir=
ed=3DTrue)</div></blockquote></div><br>The behavior of this argument is qui=
te unintuitive. First, this path isn=E2=80=99t actually used as the layer d=
irectory, detect_layers searches down from that path to *find* layers in th=
at subdirectory, so the argument isn=E2=80=99t what it says it is. Second, =
why are you making an option mandatory rather than just using arguments?</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">That is,=
 why `layer-compat-layer.py -l layerpath` rather than `layer-compat-layer.p=
y layerpath`. If you change the call to `parser.add_argument(=E2=80=98layer=
=E2=80=99, =E2=80=A6)` it=E2=80=99d change to the latter behavior.<br>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div di=
r=3D"ltr"><div><div dir=3D"ltr">Christopher Larson<br>kergoth at gmail dot =
com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Senior Software Engin=
eer, Mentor Graphics</div></div></div></div>
</div></div>

--001a113e3c68b6f1a20548c19608--
