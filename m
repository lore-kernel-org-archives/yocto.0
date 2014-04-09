Return-Path: <wpdster@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A106E00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 04:14:03 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id up15so2357791pbc.6
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 04:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8OyBD3gQh9/JnK/JoERGqGUPx78b/RefRiR9xFXoni0=;
	b=kwlqad4mQOQTyLhX8y8wnJgcN83QLRGOy6q8HLZ72SgR4ePpjWuOEoQt4/X0WG45e2
	k7Nsu1fnFKFCq1wTPC6uQEkRDUhk+CjP7POSGf/AE5N9Uec0LmwBM1ri1rmXScJdn7eH
	B3rFcuZrCNd/bzZaQQFFwVR0hTDQOapYqOc/qSkxtkQVCaoeZ+zMEAitXlGIOUkCIlgv
	LR0bX13DMrIUcu/acrjhzJtQT0SH/5c/MgyRZvrXyNPzrxh4D8mQIn1IaQn3MHYE4Wg1
	VjXy7d8mG9c5C26mofat1JhBQLzbxI+MUCJmnJpsOMBidgH7x1/iT8MCby2cmxoE3H97
	zwJg==
X-Received: by 10.68.102.34 with SMTP id fl2mr11275709pbb.2.1397042043700;
	Wed, 09 Apr 2014 04:14:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Wed, 9 Apr 2014 04:13:33 -0700 (PDT)
In-Reply-To: <CAJTo0LbrFHPfQ5kD9XfaSTc2YM_1x=AzdC4CYJecc_w6FM7n9A@mail.gmail.com>
References: <CAF_dkJBmwwiaC0Kna5rrZ2J_WnKYz9gvTU55xBXCkEyxoZ88yQ@mail.gmail.com>
	<CAJTo0LbrFHPfQ5kD9XfaSTc2YM_1x=AzdC4CYJecc_w6FM7n9A@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Wed, 9 Apr 2014 07:13:33 -0400
Message-ID: <CAF_dkJAbX84L7zVZPMkYKxesuwjfeHB-B6mzJFoqkEvHOqHj-Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	gstreamer-devel <gstreamer-devel@lists.freedesktop.org>,
	gstreamer-embedded@lists.freedesktop.org
Subject: Re: Squeezing a gstreamer video pipeline into the smallest footprint possible
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
X-List-Received-Date: Wed, 09 Apr 2014 11:14:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you for the tips folks... please keep them coming.  At the moment
(for this pinhole sized project) I only need support for video.  Is
there any way to strip out all of the audio components from the
gstreamer I generate?  I tried adding --disable-vorbis to my recipe,
only to find that config.status shows that both --disable-vorbis and
--enable-vorbis options we set in ac_cs_config.

In the mean time, I'm going to go build my own pipeline & link it
statically as suggested by Sebastian.

Thank you again.

--wpd


On Wed, Apr 9, 2014 at 4:53 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 9 April 2014 00:03, Patrick Doyle <wpdster@gmail.com> wrote:
>> I have a ridiculously pinhole sized memory footprint into which I
>> would like to squeeze a gstreamer based video pipeline.  I am looking
>> for tips on what I can do to minimize the footprint as much as
>> possible for my Yocto based system.
>
> The GStreamer plugins and libraries are all packaged independently in
> Yocto, so you can do some heavy size reduction by just installing the
> packages you need, and double-checking that nothing unexpected gets
> pulled in via dependencies.
>
> Ross

