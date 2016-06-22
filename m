Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5820E009EF; Wed, 22 Jun 2016 06:00:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 868F2E009BF
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 05:59:54 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id c2so30326042vkg.1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 05:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=N9uMnq5Z7Mc68R3gqyGs9n0ycNFKWDEUp4QQpx/Z4MU=;
	b=wha1+x3O0XJGT3LVEN2dTZbpAgVuQvhOjNSc9tbGqOPj/sYesVIrtlxfFGAb1MLvjH
	7s8HTgZHU4NxDQ3cJECCEZt5QvoV/kaXgCOXrK3x19AVSbgJI18zxzMRdtFYNCnfTveI
	z2lYRn262ldiRe8b0gm72GkmE7iBOLoLRbD9krY975uauUwlb6tOJRZu6MYHmSoKEqwj
	e4bpCVPyq5G3Q6o+RsimTEzQkrhGrxh59xdVuOjLD1tiTgMss1MOR0J+T9xmJ3vjBy2N
	ZK90LNF+De4o1SsYihI6WXh+Kp21lpGhgKtlXvcrccO0+v0RIiPXpSe9MgBGcm7oDlyM
	0Q1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=N9uMnq5Z7Mc68R3gqyGs9n0ycNFKWDEUp4QQpx/Z4MU=;
	b=XZckLeqCPzm2VWo6XrTrxizsn0NC8bTQUG/WV+yuSwkmokKe8LfX3yrstofMbDzUAc
	/ukxBI+6TrvSZpSFaTXJ2QoqGA2NPa+u3bHSvnWv7RNWickyNjpUuNBYvue9t1RL9frx
	+EKrsOqNas55zT2sdZKOEM0eK0KIW/4h9wbXE162kzWmT2h1GT5aTA4BdMf1f2SEiTa0
	74waMEcP/dKLMmNN9pCXS7jOZOVD3Bmugf2z+YJw8J6xhcfAc7nA/JMy5yv8pWqT3Ut2
	QNAOEalo+cxi8/WM7oNw8rRFy9+uc5Lt2RUJ34zkcgyIjqrXiS3TNhn6MaAjgofCncil
	YasQ==
X-Gm-Message-State: ALyK8tLv/NxbFHw8Rb02L2FYQQT7Vl4Gy4fugkT3SgkMEO1LG6Dy3maAJagbpxtWejZaj/7+ogGgG5cdTKDk6Q==
X-Received: by 10.176.64.132 with SMTP id i4mr9929099uad.14.1466600394170;
	Wed, 22 Jun 2016 05:59:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 22 Jun 2016 05:59:53 -0700 (PDT)
In-Reply-To: <CAMKF1srWbstzuXTk_pahxdoA=XcAZ9M_0rV2yF-n_RwhNoi-gw@mail.gmail.com>
References: <30C2D590D16A5C46ADFE6521910377986CD4F67D@AZ-US1EXMB03.global.avaya.com>
	<CAMKF1srWbstzuXTk_pahxdoA=XcAZ9M_0rV2yF-n_RwhNoi-gw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 22 Jun 2016 09:59:53 -0300
Message-ID: <CAF3SDA7sfRcdqFDLmVWJZPkCYLSaexJ+6r-VvjtBV-JaFN5oDA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sharing header files between out-of-tree KLMs
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
X-List-Received-Date: Wed, 22 Jun 2016 13:00:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

You may want to add headers to the -dev packages and DEPENDS on it
since you will not need headers at final image,

Regards,

2016-06-21 19:13 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
> may be first one stages the header into build sysroot and otherone
> adds a DEPENDS on the first one and expects it in
> <sysroot>/usr/include/<yourmodule/
>
> On Wed, Jun 8, 2016 at 6:11 AM, Vuille, Martin (Martin)
> <vmartin@avaya.com> wrote:
>> I am building two out-of-tree KLMs with separate yocto recipes.
>>
>>
>>
>> One of the KLMs depends on a data structure defined in the other one. At
>>
>> present the structure definition is simply duplicated in both KLMs=E2=80=
=99 source.
>>
>> I would prefer to define it in a header that one KLM can export and the
>> other
>>
>> can #include.
>>
>>
>>
>> Is there a recommended/canonical way to do this?
>>
>>
>>
>> MV
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Do or do not. There is no try"
  Yoda Master

