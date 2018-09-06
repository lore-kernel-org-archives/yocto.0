Return-Path: <santantonioswap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C69AE0093B; Thu,  6 Sep 2018 11:00:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (santantonioswap[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A90EE0090C
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 11:00:32 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id c190-v6so22232473oig.6
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 11:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Tt8VRis31kDOFOOcX3ILNRZ4t/zys5Bt6OzH75XXoVI=;
	b=qRBENRUixBv70p4ptPe/r6PAVGgUkatGlbxNXwUVtb+gPLtddzVEkDjzK0FpxUT5p4
	DEoWsKC1aOwLtvTxMrFXuabo6HdokKUvsz6Dg1nn5m34ijN1Ztpyq+x+//E4xwPB49R9
	UfLN3xZeffInzY05IWDqBPLpg3JgDwgoJfqdFYr8SR5G9HHlrEIxwypAccxV2ITcPugK
	7bKc27Gjx819uOK21bsv7VluNsSQvtLC8x86nhtkAxMw0e0QfY1NV3o6BUNCDHzYXsI5
	rKMWulsM9P0Jq49gkJMbvNfwNHmLvzPj7rzt/jiAW7OR0GGarN/V8vAPMkZuTph+jrLe
	xxBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Tt8VRis31kDOFOOcX3ILNRZ4t/zys5Bt6OzH75XXoVI=;
	b=og3ejivX0UXtFWEspsEfdeRRRjrd0sQN7qKH+RmmbZhKV63+s3D4X/W4eEfnMkuG/h
	/XoeQ0HWr2rXldmdIHGzsI0pNwiZuYiWUb7coxZBtuOhchwZ97wmB0x94D4a+HYdM7+Y
	5f3MaCLE1sMGGEmLzKQNPIqilIGm+Ij/eWfDKzf8ccNCngzGqDmbl3BC9X29/DBlBcpu
	dDPukBs+pX8sszdh6HlMZ15WQDFlHk1gXHgKqTiZUJ8MyikKQu3xGW8ZC2wbaxqfxvA0
	pT8d817RQJhzbAfBJJTwfEiRWiLbRF1pda8vzGizNY+vPWnmQNs3wVVUdi8jKU5uCM2d
	5nBw==
X-Gm-Message-State: APzg51CIxed8UH0OMo35QcH6hNBiVr3djOdC4DEvT2vwhbBWALcwRaVr
	/iInUg6PgDPdx3mPMtKHRFqbdcBc22TIwCbrKPqmvg==
X-Google-Smtp-Source: ANB0VdZ9ptLUkLDKO49t+2py7qBGhBnf0+Gg2NiIFkvWmrKSSL/IVtfkYh2WIcYVEvVamA4zTgv/SvTzmc1JuzuTYpw=
X-Received: by 2002:aca:45d6:: with SMTP id
	s205-v6mr4132686oia.147.1536256831354; 
	Thu, 06 Sep 2018 11:00:31 -0700 (PDT)
MIME-Version: 1.0
From: Antonio Santagiuliana <santantonioswap@gmail.com>
Date: Thu, 6 Sep 2018 19:00:23 +0100
Message-ID: <CACsVzKiq8gco767SGV_U-WiMNuvp-H+d_u030mBhzCPJzrkobw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: curl package config
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
X-List-Received-Date: Thu, 06 Sep 2018 18:00:32 -0000
Content-Type: multipart/alternative; boundary="000000000000b77d15057537aa87"

--000000000000b77d15057537aa87
Content-Type: text/plain; charset="UTF-8"

Hello
I am trying to enable the SMB protocol when building curl library by Yocto
the original recipe is under meta/recipes-support/curl

in my image's local.conf I have
IMAGE_INSTALL_append += "curl-dev"

curl is built correctly, but SMB is disabled

So I tried to add a .bbappend file with same name as the recipe's name,
with this line only :
PACKAGECONFIG = "--enable-smb"

but I still have SMB disaabled on curl.

Which is the right way to enable it with PACKAGECONFIG?
or another way ?
thank you

--000000000000b77d15057537aa87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<div>I am trying to enable the SMB protocol when buil=
ding curl library by Yocto<div>the original recipe is under meta/recipes-su=
pport/curl</div><div><br></div><div>in my image&#39;s local.conf I have=C2=
=A0</div><div>IMAGE_INSTALL_append=C2=A0+=3D &quot;curl-dev&quot;</div><div=
><br></div><div>curl is built correctly, but SMB is disabled</div><div><br>=
</div><div>So I tried to add a .bbappend file with same name as the recipe&=
#39;s name, with this line only :</div><div>PACKAGECONFIG =3D &quot;--enabl=
e-smb&quot;=C2=A0</div><div><br></div><div>but I still have SMB disaabled o=
n curl.</div><div><br></div><div>Which is the right way to enable it with P=
ACKAGECONFIG?</div><div>or another way ?</div><div>thank you</div><div><br>=
</div></div></div>

--000000000000b77d15057537aa87--
