Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20A07E0073A; Thu,  8 May 2014 09:32:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE, RCVD_IN_DNSWL_NONE,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1651 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 09:32:23 PDT
Received: from mail-pd0-f175.google.com (unknown [209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89116E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:32:23 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id x10so2503423pdj.6
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 09:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=LDOdKCkv6ZjpjVcR6ZUJVMe7pui7wE9hnQLr7Wrc8jc=;
	b=rDCyQleG0AdBlrzCQkbnwdpJ1Epmlz35WGpBVNYRdgkp0Vxnz/bOVaU2CyuAuVqcU5
	NLPvW+Ftr1FdnODvOXZQCZkGY1RXoMFrrsOOVRPrAum/elNE2yL9Yy8ojfh3NJCAYmob
	Ho+SS2BczTHXJBCamffm+P7Zz/BBKPlAdn+fY8B2jjn8jvuH87mh3kE6aZGsE5VvIkCl
	miKcQSjfYA72Rx1oqCT3rvJTrC1zPbAk9NvTkNg3Lk96xOJnXSIpa4WxJW/mMA3rR2r8
	IyyhCRHikVDW8D0TO+ZlvB6qnl5Rw7KhpTJQcdK1KEzgZdv6aCe3jQgKb0HcGLUSwV44
	bylQ==
X-Received: by 10.66.172.167 with SMTP id bd7mr2935714pac.72.1399565092377;
	Thu, 08 May 2014 09:04:52 -0700 (PDT)
Received: from [30.38.35.7] (m910436d0.tmodns.net. [208.54.4.145])
	by mx.google.com with ESMTPSA id lr3sm6315605pab.4.2014.05.08.09.04.50
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 08 May 2014 09:04:50 -0700 (PDT)
X-Google-Original-From: Tim Orling <TicoTimo@gmail.com>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
	<4880759.hcBN3hRDv1@peggleto-mobl5.ger.corp.intel.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <4880759.hcBN3hRDv1@peggleto-mobl5.ger.corp.intel.com>
Message-Id: <0906179D-0519-4C3E-B269-ABC8B1857021@gmail.com>
X-Mailer: iPhone Mail (11D201)
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 8 May 2014 09:04:45 -0700
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>, 
	OE-devel <openembedded-devel@lists.openembedded.org>
X-Mailman-Approved-At: Fri, 09 May 2014 08:12:07 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 08 May 2014 16:32:25 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> On May 8, 2014, at 8:07 AM, Paul Eggleton <paul.eggleton@linux.intel.com> w=
rote:
>=20
>> On Thursday 08 May 2014 15:48:40 Burton, Ross wrote:
>> Hi all,
>>=20
>> Sorry for the cross-post but I want this to have a wide audience.
>>=20
>> For the 1.7 release I want to move GStreamer 0.10 from oe-core into
>> meta-multimedia, and ensure everything in oe-core has ported to
>> GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
>> unmaintained so we don't need to be shipping both versions anymore.
>>=20
>> Everyone in agreement?  Should I expect any hate mail over this?
>=20
> +1
>=20
+1 as well
> The next question is does that mean for the "old" libav (which gst-ffmpeg=20=

> depends upon), do we move that as well or drop it?

If xbmc is ever going to work, it will need to be updated to build ffmpeg in=
ternally. Unless we can get upstream to improve things.

> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> --=20
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

