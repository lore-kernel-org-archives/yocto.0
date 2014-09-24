Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1CB1E00849; Wed, 24 Sep 2014 07:15:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B47FE00842
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 07:15:12 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id j5so5220806qga.39
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 07:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vD44P+i5tiBB/u2KtA8gnr42E7xOpekbV03flqiCPJs=;
	b=M0ibgVIzNtoINrZVsG/cg5WnnRJsEHiIxRmJXOgV/jc4H9Nc8S5S6AVjO4V4Em/Gte
	DY6weo63LxyIgeLNfv8XJz8r8NP9t7cTlrecIbCMG27ScCdfpKuxKwnymqonwVYHsOx5
	BtGi1fW7lRzH2X9Mhdy7gWno/AkeB1zVZoUzl4kwtSBqf/uJMauumn4SxkBnJoK+4DwM
	oYq2888g1I5fqm4nj/1Y8kDaqv2M+C+iCyuOVlOCAx9qBUYlxBq6VLoAKtCoCn69yP8F
	h36fGEFZF/IqAlsVYYLMyAf575EgWItnz3ERZgbFh9LNOVhxaeaI6EnXKa3kDjRyPTkX
	2f2g==
X-Gm-Message-State: ALoCoQnVzXnrZdDUS1KP2ddgMEOyz+UHdtTgo9EXJ5a9bI6wZBxKpWSZr+OVpifjfWZTopMDO2NU
X-Received: by 10.140.27.139 with SMTP id 11mr7690329qgx.59.1411568111739;
	Wed, 24 Sep 2014 07:15:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 24 Sep 2014 07:14:51 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377982FDD732F@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD732F@AZ-US1EXMB03.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Sep 2014 15:14:51 +0100
Message-ID: <CAJTo0LYf=1S4602n9LTUsBZzc6+iHO_oRLbKVJWLoie3d+jtRA@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRC_URI parameter: "subdir" does not work for local files
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
X-List-Received-Date: Wed, 24 Sep 2014 14:15:24 -0000
Content-Type: text/plain; charset=UTF-8

On 24 September 2014 13:50, Vuille, Martin (Martin) <vmartin@avaya.com> wrote:
> We have run into the problem fixed by this patch
>
> http://patchwork.openembedded.org/patch/77027/
>
> Will this fix be included in 1.7/Dizzy?

This is my fault, I reviewed the patch but failed to follow it up, and
then Roxana's internship finished...  Except a rewritten patch to hit
the list shortly and be merged.

Ross

