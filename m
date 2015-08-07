Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 385F2E00A3C; Fri,  7 Aug 2015 04:30:18 -0700 (PDT)
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
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4BD9E00A31
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 04:30:12 -0700 (PDT)
Received: by iodd187 with SMTP id d187so108734452iod.2
	for <yocto@yoctoproject.org>; Fri, 07 Aug 2015 04:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=TFaXFRSjhaEcuhi5LNran5aO/dmGr1BdusYYZzQWq1U=;
	b=zMTU9oo8L3/c0TwhAOuSnz0iE4mzp5AIJ6Kmnj4os7QPmqtEC/y+mHT/80YLoHXk+W
	cp5r7VHNWDMAmmf1Egi3S1kJUamaDnIJM6dEmQjLfByLCdKEZjU4KoIeqVUrEiJufG/Z
	QV27K/zjVQOgF1oZAxU96VNdEXvWe/Ff5ZZKYmf2w0E3QksRAbrUfpAFEzFF8YIg0sNK
	rPmwDBdg1gVN3cYqnlOqWjNkc5w65KLeQ9osNXSDb7fJGb+ABn4nXRTbfVv4ZB03kLcC
	boJ4WhER7h9/XxUrsstmhwNzm++3/v+ugpD1cQTmDDsVjEDh9PRoFZmgzhXQBI4vsovl
	uTUg==
MIME-Version: 1.0
X-Received: by 10.107.33.18 with SMTP id h18mr6738435ioh.148.1438947012348;
	Fri, 07 Aug 2015 04:30:12 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Fri, 7 Aug 2015 04:30:12 -0700 (PDT)
In-Reply-To: <55C48C51.3010900@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com>
	<CALbNGRRCTwfoXkSSr9TR-=-vaQCasZDbf=T2hNk2mbshtNtE2w@mail.gmail.com>
	<55C48C51.3010900@osg.samsung.com>
Date: Fri, 7 Aug 2015 13:30:12 +0200
Message-ID: <CALbNGRSbCVEs7SRq7-M7EjFy1wfJVeZgyx-Os6qyYtFvnPV2tg@mail.gmail.com>
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
X-List-Received-Date: Fri, 07 Aug 2015 11:30:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 7, 2015 at 12:45 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> Hello Andreas,
>
> Thanks a lot for your feedback.
>
> On 08/06/2015 09:41 AM, Andreas M=C3=BCller wrote:
>> On Thu, Aug 6, 2015 at 8:59 AM, Javier Martinez Canillas
>> <javier@osg.samsung.com> wrote:
>>> Yes, I in fact was not sure if it should be a distro or machine feature
>>> and then decided on the former because there is more than the kernel to
>>> make it work like changing mesa configure options. But as mentioned to
>>> Andrea M=C3=BCller, probably we should ship a mesa .bbappend for this i=
n the
>>> BSP so I agree that a MACHINE_FEATURE will make more sense.
>> Suggestions:
>>
>> * Mesa: A simple append with
>>
>> PACKAGECONFIG_append_rpi +=3D " gallium"
>> GALLIUMDRIVERS_rpi =3D "vc4"
>>
>> would do. If you check mesa.inc in oe-core others (intel) do similar
>
> That sounds good to me.
>
>> (we might have to wait for a more recent mesa expected in September).
>>
>
> Why do you think we would have to wait for a newer mesa? AFAICT the mesa
> version in Fido (10.4.4) already has vc4 support [0]. Although we have
> been using mesa master so I should test how well 10.4 works. AFAIK Derek
> picked a specific mesa sha1 that Eric's vc4 DRM driver was known to work.
Just started an image based upon oe-core's master sources yet - no
EGL/GLES tests so far. This weekend I will try som EGL/GLES and am
really excited to see how far I get with my first open source graphic
stack (am so tired of this blob crap)...

Andreas

