Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F0E1E00A2C; Thu, 16 Feb 2017 05:54:13 -0800 (PST)
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
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C734E00A1C
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:54:09 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id n125so1382358vke.3
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 05:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+HxQco2QRGdRY6OKrlUAfXIEieln33Xh7sNiyS6kd54=;
	b=D9ZMRc6cDKaFeOVu8LVLjrk4Voba19zI7OVBmjCXcACxJIMcX+z7TEERfLkntXy1Hj
	VuJ9cCuMp9EX4jQt573zJydc5+qq88WjtGp29Qx8j+hfm5cy7GgakiCQXmKb24oPtxWu
	l4gzyvRf4RIeOh7PEojPLxbpAXhGmM436+Cg+1cKJuYrdONBLAmiKzpgd6KEaD+h9DKj
	t/n2kLHLZAcMwXj2GP3DFQXvo1kepZpAthrmn5eJv4jZwUglaPFpNtWoN/CzOn2Up7eE
	t8N5KinzL/44SZrtUobS4GIVZt9z05P9gT+RomiIg7GvUYnMstZmNyrYbvj1ct5pBcvN
	/Tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+HxQco2QRGdRY6OKrlUAfXIEieln33Xh7sNiyS6kd54=;
	b=orwhjvKBN3PbkdJaLB0TFcWjbRtnCOq0StF2+W2GOpE0J/qJ1vwqBdnlAmTLM74NA1
	QsqWNw8ONdxLed/b7FIH17GN8XCgnxLNMQwbYbbBluMJFO83sHe3BT6c+Mxjit1jZjBU
	4tEOSWFPVR/4nHW8zCc+oh3CDMbfKMqQ7LAKfM67cjJ7qPIZ+Uv5Hcz/ZSOXycpb2DTj
	QCycXyRhBAB+ZNVofJhNrC8DU02t8OcVn4nIqhja4RD1kPuQqiRzsc1kfAPYmxR4outK
	HXXGkQtRjnm0330LO/5DhdOP70ecHNOitnDNZxcp6QPaHqG7ZFso8gp55wNTQdQdnFtE
	g56Q==
X-Gm-Message-State: AMke39lmtWd/6DZxIDFNbqXwMT5f5aZmq48hbPhunDBlfyr6XBxz1OaaJfRAVzg80om5dgCBpJAKxcffzk8BcQ==
X-Received: by 10.31.155.75 with SMTP id d72mr1079384vke.55.1487253249197;
	Thu, 16 Feb 2017 05:54:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.91.68 with HTTP; Thu, 16 Feb 2017 05:54:08 -0800 (PST)
In-Reply-To: <CALbNGRQ8-SSnNv4DeNMBQ1xiBSvLidA-mpmOhEHGiLqF=CUyFg@mail.gmail.com>
References: <1487245741-13739-1-git-send-email-schnitzeltony@googlemail.com>
	<ed3fbe7c-ea82-6467-d678-fb6f4478f23f@mlbassoc.com>
	<CALbNGRS=i0ZWmvrtbTXkj2LxQw0_iGRu0K5qu=5D-rtzRS1uLA@mail.gmail.com>
	<CALbNGRQ8-SSnNv4DeNMBQ1xiBSvLidA-mpmOhEHGiLqF=CUyFg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 16 Feb 2017 14:54:08 +0100
Message-ID: <CALbNGRSKWgUgms7+OivnanSN_+Vhi1EN=tm_mVWE_JuBV359uA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] xserver-xf86-config: remove evdev configuration
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
X-List-Received-Date: Thu, 16 Feb 2017 13:54:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 16, 2017 at 2:50 PM, Andreas M=C3=BCller
<schnitzeltony@googlemail.com> wrote:
> On Thu, Feb 16, 2017 at 2:42 PM, Andreas M=C3=BCller
> <schnitzeltony@googlemail.com> wrote:
>> On Thu, Feb 16, 2017 at 2:38 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>> On 2017-02-16 12:49, Andreas M=C3=BCller wrote:
>>>>
>>>> xorg-xserver recommends xf86-input-libinput since oe-core's commit
>>>>
>>>> | commit 2d005faff6341a81a2afae28860101ba9db51ae8
>>>> | Author: Jussi Kukkonen <jussi.kukkonen@intel.com>
>>>> | Date:   Wed Oct 26 11:37:38 2016 +0300
>>>> |
>>>> |    conf: Use xf86-input-libinput by default
>>>> | ...
>>>>
>>>> As nice side effect warnings for missing evdev in Xorg.0.log are gone.
>>>>
>>>> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com>
>>>
>>>
>>> So, does this let my simple config (HDMI+USB keyboard/mouse) work with =
no
>>> further fiddling?
> As far as I remember you are using an elder release. To be honest: I
the following
> don't know if and what oe-core suggests ifo nput driver for elder
should be
don't know if and what oe-core suggests for input driver on elder
> environments.
>
> In my environment I do simply nothing but follow oe-core with
> xf86-input-libinput recommendation and whatever I have connected so
> far by USB (mouse/touchscreen/keyboard) it simply worked.
>
> Andreas

