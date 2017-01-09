Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DD33E0043B; Mon,  9 Jan 2017 07:56:32 -0800 (PST)
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
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40BA9E0030B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 07:56:22 -0800 (PST)
Received: by mail-qt0-f182.google.com with SMTP id v23so139365966qtb.0
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 07:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CY6oMN0SZR8rqIDBbIJJ4Ke5zvrV4tuCKGS3+hdIpGI=;
	b=K0kZEHhjKbJLBJkuG+MT9GQ9/Wyg4NH8zi8GlBooy9jFpsBYGAq7uN04tD5ES3HuNS
	E6TRtxTkVv/muxdAEUGug9QcGtQTaEX7fiBZidTLIbOKVX3xdKJo0ZbAAgJOTUmgPqFe
	5f9y7vgTGJN4LVLSNWIWfXWdmI/wGIR0XwenUOcAXIiNrURpj/eG5oIaD4tTR17FDP77
	TEPtQmhxeBnBZrA4SecndqnZUJrEvMlbDiHQiTOY59/MMJLhFTykB7YH45YsfiUyQnCm
	gVUKgpNTxZbbNL+K7x+5idq61s3cVx4/SsROLoY2R93meWK5e9xLTlyNwDBT0ITv+ebv
	R6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CY6oMN0SZR8rqIDBbIJJ4Ke5zvrV4tuCKGS3+hdIpGI=;
	b=aVJW87kGgxSbbgLb6X2BnrL/ZxYhVctNa5j6FAA6D+MTRP1ncLgJ/HBDNMvlHkDsrW
	BVCRq9ztKXIGiXXrqsK8L84VceGl6A2LDQknG880t4gxtRCRp5qR4Knk8V1Rh+YeO4bO
	x3ygNi7eV2zX2VjNobOi5ODBH8WwitEUuGkbUiUy5sd5pYkKfQykBXALJzKya4KGJvOg
	QaOeUqn3zQ+CJKj3/8dlG1wKD+D5suC+sgpT+moCiDC5R+8BaSQY0Q7wsnd6zItBn5hi
	3d4W/EE5yJhKpsrklTpZwwXrQLVQROhRKOuweA8Peo2ZJgRA1L2CcrNDyaHyf69OM5PE
	6mvw==
X-Gm-Message-State: AIkVDXLSt+GvTohr0ie6fLlghvtGLBs4QTaKvMuXX5DaHuLK8SNy0KzLg3kQfuuBfUsTw4zxswfPSlLZotl7HfLs
X-Received: by 10.237.36.208 with SMTP id u16mr7780875qtc.105.1483977381720;
	Mon, 09 Jan 2017 07:56:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 9 Jan 2017 07:56:01 -0800 (PST)
In-Reply-To: <BC774F321B0EF24DBF41FE7457B2B7862D17E285@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
	<2244309.YxLLuVC5TP@peggleto-mobl.ger.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17E285@wcosexch01k.cos.is.keysight.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jan 2017 15:56:01 +0000
Message-ID: <CAJTo0LZj8OC-pUtvVGfXJLpHg3Ph5N5Lia25yMY4zsdgrZojQg@mail.gmail.com>
To: richard_allen@keysight.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Mon, 09 Jan 2017 15:56:32 -0000
Content-Type: multipart/alternative; boundary=001a114104ceb14a120545ab68a0

--001a114104ceb14a120545ab68a0
Content-Type: text/plain; charset=UTF-8

On 9 January 2017 at 15:51, <richard_allen@keysight.com> wrote:

> TOOLCHAIN_TARGET_TASK_append =  "hals hals-doc"
>

_append doesn't insert whitespace, so you need to do it.  Use
TOOLCHAIN_TARGET_TASK_append =  " hals hals-doc" in your image recipe
instead of changing it globally.

Ross

--001a114104ceb14a120545ab68a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 January 2017 at 15:51,  <span dir=3D"ltr">&lt;<a href=3D"mailto:richar=
d_allen@keysight.com" target=3D"_blank">richard_allen@keysight.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex"><div id=3D"gmail-:8j" class=3D"gmail-a3s =
gmail-aXjCH gmail-m15983efefd7f7d8f">TOOLCHAIN_TARGET_TASK_append =3D=C2=A0=
 &quot;hals hals-doc&quot;<br></div></blockquote></div><br>_append doesn&#3=
9;t insert whitespace, so you need to do it.=C2=A0 Use TOOLCHAIN_TARGET_TAS=
K_append =3D=C2=A0 &quot; hals hals-doc&quot; in your image recipe instead =
of changing it globally.</div><div><br></div><div>Ross</div></div>

--001a114104ceb14a120545ab68a0--
