Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B968E00B5A; Wed,  9 Dec 2015 03:50:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24DB9E0079A
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 03:50:01 -0800 (PST)
Received: by wmuu63 with SMTP id u63so218678324wmu.0
	for <yocto@yoctoproject.org>; Wed, 09 Dec 2015 03:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=BQ4+wLU60+eYeViClHs3QwXoDzfPPUDtkKSGr5sVe2c=;
	b=ZekJNjssSZRvLWSXbazt3egp1jatHlQM+/DYaOw7oj6iWqlvlkYXpVBTCn0WvApYWC
	EtU9nmF7DOuQeAXtUT7Y4VCIyxAoaYnihT5pAwFpXgA5av9AV67yHOh+tGCsR8R1izz7
	MzMQz1yYZjbepkkoLmzg3ylXFsI60SsnT7cUNgbE/O+D4ExKfaBDvws/yGwxO4EfZzDN
	yslVZIyax5ff31t/yp+gmChnZCC8sKMP6erEwZfPlvndNAFkD6d4qtk9sNg5qsC5yiqa
	SPVnDzqP3PhmuXFYCz0BdPj4ZjoaeQornoV/7UMUEmLiazBJJ6KRTArdkx0UxpotKubY
	giHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=BQ4+wLU60+eYeViClHs3QwXoDzfPPUDtkKSGr5sVe2c=;
	b=B2YpsKrWu71X3XrVUuVASzzfdpIB8aVAWlL+sNDd1VRjVu7G2gUoyZlv7bzrmpBwL4
	KIwXcvse6Jc4JW7iCiWpfMEqO5gnCH2CgtRNhvN94GoK9ZduzXXmO51FLdlr5ShdMMmH
	c3Gl/2WNQ3crJL/oFWV6++2PK3ZoGReEigW/Mi+DbMxCw8JsyiuFXzEPxexUFC65jN1E
	teaYluZjLf87f5Fv9XFq+tEm2Y9D0Pf+gui1Ee+wtuReixRBEbcDVAeJ7evAs6qtB1XS
	KLV0PKaUYuyHxsUf78rxPDXnC4rcOvZZu4hCEjrtUucZHP1VUky4T0FE4UpgX4a8VXKx
	GLKw==
X-Gm-Message-State: ALoCoQnDMKLYVDHGZEk5Ir/plpRQ5Div8SNeKlf/GcQps+aUzX4UPWLak2x69Vtxhnc+nz9i0VP9XYcLa7z7nIpgbC+g8CNuGg==
X-Received: by 10.194.173.102 with SMTP id bj6mr5232505wjc.180.1449661801133; 
	Wed, 09 Dec 2015 03:50:01 -0800 (PST)
Received: from resin (dslb-178-007-064-118.178.007.pools.vodafone-ip.de.
	[178.7.64.118]) by smtp.gmail.com with ESMTPSA id
	jo6sm7266976wjb.48.2015.12.09.03.49.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Dec 2015 03:49:59 -0800 (PST)
Date: Wed, 9 Dec 2015 12:49:36 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20151209114936.GA24122@resin>
References: <cover.1439471046.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <cover.1439471046.git.petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][fido][PATCH 0/4] Backport of various fixes
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
X-List-Received-Date: Wed, 09 Dec 2015 11:50:03 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Aug 13, 2015 at 03:12:20PM +0200, Petter Mabäcker wrote:
> Backport of various fixes and important updates (backward compatible) from
> meta-raspberrypi:master to meta-raspberrypi:fido
>
> The following changes since commit b896a7da70dd7a16ba7ffd664f7747cb37e1d142:
>
>   .gitignore: Ignore some stuff (2015-03-12 22:20:51 +0100)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib petmab/rpi_fido_fixes
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_fido_fixes
>
> Andrei Gherzan (1):
>   rpi-default-providers: Let users overwrite the default providers
>
> Khem Raj (1):
>   userland: Fix POSIX compliance expectation
>
> Petter Mabäcker (1):
>   linux-raspberrypi: Update 3.18 branch to 3.18.11
>
> Thomas Perrot (1):
>   If SERIAL_CONSOLE is already define by another layer, this value may
>     not be good.
>

Merged to fido branch.

Thank you,
--
Andrei Gherzan

