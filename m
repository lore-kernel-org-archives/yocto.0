Return-Path: <jefro.net@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EACF1E01513
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 11:38:20 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id fs12so10757803lab.26
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 11:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=y/ldx8fPCO6iqSSpUpSK3YPAstnXc+y6GqYbhnj9vdk=;
	b=OQ+ZcKEukunFBPMRttV2a6ZOTYam04VrmsDZNj9tqpRvsgOMxTQAEorHyMh8VSIQ5A
	0U4XwvXtyJZISyFLNTghBfneUbjkOAji3AzkkzJlEjiFwVw2TZKJKmwLS81gByeTa2dc
	pOnr2CY6m2J3lij6B/gbNpWZdoRwDG+WE8S0pU/9uoPKTz01465YeG6qZzGuqmrhbTUj
	LfPIBBYZW7PIwJRdCAZSlh+5JiW585LITWDQ825JhrxJi9C25WWrjByjGWlj9Obf8jzM
	Khmkc1r4uVt9g/CP++CwYMlukRXw2LMqWHG0swjrHYbjL7BuWa8Zhu5X9HVAO9cgvzeF
	9P5g==
X-Received: by 10.152.27.195 with SMTP id v3mr11982115lag.73.1372099097303;
	Mon, 24 Jun 2013 11:38:17 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.30.146 with HTTP; Mon, 24 Jun 2013 11:37:57 -0700 (PDT)
In-Reply-To: <51C88F22.6030605@balister.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
	<CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
	<51C88F22.6030605@balister.org>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 24 Jun 2013 11:37:57 -0700
X-Google-Sender-Auth: XcgzsvqBGcLB4bdTTyMU7B4kdGI
Message-ID: <CA+YB3rbnUOssFc-w5Ak-X_rVPqhJnkJ+NiWEyJDJXL61gGJ0Gg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 18:38:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jun 24, 2013 at 11:25 AM, Philip Balister <philip@balister.org> wrote:
> Showing how Poky (the reference distribution) is built would be a nice
> way to introduce people to building their own custom distributions using
> OpenEmbedded.

Totally agree, but I would relegate that to a separate effort. The
main problem with diagrams like this is trying to squeeze in too much
information in order to preserve completeness, at the expense of
clarity. It would be more ideal to start with a very simple diagram,
then move on to other diagrams to zoom in on pertinent detail. It is a
delicate balancing act. In this case, I would say to put "how Poky is
built" into the 3rd or 4th diagram in a series.

I'm glad to see this conversation happening!

--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

