Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E06CDE00D44; Mon,  3 Jun 2019 09:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 660D2E00D36
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 09:54:12 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id n4so9802685wrs.3
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 09:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=k1/x/5oQb20HVBS2BYOW6jOaCl6y2xKC96ur9Cbq//M=;
	b=KmccukXEg6oLA2hEQ1f8rFYNa5B3+cj/MEMMKTUDRJgaM3wVHFZ1aTIPYGlkXZdAJr
	EBhswSHs6+enG6Y85kItefgj7CMb0/a74rY4dIqou3gn2ObTvcYZHPcbOYEE+h+yPuGb
	TYE89rdPLm1em6dUo61+KXreMRP3tMasYjSBvMW2QPC4GIN80OyRIgtOh0Sg7ktBtiRs
	J5VY1Afja3TybtXbgPpqNQ0owIBvHX9AZj5UYdyBtGmeQWxsmJRYlJSbd19lTEys681H
	0djgOona4dES7cQxrg/ziQQd9HXUQdVw4/AWng7HPSgBpldMLwdoW1UBSpEotVzVg6oV
	heiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=k1/x/5oQb20HVBS2BYOW6jOaCl6y2xKC96ur9Cbq//M=;
	b=WQ0/no3CVI+hWTbhB9NS562Ho5/4lzpMQNZ6TC1Uj/sHdv4z9i72wOEWZOSr7i2EPS
	kpaaJgxb/6QJdAWGxie8a7KjOGWLDxkBTB8m7Whb/PI1V5hKR5Euc/sVtmgFGDMOLbEY
	AMvtYnZWJ6oKbQWCtxJ7U5hmZ7N9Jck3p49VF9wDOSk40Bkj3ChZPkVHIsGqnJFdUofu
	qvfx+y3pod/rxSVjgE1+6iHV6Tg/o54VeitPUhGorfcJ2xOQKBHwl4zlN5H/ExHjU/Lm
	H5qOPvkUtMy9jXPRZZ8AOsNMTxr2vnqDHhpUnAY/SLU5fwoa1qjWNEcCpW43doYC+eFB
	498A==
X-Gm-Message-State: APjAAAXDPyzy8EbDdbK/xDY6otvHJoMBGiHlxNk69a1IzAnl/U/sY9iw
	W+ptvwKNDIJhYg47QBzWJTpoyLKnVAk=
X-Google-Smtp-Source: APXvYqwIsQLt33D4NH13Nxp0YlXt6a+DVsPt0NS4WjFwtta83LdeFzeGrB3uKrQrCYs9JN0+pUBdXQ==
X-Received: by 2002:adf:bac5:: with SMTP id w5mr5976881wrg.124.1559580850977; 
	Mon, 03 Jun 2019 09:54:10 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	u205sm18890068wmu.47.2019.06.03.09.54.09 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 03 Jun 2019 09:54:10 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Mon, 3 Jun 2019 18:54:06 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: yocto@yoctoproject.org
Message-ID: <20190603165406.GA24026@archworkstation>
Mail-Followup-To: yocto@yoctoproject.org
References: <20190601144016.GA19383@archworkstation>
	<CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
	<20190601182556.GB19383@archworkstation>
	<CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
	<20190603140546.GA28701@archworkstation>
	<CAJTo0Lab3g3xnpzSCo-Uu2_q7ujGzWEhrB-0WyBAs=zG=v7GaA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lab3g3xnpzSCo-Uu2_q7ujGzWEhrB-0WyBAs=zG=v7GaA@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Mon, 03 Jun 2019 16:54:12 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Jun 03, 2019 at 04:30:33PM +0100, Burton, Ross wrote:
>The variable is 
>DISTRO_FEATURES_BACKFILL_CONSIDERED, in case 
>that wasn't a typo when writing the mail.

It wasn't a typo, and that was exactly the 
problem.  Well spotted, everything in the world 
makes sense again :-)

		- Morné

