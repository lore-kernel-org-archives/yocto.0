Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D941EE00726; Wed, 22 Aug 2018 07:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37FF3E00A85
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:41:21 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id h20-v6so3232698itf.2
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=YPIPjfsvictkqZI+kB8DwhBKgwrevMv1Q5uKeSs8ypk=;
	b=TI+FDsIqBravrC2x8/lMyU0+qo7xKSlVLOvbIOj24M+ObukxvfouflFiypI5VMKck6
	vLUDA7MviQc7aLZAe8YCrRFDnPqNuV0xsKhkoeOaFJnC9ON4ZUhuikhlmcLyR2jhLQnn
	hLWQzU3h5pGinqfJrbQxHLOlKERkjJdgld46VAJkmR27FdIA+1ogRMtYugWI61jMHTQ0
	DRNTw7DsAEIsb/8cLTp1jNZJlGRkBvV+BuWYknRrVFGhEeb6OpB7vmZ5/W0xidVyI0rG
	r39jffaNBMqag1YkDAnjaZr/EzPoaQ5ZuvU1g35+V3jsoQASX74KotOJtcMiq3VYIwBp
	V2yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=YPIPjfsvictkqZI+kB8DwhBKgwrevMv1Q5uKeSs8ypk=;
	b=rtDbXAu7aZs0ZBvHodlsYimt1MNIceohqr5Vws/x1Dh+GqqEpqqn1DnZdqeLdh+zwA
	Qos63DwcLYzngdrmOnE5tXYGmWkjH6WaUr4C6y4skjgGxiMdSzNFZ//E6dg4x8/rtvg/
	Tp49Gwqih+u8pVkcAOEGup9/bmcgCQOY6otgjfCoX+taZvzFw71c20+T2a+1cLWyNFM8
	rYIgOqZwJeNqbbWEq8UjFHhgIv5z7OXDJRNiSOOnl5qGdj/xqyAv9CXNbQGTYuALtwXN
	N/x17jTNIkHP0z23fnn1kH9Ixi8LakBHojWhqgwTRY/eaUW50nhfgvVk0aAtHTNl6iCL
	HT6g==
X-Gm-Message-State: AOUpUlE1O4aaazpqFmdBY69z7a2PELibqfknGCScobrqw2Gib9maa+ez
	07cNKNzwdC/5tDlO5h1gIww=
X-Google-Smtp-Source: AA+uWPx8atpk/eTrxmi86scRhkYfIIbH44goPeZ2ZmCOV6yQZkmo/P4eRoZh/EqhN/g1TcjsPwSd7Q==
X-Received: by 2002:a02:10c6:: with SMTP id
	189-v6mr49397430jay.54.1534948880572; 
	Wed, 22 Aug 2018 07:41:20 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	o11-v6sm643078iom.77.2018.08.22.07.41.19
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 22 Aug 2018 07:41:20 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
To: Jack.Fewx@dell.com, alex.kanavin@gmail.com
Date: Wed, 22 Aug 2018 09:41:19 -0500
In-Reply-To: <6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
X-Mailer: Evolution 3.28.3 (3.28.3-1.fc28) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 22 Aug 2018 14:41:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-08-22 at 13:58 +0000, Jack.Fewx@dell.com wrote:
> Dell - Internal Use - Confidential  
> 
> > 2018-08-20 20:45 GMT+02:00  <Jack.Fewx@dell.com>:
> > > We are encountering a build problem after migrating to Poky 2.3
> > > and Pseudo 1.8.1, and need help to resolve this.
> > > It is hampering our development efforts, forcing us to rebuild
> > > images frequently.
> > > 
> > > Background:
> > > Our build applies SELinux file contexts, during build time since
> > > our 
> > > rootfs is read-only In Poky 2.0, using Pseudo 1.6.2 this works 
> > > perfectly 100% of the time
> > Pseudo is not an integral part of poky, and comes via a recipe
> > build like anything else. You can play with that recipe, and
> > establish which commit in pseudo's upstream git repo broke this.
> > Also 2.3 is better than 2.0 but still kind of old. Do try this on
> > the latest yocto release, or even on the master branch.
> > Alex
> 
> I should add that the same problem exists in Poky 2.5, and top of
> Pseudo git repo.  The problem was introduced, best I can tell, was
> when the entire Pseudo database structure was rewritten.  As a result
> of the major overhaul messing with patches is problematic to
> impossible.
> 
> If Pseudo is not a part of Poky proper, yet is a completely integral
> part of the build, is there a better place to field this question?
> 

Out of curiosity, what is the failure mode here? Are there any
indications of a failed build in the output, or do you have to look at
the sqlite database to tell something is wrong?

> Jack
-- 
Joshua Watt <JPEWhacker@gmail.com>

