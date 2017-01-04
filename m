Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57336E007AE; Tue,  3 Jan 2017 17:13:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3515E006EC
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 17:13:12 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id 2so751484uax.3
	for <yocto@yoctoproject.org>; Tue, 03 Jan 2017 17:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3obOw5r5mIbxNSqRVInmALHpvRjZtXv4N6n6gKT0J0w=;
	b=DD423+WcYBaY3I48uctFCOW7wNiZgv2VmYfeiKUx0sEX5E42i++K/xCELZLhg5+L1N
	Mg3EuJroVoWE9dhI+BIg1dWvkeepUhfef3l5P//I+H7G3itJgWfCyoL/0eNgSNFpPYnr
	UPKkgJn18O+BXUKs7TXcPNtjsq001/TfQFLRiuj4/DJAdQpgtIXEUDv14TWNfJhK0cMx
	ZAXWEyjmB2YKsx6Cim2MiwhEmq2p9mVBMEhUZf5fFfMCnP78Lja92bsrkovWy0zhjSUX
	3QzPnnn9k0hAuetoWhzEVBgZM8uBiVKdo4/lVliNHvBmh+pfG3EDPqoGsxzAln2Qe+Sf
	cLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3obOw5r5mIbxNSqRVInmALHpvRjZtXv4N6n6gKT0J0w=;
	b=HY7f9K+sPpekd3+TTRgtntNSk1+KjSQx7ii5Q8auOH5klYLSc0X7bonoNebtxLTKNt
	kdly2mI4uGJNjmEu1H1teDmnGJFWkJiQd/R1048r+eqd7bDkO0hzNhCOJwSKIMAiH7q/
	9teneqsBC3sDqKfnw2LNeFHWgoPHAs5NaoP+Oc9LFh1X0D5evCh4cEsF9zSvLs+53LHq
	VxRCYFIXaF/yFwgVetoQkvQStbl0HNdVNDbLPVoQiaHpt/c1fzl0yZ9BPNYmdgfHejsf
	5rhGKp6rhPj1TKFMv3aDT8TNwO4Lj1WrRjqs/Da1UN1nxqandv0HfzEO5HgS8duu2+fB
	LYig==
X-Gm-Message-State: AIkVDXIemQ4xZ34Fy08I7qBWEut7rRWfW1asSD/JG0XBV54kfmOMh/YEFcIDMDF+wP33e12A/bT6T6EGznJAEQ==
X-Received: by 10.159.37.227 with SMTP id 90mr47837279uaf.67.1483492391633;
	Tue, 03 Jan 2017 17:13:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Tue, 3 Jan 2017 17:13:11 -0800 (PST)
In-Reply-To: <65082de4-2ba6-3b18-1845-00b2d637404e@balister.org>
References: <65082de4-2ba6-3b18-1845-00b2d637404e@balister.org>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Wed, 4 Jan 2017 02:13:11 +0100
Message-ID: <CALbNGRSrXLdfUK3U2bXr20P+fFm4ROArGPRi9Ag=AhXbGjUv+g@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded Stand at FOSDEM
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
X-List-Received-Date: Wed, 04 Jan 2017 01:13:14 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 3, 2017 at 4:32 PM, Philip Balister <philip@balister.org> wrote:
> Every year since 2007, OpenEmbedded has a stand at FOSDEM
> (http://www.fosdem.org)
>
> From the first year:
>
> https://www.flickr.com/photos/32615155@N00/405229708/in/album-72157594561002629/
>
> Belen and I are sort of organizing this, but both of us are also
> involved in devrooms, so we will need a lot of help manning the stand
> and getting some demos together.
>
> Demos should try and show how the project makes embedded work easier, by
> showing tools and/or cool examples of devices using Linux built with
> OpenEmbedded. In previous years, we've shown toaster with data collected
> from demos on the table. Collections of devices running images built
> from the same recipe and interesting products using Linux by OpenEmbedded.
>
> I'm happy to try and organize demos and staffing, but I could really use
> some help this year, so if you are in a position to tak ethe lead on
> operating the stand, that would be a huge help to me and the rest of the
> project.
>
> Thanks,
>
> Philip
> --
I could bring along

1. Raspi2 + Hifiberry + Speakers + Midi-Keyboard + Xbox-controller
2. a SDCard full of desktops/multimedia/office/games using 1.
3. 2 days time
4. ?? - let me know

Andreas

