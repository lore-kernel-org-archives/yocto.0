Return-Path: <jdmason@kudzu.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A6EE00D6A; Tue,  1 Oct 2019 08:11:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65EE8E00CB9
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 08:11:54 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id z19so48969362ior.0
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 08:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kudzu-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HEtOOfxQHh1R3SDy158Zbe1rxvAgWzCDCIWW6vPJUb0=;
	b=xxg6uCfUq4xY6ZVtY/o0v+wLoajPW2ITIbi/W1OKhLmXAr/rOMEBfvanm4W+CDB+5d
	tlSUmvJ1LZXsdYF+HWaoNvqzW69IikScs3p4G0lDrET+Mp/+3xsxGSpt+OVkAaXaiezh
	QmbkHMYfa0QPLI0ToUkIihnYjP5fx95u5/CIDneeIWTUXGsNA7NDAp/Xq5sdL00J4Nkt
	Ry3sjPAVbTfi3w7zTOrwV70oxzFx5X5dK2n2qLdj5+fNE25MDxwW/1gcKkK3a4q9En+o
	zNNUvPlDLQ7kf4lQgGqG5YFP18F8gxcgZ4YXTJZQBdFrFGfUS2XFZyfLadSd0Os0GE7i
	NYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HEtOOfxQHh1R3SDy158Zbe1rxvAgWzCDCIWW6vPJUb0=;
	b=WMafDI8PUjAGPMjVMEgIKMDJGjpOGqeBNAcjX6khUe+5LRZFyb0tWqSo02gH+6sGlU
	t+JZJTsOW55eANig+uiXlAR5CAfYwWatO9RB5JUlglOZG0Ewi6VbQe6ZmI4aJPWOOeae
	gID10QsyjYlYeknkoeE9cgrqr4lRWfj470zssjDt+J9Cukrc11Wm7FNLzMuPY+Go28lg
	SdVst1vZOE8Ms5LIdRePZQi7Qkhv0/EfMck5zqswUwHlxr4NklkmWX8e4+5AjESIZhbS
	VUBQqU4u0Z5ETvAi8LlTUNpFSlkGX0yiXdNbF0ScrBS4mx+PbawvMZdf8ZDMEC9AWy04
	A4Yg==
X-Gm-Message-State: APjAAAWJg8EfNbVOsgtvaaaZpgPtGCpv0OARkUeQ1bC9qvO366KTh1bd
	RhZx17r6bGJqNqyGPnnFQ9WfVjofcr5wkPLesCWYpQ==
X-Google-Smtp-Source: APXvYqzeWm0jgmBxEl/JaFkOkLwBZ1qqdjeFcdpKAN0B3+0a+fNHtfdAPR5cyl3i4HCFHHRdW2meYl0zHjPKYtf9Iv8=
X-Received: by 2002:a92:5f13:: with SMTP id t19mr27030576ilb.163.1569942713713;
	Tue, 01 Oct 2019 08:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <b5b5c822-756a-5ae5-7b58-07f437751909@balister.org>
In-Reply-To: <b5b5c822-756a-5ae5-7b58-07f437751909@balister.org>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 1 Oct 2019 11:11:42 -0400
Message-ID: <CAPoiz9zR_VyVdeLhp0KHpimS1SJCGbUMfnUr7phgSHS3C_t7SQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded Developer Meeting on Day 2 of Yocto Project Summit after ELCE
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
X-List-Received-Date: Tue, 01 Oct 2019 15:11:55 -0000
Content-Type: text/plain; charset="UTF-8"

T-shirts for OEDEM are happening.  If you plan on attending, please
add yourself to the list.  If you already are on the list, please
verify the size is correct.  Please use this size chart if there are
any questions or doubts:
https://www.customink.com/items/sizing/04600_lineup/standard.htm

I will be ordering in ~24 hours, to allow enough time for them to be
made and delivered to me prior to the event.  So, please sign-up ASAP!

Thanks,
Jon

FAQ:
Q: Can I get one?
A: If you are coming, yes.  If you are not coming, only if there are
extras and you arrange for someone present to transport it to you.

Q: Who is paying for it?
A: Arm is paying for it and there will be a logo somewhere on the shirt


On Mon, Sep 16, 2019 at 12:38 PM Philip Balister <philip@balister.org> wrote:
>
> Boy that is a mouthful. The date is November 1 2019 in Lyon, France.
>
> On day 2 of the Yocto Project Summit after the Embedded Linux
> Conference, we are hosting an OpenEmbedded Developer meeting. This
> meeting is part of an ongoing series of meetings held for OpenEmbedded
> developers and users to exchange information about the project's
> direction and to explain to developers problems people face in the real
> world.
>
> Please sign up here (attendance is capped at 40):
>
> https://www.openembedded.org/wiki/OEDEM_2019
>
> Please add ideas for topics also. (Also add your T-shirt size after your
> name, no promises but the information might help us)
>
> More info and sign up information for the Yocto Project Summit is here:
>
> https://wiki.yoctoproject.org/wiki/Yocto_Project_Summit_2019
>
> Based on talk abstracts I've seen, Day 1 should be very interesting!
>
> Philip
>
> PS: For some historical perspective, here is the page from 2007:
> https://www.openembedded.org/wiki/Oedem2007
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

