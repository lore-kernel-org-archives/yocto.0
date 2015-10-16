Return-Path: <csanchezdll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF043E00BC4; Fri, 16 Oct 2015 00:39:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (csanchezdll[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84C0FE00B57
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 00:38:59 -0700 (PDT)
Received: by lbbpp2 with SMTP id pp2so64605223lbb.0
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 00:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type:content-transfer-encoding;
	bh=UyRhpFhiat2Hn+o+HDIg0TjuQXeaTXqnZfvy7I3L4ao=;
	b=Y4VhSJ0ITPflPjjmsujO/87DFfpH/jarxTRASKEA8MireqsghhmhYl/9DP6X4W6I9e
	+D8/wgEvGaOLp3qFBCutzRrxluCi5Hxq2nMgju4FSdkvVOaBO+PQCmw4Q4jW9IH+ybkA
	dwsjuzjZfDRtewMKz14xJCaaX1isJTOFKxMaGIcSu0y75Cot3hCrfn+qhnCV1gi+R+sd
	vHiqbA/P10ev5MMhKIVNyYSZq+7vDvYrOpbCp7ySIaDogeIItUdSRW2+ZRBmxKE3GNJI
	EIHz9vl0z0kAtUyI2gUv1/Wcc/lWAWL2AerPC62kl8thIYlQS7KNzTo2xiWtpfLjixjM
	IZZA==
X-Received: by 10.194.71.83 with SMTP id s19mr15149250wju.150.1444981138386;
	Fri, 16 Oct 2015 00:38:58 -0700 (PDT)
Received: from boole (galileo.kdpof.com. [80.38.102.19])
	by smtp.gmail.com with ESMTPSA id go5sm2156111wib.3.2015.10.16.00.38.57
	(version=TLSv1.1 cipher=RC4-SHA bits=128/128);
	Fri, 16 Oct 2015 00:38:57 -0700 (PDT)
From: csanchezdll@gmail.com (Carlos =?utf-8?Q?S=C3=A1nchez?= de La Lama)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <7tvba8jf0e.fsf@gmail.com>
	<3362826.ZZ4Dx4hM6A@peggleto-mobl.ger.corp.intel.com>
Date: Fri, 16 Oct 2015 09:38:56 +0200
In-Reply-To: <3362826.ZZ4Dx4hM6A@peggleto-mobl.ger.corp.intel.com> (Paul
	Eggleton's message of "Fri, 16 Oct 2015 08:10:02 +0100")
Message-ID: <7t4mhrw9db.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package inclusion
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
X-List-Received-Date: Fri, 16 Oct 2015 07:39:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

>> I have some doubts on how package inclusion in images is determined. For
>> example, when building core-image-base, I would say that both
>>=20
>> kernel-module-uvesafb
>> kernel-module-input
>>=20
>> are recommended (through RRECOMENDS in packagegroup-base).
>
> I don't see a reference to kernel-module-uvesafb in packagegroup-base.

You are right, my bad. I was examining several cases and I used the
wrong one when writing the mail. I should have said

kernel-module-nls-utf8 (which goes into the image)
kernel-module-input (which does not make it to the image)

and both appear in RRECOMENDS_packagegroup-base.

> If you would like to analyse the package dependency tree for an image one=
 way
> that works is to use buildhistory:

I checked the buildhistory (nice report, BTW), and I see

"packagegroup-base" -> "kernel-module-nls-utf8" [style=3Ddotted];

but not a trace of kernel-module-input. I do not understand why -input
gets a differnt handling than -nls-utf8. My guess is it gets excluded
somehow, but I have not found why/where.

Thanks!

Carlos

--=20
'La vie est une longue chute, Marcus. Le plus important est de savoir tombe=
r.'

Jo=C3=ABl Dicker, "La V=C3=A9rit=C3=A9 sur l'affaire Harry Quebert" (2012)

