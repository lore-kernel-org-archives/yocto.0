Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 689F6E00709;
	Mon, 11 Mar 2013 10:20:54 -0700 (PDT)
Received: by mail-wg0-f47.google.com with SMTP id dr13so5061696wgb.2
	for <multiple recipients>; Mon, 11 Mar 2013 10:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=nQ95a1shL5jejZJ0EK1+FaYupCwRFRvP7nhYkktqur4=;
	b=nImzBIWalQP3d9NyJN+qAAIBCbdkO3IuSzaXyW2AZOpWzSoiIpS10MKxxXlOdhbMYt
	U7TswMGYN2HiIMfNZX44itCh++J661Podyky00fkCLHO0/fT+iNAdShmjWG45K4BgIe3
	KK3KOuKW1WechxbkUNvqf33zxq+djrS9vLFg3YOFp8fkelZ8yTGYQ7+gDTcfcTroAeTm
	uMDDmQnDzvMMQ6bRrC/QethQFcQAnz/4WZTl2AZHs2P8DP5RFQxTLfPty4OekwRnImBK
	L64KYnyKlDBpYp+Frd/vr+L9mI9y7iRcsQfIqblqmmrH0EYkDzAWKQ3mUmIFmXDINjXD
	taZA==
X-Received: by 10.180.183.4 with SMTP id ei4mr13902745wic.21.1363022453370;
	Mon, 11 Mar 2013 10:20:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Mon, 11 Mar 2013 10:20:33 -0700 (PDT)
In-Reply-To: <CADkTA4Np=SJitdsDh=K8VApgoZGR8E6d-bPO-DxkS7oPw+mMaw@mail.gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<513A195A.5040505@linux.intel.com> <513A75CB.3050308@windriver.com>
	<CACzyEJ9MHVD8GyVEwXkdndmQy7DQ_Tt-M0n6-0dWG7LOHgVR5w@mail.gmail.com>
	<513D4F78.9010307@windriver.com>
	<CACzyEJ-YObwTGoOcLGXGiXeoLia+RdtcLmSt9gDLXJG5hBHeoA@mail.gmail.com>
	<513DEB6C.7050903@windriver.com>
	<CACzyEJ8cw3Ve8LdUVEqFse0yBuUC6_9-2brB4c4ZUYitqCVSeQ@mail.gmail.com>
	<CADkTA4Np=SJitdsDh=K8VApgoZGR8E6d-bPO-DxkS7oPw+mMaw@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 11 Mar 2013 10:20:33 -0700
Message-ID: <CACzyEJ9L22Ds194QyhVgMXCGR8wkX1ZWZJxEv-kWh864PY3c6w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Mon, 11 Mar 2013 17:20:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 11, 2013 at 10:03 AM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:

>
> If you are looking for push access, we'll wait on that for a bit. I'd like
> to throttle changes into the new layer by sending them to the linux-yocto
> mailing list first, have some review and then we can do a pull request
> and merge model.
>

I see, that sounds fine for me. I just wasn't sure ways of working here.

Thank you,

Insop

