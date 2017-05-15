Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2ED79E00B51; Mon, 15 May 2017 14:55:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C53E3E00B02
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 14:55:10 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id v4so32111246wmb.2
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 14:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DH/zgPxk6NrtdhXRVUaEr0y9Bj8cYbMjGJj8f1I7+uU=;
	b=Yc7P1hltzF2hhB++NDP3HY3ulkhxPm01LFyp43RJmUrl5RSIVcNv6KmpkSWMA3sm7V
	8t+9o3wYt8HAQXYalRLdUWgzoyhz/fAcbKyYkMav8sdm5HauQtoLvIr4YD0eiFAz3xaC
	zmn6d3NPYP8sSo2GTot+TokrVH+G47kqvV4cK6r35E3EKNn4aojbsePGppwE2FDafgpz
	e/yc1SYk+QlsHLOs6szUOUJBbjI7LFD/ILmwi05O1hNdnR8oYXxBhN028rNm/WcGO+FI
	OdSYz9oWfdcJjWYpE5f5W99zoNHXhgtplDVdauOxMJJ0nBDywqsWdAUB+2uEc0rT04Ks
	6QmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DH/zgPxk6NrtdhXRVUaEr0y9Bj8cYbMjGJj8f1I7+uU=;
	b=tH5YAbZNZtKB72xybLWV79epF+WGapZWwUsS4ZVNGW+XFE3tu8q6Zm3bQtRJp02VEj
	6ioQGwbILV2qqvJCvOQA0jIO08AscxIJ8bbwU4ZwpewKlQ2ibGdWNZ2W9T0nhLvKepN/
	HScPqSHxhSIPdiSyVY3XUl/q1+cacLmVls8vMO1YGmCyAMpe8pCGhIPYABGe6z0C59nN
	fxb6DepboRVzcQgh6nW27nlDijjAxT0c4TiAGnmmLL6HaAK/0SDd0B0TfeDN3iXvp+u9
	a2KWPLZ+jiwBLs04fL6gMRnrlpiTLxGLJ2yigsccpCvGnDf3YdKwngVFkEDuG2mPbqdx
	k4SQ==
X-Gm-Message-State: AODbwcBeMJOcjoMitCwIfJK6eQnH784UQXw5QZGo86gdrw/bvej9qdjH
	cs+yqji50yO4ZHCuRsNQpFe9TsPPoQ==
X-Received: by 10.28.45.13 with SMTP id t13mr3105844wmt.98.1494885309453; Mon,
	15 May 2017 14:55:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.172.100 with HTTP; Mon, 15 May 2017 14:55:08 -0700 (PDT)
In-Reply-To: <CAMKF1sp==_gXOHLOYx+k2_Voh6hUGvnw8mtN8=eFZ9bnRDt3uA@mail.gmail.com>
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-4-git-send-email-ayaka@soulik.info>
	<018a6ea6-38c1-92aa-9a32-6dee2e7d6e6e@collabora.com>
	<20170515163324.GB21833@linux-uys3>
	<CAMKF1sp==_gXOHLOYx+k2_Voh6hUGvnw8mtN8=eFZ9bnRDt3uA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 15 May 2017 14:55:08 -0700
Message-ID: <CAJ86T=XkcCF+uPLBGKS5cvd992Z3Z8dp9Zu2fwqcp3vPBAE=iw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip] [PATCH v2 3/3] recipes-multimedia: images: rockchip media image
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
X-List-Received-Date: Mon, 15 May 2017 21:55:12 -0000
Content-Type: text/plain; charset="UTF-8"

 On Mon, May 15, 2017 at 10:23 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Mon, May 15, 2017 at 9:33 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>> On Sat 2017-05-13 @ 06:20:35 PM, Romain Perier wrote:
>>> Clearly a NAK here. I don't want yet another image for this, that's a
>>> bsp meta layer, it is supposed to contain the recipes and rules to
>>> propose support for Rockchip SocS in in yocto/oe and its reference
>>> distros. But it is also supposed to be minimal, I don't want "all the
>>> world"  in meta-rockchip, to be honest :)
>>>
>>> I am not fan to have recipes or rules for development...
>>>
>>> Trevor, as a co-maintainer, what is your point about this ? (always welcome)
>>
>> It's not uncommon for BSP layers to include sample image recipes
>> (meta-raspberrypi, for example, includes rpi-test-image, rpi-basic-image, and
>> rpi-hwup-image). These sample images act as a sort of example, or
>> documentation for others to follow. They're a way to show off what can be
>> done.
>>
>> This recipe could act as an example should anyone want to integrate gstreamer
>> support for a rockchip in their image (assuming this image builds and works).
>
> you could also make a packagegroup and leave it there and let end user to
> include the packagegroup in his/her image

It looks like the COMMERCIAL_AUDIO_PLUGINS and
COMMERCIAL_VIDEO_PLUGINS hooks could be used to add machine specific
plugins to the existing gstreamer1.0-meta-audio and
gstreamer1.0-meta-video package groups?

>>
>> I'm not opposed to it being there, as long as it's benign and works.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

