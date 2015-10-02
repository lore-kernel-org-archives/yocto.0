Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B1DEE00DFF; Fri,  2 Oct 2015 11:26:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3786E00A9B
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 11:26:45 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so118494648ykd.2
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 11:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xCAMr/aSE9cZ7SrCN0uv1rMHidOq3FXvtTaqDSkmczc=;
	b=PcpHOjLjXoy6tyXBBsI/il5BsL77tORAhyEN35zgwGzr0OWHhJrzVwmY+PeafE1Zui
	MFK+iIsv0BsRkGBseAqi9G2RAW0jpMPYCgse4dLAqN9KONGy16To/807vqHOYkoVs3IJ
	VXqe5eO1hZivQwDD5iO+RN2TxX82zmBWfJzu1EVlqYB59XnLKm5WV+IsjNAvo+8Hs1Xt
	UeFHbgYwrjpsIZ8+degzsjrSNNNp4l4KM505vxMeDuzxL8LV0my68ZNw50R0AqedK2A4
	OIUIgUnU64N+PjwAzy7JigMPvG0kYBKN2bVlzZCQB8o9sI5OocPhsSEW8T2DV0wmwI/O
	yUvw==
MIME-Version: 1.0
X-Received: by 10.13.244.68 with SMTP id d65mr14618164ywf.27.1443810405145;
	Fri, 02 Oct 2015 11:26:45 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 11:26:45 -0700 (PDT)
In-Reply-To: <CABcZANnWEiNS6fhoQ8GmqRUYfa_vEgdcYVLGx52=kaGh-Zq6Yg@mail.gmail.com>
References: <1443801396017.79471@seescan.com>
	<CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
	<CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
	<CAF3SDA5BFz2bZ3k0x6y67n4C-FnEr7CU-3ZD89fMJk-TPqD-wQ@mail.gmail.com>
	<CABcZANmVTBNEj-dOC-+EsfH5z9fdXqSaEXGz_8AxfSa6VAx+mw@mail.gmail.com>
	<CAF3SDA5UfXUMzbB5cnD5KSaCr6aPMq4=U_vP=xWw+4a=O=Zheg@mail.gmail.com>
	<CABcZANnWEiNS6fhoQ8GmqRUYfa_vEgdcYVLGx52=kaGh-Zq6Yg@mail.gmail.com>
Date: Fri, 2 Oct 2015 15:26:45 -0300
Message-ID: <CAF3SDA4AhQvtQ20yVO09_kN2cmB3spRU255iejfWt51SN-vnMg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 18:26:48 -0000
Content-Type: multipart/alternative; boundary=94eb2c0356a45266700521234e1e

--94eb2c0356a45266700521234e1e
Content-Type: text/plain; charset=UTF-8

Daisy doesn't have it :(

Thank you for this information :)

Cheers,

2015-10-02 15:24 GMT-03:00 Christopher Larson <clarson@kergoth.com>:

>
> On Fri, Oct 2, 2015 at 11:22 AM, Daniel. <danielhilst@gmail.com> wrote:
>
>> Where can I find this recipetool!? It seems a nice tool to have :)
>>
>
> It's in oe-core/scripts or poky/scripts in any recent release. It'll be in
> the PATH after sourcing the setup scripts.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0356a45266700521234e1e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Daisy doesn&#39;t have it :(<br><br></div>Thank =
you for this information :)<br><br></div>Cheers,<br></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">2015-10-02 15:24 GMT-03:00 Christo=
pher Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" ta=
rget=3D"_blank">clarson@kergoth.com</a>&gt;</span>:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br=
><div class=3D"gmail_quote">On Fri, Oct 2, 2015 at 11:22 AM, Daniel. <span =
dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">=
danielhilst@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr">Where can I find this recipetool!? It seems a nice tool=
 to have :)</div></blockquote></div><br></span>It&#39;s in oe-core/scripts =
or poky/scripts in any recent release. It&#39;ll be in the PATH after sourc=
ing the setup scripts.<span class=3D""><br>-- <br><div>Christopher Larson<b=
r>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus=
<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</span></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is no =
try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>

--94eb2c0356a45266700521234e1e--
