Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1558EE00846; Mon, 20 Oct 2014 09:46:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9BB1E0080C
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 09:46:07 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id y10so5335144pdj.13
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 09:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=VyBmFfwcF3HEN1+SEGfsDeVvtdYoT34Qag4M0u37208=;
	b=gHTdaAeTCVW3kjfViXSSz08n7/tmgjhgbkWJkFG6CdTwdJB5/4FkFOSi6SZt8j37bD
	EBsKGWP3L2kUvVSW+CpzFGSmueggBreVuSM8JF+NDdgMgtkqBz/qKVCDjpOh6pk+fMVH
	GSL/4knez9EAaeb5Dp+gWMW3CcppYfpyylAOs78k+KT873Ehv99oLGCyGOQa6qayJgl8
	aPeqOQJx7DL0ouKVCeBvscZnwAUJfXb2sRUwhowYtA5BI2nqjCPjb2BbNU03SI2yLOwr
	DrNXxgv/CFxc+mmYdXPCMhtCQC9ZLW2kevi4Cp1vFkYjTIXgcjYHkricyukk6eB6TZP6
	V8FQ==
X-Received: by 10.68.69.68 with SMTP id c4mr555885pbu.168.1413823566976;
	Mon, 20 Oct 2014 09:46:06 -0700 (PDT)
Received: from Akusters-laptop.local ([2601:c:9380:601:9900:e163:dafd:f6a0])
	by mx.google.com with ESMTPSA id iw1sm9706631pac.21.2014.10.20.09.46.04
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 20 Oct 2014 09:46:05 -0700 (PDT)
Message-ID: <54453C4A.306@gmail.com>
Date: Mon, 20 Oct 2014 09:46:02 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
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
X-List-Received-Date: Mon, 20 Oct 2014 16:46:14 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/14, 2:27 AM, Lai Eddy wrote:

Lai,

thanks for reporting this, I will take a look into this. I have not 
tried daisy on recent meta-security.

- Armin
> build with yocto 1.6.1 on Ubuntu 12.04,
> have add extra dep. to local.conf according to REAME
>   /poky/openembedded-core/meta \
>   /poky/meta-openembedded/meta-oe \
>   /poky/meta-openembedded/meta-perl \
>   /poky/meta-security \
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


