Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5936EE00D33; Mon, 18 Nov 2019 16:55:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2463DE00571
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:55:14 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id p20so22613455qtq.5
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=h9R1EQMmE/gv9eF8/nZM2LX673SXrCqdSopPdrAODNg=;
	b=WNjmmrV7/OhCV+t6zkDD5oN+J747zhQury1j2n/tEN+BMR7PH3uCxggM+tKKFFVLM1
	XvZVF2rMvVUjEmt9TkwWkY/9Dlfhs6gYKMAKts+OEmSRpL3lt+pDl3H51zOYh18Y76bl
	r1CLzQkxf5T+X2HjT/c9e6FiFYI0LxW0f53R0dqJ4eiUwM5wGHDF1/vzr5ti8Zniu+R7
	sYysNwy2uZGTbsb3Hc1s2DeHH/762lmz9J25IVHxru4KHr/HE4cxKNkpxCOHKXf1NMmg
	WOkCwvczN7Mj7bqGEoYP2PTNdMgdsjjsrcvZykUYu+AqSYLl0ZrYLLYjVKO0nEt3E7mM
	kBRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=h9R1EQMmE/gv9eF8/nZM2LX673SXrCqdSopPdrAODNg=;
	b=m1j0Y2TiMjXSwAB7PQn2oAMPHRM6VjKK01WgDD+hygeizLtbKxgyUam0FxdMRpWCA3
	8tDd5tlByPFMtsDhL/yzZ8l/QjcDSJh/TJxKtIbqBTVqWFsFO5ZLpKr00ms4eNRJSQqJ
	vXh8Bw66LdgDib6M46CS4dMeFwHeAKNXvco5mcOzPrNNcJeZuZm11Gr+xsjolxo0J7hI
	kXu6OEybXG/HyJvkfXDmrw8x+yL389YrTBW83Xycmu1NtwjnDKTP7nPAO6nvYTpQ9DCc
	khqySCuF4FA0jZ8CJsRhpEZrrD6mnJIi5o9KYrFBuBseRYsX7MJ6McyLrrCItzEP4F1W
	VJpA==
X-Gm-Message-State: APjAAAWASvvAnTSXfRlSEBTisDMQ0xbClKkXynpav1KZd+jEftyCFA8y
	NEOSzzNSRujz6uGOWZuQ8r25wdiGmlVh983vtWg=
X-Google-Smtp-Source: APXvYqyK/uiMWV9JF1P449oOu7Wf9aa3laJwQ9FBR3cijLom2NL4iUKBHNHF9AoxD+M+pIm2EnnjlvGgXyo/TqHTdao=
X-Received: by 2002:ac8:1415:: with SMTP id k21mr29274486qtj.80.1574124913091; 
	Mon, 18 Nov 2019 16:55:13 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
	<CAMKF1srJOGaaL4dhrziKe8xuHvSyz18vycKj8mJ_zb5gWYCdog@mail.gmail.com>
	<MWHPR02MB257628FAF833EEEB2B4731CBB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
In-Reply-To: <MWHPR02MB257628FAF833EEEB2B4731CBB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Nov 2019 16:54:45 -0800
Message-ID: <CAMKF1sqNycFmr-uG+n305FJU4SSE6kB7WwcMf+NvQqfHs5OA9A@mail.gmail.com>
To: Chandana Kalluri <ckalluri@xilinx.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: patches to upgrade meta-jupyter layer packages
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
X-List-Received-Date: Tue, 19 Nov 2019 00:55:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 18, 2019 at 4:30 PM Chandana Kalluri <ckalluri@xilinx.com> wrote:
>
>
> > -----Original Message-----
> > From: Khem Raj <raj.khem@gmail.com>
> > Sent: Monday, November 18, 2019 4:21 PM
> > To: Chandana Kalluri <ckalluri@xilinx.com>
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] patches to upgrade meta-jupyter layer packages
> >
> > On Mon, Nov 18, 2019 at 4:17 PM Chandana Kalluri <ckalluri@xilinx.com>
> > wrote:
> > >
> > > Hello all,
> > >
> > > I have upgraded python packages from meta-jupyter layer to work with the
> > zeus branch.
> > > I am planning to send out the patches to this yocto project mailing list
> > yocto@yoctoproject.org Please let me know if this is alright or if I need to
> > send them to a different mailing list.
> >
> > have you upgraded the recipes in meta-jupyter ? if so then it should be
> > reviewed as per that layers policy, if you are looking for migrating the recipes
> > from above layer into other layers which use yocto ml for patch submission
> > then its ok
> >
> [CKalluri] Ive upgraded recipes in meta-jupyter layer. There is no mailing list specific to meta-jupyter layer hence the question where to send the patches for upgrade.

perhaps you should contact the manitainers, and if its on github then
github pull requests are usually accepted but
its better to find out. Its good to look at README files e.g.

https://github.com/Xilinx/meta-jupyter/blob/master/README.md

Lists that it accepts github pulls

> > >
> > > Thanks,
> > > Chandana
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

