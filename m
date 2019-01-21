Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DE40E00B43; Mon, 21 Jan 2019 06:47:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D85E00A1A
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 06:47:26 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id r62so14752252oie.1
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 06:47:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=/DYqaoZ7q39gWIFq2Q+Aq2wQgQ+tFinCNELFKZve0Ug=;
	b=LbY+jFpke+uNlGUgYkLa3jNVQvU+kzsgQIAhzPVz53C/OmPd6tes7FkMgMIlxQfxDF
	X+10+oYR6VfJG2ZFYnIWzzcsX9WxTOw5oHAKBkt39kUYQBrwxnDHvltXILPoozCOP6si
	jtZJmKNr7qvNLARt5pg6M0pvbV9uokNv6FY2yqsKPtBPi4R48IUKD1IlHfvJPecdyI93
	h+5ts/MSoMVEG5BFjO1TGTU34l3L0Ij1ROs4x2E05++rcgDm7sQpbVTDXpUnadYT2Af8
	SnSSwr47VwzH2EIgaQGZ4wO30v8GZXNkXSiyp1Fz1TfiFJB/HmTuJ8HKqD5nD7o0LHqd
	aqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=/DYqaoZ7q39gWIFq2Q+Aq2wQgQ+tFinCNELFKZve0Ug=;
	b=soOEU5I4wJA670Li2C0iTifwnjedM8pBrlEsnmwBLwq+NY6AGkFUpYhIf1VjnNeeRU
	Xgm072NqOVl5m/GP8+tpsVXot/1VHD1PdvK9kKvqBLLk9HR1KIG23GLiw94iQviK33QQ
	ZcEU34XFEaU1lWbgc8ydZh4wVgAfBDI7iMgQvF6A9eAIVJj4Z7qgTNoq/yoDsQZc3bNd
	rpmguDwa+0vaK0+U8BGbPWp/r2NQfvsLtFzoGfmYqDyO2XGVrIvragCJvieES8vUkGi8
	hw48kKLcITFMmZnjQOA0AeSdGZA/2IdmatWnD2dVJDK+mZwwqj9DiECQfUxInBsNLiUz
	gl/Q==
X-Gm-Message-State: AJcUukeJBRIJvhZlCYBriv7CO7UZCKeYu7vpLeTsQOLmT4xF/9ZB1FET
	V9PRbH2f/xWWiHj9B98EVik=
X-Google-Smtp-Source: ALg8bN7xR3dxssByPNPrKg0KaDz4AxoAkRrHEIJZVdED13QlaXat+EGoBc1fLNyoUD/oEn2i95GqcA==
X-Received: by 2002:aca:1a0b:: with SMTP id a11mr6053103oia.154.1548082046048; 
	Mon, 21 Jan 2019 06:47:26 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	n3sm7104712oia.3.2019.01.21.06.47.25
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 21 Jan 2019 06:47:25 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <3f77d5c6f2d3be211c92b9fdfa3fa36ecf490aa1.camel@gmail.com>
To: changqing.li@windriver.com, yocto@yoctoproject.org
Date: Mon, 21 Jan 2019 08:47:24 -0600
In-Reply-To: <1547718545-238633-2-git-send-email-changqing.li@windriver.com>
References: <CAJTo0LYJUjRiOV7hLTicNhwYqnqzHHAF52nXvAWj0x1hHSPdGg@mail.gmail.com>
	<1547718545-238633-1-git-send-email-changqing.li@windriver.com>
	<1547718545-238633-2-git-send-email-changqing.li@windriver.com>
User-Agent: Evolution 3.30.3 (3.30.3-1.fc29) 
Mime-Version: 1.0
Subject: Re: [meta-mingw][PATCH V2] testsdk: enhance extract sdk part
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
X-List-Received-Date: Mon, 21 Jan 2019 14:47:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Just FYI, I haven't forgot about this patch. I want to wait until the
dependent OE-core patch is at least in the master-next branch before I
apply this to the MinGW master-next branch. If you want to give me a
ping when the OE-core patch shows up in master-next, it would be very
helpful.

Thanks

On Thu, 2019-01-17 at 17:49 +0800, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> Current sdk type is tar.xz, but for mingw sdk, since we
> have symlink under the sdk folder, 7zip which used to
> extract tar.xz cannot handle it, refer 7zip upstream bug:
> https://sourceforge.net/p/sevenzip/discussion/45797/thread/c71d6b96/
> so oe-core have add support of change SDK type to .zip, so correct
> the extract function.
> 
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>  lib/oeqa/sdkmingw/testsdk.py | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/oeqa/sdkmingw/testsdk.py
> b/lib/oeqa/sdkmingw/testsdk.py
> index 85fe3c6..173cfd9 100644
> --- a/lib/oeqa/sdkmingw/testsdk.py
> +++ b/lib/oeqa/sdkmingw/testsdk.py
> @@ -12,7 +12,7 @@ class TestSDKMinGW(TestSDK):
>          """
>          Get the name of the SDK file
>          """
> -        return
> d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.xz")
> +        return
> d.expand("${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.${SDK_ARCHIVE_TYPE}")
>  
>      def extract_sdk(self, tcname, sdk_dir, d):
>          """
> @@ -23,7 +23,14 @@ class TestSDKMinGW(TestSDK):
>          try:
>              # TODO: It would be nice to try and extract the SDK in
> Wine to make
>              # sure it is well formed
> -            subprocess.check_output(['tar', '-xf', tcname, '-C',
> sdk_dir])
> +            
> +            # TODO: Extract SDK according to SDK_ARCHIVE_TYPE, need
> to change if
> +            # oe-core support other types.
> +            if d.getVar("SDK_ARCHIVE_TYPE") == "zip":
> +                subprocess.check_output(['unzip', '-d', sdk_dir,
> tcname])
> +            else:
> +                subprocess.check_output(['tar', '-xf', tcname, '-C', 
> sdk_dir])
> +
>          except subprocess.CalledProcessError as e:
>              bb.fatal("Couldn't install the SDK:\n%s" %
> e.output.decode("utf-8"))
>  
> -- 
> 2.7.4
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>


