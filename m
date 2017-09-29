Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2A3FE00D5C; Thu, 28 Sep 2017 17:11:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.181 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BBFFE00D4D
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 17:11:04 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id k62so5184067wrc.9
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 17:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=jOO65u6Kbes36/jxZrtyMD+BKj2TaHUqYQjL9vjCw34=;
	b=cgCFqGx+pcWqYK3A9ZSNh/b1xB60FP2r+Oi1sAlQmgKuCpa1dtkaTQS+efUzq8jHQc
	coBzOSvmGmCNOCjuaMjVpfCBowsFi42divBaITqsAWFsfJA6FXcKWi3Gq3pbv8uvLQJK
	3rVKMDUI+vDKu9Lu99Norixwc+GtSGPrEFx9Ow8uJIMPTVKQ73zEbUbKXgQuSX7Z5ufX
	jcWQKRHiRCX5H/rRifQsKSEZjubg6Z7HfHDpul1yWofO/plnVuMlHLxpR+bUbYyTtkai
	z6batBi8GcHhGp9BpLHFG3tRwQgGwVgV4Lt/RfVOsKScLZQ2MgoNSphxn/NaPselF1hO
	70Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=jOO65u6Kbes36/jxZrtyMD+BKj2TaHUqYQjL9vjCw34=;
	b=YyIrOd2lbKsZasUDoND4yFrplQQOKMSAv0lym/+iN9jj6YK2Wj99GghG3eh5uT+rv0
	pW6XslxEWogeIxvsvzlT9hInEbq0xRqD34EY560STCz6ScedzTeEpKKXFne56v068xnU
	NrvUgMdgAcFge7ZCacHPXqufbmPjhJldiX9tCQJ2UNqlIORdJ3/yZPeVv/Rcgk272MXH
	bYgzX9XcQ2vEQqJBEMQFFUVYpbiAfoUoBMb0P8NF7wGw2LHF95UR2ecgDFSHtELTjcDO
	u9pPxKtHfZ+t+UJEW5IzGuzDnzOM5jzjT3GFcKWPyDfbT/hFoqP4GuknKTB7KGffHbcH
	fK8Q==
X-Gm-Message-State: AHPjjUiy2dGre2X6XGWCj88JnRKn57bTZmffDSjUQLe4Y8Bfr3J8Uq9f
	tsEFWVifVG98AdT079x0jRp8G/sFApVUwWb5wWI=
X-Google-Smtp-Source: AOwi7QCIWU7XUZWDlr7csUi7BPMeZ/lTGvruP7e8TCthGTwIx3kiQD3Zp6oGerwdRPxh34R9qWkDPYMj8lcu1PgolM4=
X-Received: by 10.223.186.140 with SMTP id p12mr5788478wrg.235.1506643863507; 
	Thu, 28 Sep 2017 17:11:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.136.204 with HTTP; Thu, 28 Sep 2017 17:11:02 -0700 (PDT)
In-Reply-To: <13953290.7vapLMCcyK@peggleto-mobl.ger.corp.intel.com>
References: <7C20937E-B5A7-4824-89C2-B93B198E3EDB@korgrd.com>
	<CAJ86T=V6sbzpz4_3dYrjhkxkavWJbs1vAU6x95GjRTdVT5cX+w@mail.gmail.com>
	<1A69A446-50D3-4FE2-AC3E-4B26099B9EB5@korgrd.com>
	<13953290.7vapLMCcyK@peggleto-mobl.ger.corp.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 28 Sep 2017 17:11:02 -0700
Message-ID: <CAJ86T=W262WSB0Mx+ban2OkXk6_reL3j+j7wHH1Kk_dnkcPcTg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Steve Pavao <stevep@korgrd.com>
Subject: Re: advice on recipe for shared lib mDNSResponder
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
X-List-Received-Date: Fri, 29 Sep 2017 00:11:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 28, 2017 at 3:30 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Steve,
>
> On Friday, 29 September 2017 5:29:32 AM NZDT Steve Pavao wrote:
>> I was unable to successfully build that recipe here, though.  I=E2=80=99=
ll check
>> with the maintainers to ask why.
>>
>> All I did was clone the meta-intel-iot-middleware repo, add that layer t=
o
>> bblayers.conf, and add mdns to IMAGE_INSTALL_append to get this far.
>
> FYI the meta-intel-iot-middleware repository is no longer being actively
> maintained, however coincidentally I am currently in the process of updat=
ing
> and moving the useful pieces elsewhere. mdns wasn't on my list, however I=
 have
> just tried to fix it up, here is what I have so far:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-middleware/commi=
t/?h=3Dpaule/mdns-upgrade-1&id=3D7389dd6b1d3e69a05b8fa62673ba03b2a91073ff
>
> Unfortunately I hit a linking issue - the dns-sd binary gets linked to th=
e
> unversioned libdns_sd.so symlink,

If the lib isn't versioned, what does the symlink point to?

> which (correctly) is packaged in the -dev
> package, but as a result you get a do_package_qa failure (and probably
> runtime issues). Moving the .so symlink into the main package wouldn't be
> the right thing to do, so the fix should be made elsewhere. I don't have
> any more time to poke at it but I'm guessing it's not that hard to fix if
> you're familiar with this kind of problem. (The issues we've been dealing=
 with
> here are unfortunately par for the course when building makefile-only
> software.)
>
> I'd probably recommend going the avahi route as suggested by Ross in his
> reply, but if you absolutely need mDNSResponder then maybe this will get =
you
> some way towards that.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

