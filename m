Return-Path: <tmichalski23@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B36E00848; Wed, 22 Aug 2018 06:34:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tmichalski23[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77970E006AF
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 06:34:28 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id d16-v6so13848590itj.0
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 06:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lFnDPZkmPn4Kg15Q3mW6tSTNSjsDb5V3f5MoaTNPmFs=;
	b=u9/jr+BHEWmfqxbCAAPvo7my8jstV7CyLod3DSuhQQAkH0NYjZbkiuQn3z3lD69Sc5
	PsqNZvlXDyRIoOFEHISnPjRhg+IoX3hjNoUxLJr0CgXPmOKMBgFw8pI91z/LGGhz7OUi
	N0h72ReEW3bSfWcsCD/K5j/tUEJqojWnGLw9dEUDLPNu32kPn7/Wz34LL0OwxMQITiMR
	ztTefUnTOSsgT/NcgRvFnpxOhhi7thwEDrUCb893D+nkBoaGcRC6sLa2hVAt6xBS5+yM
	xxFeQzsVe6McINz1N6VI7GQPM9/scHu0UuRV1enFRNlTImBFmcNVXsKbejj0wpTmeKX4
	NQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lFnDPZkmPn4Kg15Q3mW6tSTNSjsDb5V3f5MoaTNPmFs=;
	b=NQ9jrNRF1U4zzuah/mnDUKpJsjTUZ2H4TpAlfo7c5BVKpxw4sxLUgfi38qy20b9S/3
	mgnQwo0Pmj0FKhr9EiVYSC/huHyCBrQ6CaVhaRA8qzoA0mLC6eOvrma56QaBN6ZQmh1u
	4ZAnW+ZIj83//8a8TuBAWeq2Xkz4oo9IhXbjpiWUbtDCx8vdUKV0vSlCBPz7ZfGOPtHu
	PuPxsjQbwbxd4mqpuDxQtKLP1111dvlUtzoIMDaA4YRtE6mDv4n01es/XSMJGjmgZvY1
	bQ0w2iE1SAvzz9zfXGCB8AGgrLtLgYtaINS0oR8k9aBqGWJPh6hVUy5HoiQtSEskx3nI
	aACg==
X-Gm-Message-State: APzg51Br2BdPMdzhNFioQj6IE36+hS1P8j+B2o1TPeSzG/cLxejAeSUH
	hQvB16bUbV5xjOyGh5+X32kVyT1S9z4LMOaYufpwdKOL
X-Google-Smtp-Source: ANB0VdbtuB9tNoA5UYmkyfBqdJ5rLYGVJCUTj9hgK0Q7+OmkvxLNgd51cizlsnHKhEHgk9fu0SMhjgZ99lYHScwxziU=
X-Received: by 2002:a24:728d:: with SMTP id
	x135-v6mr3044169itc.150.1534944867658; 
	Wed, 22 Aug 2018 06:34:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:c3d0:0:0:0:0:0 with HTTP; Wed, 22 Aug 2018 06:34:27
	-0700 (PDT)
From: Tomasz Michalski <tmichalski23@gmail.com>
Date: Wed, 22 Aug 2018 15:34:27 +0200
Message-ID: <CAE5v_r+EZ97Lhjwwo4i7dwy1M7VRm+Lq6pZUsgyi8eNRH6wpew@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: require/include recipe.bb
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
X-List-Received-Date: Wed, 22 Aug 2018 13:34:29 -0000
Content-Type: multipart/alternative; boundary="0000000000009632c30574063381"

--0000000000009632c30574063381
Content-Type: text/plain; charset="UTF-8"

Hi
I have recipes:
recipe_1.0.0.bb
recipe_1.0.1.bb
...
recipe_3.4.0.bb
If in some meta-layer I want to write some bbappend file to the latest
fresh version I create file
recipe_%.bbappend.

I have file otherRecipe.bb which is not versioned and inherit to
auto_package_version.
In definition of otherRecipe I have

DESCRIPTION = "some description"
SECTION = "nameOfSection"
LICENSE = "CLOSED"

require recipe_1.0.0.bb
(or
include recipe_1.0.0.bb)

How to change the above formula in order include the latest fresh recipe
instead of concrete version?
Replacing with "include recipe_%.bb" doesn't work.

--0000000000009632c30574063381
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div>I have recipes:</div><div><a href=3D"http://recipe_=
1.0.0.bb">recipe_1.0.0.bb</a></div><div>

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><a href=3D"http://recipe_1.0.1.bb">recipe_1.0.1.bb</a></span>

<br></div><div>...</div><div>

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><a href=3D"http://recipe_3.4.0.bb">recipe_3.4.0.bb</a></span>

<br></div><div>If in some meta-layer I want to write some bbappend file to =
the latest fresh version I create file</div><div>recipe_%.bbappend.</div><d=
iv><br></div><div>I have file otherRecipe.bb which is not versioned and inh=
erit to auto_package_version.</div><div>In definition of otherRecipe I have=
</div><div><br></div><div><div>DESCRIPTION =3D &quot;some description&quot;=
</div><div>SECTION =3D &quot;nameOfSection&quot;</div><div>LICENSE =3D &quo=
t;CLOSED&quot;</div></div><div><br></div><div>require <a href=3D"http://rec=
ipe_1.0.0.bb">recipe_1.0.0.bb</a></div><div>(or</div><div>include <a href=
=3D"http://recipe_1.0.0.bb">recipe_1.0.0.bb</a>)</div><div><br></div><div>H=
ow to change the above formula in order include the latest fresh recipe ins=
tead of concrete version?</div><div>Replacing with &quot;include recipe_%.b=
b&quot; doesn&#39;t work.</div><div><br></div><div><br></div></div>

--0000000000009632c30574063381--
