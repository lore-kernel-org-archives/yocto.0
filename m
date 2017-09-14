Return-Path: <yasushi.shoji@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C8DAE00CC8; Thu, 14 Sep 2017 00:06:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yasushi.shoji[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A091E00CB4
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 00:06:58 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id g206so6155369wme.0
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 00:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VVI1mOcJUGmoWzla/+/bAZh1yLV83e80b8FK32TLa3E=;
	b=OjXdvk488QpHqhktO6BGeDId1LDcxT+0jwxesnVonwmTNA+vi6Qumqm6WZG6Cgp2OL
	DjzqDapeDAhD9BBzDdyfP/WNANYeu+5iS9N5WrYgFSye7B84TlYkg3PfM0oVafnUNfhC
	0WNHJcrFmY3mhwc/K2MGmDIFu3s28XuEO5nIxdRI17QXqaDIHUvZAxwh1tKzIN3ISC5g
	9uZnV60knVTBYg5uaIdctxC9sYc3RYKd+3Xol6V0j+J0jX9pRnBy0FaTkqLAGNENv9BA
	KUa5cZUGUPz+vf7XTDf+E25bEWfqbjm1gM3e1I11IFhBcEZWL+ZcaEkwPFl42CULeqye
	hZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VVI1mOcJUGmoWzla/+/bAZh1yLV83e80b8FK32TLa3E=;
	b=OZwhzioQSktOjX9SjBJ0Trr/iTQDQ1K3/UA6n+52XKDC1Tmc1CwCKxpuRlGJssPGRc
	6Bvjdsk5x59nb78gtJIROeWpr1gVlShbYZ0ziaRWyNGpu7SpZbTf1Y8WvD/vBkz2zmhu
	IyXZ0npxsNbhicqLbEdWa+VhcFmV/pLyEfk/cFY+FPtZL8s5kdOqbZWhQGWF2apQ5a2y
	ZNNJAKz6i2aRoGtWPqKjUuQ0iQgcPW8idBkyvxNh4nx8RuMiTYylt92AECYngOkDwcat
	dW7Md8CLVld6sziN97SMmg1UmnszzKZ+YSPOZm0Kq1V/wRPjshq8sZw5VuQUyJVMwVXu
	SQNg==
X-Gm-Message-State: AHPjjUjOBOZiiGchxThvEGsbGIMaq/v2+BfIeJHuLTqEhdpG0a4PL2wl
	dzMZCDureGYC8Wb8CGL3qvdmHzPTQzx/f+4iV8k=
X-Google-Smtp-Source: AOwi7QCVouDA+2efsX4vRg7KOmbmJLPUzKix67UoAo0JWnCm2+6VF3CGIKXxsLJ1LnpTsP4TMQS9Y9bUwI7JNqZLuy4=
X-Received: by 10.28.29.77 with SMTP id d74mr854750wmd.106.1505372817386; Thu,
	14 Sep 2017 00:06:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.152.234 with HTTP; Thu, 14 Sep 2017 00:06:56 -0700 (PDT)
In-Reply-To: <CAByQQ_qbRAm4_5wqh6Rt0On-6TDs78JDMxEcaH6qZH-SfgGbkA@mail.gmail.com>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
	<8292ae18-05ae-2f98-0dd3-f56392af92ed@gmail.com>
	<c8622989-4ee6-d34a-d083-4679ed6710f9@rsi-elektrotechnik.de>
	<337a7f6c-0ca1-6505-f5ea-16c355c84f72@gmail.com>
	<CAJTo0LbxgW4Gwjbai-MAaifdFuHKz4rLcf3nTNHuTBX1WBkuEw@mail.gmail.com>
	<CAByQQ_r007RG__TP-XNaWxoH+vBCsOESzAcY2FQJUj+X=UE5eg@mail.gmail.com>
	<CAJTo0LZAwKLB6ZRTw79B9VfPz+ra=CAoJHn8Bzz9Z3ra=jzq3g@mail.gmail.com>
	<CAByQQ_q0mkG2BfK3FGBZgXOSJxzkUAORCZPC5mYiAQ2oB5qgFw@mail.gmail.com>
	<CAJTo0LbsyCZmjhBCHjnQRsedmNc7__KzGi5vhPjh328cXedsKA@mail.gmail.com>
	<23c2a7a6-50fb-d3f1-3cd2-4fc406975367@gmail.com>
	<CAMKF1sqk5L0_51Gv3r7-PjAW7Lj_RKFRGkwpGdOygWPAdpPzAg@mail.gmail.com>
	<7205fa77-6677-581b-7067-fb4d0baad7ab@gmail.com>
	<CAMKF1soVe9msdj8ouWUZF+v-+5nncB7CPB08g_4LkgX7-Ns0qg@mail.gmail.com>
	<663aa40d-78d8-2e9b-e756-55dffe3ce8d5@gmail.com>
	<CAMKF1sr-J4h2M6qcEd=hwsr_+63Ua+Qv5xcuh9AxTWeNcQsbww@mail.gmail.com>
	<CAByQQ_qbRAm4_5wqh6Rt0On-6TDs78JDMxEcaH6qZH-SfgGbkA@mail.gmail.com>
From: Yasushi SHOJI <yasushi.shoji@gmail.com>
Date: Thu, 14 Sep 2017 16:06:56 +0900
Message-ID: <CAELBRW+1iKp+TFpUiHWXLTAnzqkkaKMNCDxFUE0K38fVpHybxA@mail.gmail.com>
To: Riko Ho <antonius.riko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEBUG: automake-native: class native found in blacklist, disable icecc ?
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
X-List-Received-Date: Thu, 14 Sep 2017 07:06:59 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, Aug 3, 2017 at 12:01 AM, Riko Ho <antonius.riko@gmail.com> wrote:
> Still got the same error after installing it? Any other clues?

Did you try the patch posted by Khem Raj?

https://gist.github.com/xywei/03b546054f0d2e2f76c5ac530c88268a

I had the same problem on my Debian Unstable but the patch worked for me.

I wonder why it's not merged yet, though.
-- 
               yashi

