Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AEE1E0082D; Mon,  5 Jan 2015 20:52:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22566E00751
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 20:52:43 -0800 (PST)
Received: by mail-pd0-f177.google.com with SMTP id ft15so29187180pdb.8
	for <yocto@yoctoproject.org>; Mon, 05 Jan 2015 20:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:reply-to:user-agent
	:mime-version:content-type:content-transfer-encoding;
	bh=tFmYsNi8w58QHimpX6cE2QQRjEwWlvXqakv5zMDsAHM=;
	b=XfjNIBKAv+dfrXneLCkAdtA8s9/84T2JlkR5ftB/x4kbd6CScWkwLKj6a6Xd7nxs16
	o0RZ4FYRsQhq9BGqgEYhI/onZQzrH5jV68Tt7VuCg6ZjfPN4WxTiCVoZVkz47jDBKFdf
	+r23yDbIg5xzk+GNqXkOX1rVhDiSkhfNHlsPqX9W+GTt9Mueq+jmAVspJAiuJuzeFDRU
	+bcQDk7qA6LbG25nb/NRh0AnxufDWZ+8Ocjl0yhFt74ZVC4MEXoQVlo1fpeiceZjuqjE
	WAd1vxPw1GLkGYbRrm0bnuYBY5WbuMxc6h0qgwYmyUpatofQ0N64HPChhiqxSIBrwbvB
	HYIg==
X-Received: by 10.68.102.5 with SMTP id fk5mr150290902pbb.136.1420519963091;
	Mon, 05 Jan 2015 20:52:43 -0800 (PST)
Received: from [192.168.0.7] (50-0-152-82.dedicated.static.sonic.net.
	[50.0.152.82]) by mx.google.com with ESMTPSA id
	nl14sm45011461pdb.81.2015.01.05.20.52.40
	(version=TLSv1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 05 Jan 2015 20:52:41 -0800 (PST)
Sender: Jeff Osier-Mixon <jefro.net@gmail.com>
From: "Jeff Osier-Mixon" <jefro@jefro.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Patches and discussions
	about the oe-core layer" <openembedded-core@lists.openembedded.org>
Date: Tue, 06 Jan 2015 04:52:35 +0000
Message-Id: <emc8fd6374-7cfa-4956-a492-82fe51f1d0ec@io>
User-Agent: eM_Client/6.0.21040.0
Mime-Version: 1.0
Subject: Embedded Linux Conference 2015 - Call for Participation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Jeff Osier-Mixon <jefro@jefro.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Jan 2015 04:52:53 -0000
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The deadline for this CFP is coming up soon, so please submit=20
presentations!

------ Forwarded Message ------
From: "Tim Bird" <tim.bird@sonymobile.com>
Subject: [Elc-announce] Embedded Linux Conference 2015 - Call for=20
Participation

Hello everyone,

The CE Workgroup of the Linux Foundation would like to invite you
to make a presentation at our upcoming Embedded Linux Conference.
The conference will be held March 23 - 25 in San Jose, California.
The theme for this year is "Drones, Things and Automobiles", and
we're excited to discuss some new areas where embedded Linux is
really taking off! (pun intended

For general information about the conference, See
   http://events.linuxfoundation.org/events/embedded-linux-conference/

For information about the call for participation, see
   http://events.linuxfoundation.org/events/embedded-linux-conference/cfp

Please note the guidelines on the CFP page. It's usually pretty obvious
when we're reviewing the abstracts, as a program committee, who has
read the guidelines and who hasn't.

ELC is the premier vendor-neutral technical conference for
embedded Linux developers. The conference is open to the public.

=3D Guidelines =3D
Presentations should be of a technical nature, covering topics
related to use of Linux in embedded systems. Topics related to
consumer electronics are particularly encouraged, but any
proposals about Linux that are of general relevance to most
embedded developers are welcome.

Presentations that are commercial advertisements or sales
pitches are not appropriate for this conference.

Especially encouraged this year are talks in the following
areas:

  * Linux in Automotive
  * Drones and Robots
  * Linux in the Internet of Things

And we'd also love to hear your proposals in the following topic
areas as well:

  * Audio, Video, Streaming Media, and Graphics
  * Security
  * System size, Boot speed, and Real-Time Performance
  * Flash Memory Devices and Filesystems
  * Build Systems, Embedded Distributions, and Development tools
  * Mobile Phones, DVRs, TVs, Cameras, etc.
  * Practical Experiences and War Stories
  * Standards

Most presentation slots will be 50 minutes long, including time for
questions.

Tutorials, demos, and Birds-of-a-Feather sessions may also be
proposed.

The deadline for submissions is midnight January 9, 2015 PDT.

To repeat, for additional info and details for making a proposal, see
http://events.linuxfoundation.org/events/embedded-linux-conference/cfp

I look forward to seeing your great ideas and projects,

Thanks,
  -- Tim Bird
  CEWG Architecture Group Chair,
  Program Committee Chair for ELC
_______________________________________________
Elc-announce mailing list
Elc-announce@lists.celinuxforum.org
https://lists.celinuxforum.org/mailman/listinfo/elc-announce


