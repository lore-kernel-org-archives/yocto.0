Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3867E011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 09:44:16 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so7779059obh.35
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 09:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UwO9uqTBI644vcK7mJ52NHBA7maD7+bIgxJq7Np6QG8=;
	b=CejDDKTvGnejj8nyncoKhLn/W1zWhAp6KO+03ryGYfmkS1RJ1I0wOSoYvuU7egv6hz
	OZ5bk4d7DvYrF329eHfu1BDa09euMlyrIxUpdH5hoVE6TRDCSTPb1VEoBImYHI93/Cgp
	lcSuCKyCoXWnXN9bwA6W760YfzYGptjWmUJ8/4CxQYxjAqqVPt6W3YmmqxMMLijL2g3z
	RzFCalPtG50tzcvDQJGwMDke9smCdqLYddU4zOp9/N6fvbi4QKfmJtguA+eTBpg0gjIx
	BzaIECBGgNceyODqWDoWXUthu0NueQd6GpiteOOE/4CftfUKYrlfDVklyPcvZdrtolQQ
	jLaw==
MIME-Version: 1.0
Received: by 10.60.171.114 with SMTP id at18mr12573384oec.24.1350405851643;
	Tue, 16 Oct 2012 09:44:11 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Tue, 16 Oct 2012 09:44:11 -0700 (PDT)
In-Reply-To: <3280557.8J13GWUXdI@helios>
References: <CABzAcgiKqN-hQ56HoZny6=EeiDbnbFAb0CoqBb7R_eJ5EEdUKQ@mail.gmail.com>
	<3280557.8J13GWUXdI@helios>
Date: Tue, 16 Oct 2012 12:44:11 -0400
Message-ID: <CAMAb8ZOm3uSszdc3RUyFcoxaK+42FePUVFwqw3xwDktdQJ6wqA@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Chin Huat Ang <chinhuat@gmail.com>
Subject: Re: Cloning yocto repos over https
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
X-List-Received-Date: Tue, 16 Oct 2012 16:44:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

>> Is there a way to clone yocto repositories (say, poky) over https?

As Paul mentioned, there is work in progress to make it possible to clone
yocto repos over http. This should be finished in the very near future, but in
the meantime, I've created some (very) unofficial mirrors here:

  http://github.com/yoctoproject-mirrors

I have a script running that syncs all of these every 15 minutes or so.
Perhaps this will help you until the official HTTP access is available. (Just
be advised: I plan to delete these mirrors when they are no longer
necessary...)


On Tue, Oct 16, 2012 at 6:50 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 11 May 2012 09:35:30 Chin Huat Ang wrote:
>> Is there a way to clone yocto repositories (say, poky) over https?
>>
>> I'm behind a firewall where git port is blocked, getting it opened is a
>> bureaucracy nightmare.
>
> Sorry, it's taken us a while to look into this but we have opened a bug to
> track it - you may wish to add yourself to the CC list:
>
> http://bugzilla.yoctoproject.org/show_bug.cgi?id=3263
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

