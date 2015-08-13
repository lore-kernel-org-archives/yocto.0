Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83B02E00A7B; Thu, 13 Aug 2015 09:00:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E05CE00AAB
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 09:00:09 -0700 (PDT)
Received: by igxp17 with SMTP id p17so23590029igx.1
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 09:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5PQtS+KgYgkbYb96j8k/ge9UgVp7ECdgmFHRK9/b1Cs=;
	b=eKRcrmCVeAY/sxbSeFx0Nj9C6PFhLKvFTDXW+s8L/Nobmke10P3jeCxEm4PsT7jb/o
	wtMObU3p9rZt4T+UKyyugkCoRI9t5VXrYL0oqAX15boNah1ZhSNdHlipzvGSVteJCJCl
	BTuRpfPxmQ/9gm/nIe5Qz8l9XWd06CcXHWXz21GiyTGOixScyIsbTUNltHP48SVSJtIn
	55lzD00rM8ALiFPtOhyCQBohgMpXUh3s3tNEgrH/UN2gipItV8UegdErbxOjpTyl9u3i
	Bnh9nYR/iRf0zF+xWbje91KCjG8kmUwtcmWhNdOlIq4xKx/AskpUc82PWY3f3CW3IC7v
	Ru1g==
MIME-Version: 1.0
X-Received: by 10.50.138.73 with SMTP id qo9mr3511803igb.64.1439481609172;
	Thu, 13 Aug 2015 09:00:09 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Thu, 13 Aug 2015 09:00:09 -0700 (PDT)
In-Reply-To: <55CCBB2F.3050100@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
	<CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
	<55C85F2E.9080600@osg.samsung.com>
	<55CB5F4A.9060806@osg.samsung.com>
	<CALbNGRRU+HT+o7KsK_DDVFGMQgjERyp5ASfHE39YzeaomUxHnQ@mail.gmail.com>
	<CALbNGRRpXGJ6HwkTNu-sZFn3_qPdc4s9n=o-TWVTyfKiAxnHZw@mail.gmail.com>
	<55CC45B7.4010603@osg.samsung.com>
	<55CCBB2F.3050100@osg.samsung.com>
Date: Thu, 13 Aug 2015 18:00:09 +0200
Message-ID: <CALbNGRRC8+UqV4F5XSSuHqLcRDsRzb0czSTj4XQLAYD28hF7jA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Thu, 13 Aug 2015 16:00:16 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 13, 2015 at 5:43 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
Hi

Thanks a lot!l. I am afraid my build machine at home (RPi is hobby) is
about to die for hard-disk issues. As soon as it's back I will try
with updated mesa.

As I cannot do myself currently: Can you give glmark-es2 a try?

Andreas

