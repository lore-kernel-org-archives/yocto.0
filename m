Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59715E00D31; Tue, 28 May 2019 02:49:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8558E00798
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:49:39 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id y3so2137138wmm.2
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2zxtNB80kgUrU91FAd1tplDcRw/XzOaItKp6o0n5aQY=;
	b=aILmDTFdqWl9PNTCZjOidKQirWBHs/MbZgQ2y17fipGte48Nqs2F87u5LelNKAbX4/
	HTpffdGW/IbK+rjskoYLcwSolA24E2wgx7AnulXKyAOQ29vuc2KLBMT7ryiQXu/Qo3x4
	MUNrGrtvnVm2PKuu3ZMTVsZmeBQkITc2WkkmaPMjQBRLYjSbJLczaBytF9cX3xEQNPyn
	lD9rKymqPpjFKwU+A4D3tsuPxcAicBvDjt08ateSkILHO0Xeie8cadhLOjwwAi81EV6Q
	GBXp3A3EzBzTvNtwCU9AlU6l8t7qFF/734NYu4t6Fzb9CQUZQ+yunDN7htKjXY3zOpGs
	pWvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2zxtNB80kgUrU91FAd1tplDcRw/XzOaItKp6o0n5aQY=;
	b=GCvii3YUVdIu7iAv3ER8uOfwi4+uz2PIkx5Hg5xeitngzA0+d9ErbA22LkbtRBuUWd
	rHCPPHQKZUm6dFIXqJBZgcLDL8hWwYZ0MXa2vr/61+VtxRTdd/abk169bqfSdLzXNbRH
	tEINkFkVhl04uJXr3NVmRditgMPpTTKHh7dw5dLXtLatxE9DXYVO1Ean4EpHLQSNi1re
	07lmaQSV/j3zBrtroQ9q5GkqTJhG/JOnLdgVSc+uh1BNWDMBe9cFDWbFUKDvehY1vYxH
	Uw7ioTalzpa4IVC/6pqgZm9MevanbpaCCxWAC8+B3he4uBVCJLfwDE8ZJxp8juKZb9Zb
	2faA==
X-Gm-Message-State: APjAAAXKrvFavIr4ja4WBDr1UPFNZw9Cnaqo155ajHBTox847feD5gyd
	oR2LUsjidZkZTPIHLp3ukg31JrMbeGdeiP95ILw=
X-Google-Smtp-Source: APXvYqwMbByBXUMnrNi/Yn1ulxQcpbRhNCT5coiUTnkCGpCYczF66QTPzFeIvgaT9jaWO1cNHuh/7BzM0hmR+iYTeus=
X-Received: by 2002:a1c:2082:: with SMTP id g124mr2397969wmg.71.1559036978771; 
	Tue, 28 May 2019 02:49:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
In-Reply-To: <CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 28 May 2019 11:49:26 +0200
Message-ID: <CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Sergey Lapin <slapin@ossfans.org>,
	Enrico <ebutera@users.sourceforge.net>,
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
X-List-Received-Date: Tue, 28 May 2019 09:49:40 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Dimitris,

On Tue, May 28, 2019 at 11:01 AM Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> Hi Belisko,
>
> you can also have a look in to this layer: http://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/
> It's for allwinner H2,H3 and H5 boards that already have support on Armbian.
> Pretty much is just a Yocto layer with all the patches and BSP support from Armbian.
> It supports 4.14 and 4.19 mainline kernels only and also the PREEMPT-RT patches.
> Warrior support was added recently, too.
OK thanks. I think I'll stick with meta-sunxi ;). What about join
forces and maintains one layer properly instead having it separated?
>
> A similar one is also this: http://layers.openembedded.org/layerindex/branch/master/layer/meta-nanopi-neo4/
>
> Dimitris
>
> On Mon, May 27, 2019 at 7:33 PM Belisko Marek <marek.belisko@gmail.com> wrote:
>>
>> Hi Enrico,
>>
>> On Mon, May 27, 2019 at 5:44 PM Enrico <ebutera@users.sourceforge.net> wrote:
>> >
>> > Hi,
>> >
>> > i try to keep it maintained, but now i just have a lime2 for testing
>> > on real hardware, and i don't have the resources to do test builds for
>> > all the supported boards.
>> > Your help would be welcome, i can't check right now if i have the
>> > rights to add you as co-maintainer, anyway i will add you.
>> Thanks I have few sunxi based boards so can do tests also on my setup.
>> Pls ping me when you will add me. Thanks.
>> >
>> > Thanks for the help!
>> >
>> > Enrico
>>
>> Marek
>> >
>> > On Mon, May 27, 2019 at 4:50 PM Belisko Marek <marek.belisko@gmail.com> wrote:
>> > >
>> > > Hello,
>> > >
>> > > I'm just curious if meta-sunxi is still maintained? I was contributed
>> > > to layer back while and when look now thud branch is un-compilable
>> > > (dri2proto not replaced) and warrior branch not created yet. There is
>> > > 14 issues + 6 pending pull requests. Added maintainers also in CC. I
>> > > think it would be good to have sunxi properly maintained as boards
>> > > with sunxi processors are popular. I can give a hand as co-maintainer
>> > > if necessary. Thanks a lot.
>> > >
>> > > BR,
>> > >
>> > > marek
>> > >
>> > > --
>> > > as simple and primitive as possible
>> > > -------------------------------------------------
>> > > Marek Belisko - OPEN-NANDRA
>> > > Freelance Developer
>> > >
>> > > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> > > Tel: +421 915 052 184
>> > > skype: marekwhite
>> > > twitter: #opennandra
>> > > web: http://open-nandra.com
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



marek

