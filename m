Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21557E00A4F; Tue, 16 Jun 2015 06:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B96E009E6
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 06:27:23 -0700 (PDT)
Received: by pdjn11 with SMTP id n11so14588225pdj.0
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 06:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=hmkex+jX1EXN9IJns5BieF8PJ4evfZx7aKFrADSFx+E=;
	b=wlfqyJ0Kv9lm6xw2IldCGVQApfSNvDhIQJoJFHi3VmiGJ5AsGeLc9teQ44k3eBqcIO
	6btzUHtVMeQ77a1UhjPqfBq9xieJnnONAD1mGvxjjDZHo7Bb9+xAlLPIgej7MwVhD+MI
	8ky4RQvoarupkBsLbSmuqYBf/s19NhOTOxB89sbgeNqDXv157EMSv0HIqefwrsSvi9ft
	/F20dxmIRrrDf/ZCqn84WNvB0wr5i7K77dPEmApUwlZAakhdIySpIIP+B7pb+6MXRx3A
	T+xenHO/4NVKmn74/8vxG2XTIw89Y4mJqjGhUasg8ByHyOXcC8Xuy2fBRQhLSEXXQPCb
	agPg==
MIME-Version: 1.0
X-Received: by 10.68.200.100 with SMTP id jr4mr649919pbc.168.1434461243095;
	Tue, 16 Jun 2015 06:27:23 -0700 (PDT)
Received: by 10.70.44.41 with HTTP; Tue, 16 Jun 2015 06:27:23 -0700 (PDT)
In-Reply-To: <55801903.4040905@linux.intel.com>
References: <557E9EFE.1030703@linux.intel.com>
	<CALbNGRS9UWjVQQh8POPc5zVYOeYa9VaeC7dEfzH3AMs4k9Mjzw@mail.gmail.com>
	<CAJTo0LbRVqw3h_3igs59=DTnaz6nf4w=A5ZpXepmh6xiKtVdPA@mail.gmail.com>
	<557EE4C2.501@linux.intel.com>
	<CALbNGRS-xR52wapA2viFa0oZJ6kotFdjhXpb6kyOtpRyn--5=A@mail.gmail.com>
	<55801903.4040905@linux.intel.com>
Date: Tue, 16 Jun 2015 15:27:23 +0200
Message-ID: <CALbNGRTJeh4eCD45cGUOx-DRZPHSeKTqndq1Jk+7V-ANQtAPNA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] Webkit-gtk will be updated to latest upstream; midori browser to be replaced with Epiphany
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
X-List-Received-Date: Tue, 16 Jun 2015 13:27:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2015 at 2:39 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 06/16/2015 09:50 AM, Andreas M=C3=BCller wrote:
>
>> How about doing same as others do e.g fedora [1-2]: Keep two version
>> of webkit-gtk based on same recent code:
>>
>> * gtk2/webkit1
>> * gtk3/webkit2
>
>
> Before showing how, you need to explain why. Fedora has to package webkit=
1
> because they have a lot of apps in the Gnome stack that still haven't bee=
n
> ported to webkit2. Oe-core on the other hand has only one such app: midor=
i.
Yes and midori is the only working browser in Yocto (I know): firefox
crashes since very long time for illegal ARM instruction and chromium
does not start at all.

I suggest we stop discussing my comment: You continue updating
webkitgtk and I'll try to get a working browser.

Andreas

