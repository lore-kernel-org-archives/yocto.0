Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DE01E00D8D; Thu,  3 Oct 2019 02:50:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C50D2E00D8B
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 02:50:26 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id a6so1727485wma.5
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2019 02:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=YrhT2bWxla3oSJTAKhMFKCsJzNT5IwGfddTjS0QuiN0=;
	b=UXwABcfp0tzL4RjcQTRi07M1f4Rg2VdHFbwYAIj/sY1HXInQ4dv2c0PUcU4q2PmWJL
	KRVHRR39Yma4bEP1+vDYAEB1JO3vVZwX8ssd28axnQUsB4XjteBbHDUxeOqp3KSHpa0B
	Vr9xqQXVvECkrR96TRAu1wlWoWmRct/oumTNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=YrhT2bWxla3oSJTAKhMFKCsJzNT5IwGfddTjS0QuiN0=;
	b=ZuM2bgoUpxjVpCTcr7M/croHSe691KMNpDCt9ZLo/EeV+PzOMIz88TvQ2tpeswru7z
	B/IUDDFmcC7H01TdugRXeR/v56y//940gUCBjnkFmvLjqXsUoSf/CA68+tuArJr9GG/0
	fHPD1q2qMezduZnVPtyqZ2UoTsnlE46yrrN0JROcbT39XVj6gLtXM4n6kAyYG+s4aYAb
	w5Pl1YyocAFVyTVcjPEe9QvSkyBUpBvmd9R+ds9ehKu8RHaVKgqf+ufHZREcLN/KpXKq
	8QUQPZjplTm23e1JUKQHdQdB3JCWA6iSBTQFmrO44ZoxSUvK2APfmxpBH0ZR1klTBHn3
	hDOQ==
X-Gm-Message-State: APjAAAW74ILq0JuN/LXmzAVPeLmZKH6kVrc/hne7SkSf4JpyntdLIWHm
	bE6mxM3B6R8GPS53UNuwz+Dt9VzTgMc=
X-Google-Smtp-Source: APXvYqyJBmffbNqprdaJvpVQrpoa2dMPgzvO7FFJtMb3u25wXBml19gEBWClMqtDvd9M7O9DXLh3CA==
X-Received: by 2002:a1c:a697:: with SMTP id p145mr5735770wme.24.1570096225697; 
	Thu, 03 Oct 2019 02:50:25 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	q15sm4349560wrg.65.2019.10.03.02.50.24
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 03 Oct 2019 02:50:25 -0700 (PDT)
Message-ID: <2a54aab003fa74ceadedc5162706ed530cc464d2.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?UTF-8?Q?=C5=81ukasz?= Tasz <lukasz@tasz.eu>, yocto@yoctoproject.org
Date: Thu, 03 Oct 2019 10:50:23 +0100
In-Reply-To: <CAGRr-NiVrZsa-kXnO-bVDoU+VQcotH2JqnJXXr-kQv1zTRdvKw@mail.gmail.com>
References: <CAGRr-NiVrZsa-kXnO-bVDoU+VQcotH2JqnJXXr-kQv1zTRdvKw@mail.gmail.com>
User-Agent: Evolution 3.34.0-1 
MIME-Version: 1.0
Subject: Re: global class that others will inherit
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
X-List-Received-Date: Thu, 03 Oct 2019 09:50:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2019-10-03 at 11:36 +0200, Łukasz Tasz wrote:
> Hi, 
> this is my first post here, so big hello!
> 
> I have a problem which you might help me to solve. 
> I have quite complex configuration, and I would like to inject
> something into build system in a right way. 
> 
> I already did some POC work, and adjusted cmake.class but this is
> rather dirty hack, but also do not aplly to all of components, only
> to those who inherits from cmake.
> I would like to adjust local.conf, put there INHERITS+="mytuning" and
> I would expect that everybody will inherit. I'm prepending/appending 
> This is happening, but my class in shell like, and python recepies
> throw exception because of  syntax error... 
> 
> 
> question, how to provide global class, that will inject python/shell
> depending on context? mayby my way is simply wrong?

It would help to understand where you're trying to add the
shell/python.

I'm guessing you're adding it to functions using append/prepend?

Perhaps try it at the task level with the prefuncs and postfuncs flags
to add extra functions?

Cheers,

Richard


