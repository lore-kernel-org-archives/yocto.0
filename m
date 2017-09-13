Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A188E00CC4; Wed, 13 Sep 2017 13:06:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9661DE00CAF
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 13:06:24 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id e199so1822570pfh.3
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 13:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vading.se; s=google;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=jDk1Aaa/7+h2moTHIGqD6vtG7ERp3HxHa2eDtw66v3k=;
	b=Kq434ofLi0c3KpdvmOIXab7KeevzlLJFgklAqalWCFgID95NfhTOs+nz1aZIHRk8y8
	7MCai5ELwlznTtBZvoLxT794i3gll/Rp5DKaE07SX7DIN7r4LlNDO4mkHPm0UXcaq45C
	6XVEUcV+eDbtiGkYtaxSLnUbdV0s5FR9iMKuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=jDk1Aaa/7+h2moTHIGqD6vtG7ERp3HxHa2eDtw66v3k=;
	b=TLYAkeZQYldCZ0JODlF7N/JnlW8pQtQcE4Sks6RZngGAmMrtM2E/+Hmkc1WSCmsCFO
	QNd3YBk2vlLoKXQ/7PrXqXH+CJrvDK5w/sx90deorW+FmKJm+AaBbdLLZ52/jyUEM0IX
	FuhqdhJV2CKzDYikmPF9CGR9Yi7dXfPXXl5fLDR6I+G5ZEVHeqAJ46/FxpEazTelUunZ
	4Kjr3Oq+jdbWD/OEBVovYGELxAvY9tgmUDBEa8GBTXkIsP9/cJssTeQwdnczuoMVQyyq
	A/SkcYPqhT1xpNFVRIyxkQtkk9nu66GOelfj+oE6BEbrqOngCsYqDXQ/TOTDZktk0tLr
	VUEw==
X-Gm-Message-State: AHPjjUjPW7+awmUUNmuJlN6MQUELxFBjS9U5bAMj3Y2ewYI6bpoZvNIx
	EcsXyqCW1HeC9bahn2ElnUNktfKWgZX0lJTPNznhyxpC
X-Google-Smtp-Source: ADKCNb5s8Y4aHjykG2A7TeAPeLWPXXWH+TwVUIgepB5FsdbNS4sftFn/0VoPHXoJbLjcIu/Xn3WD0MlDnEb7ULWLQuw=
X-Received: by 10.99.125.81 with SMTP id m17mr18724455pgn.343.1505333183014;
	Wed, 13 Sep 2017 13:06:23 -0700 (PDT)
MIME-Version: 1.0
Sender: einar@vading.se
Received: by 10.100.170.14 with HTTP; Wed, 13 Sep 2017 13:06:22 -0700 (PDT)
X-Originating-IP: [92.39.43.33]
In-Reply-To: <CAB6-VtJZkohv2d8-ePCLrgZHPDuUEn5f2CEgmEPy48Ts30EeqQ@mail.gmail.com>
References: <CAB6-VtJZkohv2d8-ePCLrgZHPDuUEn5f2CEgmEPy48Ts30EeqQ@mail.gmail.com>
From: Einar Vading <yocto-ml@vading.se>
Date: Wed, 13 Sep 2017 22:06:22 +0200
X-Google-Sender-Auth: T46wLidV5zK3aMur8GJx4a2H_2U
Message-ID: <CAB6-VtJj_Z-GLwbi-OAAs3LZXrFpTVXEbGr_9AYh-H8LS6zthg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Best practices when for script recipes.
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
X-List-Received-Date: Wed, 13 Sep 2017 20:06:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I was just wondering if there is some best practice advice on how to
handle adding a single script from a recipe.

If I have one or a few shell scripts with their own recipe. Do I make
a git and use the git from the recipe or do I just add the scripts to
a files directory and install from there?

Are there any pros and cons to either?

Best regards,
Einar

