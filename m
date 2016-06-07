Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC84E00C80; Tue,  7 Jun 2016 16:07:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BDDCE00C49
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 16:07:28 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id i187so10929653qkd.1
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 16:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TKs2DwcUQVNIuaOOYpZ9KEQowwvBLX8l2UwJtvgoZG0=;
	b=qeLWEEm5psKD2uCk2ujHVshfk1dvviRgoRL52Nli+Z3oW9HQRnq2voDcYwwqIX3WBE
	T3n7FXCQ/Zle5go87Mah0P1cqy0IiNzu00+FkXoIdSZlOzG26zsTdyD+L3RIv0oHOXY9
	vbZctPVwVZrlOGFY3ueYonyjJDk3siQyIiF6cMAE6Za/St+g69KiXBBGGuCTMrOKdUT6
	dBgyphvZez+sUUiLdsprQ7xDAl/XstPDldrySX3kKCHbvGjSxTN/PaRJjFcPE9XY57R3
	/vYJ9x5NrTNjh3odtSMC/yWQTkEv5jTlsGvwt67CmIfgFGuGwH6MtKvpC7uHdID6YnaB
	+4Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TKs2DwcUQVNIuaOOYpZ9KEQowwvBLX8l2UwJtvgoZG0=;
	b=d46xd0OjbuSK4V4deAtTIrK/9xihH3nRmCjdmmYh5lb+YhW3HbKPcKff7dqiADQSLK
	tl5u5KZuprDNAYHxuA/SRdOIzuJDoAeVR4KnRR+WgqX9tIDyy0I/kGiIt8HYQ5vzu+UE
	ljPR7qL43Su9Er6WYLPqHbCdUupC3ev7Y9lx+zqHoD4FGYGyRyQCZv7ONQMLPsqBiAby
	zWEARFFAweIt6LvffB6HlP3x+ExTwbOyQsPgNqJMz8NOiVNVMcfK/pEfajpAHzMZVdG6
	JGdYSSQkeUtymrYir5B8MkbVxrFrVVNvvDZXyBa2P4mZUGD6i5r9cmPBpJzFh+OFS8oD
	dbtw==
X-Gm-Message-State: ALyK8tI64aCCpo5MAaC2vX/UhLe6NiLBqicObuOtJJVTtarvOf9WFkHdnRK383GIiR+lA4i/e/ctDcuG2pAF+Q==
X-Received: by 10.55.207.74 with SMTP id e71mr2011545qkj.64.1465340847751;
	Tue, 07 Jun 2016 16:07:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.35 with HTTP; Tue, 7 Jun 2016 16:07:26 -0700 (PDT)
In-Reply-To: <1857108.OcXCc2mBxV@peggleto-mobl.ger.corp.intel.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFkJa_K26VhOK4DDnqpwPG3+a+5mT+Z5BQqmpauAjtKr=w@mail.gmail.com>
	<1857108.OcXCc2mBxV@peggleto-mobl.ger.corp.intel.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Tue, 7 Jun 2016 16:07:26 -0700
Message-ID: <CAGMdoF=KA=wmKu=+Zd6UOaQ=waZQgjvCQz=z8h+QtUgbYXoiTA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 07 Jun 2016 23:07:33 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 7, 2016 at 1:47 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> So what this will give you is alternative packages to be installed instead of
> sysvinit-inittab in your image.

I was under the (mistaken) impression that my recipe will run in
addition to, not instead of, sysvinit-inittab (occurring after it and
overwriting its inittab with my custom version).

> Have you verified (by way of the image manifest written next to the image file) that this package
> is actually being installed?

The manifest shows both sysvinit-inittab and my package being
installed in the image, but sysvinit-inittab's inittab apparently
takes precedence over mine.

> What steps have you taken to ensure that it does get installed in preference to sysvinit-inittab?

None, due to my mistaken impression.  After investigating your kind
inference with help of Yocto manual, I replaced in my recipe:
DEPENDS += " sysvinit-inittab"
with:
RREPLACES_${PN} = "sysvinit-inittab"

and it appears to be working now.  I've been using Yocto for a year
now, but still feel like I'm barely scratching the surface of it.  I
tend to get things to work by floundering about, so even though it
does works, I would appreciate knowing if this was the most proper
course of action.  Thanks!

