Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2110DE00D7E; Mon, 19 Aug 2019 00:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.46 listed in list.dnswl.org]
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D77C2E00C46
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 00:19:10 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id c19so616672lfm.10
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 00:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hcTgOqLi8e2roKPQv85LbC29G1ebR3lJY7yxzFjbStA=;
	b=ZrNpPB7CHKAbhEoeEV5JpvdZbC/wH9XRFMOlYis+Ut99GMxYdps5UnF5cT/ztHVLPK
	7byMEecmTxpFyiFnnNlzD70GsGqMt1CRSU68ptlnpfYV9RhL+Oue0lh/1YzAWYhyaDJ4
	Af0TEYBHrji+iNp774vPQ283LRevu3e6JFE+OHtCe/cmbZ+50lGsNwRhrCrBmVuXOAeJ
	Tyfl1GGHHo99HrM7/VdKSpXCB2Cdf0GWyadQ5f5F75DFaUunRb2Qe3sjpWzUX0FCsPzc
	/XqDxVg3OO5Okiacqwnswu5uCzAaKVz68u+c8G13KUTiHUPPzn9kEwGfucT0yjHf9A2T
	GcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hcTgOqLi8e2roKPQv85LbC29G1ebR3lJY7yxzFjbStA=;
	b=NNdwLEGE5TWlXaNUi5J0mEe9hXOI7rEWbQVvQxyqA9brjBCYT7fNeSI4AY8JpXTjpH
	sI8ESjx3IPRqO/fbbsuFN9ElllQOjxPdmr43N00+q1Sn4AZjA9TpfNmeFnnOtxOQDOEu
	V3UtBqdOG/0O8xI98ckEqGaiNuZqFA4gFhOIqCIUrrksg1iFwuRGn0m5mR32OTPa/9BR
	znJTnyhf9HJwkukwJDovQOk2UTXoQI5dQR6ZoimDa8lyXYErcZegEM2AoCDhpr8K1CW9
	r/vQu9LOvfHEDtziOMlFj8n7mGk7jnZ9bhb8jm4jwN5B1UHfqC6d9Dn7JjbxzNTwTHxu
	Hr3g==
X-Gm-Message-State: APjAAAWOjxhUcBP2+zuCKUvrYKHyb7NiMOKxtNXtDJUfr+Xp27Z+nkKd
	+/Hdk1sfHM9uQk3GNWJlWIVDNUqkmd7nRUOfHpmjlsjp
X-Google-Smtp-Source: APXvYqyKngwCA5KPPZf/vB4JcVLO+rLMCP0ra7Y7mtfDBPF9To5tqdsRRezSR4Y67m+g2+tHGkePeTNscFXD8bfEV1Q=
X-Received: by 2002:ac2:5596:: with SMTP id v22mr11113813lfg.132.1566199149716;
	Mon, 19 Aug 2019 00:19:09 -0700 (PDT)
MIME-Version: 1.0
From: Teemu K <maillinglists18@gmail.com>
Date: Mon, 19 Aug 2019 10:18:57 +0300
Message-ID: <CAAmVmrorMXVsnNKU4PK6oW1gUmYV4sb0VnK3ntqYZVA8Q_DNBQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Recipe svn-fetcher and scmdata
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
X-List-Received-Date: Mon, 19 Aug 2019 07:19:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have some recipes that fetch sources directly from svn. I'd like to
keep the .svn to make it easier to commit changes. I checked that
those are by default removed and that there is scmdata - option if
those wanted to be kept.

I set the following src_uri:

SRC_URI = "svn://my.svn.server/svn/sw_components/program/;module=trunk;protocol=http;scmdata=keep"

Yet the .svn - data is removed from the sources under build -
directory. It is in under download directory though so I'm wondering
if I got this right in the first place?

I tried with devtool modify and it seems I ended up having .git -
directory there although sources are in svn. Maybe it's systems
'subtle' way of telling me to switch to git? ;)

But should the scmdata=keep option work like I'm thinking it should
and/or what I'm doing wrong?

-TeemuK

