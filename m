Return-Path: <ebutera@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4404E00D35; Tue, 28 May 2019 03:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.180 listed in list.dnswl.org]
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A5CE00C36
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 03:56:40 -0700 (PDT)
Received: by mail-pl1-f180.google.com with SMTP id g9so8178349plm.6
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 03:56:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=hFWJ3WnU/0uuh8kyR66BSTU+0liwidX+CIaq0KlLR7s=;
	b=Zjbs2AAKB9eDcGHNr4UJ0zupna3N/kiWj4SaLHM1nfFUJM4E0w3QTtt5U4dU85Nil4
	H9YooxOdCU+MhS+ZLvxKmO0Rt5tD6PhnxEI43bijHRJx5Rh86+uoGF3u5v1EGlIzRVZa
	bcWTo6RDTaOiRZteS03G6H57kgWVucdB01CUH7jtztd5bCHvMg7yxifyU6J84BFf25Uo
	vY1ge5AH5AZfxrJ1m/IVa/m3UjsoVpqLfQJE0dxTQv3nwLjuiwGv/LeXCa42ziN2qGKv
	Av5HmqIDa2XSG1CBjlPtWjr5MyxL2awI2TR4+eVOZ2KO0snmKAC1dcUKmOovXOmfN35Z
	IdEg==
X-Gm-Message-State: APjAAAXRCPdFeUuY7dQWSmuCLTY6+g8wGjmTbJUHvl//slJXHTdUmgzJ
	H4T6BlFpw2xDzJoLTcXfCrNAYgS9WVubpc9EbJg=
X-Google-Smtp-Source: APXvYqxpLBtRvc78Uz008HnMOmBDce87bM326YWUWSrzN14G/yRz8X2+Xbvqfo2nyPO9UWtG6IqO8+L2olfmCtgT/0A=
X-Received: by 2002:a17:902:b590:: with SMTP id
	a16mr4658963pls.168.1559040999640; 
	Tue, 28 May 2019 03:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
	<CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
	<CACKFPN1q13OJfCcRCP6aLxGOC+cM+2zjwoTLNbkAn5dAS+J_DA@mail.gmail.com>
	<CAAfyv36hNk8CXYEfYASZJ-tOPEUwZ23i1zyDdLbVWk6r9ONkDA@mail.gmail.com>
In-Reply-To: <CAAfyv36hNk8CXYEfYASZJ-tOPEUwZ23i1zyDdLbVWk6r9ONkDA@mail.gmail.com>
From: Enrico <ebutera@users.sourceforge.net>
Date: Tue, 28 May 2019 12:56:28 +0200
Message-ID: <CA+2YH7vhko+jG6UTKHJrXGnv7AsCJP=GT4=trUUgkQ8cNQ5-0Q@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
X-Mailman-Approved-At: Fri, 31 May 2019 09:25:16 -0700
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Sergey Lapin <slapin@ossfans.org>,
	Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	OpenEmbedded Development mailing list
	<openembedded-devel@lists.openembedded.org>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Tue, 28 May 2019 10:56:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <dimtass@gmail.com> w=
rote:
>
> >
> > I was thinking about this also, too. The only reason is that in meta-su=
nxi they do a great job and they keep their layer clean, which is great I t=
hink. The other layers are just based on the armbian distro, which is a lot=
 different, but for me it was much easier to integrate their patches, patch=
ing scripts and bootloader scripts to a Yocto layer. That way the only thin=
g I do is that from time to time I just integrate their new patches and tha=
t's it. There's no development in the layer is just re-use of the armbian w=
ork and a wrapper around it. Therefore, it's hard, even no doable to put th=
ose different architectures together. But definitely that decision also bot=
hered me a lot before I create the layer and I also don't like time to be s=
pend on the same thing from different people. Nevertheless, from my point o=
f view I couldn't find a way to put those things together. I've tried but I=
 couldn't do it.
> >
> > Therefore, it was easier for me to do it the way I've done it. And afte=
r all, although it doesn't seem right, at the same time this is the beauty =
of the open source. I think the layers are just incompatible in the way tha=
t they are do things. Also it's not bad to have alternatives.
> >
> > Sunxi is a great community and I believe many of the armbian patches ar=
e coming from there. Others not. Of course, having them all together would =
be nice. But I don't think that it's possible because of the different appr=
oach.

It would be great to integrate all those different layers in
meta-sunxi,the main problem is that usually they come with their own
bootloader/kernel/etc.... so you have to *maintain* all these
different configurations.
Infact in the past i refused to do such things because i didn't have
the time to maintain all those different versions, it was just easier
to support what was already in mainline uboot/kernel.

But of course if someone wants to do it then it's welcome, the worst
thing that can happen is that once an arch gets unmaintained it will
be removed.

One thing that can be done anyway is to have those external layers
linked in the readme, so at least people will know they exist.

Enrico

