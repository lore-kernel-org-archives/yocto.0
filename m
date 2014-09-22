Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D170EE00566; Mon, 22 Sep 2014 09:04:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C183E0034C
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 09:04:04 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id f51so3183404qge.16
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 09:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=9bA+k6s6tHa+6EKOXRN9iMOEqSVykm6OMDHiU+vzZ5w=;
	b=Em2Yr2Z43Y5lkWbiRq42zG5azaCv0ftqKur+cTDrvG4D8TP5XcZTVbO6QLAl3B9JO/
	/1IEFQIILjlEt/2v9YyIS3e9FU2uhFlPhi1GVc9h8mu+G0xTNOX7NR1Oekv3/n2qwT7X
	XnGU8uvhMPP6n79XIy8FOTmNAGCXFZpjSJ/C7VlLJnr1HmS+a1mNU3XrptEthZ6QTpka
	KIOIenp25MmLm42l5l5uNYi3CQgb8ErVewKE9gC6/HkTicJ/oUzdn5rHx8lQI2M1QZrB
	lB0If1fLYvDIRYlhf848CidWEJBWitln2t/9egD12zcrKQy3d5bv7POzTURtQ/P+p/tc
	V8Hg==
X-Gm-Message-State: ALoCoQn8T6TepyJL8aIPbJtlxG9+GPpmsrVAJdUJYxU089XrjJziUQfdSWJxLZ4byJsdc8oWJ3AU
X-Received: by 10.224.104.2 with SMTP id m2mr24035919qao.52.1411401843303;
	Mon, 22 Sep 2014 09:04:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 09:03:42 -0700 (PDT)
In-Reply-To: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
References: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 17:03:42 +0100
Message-ID: <CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
To: "Summers, John S" <john.s.summers@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Mon, 22 Sep 2014 16:04:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 20 September 2014 01:08, Summers, John S <john.s.summers@intel.com> wrot=
e:
> I am showing build failures for both util-linux (bitbake util-linux) and
> gettext (bitbake gettext):
> .../tmp/work/core2-64-poky-linux/util-linux/2.24.2-r1/util-linux-2.24.2/t=
ext-utils/more.c:1947:
> undefined reference to `mbrtowc'
> =E2=80=A6/tmp/work/core2-64-poky-linux/util-linux/2.24.2-r1/util-linux-2.=
24.2/text-utils/more.c:1970:
> undefined reference to `wcwidth'
>
> I am trying to build a core-image-minimal-initramfs image and get the abo=
ve
> error.

What revision of git was this, and what OE distro?  I've not seen this befo=
re.

Ross

