Return-Path: <sadlife1990@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68041E00AB9; Fri, 21 Apr 2017 05:35:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sadlife1990[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F14E00A93
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 05:35:48 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id q78so10341655vke.3
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 05:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TQ7U/WJH3/37Q3kBaQWZtN6ROKkLyXTkpOTpWMeItis=;
	b=QRSAG+jmJw8AciUqIBhGrLajYo+NeQMudNQV1DPsVHzop3B/jbG+6n3aIKtIp0E0R/
	8q96cDfV9F37sNFlyykNMqBXgu2wSN1Vp9/GpmUSZw3An8zEb871f/VsvbZ75lKxb6II
	7O8OuFChyevTCYpifdU5CVH9OQ3+seHnJZ+0fOSR9u+2XWUDAumD1rNOltAuGfJynz6W
	SpzjROjbNd6+AY/PQ5iKIdZFpAQDBD6y06GKYaGhcnWRR4KkhDIrVuwBqk5WHzDbwzhw
	8HyY/He+BVaIYTd+zTi3+gv/yZlNdGZN/cQ/ODADWCrJtm+Wj4NvazIQnvuyC7GlLzUk
	oQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TQ7U/WJH3/37Q3kBaQWZtN6ROKkLyXTkpOTpWMeItis=;
	b=GJAeaa+XLadlChJiL+7xNyKvqhAwc9/ZInS2u9nFbdKL6MbJVktIyfj+wc4JW07Jwv
	UpYZjsctwhfZeu0U5bbA9JQaStuOaR9ezQHMQqVu6EtcV/6kXCQ16XovCkMMfgwVwUjX
	ChsOvAqSmZdkJJw9bY4umfWhIG/+/o8i03YLt2oL6MAZURuRd39eCHMqdxxzBVYWw64a
	y7LRpSlYPNuIm13ss67eRknCVCxI6XH6xs3RF9coG2fzlYBI/PLvVMw00/LzQ8DUeaNe
	RVHsB642Dv/mLcmRfJ83srRLRIAXm3oxQEHZZVeYGccFKH1OS9LGqKsvhsRzLZfyFJ6g
	bwTA==
X-Gm-Message-State: AN3rC/7X9wkfiPmxbR8q1xq+eyYf+zFbx4s2pKuz7zvL/0BI4feMlm/C
	YH4HMEvsJiIVlOb4uQMSxK4V8JUVPg==
X-Received: by 10.31.8.144 with SMTP id 138mr4794045vki.144.1492778147897;
	Fri, 21 Apr 2017 05:35:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.105 with HTTP; Fri, 21 Apr 2017 05:35:47 -0700 (PDT)
In-Reply-To: <61C0517EAD808B429A1DE2DD9164D40030F88502@IRSMSX103.ger.corp.intel.com>
References: <CAAHuHfyWegZ3OYy97i_+r1DXQ0v_YsozhV7VLeqwepiUWnZ1kg@mail.gmail.com>
	<61C0517EAD808B429A1DE2DD9164D40030F88502@IRSMSX103.ger.corp.intel.com>
From: Weng Josn <sadlife1990@gmail.com>
Date: Fri, 21 Apr 2017 13:35:47 +0100
Message-ID: <CAAHuHfyMfe0UG6s4PW5udhz4zG05+e9FoJKn685wpsYKY+csjQ@mail.gmail.com>
To: "John, Maxin" <maxin.john@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto cups serial port support
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
X-List-Received-Date: Fri, 21 Apr 2017 12:35:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Thank you.

Best Regards.

2017-04-19 10:18 GMT+01:00 John, Maxin <maxin.john@intel.com>:
> Hi,
>
>
>
> Generally, cups serial backend is supported by =E2=80=9Ccups-filter=E2=80=
=9D package. You
> can find that package in the =E2=80=9Cmeta-printing=E2=80=9D layer:
>
> https://github.com/rossburton/meta-printing
>
>
>
> Hope this helps,
>
> Maxin
>
>
>
> From: openembedded-core-bounces@lists.openembedded.org
> [mailto:openembedded-core-bounces@lists.openembedded.org] On Behalf Of We=
ng
> Josn
> Sent: Tuesday, April 18, 2017 3:25 PM
> To: yocto@yoctoproject.org; openembedded-devel@lists.openembedded.org;
> Patches and discussions about the oe-core layer
> <openembedded-core@lists.openembedded.org>
> Subject: [OE-core] Yocto cups serial port support
>
>
>
> Hello,
>
>
>
>
>
> I checked /usr/lib/cups/backend not inclued "serial" backend.
>
> How can enable cups serial port ?
>
>
>
>
>
>
>
> Thanks.

