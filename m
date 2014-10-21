Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA17E008F3; Tue, 21 Oct 2014 08:01:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4592E007C1
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 08:01:21 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id ft15so1504235pdb.30
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 08:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=6BfW9ZMEVsHIYfOrHQJMAj0pPz8ZD4m+vOCMHWXepwE=;
	b=cZN2Byd1dsy1/7PCk9L6ATeGqXsVvaN43D+KJr9PktSfKUgutYRsUaJ2xgHeZtAY1R
	RNddM4wESvgzFtYlNhfLL1hjahKD+RDWg2dkmU+SocAoVe4c6N1vfo9G6YWMngAmc03z
	fhddx01cG2jB3liMAEoMj5Tb6Lka6uzkMAL1QTIECHQReglWfh3hoEn3Xc/VX0UCQOGk
	a5x3vxinxZo/lyrDvPMFGVcgiyDyZ9UGW9TLDVruxJ9ERfn7nfk5nlJWZUY9JsJNMxHK
	CS988py71dQzqiMb8Vrskr/qczw2QdJKCFoM5KpF0PCdfYQCTuC+EO/7AEL3KlAkt4uh
	9LDA==
X-Received: by 10.68.251.99 with SMTP id zj3mr35497763pbc.105.1413903680694;
	Tue, 21 Oct 2014 08:01:20 -0700 (PDT)
Received: from ?IPv6:2601:c:9380:601:1197:fac2:a00b:668a?
	([2601:c:9380:601:1197:fac2:a00b:668a])
	by mx.google.com with ESMTPSA id f2sm12179688pdo.29.2014.10.21.08.01.18
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Oct 2014 08:01:19 -0700 (PDT)
Message-ID: <5446753A.5060508@gmail.com>
Date: Tue, 21 Oct 2014 08:01:14 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: Lai Eddy <eddy.lai.tw@gmail.com>
References: <CACrgodd5fQP3yWfc7eYbVg8+oGPQWU4EG9thKmYV35-NfNX0HQ@mail.gmail.com>
In-Reply-To: <CACrgodd5fQP3yWfc7eYbVg8+oGPQWU4EG9thKmYV35-NfNX0HQ@mail.gmail.com>
Cc: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security] nmap build failed
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
X-List-Received-Date: Tue, 21 Oct 2014 15:01:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Lai,

I can not reproduce this using daisy branch of yocto and 
opemembeded-core. Libtest does not exist in the daisy branch of 
meta-perl. Can you provide me with the Build Configuration when you 
first start to build and hoe you appended nmap to your image

- Armin

On 10/20/2014 02:27 AM, Lai Eddy wrote:
> build with yocto 1.6.1 on Ubuntu 12.04,
> have add extra dep. to local.conf according to REAME
>    /poky/openembedded-core/meta \
>    /poky/meta-openembedded/meta-oe \
>    /poky/meta-openembedded/meta-perl \
>    /poky/meta-security \
>
> but got following error message:
>
> $ bitbake -k core-image-full-cmdline
> ERROR: ExpansionError during parsing
> /poky/meta-openembedded/meta-perl/recipes-perl/libtest/libtest-harness-perl_3.30.bb
> <http://libtest-harness-perl_3.30.bb>: Failure expanding variable
> do_fetch[file-checksums], expression was
> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
> MalformedUrl: The URL:
> '${CPAN_MIRROR}/authors/id/L/LE/LEONT/Test-Harness-3.30.tar.gz' is
> invalid and cannot be interpreted
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
>

