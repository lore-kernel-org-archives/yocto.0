Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 523E6E015FD
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 13:24:29 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id p13so677900vbe.19
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 13:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=hTfDb0ZAyIQXGu9F7HjedhwYmMOCsBMXUDlhPGYr8NE=;
	b=cvfRLuUBrLL+WiLVqwqo6AsOUf6xNeQQE+NalVs9Ac5Y7PbEa+L7V7wvxFN3sQeICm
	xRVsNH+/qWqi75kg3w5zw4MeWOU+0W0whel59bHa9QP9uv+Q/mzCd6gtWiJU4RFYzRqo
	r8z2yFMK06BVMDDkNeQKym+6YAAbssOJLw8Lb3Dyz5a/KxadjAzTFS1fLMSCszR7zZkP
	F8E/RMrt7lSddK7cnWiSCttCVCdjvsg4eU5VtC1wPFX0pxXBvsTbTuWHKaAJ9AOiQchi
	HYGD8gCVYWMRvkesI0HHKLn+vwSqWOjkcpeEVMupLuho6fIDbM/Y09G/TeDLhUcibAGY
	WemA==
X-Received: by 10.52.108.230 with SMTP id hn6mr2055031vdb.28.1379708668984;
	Fri, 20 Sep 2013 13:24:28 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.109.72 with HTTP; Fri, 20 Sep 2013 13:23:48 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153B26E1373@pluto.melinkcorp.local>
References: <CANyK_8fTtdxWXPf9eSgpQWvvPspaashL14vi-h8x15FtJOQ0DA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B26E1373@pluto.melinkcorp.local>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 20 Sep 2013 21:23:48 +0100
X-Google-Sender-Auth: SVJ9Rhu1eI27L6y_1t8BspdGb5w
Message-ID: <CANyK_8ds-F1Y2gPjKezDJW0NY5nixpCAOjBWow_J=jsLOLKwWg@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: RFC: Janitorial tasks
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
X-List-Received-Date: Fri, 20 Sep 2013 20:24:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 19 September 2013 19:26, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> Paul,
>
> Is the plan to move toward the YP wiki task list, the YP bugzilla, or both for Janitorial task entry?  If one would be preferred over the other, it'd probably be good to state that at the top of the wiki page.
>

Currently it's both as both can be seen from the YP wiki page.

> For the wiki task list, maybe add an "Assignee:" line, so that someone knows if the task is being worked on?  Would be frustrating to work on a task only to find someone else did the same thing.
>

Probably a good idea.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

