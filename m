Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEB75E00B30; Thu,  8 May 2014 08:14:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f49.google.com (unknown [209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88543E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 08:14:46 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id a108so2899417qge.22
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 08:14:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=p5DvWiIJP80S/aTlrBnCTkJmnziECUjzdJsVCFjIPqE=;
	b=c0EpF9fZEa6sl6CeK03xGiVc4ro/MBxsSycWm5AaCVONLHYq0o8kCpespOz7PXgtj3
	U/9ka2gEss0TTo70kLeGJqrTRnkYLGH5qw1mCxPuLS2l2TFAK6dcbFxWVr3aDk2hYOrN
	oFay5919tgilgYEeb+uWquxhp3CtssT4EFIV8jUpJyR0PTsSwze2vGbajvYCMiyKOCpT
	l/oWs9XQuibt+zTs+a5yNrl0llE6UdOBv6Yss7sXzfAi/nOWr3RYPuLQ4g1325GVa617
	BlfkokzCwP2qmOoR3zzvRRp3XH632L8bMMI0CNWr5FOWEJAhER6rTF1EiybglONjOreq
	TtZg==
X-Gm-Message-State: ALoCoQk7U4kHiR8/nKCN/Lws9LXvW2/1BQ+jrvlFXpgmCtRkhRSnnhPN57SnmFYoJj401yNnoSGb
X-Received: by 10.140.28.3 with SMTP id 3mr5476775qgy.71.1399562086422; Thu,
	08 May 2014 08:14:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Thu, 8 May 2014 08:14:26 -0700 (PDT)
In-Reply-To: <4880759.hcBN3hRDv1@peggleto-mobl5.ger.corp.intel.com>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
	<4880759.hcBN3hRDv1@peggleto-mobl5.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 May 2014 16:14:26 +0100
Message-ID: <CAJTo0LbxkJxeqThO1EYGv0Gb-KQcYaC+od_JAa-2c8bzEsogXA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-devel <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] GStreamer 0.10's future
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
X-List-Received-Date: Thu, 08 May 2014 15:14:50 -0000
Content-Type: text/plain; charset=UTF-8

On 8 May 2014 16:07, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> The next question is does that mean for the "old" libav (which gst-ffmpeg
> depends upon), do we move that as well or drop it?

If gst-ffmpeg is the sole consumer, then certainly yes.

Ross

