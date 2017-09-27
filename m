Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB056E00B53; Wed, 27 Sep 2017 10:23:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BAA9E00B1B
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:23:48 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id v72so7162877ywa.1
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=uiY5eaQb6qM4YnUHpj7m+TUSmhlXx96PBbjCLVkfsO4=;
	b=yThHN1qA/aG19ErKq9JpBBIjTl6/F92izGX9ZZ5SWhXPt6wuJ4n7/6BDoimWdIly4t
	/SS1HjPNdN4tFMgBSdOn4JhqbG9GHa6nU/wYtga0Fbh4CMy325nMD1+2YkrbtMjnjNIy
	c/GTnJbJd5CilIa+n2miX9Y+sDUC2yu+LYRU9I7c+SrIdkhDsFz5WSkm1m32DLgHDHn1
	eRh3GcEbyuG8S+DOnWkr29czY4hS6qcsXfa5YHR+Y6Pm7UIz3D6zfAUH/Ax7R4m9z3Xv
	KRzbkUnsaaezzY2MVbcq66SrnfkQIyoW0cbdw9qI4O71DgFkvlbjkcYtWqBwL5FvcyyN
	kmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=uiY5eaQb6qM4YnUHpj7m+TUSmhlXx96PBbjCLVkfsO4=;
	b=sHqfQNYTH59PIHYGjDlDOYHVDjmA+xSIBOE9S/rdcD4WU9QaT1yxrepLAsajtgEW1L
	iWLQCkKQbO9kpa8qWk3t6vcX6O8VnIL0ABGsyPNBq1hYwUhN/Ge32DqGTw+D6i6Uwjj4
	JXba8x3wmlHhMSFqFbbCM3P/VJ9jNxYOHIcuLUekmvz0SP2Z0JU6Sk1cWKrpRVFOI1+n
	lZTnIXN2wlZ1K/JQoyQitvX9mTQe5bmFPHtki5w0dawJUwc3Uf8+KC+1+ROnqyj+de6n
	xbbxxadlehPr2wbrg3vi8HmhPTvPabeXhXSZpiVruoqn9CY8oFOWZAD8dG1iibbcgpnT
	G1SA==
X-Gm-Message-State: AHPjjUix8mdgGnOGUK0holFwLK4MtAYtjuvgZuNUpxVpv8Krqjukq8Nf
	rCWDR4yPnjPUoxzmKHNsXvaEpk++
X-Received: by 10.13.219.138 with SMTP id d132mr1482104ywe.204.1506533025973; 
	Wed, 27 Sep 2017 10:23:45 -0700 (PDT)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com.
	[209.85.218.44]) by smtp.gmail.com with ESMTPSA id
	g84sm4784449ywg.100.2017.09.27.10.23.44
	for <yocto@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 10:23:44 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f44.google.com with SMTP id z73so17793659oia.2
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 10:23:44 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB1FsIHW36Q8mXuNDQ9y6Kx3yJJhSVv9yWWxISegCfDpTMvIz+GlbFx7NzFEQG0DqLStwvg5B2Hxt5U+hAj9KQ=
X-Received: by 10.157.22.245 with SMTP id s50mr1405125ots.364.1506533023940;
	Wed, 27 Sep 2017 10:23:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.66.149 with HTTP; Wed, 27 Sep 2017 10:23:43 -0700 (PDT)
In-Reply-To: <CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
Date: Wed, 27 Sep 2017 14:23:43 -0300
X-Gmail-Original-Message-ID: <CAP9ODKqsz6mYt6K0q2RqZeTr3X8zq+7B+7vsj8c6HkUbqgTp3w@mail.gmail.com>
Message-ID: <CAP9ODKqsz6mYt6K0q2RqZeTr3X8zq+7B+7vsj8c6HkUbqgTp3w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@lists.yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
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
X-List-Received-Date: Wed, 27 Sep 2017 17:23:50 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Andrei,

On Wed, Sep 27, 2017 at 2:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>>
>> * this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
>> * this makes qtbase and everything which depends on some qt* recipe to
>>   be effectivelly MACHINE_ARCH
>>
>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> ---
>>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
>>  1 file changed, 3 deletions(-)
>>  delete mode 100644
>> dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> deleted file mode 100644
>> index ae3f1d3..0000000
>> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
>> +++ /dev/null
>> @@ -1,3 +0,0 @@
>> -# Copyright (C) 2017 O.S. Systems Software LTDA.
>> -
>> -PACKAGECONFIG_GL_rpi   = "gles2 eglfs"
>
>
> What would be the solution though?

It would use something similar we use for meta-freescale where we
change the package architecture depending on the SoC.

Martin, do you have any idea how other alternative we have?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

