Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87931E008D7; Mon,  5 Nov 2018 02:19:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ADF7E007B3
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 02:19:19 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id b7-v6so11872262itd.5
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 02:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UWJzd9Ez2wBJtJj5AFYDczsa79Rupqleitx8xOWXM7c=;
	b=Lo5oF7jPfJVOWHtWDt9a1Za4aUbyUyjVMr4hleqiT+MP9y65d0eaDLsSpgOprgXLPI
	WgBD9/FRsr0oVakvOvaLhKtyv0beamiKMUOH3cUeDe/NkvDJ+szKxUmuQCxYN3jUiDrC
	Lbjs8gqhfH8ktXD/4k7NPCb/vn6qK7TB2hLT5F0Sa6cWsPysix3ioAFWukQWCDpVnQXM
	ojBObyaCAcQA8uyPMDdfLwkJWi6eKi+epvQgqrYCzZjxNCbvOOZjQeDzOPT8UmxcRvpW
	nVxmGljBJxkBt0YXdjqy1tkmuw+nXpAt9r+Z5z3WZsQvXh/3uqo8zxlmhyxD/eal+GQ6
	UfDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UWJzd9Ez2wBJtJj5AFYDczsa79Rupqleitx8xOWXM7c=;
	b=PdjbpNb1WWwjqwJLJUczZPvejXOIEkJXBIvk52CBucgCAyZOSI5aFj3VLU5aNqT2SX
	Iz28vIkwvUsYiKVyOxCIAaujPjAbU9LFdjkZRV61qazcXZM1nECV5xMbt2gE+boWB7kg
	Rp+tRupdzpRCmeu1cgLi6elZ35ilg+ydus83j7A55wb36EoIf6Ov7EW0lX4h4eB7Oglp
	fQBZozBJyxEHdkxzF2DNH0wMJdj9ybxGsINzxpv2QfSDhcpYyymI0gLhq1m0ZHXaEZq8
	GPH5QBkr66lSJPzriA835phwNYgInYIYDWDukQN7mzRVxfJRDJi5blky9PVezMDRy/xE
	/BNg==
X-Gm-Message-State: AGRZ1gIQGq/vnc8J/h3tE5Qn51zh003gRl+KPLwc3VYoXqu7UpvDlvhx
	RFAgMz2xtbc/b9vD29Jck0/1BLP92sO8Ufy8yRMnpQ==
X-Google-Smtp-Source: AJdET5claThUNswJs5anbBgqF+PmNzn4Vhb/WVjBc4pYf3utsb+yEDWxOk/BZPNcTc9ZN3tZAEn5SqZUqJg7vdbwSqY=
X-Received: by 2002:a02:3b2c:: with SMTP id
	c44-v6mr20542735jaa.31.1541413158784; 
	Mon, 05 Nov 2018 02:19:18 -0800 (PST)
MIME-Version: 1.0
References: <DM5PR15MB19135EE912E9C5A6575D0E20F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
In-Reply-To: <DM5PR15MB19135EE912E9C5A6575D0E20F0CA0@DM5PR15MB1913.namprd15.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Nov 2018 10:19:07 +0000
Message-ID: <CAJTo0LYbXyREwmvi7wNPSkw+_BpkYp=xTt3t__shDPJVs+s81Q@mail.gmail.com>
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Server Certificate Verification Failed
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
X-List-Received-Date: Mon, 05 Nov 2018 10:19:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 5 Nov 2018 at 09:02, Mohammad, Jamal M
<MohammadJamal.Mohiuddin@ncr.com> wrote:
> Fetching projects:  60% (3/5)  fatal: unable to access 'https://git.yoctoproject.org/git/poky/': server certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: none
>
> fatal: unable to access 'https://git.yoctoproject.org/git/meta-intel/': server certificate verification failed. CAfile: /etc/ssl/certs/ca-certificates.crt CRLfile: none
>
> error: Cannot fetch poky
>
>
>
> I then tried to open the above link from website, I got a similar message: NET::ERR_CERT_DATE_INVALID

These are all problems with your machine: you don't have the CA
certificates installed, and the latter suggests that your local clock
is wrong.

Ross

