Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F9DCE006AF; Wed, 12 Sep 2018 08:09:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3BACE00519
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 08:09:35 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id 13-v6so4435579ois.1
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 08:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Mq+l+el6zDzmFfIbTrmMMIcFW2wUK6HqJ290JFOQ6M4=;
	b=C7eFJdggOiBnG/w/r8/EaBXnYLSovNGZRZoSiEuzdFSukrrvmt8XpcET5JfvWKB1q3
	kOT2D+CuopBekQOOuZ+VMbbHEuKDOeWQu8e8m0S2dhqf/q/vKnH7zCyBvf/ATH+etYJb
	Kv4cBcWALUdWY2Pa/dlvq/uxcgZFiF72UEAtSdjXy1GPHZUCgMbZL1CZHyEtQ5kQ/H74
	MY/LCiYxXF84ljNaaOy7tuuWNeHz89lRxYnxJr9RAIVSg3o0/O71/m2TpmYMZ8XaClpT
	lLZOZGuIZ2+MlOsL9247VvcmnzsDWwrCPMtoKVJ27L/ZkofjFLVysrDuNI+D/rROdBCG
	jT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Mq+l+el6zDzmFfIbTrmMMIcFW2wUK6HqJ290JFOQ6M4=;
	b=O31LyAxAXhnNSuNPu82qt7LItDH8nuvge14vlGsS5SqTbQCzaIJizDmLuIitSSbEIh
	dAUeozXgZKyP2OQDMe4Xes4YA9LCU5qSNjwPC+shW9M3E9364xDwckKgus+JQmLx0ey/
	51esfK5bN1llc1vd5BBNQ28LPIw3z4nLp3/JgGq3UirpZ/7lXd8wkKitGTP3/j9vZb0/
	wbpmpvmgbcjrYTgsa8KER42gTXz4XP4UsRLF9eoqMXbeiUMp++oNLpwxTElB+NURfxoT
	HctsLMqHxyRCEyiRk8i6vWAsiivijufL/yDFWLIM4dj24axIG7AAQd+5YXUgh8G3OyKT
	3nLw==
X-Gm-Message-State: APzg51DcmWvXIcWFBhi5lcPAkY3HjlbLsuO4epfmYDwHVFodKp+i20wd
	m/j/TxjXjZkBjsYGdI9uW4c6hfEh9DDdg5GVPcg=
X-Google-Smtp-Source: ANB0Vdb6TeU8IthMAio3qZ8SCQPMNa1gqovgNXgBUsGj5VE51mmGB2JJAG/IFb1o8cg3tiRXqfV16qZpeGGzhn/Y/6U=
X-Received: by 2002:aca:ba83:: with SMTP id
	k125-v6mr2353412oif.226.1536764974956; 
	Wed, 12 Sep 2018 08:09:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:b48b:0:0:0:0:0 with HTTP; Wed, 12 Sep 2018 08:09:34
	-0700 (PDT)
In-Reply-To: <CAFZh4h9v4DimM=XMsCVR1z3P+n1MvX1zxT93hH+pYV8o7a077A@mail.gmail.com>
References: <CAFZh4h9v4DimM=XMsCVR1z3P+n1MvX1zxT93hH+pYV8o7a077A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Sep 2018 17:09:34 +0200
Message-ID: <CANNYZj-Tu72fapYpUOcn-ME3qOL_8nhyvqDnjX22ubvOxsRX=A@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
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
X-List-Received-Date: Wed, 12 Sep 2018 15:09:37 -0000
Content-Type: text/plain; charset="UTF-8"

These two are orthogonal. "amalgamation" is building sqlite from a
single source file for performance and simplicity reasons, which is
what yocto does as well, despite there being no mention of it in the
recipe. Enabling or disabling specific sqlite features can be done
regardless of whether amalgamation or original source code file bunch
is in use.

Alex

2018-09-12 16:54 GMT+02:00 Brian Hutchinson <b.hutchman@gmail.com>:
> I need to enable SQLITE_ENABLE_UPDATE_DELETE_LIMIT and while researching how
> to do that I read the "amalgamation" needs to be rebuilt.  Sqlite site gives
> instructions on how to do that but I was wondering if this is really
> necessary in a yocto environment.  I did some searches in recipies and the
> work directory where sqlite3 was built and do not get any hits at all on
> "amalgamation".
>
> Any words of wisdom?  I never heard of sqlite amalgamation or had to deal
> with it before so this is a new one on me.
>
> Regards,
>
> Brian
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

