Return-Path: <henriklindblomster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38C06E00AC8; Fri, 21 Sep 2018 22:27:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (henriklindblomster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8FD8E00AAA
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 22:27:26 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id m84-v6so13809625lje.10
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 22:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version;
	bh=7LLqcA6sSRjrmvg5Zo9zkVpRnpXURABjCaQzTSGoi5Y=;
	b=eQObMYA2OlxNcZD7gn19SuIeALJHkARnUp3vc77CvzhTit7ZvIkZ+tHYuNE2DTiBOa
	CDU5qmB5kScPTV3sew40ZHvVjYlY60VMyynYghnXviVuReVJ8uCe9iqnBFcNYfGQclNH
	467rMLlT4UOOe0rEuJYDiyCDCUhug+xSDjFBDgo9Pm1XjvN3xBWf/pFCHJjQu6mmNSpI
	N6N95fJMq4RwezSq2aY+n5NH+DQpYJTAZYkH6/s73Y7I4WwKeL+nmM+6pNhQzQ7H7RJr
	XRY8CF/3+L7AgDj+sQpk2iYMdHTYWK89WxTmUKAbsg/suvG+ZLQBRsz6WJ4xTOEFMH9O
	w72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
	:message-id:user-agent:mime-version;
	bh=7LLqcA6sSRjrmvg5Zo9zkVpRnpXURABjCaQzTSGoi5Y=;
	b=Gs5JggLIARsW6kWGy4oacRE2a+N96QAtwjaVdcbxhI3qZ4GrshMay/AgUkKP7aWnpx
	QY8ID4Jc6muD2Jd8o18nE/8Ze9VlI/PO+u9dYT0EVrzxjE4f02ykZtQYwfYE6MLDyndc
	2kxi3qbsuzwqRHtguJVhstn45Ug7/ao4BgQU2V3qnsaGqUtQ9pjOWJilatomUGoOq9ms
	CYp5mqAX/ZoBRTXzrI43RoBdfIZ+cqkAOBKxTTVA0ne61r9SWELY8WnLLZnHAuUDDkhb
	mOFDzLvSqc3Yw9pzT/RhroFwlt/PSIYVeGPzAHUMno6C4TyGMaZFtBmHVRtjcmgKn1k5
	x+nQ==
X-Gm-Message-State: ABuFfoh5PmwoDPaMSiC/7YyulN98hvQ7akPI9az3qPrkNf8LkZer2IIP
	v+suRCdhDFLw0gv2NiWNfIZRv6SKzZQ=
X-Google-Smtp-Source: ACcGV626rbdZKkeZlGomRD16Nvz7CQt2HuhJtAKSnTNqbopPNQPKO/fBUv3OEkWxPgKbODwaho9ysg==
X-Received: by 2002:a2e:8905:: with SMTP id d5-v6mr4850160lji.97.1537594045361;
	Fri, 21 Sep 2018 22:27:25 -0700 (PDT)
Received: from gauss (89-27-124-25.bb.dnainternet.fi. [89.27.124.25])
	by smtp.gmail.com with ESMTPSA id
	m12-v6sm5304543ljh.24.2018.09.21.22.27.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Sep 2018 22:27:24 -0700 (PDT)
From: Henrik Lindblom <henriklindblomster@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <CAFZh4h9v4DimM=XMsCVR1z3P+n1MvX1zxT93hH+pYV8o7a077A@mail.gmail.com>
	<CANNYZj-Tu72fapYpUOcn-ME3qOL_8nhyvqDnjX22ubvOxsRX=A@mail.gmail.com>
Date: Sat, 22 Sep 2018 08:27:22 +0300
In-Reply-To: <CANNYZj-Tu72fapYpUOcn-ME3qOL_8nhyvqDnjX22ubvOxsRX=A@mail.gmail.com>
	(Alexander Kanavin's message of "Wed, 12 Sep 2018 17:09:34 +0200")
Message-ID: <87in2yje4l.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Is there a "yocto way" to rebuild sqlite amalgamation?
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
X-List-Received-Date: Sat, 22 Sep 2018 05:27:28 -0000
Content-Type: text/plain

Alexander Kanavin <alex.kanavin@gmail.com> writes:

> These two are orthogonal. "amalgamation" is building sqlite from a
> single source file for performance and simplicity reasons, which is
> what yocto does as well, despite there being no mention of it in the
> recipe. Enabling or disabling specific sqlite features can be done
> regardless of whether amalgamation or original source code file bunch
> is in use.
>
> Alex
>

This is true for most features, but not necessarily for
SQLITE_ENABLE_UPDATE_DELETE_LIMIT. Since said feature affects the
supported SQL syntax (e.g. "DELETE FROM foo LIMIT 1" results in a parse
error without the extension) the parser needs to be configured &
generated to support this. The amalgamated version contains a
preconfigured parser, which may or may not have been configured with
SQLITE_ENABLE_UPDATE_DELETE_LIMIT. See
https://www.sqlite.org/howtocompile.html#building_the_amalgamation for
details. So the presence of the feature in the amalgamated sqlite3.c
really depends how the file was generated in the first place.

Cheers,
Henrik

> 2018-09-12 16:54 GMT+02:00 Brian Hutchinson <b.hutchman@gmail.com>:
>> I need to enable SQLITE_ENABLE_UPDATE_DELETE_LIMIT and while
>> researching how
>> to do that I read the "amalgamation" needs to be rebuilt.  Sqlite
>> site gives
>> instructions on how to do that but I was wondering if this is really
>> necessary in a yocto environment.  I did some searches in recipies
>> and the
>> work directory where sqlite3 was built and do not get any hits at
>> all on
>> "amalgamation".
>>
>> Any words of wisdom?  I never heard of sqlite amalgamation or had to
>> deal
>> with it before so this is a new one on me.
>>
>> Regards,
>>
>> Brian
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

