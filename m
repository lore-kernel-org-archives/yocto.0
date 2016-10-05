Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85B84E00B52; Wed,  5 Oct 2016 10:38:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224ADE00A7B
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 10:38:00 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id r64so53670190uar.3
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 10:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=/umjEl8Hy2v/RZNMn8FFHNAoKp28ECvAkuCYXG3Q+90=;
	b=FBdo+Ns4tSDERv4mFtPTVWrbTdhmV5Fk0TYTxH7IWNziCN5kvuBM9vKof3waLrJMKT
	lZUqL0M8KfhbOMZMMxPQSPM7eVbfClhQjBrbcVpe64lYHq0vkzq4PRJxopLp+ZV4mgKz
	GqgEsHUPflcPZYNxNFfI1Jr/Rcmiv4td8e/6CbScB2Ij0NzVZloIf5cYWLTW6SMpRdlY
	e5pD5O/gBEoAs2xB/kvmL9/dmNbZHCEgaRAMcIa2y2oyQZ9JS17aTHhQocg/MgdObMmW
	hKfMESG5nbbrYHSh//BbW7w0qt4AyDUBlLCgSdPWn8YVBizD+e6vC+X+9upVMiSVY/ft
	IEvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=/umjEl8Hy2v/RZNMn8FFHNAoKp28ECvAkuCYXG3Q+90=;
	b=faJd1BuPe2VKeFEphbRuwK9WjN9+HWQyfJC8ZugszeXfXPKHQ9uNZt/wqOagzAmMWr
	/DT4akBlFzYcq9VBBNSMlIssvkDfGEMbpeyieDiuNij2YkbHrla8mxgcXclFAhU1xJA5
	SEvYoK3yF8kcS069DwLE+/5nuKX+PKCnxytULRAjbYnBLzzGnHyrZdZckMkM9lpW7KkZ
	hL9UCA5wgSt/SZYs8439J8TTv+L0apdBopQ4XOy/m52Ezm4R9u3z1VbFHd+aQdcv9Cbi
	pWl/5f9xFcnoANgaJHqYGmLheAe3+6pgJShweC/ddDdQYs+o5EWKwfrz/4VpcIcdEe28
	tOLg==
X-Gm-Message-State: AA6/9RlDKK/76RVfiP+vmLUTyHZI/vGMBlhWm3o5Lpdry80UixXnunK/ZipIUmJiA9trbKcZETk5i02sTX7EMQ==
X-Received: by 10.176.16.72 with SMTP id g8mr6719877uab.48.1475689079705; Wed,
	05 Oct 2016 10:37:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.70 with HTTP; Wed, 5 Oct 2016 10:37:39 -0700 (PDT)
In-Reply-To: <CAJ58UNnr5UFpU9SMHY3-2Oy6hgFBCa+uyQQCzi2S3nyx9nJ=Wg@mail.gmail.com>
References: <CAJ58UNnr5UFpU9SMHY3-2Oy6hgFBCa+uyQQCzi2S3nyx9nJ=Wg@mail.gmail.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Wed, 5 Oct 2016 10:37:39 -0700
Message-ID: <CAJ58UN=HBMCge3+1te-CpZPm8P=z+TgG4yekFvbqfTu8muFu0g@mail.gmail.com>
To: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Need inputs on integrating YP-Core Krogoth to Brilliant Blow-fish AGL release.
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
X-List-Received-Date: Wed, 05 Oct 2016 17:38:05 -0000
Content-Type: multipart/alternative; boundary=f403045e21c8651456053e21a332

--f403045e21c8651456053e21a332
Content-Type: text/plain; charset=UTF-8

Hello All,

Can anyone help me out on this issue. Thanks.

Cheers,
Vijay


On Mon, Oct 3, 2016 at 6:19 PM, Vijayakumar Badiger <vijayakumarmb@gmail.com
> wrote:

> Hello All,
>
> I am trying to integrate the YP Core - Krogoth 2.1.1 to the AGL Blowfish
> release. I am getting the below error when I try to build the image.
> Can you pls let me know how to fix this issue.
>
> I see that in the earlier YP release the IMAGE_CMD was actually referenced
> in the poky/meta/lib/oe/image.py. Now I don't see this file in that
> location.
> Please let me know if any one has faced this issue. Thanks.
>
> /poky/meta-qti-internal/recipes/images/qt5-image.bb: No IMAGE_CMD defined
> for IMAGE_FSTYPES entry 'fastboot' - possibly invalid type name or missing
> support class:  --:--:--
> ERROR: Failed to parse recipe: /local/mnt/workspace/Oct-3/
> poky/meta-qti-internal/recipes/images/qt5-image.bb
>
>
> Cheers,
> Vijay
>

--f403045e21c8651456053e21a332
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>Can anyone help me out on th=
is issue. Thanks.</div><div><br></div><div>Cheers,</div><div>Vijay</div><di=
v><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Mon, Oct 3, 2016 at 6:19 PM, Vijayakumar Badiger <span dir=3D"ltr">&lt;=
<a href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank">vijayakumarmb@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div>Hello All,</div><div><br></div><div>I am trying to integrate =
the YP Core - Krogoth 2.1.1 to the AGL Blowfish release. I am getting the b=
elow error when I try to build the image.</div><div>Can you pls let me know=
 how to fix this issue.=C2=A0</div><div><br></div><div>I see that in the ea=
rlier YP release the IMAGE_CMD was actually referenced in the poky/meta/lib=
/oe/image.py. Now I don&#39;t see this file in that location.</div><div>Ple=
ase let me know if any one has faced this issue. Thanks.</div><div><br></di=
v><div>/poky/meta-qti-internal/<wbr>recipes/images/<a href=3D"http://qt5-im=
age.bb" target=3D"_blank">qt5-image.bb</a>: No IMAGE_CMD defined for IMAGE_=
FSTYPES entry &#39;fastboot&#39; - possibly invalid type name or missing su=
pport class: =C2=A0--:--:--</div><div>ERROR: Failed to parse recipe: /local=
/mnt/workspace/Oct-3/<wbr>poky/meta-qti-internal/<wbr>recipes/images/<a hre=
f=3D"http://qt5-image.bb" target=3D"_blank">qt5-image.bb</a></div><div><br>=
</div><div><br></div><div>Cheers,</div><div>Vijay</div></div>
</blockquote></div><br></div>

--f403045e21c8651456053e21a332--
