Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC6BE0027E
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:41:00 -0700 (PDT)
Received: by vbme21 with SMTP id e21so4598704vbm.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 10:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=P0XfF+iJz0Gz6up7WtUwYqyh6VMt1UX6gWsWHdZ/N38=;
	b=J7cE7kDMUJtGjY50s1EpC4zUeLi3YHCLXFUxxDvs10sR1TABzxoHMjzjkOHmwXDDJ6
	kidkhcLWc08rpNnxQrg5l+7wbl85oZb4fR8QSpdUyHehPXnem/C5YUp81Qfuyk3b9HMO
	8B2Q0CGl5KBwGAwVdYrtEteVLl7jQJInHyGR3ASDhhk4YOwmySp57yCZgPPQ/UktPr/t
	SbxUb+zM2tXWLeFr/KoQvSqFLMI5pQYyGh1xFLhxdtGomqdPo2IdhcBtPtd6F2ma6lzF
	1ff+XIrTywyEo7kYvH5xhlMcJZSxBvYCs1Gm+Do7jVL5uvWvkImm4uAkg21u1peNZskh
	Oc4g==
MIME-Version: 1.0
Received: by 10.221.0.78 with SMTP id nl14mr8685904vcb.21.1344879659834; Mon,
	13 Aug 2012 10:40:59 -0700 (PDT)
Received: by 10.58.64.114 with HTTP; Mon, 13 Aug 2012 10:40:59 -0700 (PDT)
In-Reply-To: <CAE8H0+U_iEesW05u26pMgZX7Tjk=xSuSjcKTefw6e2trOGWZhQ@mail.gmail.com>
References: <CAE8H0+U_iEesW05u26pMgZX7Tjk=xSuSjcKTefw6e2trOGWZhQ@mail.gmail.com>
Date: Mon, 13 Aug 2012 13:40:59 -0400
Message-ID: <CAE8H0+VqjUPTabBnnh3CMqyUgfiucYsVyQzsYnAvDe7Bpy8FmQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: core-image-minimal: no valid shadow password
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Aug 2012 17:41:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Aug 13, 2012 at 9:59 AM, r10kindsofpeople
<r10kindsofpeople@gmail.com> wrote:
> I've found that if I take core-image-minimal and add a single package
> (iproute2), I can no longer log in as root, getting the message
> "login: no valid shadow password".  Adding the shadow packages didn't
> seem to help.  Sounds like someone else encountered this back in May,
> but there was no published resolution that I could find.
>
> First tried under a Yocto Git master that is getting pretty old at
> this point, then re-tried with a new download of 7.0.1 with the same
> result.  Building for crownbay-noemgd.  Initially built
> core-image-minimal using bitbake command line, and then added the
> package(s) using hob, build package, build image.  Booting off an SDHC
> card, if that matters.
>
> Any suggestions?
>
> John

Update:  When I add iproute2 using IMAGE_INSTALL_append in my
layer.conf and build using bitbake, it appears to be fine.  So it
would _appear_ that the problem is more "hob" and less "adding
iproute2 to core-image-minimal".  If there's something more I can do
to help debug this, let me know.  Otherwise, I'm able to continue my
work so I shall.

John

