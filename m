Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAFB6E00499
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 14:53:09 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hm11so4350886wib.1
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 14:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=b3PQll4fm/Nn33CHadV/5/ybz7R96I8qJ9FYRonUVHc=;
	b=pBqCu/FrRE6tWvYKLGGB4rBKt827qVTmVWixv83F+AFgzQrkaE1SBHSxeEkPUdWJzq
	VLqeFTz/CYKsvlG+PovXjpocpm5vOT77VdYmn/koloDBRANQsOWDtGKWsgRebeBF2YeT
	onk1LMBgOGrse4dENSeojBMyVDPJLkwb2aXnZBixs6+bYj52ByPxhp0VXzzBWK9KNih0
	PVqZDR5hDvakb7r+1kowh70kXNNbySQo3jfDbqPUXviGlNou4kOHyxMtkiiNpyBynaHq
	fdieLnXVOWuQc6qfd7YoeZJ7UFvkVH9VRk04pcqUxeCWn0+tIT2bBx1cqI+7gi8LKtSZ
	KTYw==
MIME-Version: 1.0
X-Received: by 10.180.182.36 with SMTP id eb4mr15566555wic.8.1365457988658;
	Mon, 08 Apr 2013 14:53:08 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Mon, 8 Apr 2013 14:53:08 -0700 (PDT)
In-Reply-To: <000001ce34a2$f584a3e0$e08deba0$@annabooks.com>
References: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>
	<000301ce3185$ab049a20$010dce60$@annabooks.com>
	<CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
	<000001ce34a2$f584a3e0$e08deba0$@annabooks.com>
Date: Mon, 8 Apr 2013 17:53:08 -0400
Message-ID: <CAHUNapQkneoLF7_7DBFxd+Cm23iTBkJezDsy4NEq9v06GiSybw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Post build configuration
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
X-List-Received-Date: Mon, 08 Apr 2013 21:53:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Apr 8, 2013 at 5:49 PM, Sean Liming <sean.liming@annabooks.com> wrote:
> Is this post-build utility an active
> project for the Yocto Project or is it just getting started?

It's only in the discussion phase right now, hence the "RFC" in the
subject line.

