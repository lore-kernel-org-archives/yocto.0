Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11D6DE0086E; Fri, 13 May 2016 08:34:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9CCFE006D8
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 08:34:43 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id y69so43307656pfb.1
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 08:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=4i3BVF0F8azLqf8cVNPoOigBlLNoH51kswv0YMZPvqs=;
	b=LVDsjpxv+aiJKAo8z9x3OkyFlbVNzgSqedGts+1uo0fOX1bOYHpPehwit+9YUiTPsX
	Cnyv22ZONjV5NF7BDV7+z7U/AMIg3Xi3mdZkbMbH66dxQTzOn+r4jvZygfTAiA2W9mGh
	b9rUeJrIULONyWgtOOlxDxsSz1US5LnjTq4OApB1qICp4OLqcd986IiIcE+rpPHGuzfY
	uC2ckCAWGzM/ePd8EGy6O+Ez77KZJ6S86sSYfVkLH3YHI0nb4e66v6bhxZeg/HbXNMvc
	W7AORognhHzSrsLQg6h0R92DMjeq6UGC5B4Qw+UGcTwr//zC2/yh7ZB3/pUdinMVI1hd
	rLRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=4i3BVF0F8azLqf8cVNPoOigBlLNoH51kswv0YMZPvqs=;
	b=W9GepDUMvyjALqZRocSDwMrOO7YCmcN07lGqMcHXlJqHs+qpU5mkGTb9eM028wl44r
	Gd4KW1vrnPkm68ltoGg0cSnrLhbj5k0wl2DQpMN3nyps5FZIdCWzUXdUV0jdxH1Kw9YI
	SqPU8CKdq1MW6qOmpAcNktnleNAAxgTF8PRD4jrtBYHF+7jJvOyQr7lNGRdjcHRbmpfa
	a8N9rUqBd7GNydpdsKEkF+WUwCTPc1VW8FYzUO1Ayf1lYfbdlce8i1Jxd8l/gmhUAwJM
	0LXKQIU9z6O5PtIXvKfwTlfZP7hIlePwzQyhi/xSeJcs9trc/GWGaOLfLCtG3yrLZa3Z
	wxgQ==
X-Gm-Message-State: AOPr4FUEJWHhMmLK1nbQKqaRUI5MkylutgPLSSRi1rvUpFM2kq4Qnl56pAQwUY6rmMwqqg==
X-Received: by 10.98.97.71 with SMTP id v68mr23839510pfb.127.1463153683277;
	Fri, 13 May 2016 08:34:43 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:c53a:7e08:2482:8461?
	([2601:202:4000:1239:c53a:7e08:2482:8461])
	by smtp.googlemail.com with ESMTPSA id
	l88sm28283555pfb.79.2016.05.13.08.34.41 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 13 May 2016 08:34:42 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <5735F40F.1000402@gmail.com>
Date: Fri, 13 May 2016 08:34:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: errors.yoctoproject
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
X-List-Received-Date: Fri, 13 May 2016 15:34:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Do I need an account enabled to submit to errors.yoctoproject?

- armin

