Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2184E00D17; Sat,  9 Mar 2019 02:01:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16DD8E00D13
	for <yocto@yoctoproject.org>; Sat,  9 Mar 2019 02:01:17 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id w2so23859199wrt.11
	for <yocto@yoctoproject.org>; Sat, 09 Mar 2019 02:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=A1gbmh4nOQDNeeUc/TAbXTmWEU70QYC2jo4igVSWW4g=;
	b=Hu+GEuexJGHWdV5YaP0Et7s39h0iOi5Ggo/G46SS8Kdbc2yVVY6MAEEHqYowNkDcwk
	uTLCybR0kqMFO4SFpD2x5pVqPeYTJKEpNsqOBaXKrJWtWdqPBF+YpLvelp0UFNdaGU4/
	0nlqfX+BtOEEJ7DsaalQgtkmlsBqNwg7c/sPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=A1gbmh4nOQDNeeUc/TAbXTmWEU70QYC2jo4igVSWW4g=;
	b=FEweeeQog6j1V1bNNRomvNKqCclfFXT8AbCZ9Vr4qhdF3CiICBUKuSqT3aWbEaRZOK
	te00gccVYaABpUe2TuPXYHdRRhY0H1JEbmGbqe4Mgr0dUep5L4Y8epzfKvgDZ4qBda6I
	JORM1XtWYAmLAtBZ1jx7tAq2gc+pe+yQL2oys6LuO+hSwUeKuu2EsXRk67aKgyQq5pO8
	Fr/3SzYUBZz1d5/xU1b9FHgPEbbAND95Nne4EiD3tTWb+rZesYll2S/68M7Q7i40ck2I
	SPVTralSBxVhQzWZfJ2JHRj0V5l4IAFXxj/VO4yBcKyhE7IiSOlNF/dqHnWAPkEkWhFW
	NuYQ==
X-Gm-Message-State: APjAAAWpruz0/QEt2ntsFASXuiQsNuYUrUdad/oNKLY0z6DFYXLBp5+x
	6VcltzEAYu891BzNsBegApYf1IN0LKGFhQ==
X-Google-Smtp-Source: APXvYqxQPuQ6dRuTFMdg9rhxLVRBhOrUjGdiCWX/wo6NpLgrkvuusjS6l7nO/HMqyPzn4emHgXgnXw==
X-Received: by 2002:a5d:4608:: with SMTP id t8mr14674518wrq.186.1552125677145; 
	Sat, 09 Mar 2019 02:01:17 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	132sm27336423wmd.27.2019.03.09.02.01.15
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 09 Mar 2019 02:01:16 -0800 (PST)
Message-ID: <555b1f4c55fdcf63946b2ebc14b73611ffb300d1.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>, yocto@yoctoproject.org
Date: Sat, 09 Mar 2019 10:01:15 +0000
In-Reply-To: <5be9f511c95ccc7037d99cf809c21894@mail.kylheku.com>
References: <5be9f511c95ccc7037d99cf809c21894@mail.kylheku.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Subject: Re: New: "extrapatches" bbclass.
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
X-List-Received-Date: Sat, 09 Mar 2019 10:01:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-03-07 at 19:26 -0800, Kaz Kylheku (poky) wrote:
> #
> # extrapatches bbclass
> #
> # This bbclass allows for a recipe to apply additional patches.
> #
> # "Additional patches" refers to patches that are not individually
> # fetched by the SRC_URI mechanism, but are already present
> # inside the source trees that are fetched and unpacked.
> # Referring directly to recipe-side patches
> # without fetching them via SRC_URI is also possible.
> #
> # How to use this class:
> #
> #   1. Add   inherit extrapatches   to your recipe.
> #   2. Optionally set the EXTRAPATCHES_WORKDIR,
> #   3. List the patches in EXTRAPATCHES in order of application.
> #      - Relative paths are interpreted relative to 
> EXTRAPATCHES_WORKDIR.
> #      - Absolute paths are allowed

Can't you already do this if you put a file:// url in SRC_URI for the
patch as its unpacked in the workdir?

Cheers,

Richard


