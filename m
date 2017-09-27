Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC8A5E00CCA; Wed, 27 Sep 2017 13:33:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31DB1E00CA2
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 13:33:41 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id s18so14993121qta.3
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 13:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b+4Ej4DcczGZM0LScl93rUgn5uJ6v/1gsTAK38TfXk8=;
	b=LBFswoo8cEw8hQN9ihrqVpvLc9vUlrK/qwKICi4nBKNahDnrButQJ4OzfqcLSQnE5z
	kqZl1QVp/lfb9Y9QOXEpmuhB/VFsj+6WFF3ewbtUS8MZEjRqA64VvaAs4fZ1oumfilSy
	HMSWEyWbYZAW/WtwDQlTyQ4uVHbvqnOcny9p0GdFxzZuu+83T+4e+TGUuOQt9PYv/C0f
	RXoH1MXEHeGVfy/t50uif2/iQcyIAJ2k0yjvalxtGM6sKMhCrldMlJNYUHGulnMPi4rg
	TxtRF1173okhGYZUIS0FAhjU22svPOJcXtyLYv9nMzhtTO7uPOmAXzzq+B/3fZoF/KOQ
	50jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b+4Ej4DcczGZM0LScl93rUgn5uJ6v/1gsTAK38TfXk8=;
	b=nYWiEfLHOvTRFoiZr6AGRiGYniv8ZPIgLb7gtEbocOTOnIKwexloaD8bJvCQ51HXuo
	tW9XbyRiw8lj2uaKU9i6WqrBdChnJod+hN1TssVcwazHh9rdke9jNGgQ5bnKnW5+m0wc
	C/8kdosgga/NqbDQ7yp33Bk/SI8aMijmaYVD0Koh7HoGtVE0C0aTF3TzNU+ZlrHSlROP
	Iu56ep4Y+IXNH3oi3DA2isuQQNx/mrapW3SfAclzqlnJshwWUbmKqLO2hh4EguQH7QpL
	+HMr/ILCLRYpVYnpQvgd8sZIqHZ0AkoVtDK/xZJINGxnXGOs+SmbCzBFN62WtB9Covoc
	qZVw==
X-Gm-Message-State: AHPjjUi1pYY4/MKRdSRNIPducZcZBLTgcNFZMdpC0E7eirz57OtvJUSv
	yOA7K3Li3V52ciV5f4HWTVk8gbQiy880/QjK74hdUqb0
X-Google-Smtp-Source: AOwi7QAUEDl9xW8q359Tb5WLSNbuQ7aATmwZPmQmrlxzs/umqdoLGTY2RYZYcyNv2xBdVVgKnbzb9QQQYcwB5+TaGwc=
X-Received: by 10.200.26.249 with SMTP id h54mr4032358qtk.41.1506544421085;
	Wed, 27 Sep 2017 13:33:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.69 with HTTP; Wed, 27 Sep 2017 13:33:40 -0700 (PDT)
In-Reply-To: <CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
	<CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
	<BL2PR02MB2163605452880372FE03671BB9780@BL2PR02MB2163.namprd02.prod.outlook.com>
	<CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 27 Sep 2017 16:33:40 -0400
Message-ID: <CAHUNapRptBF7ZEgcy3vZ4kzgp_OiN6QOToB2zz-P-YMqZs7pRw@mail.gmail.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 20:33:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 3:22 PM, Otavio Salvador
<otavio.salvador@ossystems.com.br> wrote:
>> This is very useful, can this concept be upstreamed to OE-Core?
>
> I think so; if people agree with this concept I can work in upstreaming it.
>
> There is also the machine-overrides-extender.bbclass[1] which allows
> for overrides to be added/removed based on other overrides.
>
> 1. https://github.com/Freescale/meta-freescale/blob/master/classes/machine-overrides-extender.bbclass

I've been trying (begging) since the start of August to get the above
one added to OE-core
https://bugzilla.yoctoproject.org/show_bug.cgi?id=11881

