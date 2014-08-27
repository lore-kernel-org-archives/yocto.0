Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1B6AE007DB; Wed, 27 Aug 2014 10:20:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-yh0-f50.google.com (mail-yh0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B0CAE007B9
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 10:19:50 -0700 (PDT)
Received: by mail-yh0-f50.google.com with SMTP id v1so541875yhn.23
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 10:19:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=hRV/v2E2TivDTsdjExtrK2unioFij6zqSqQCUsOjBRc=;
	b=d4kh4RRtt1EXv04RO17KmzOFCCr/TUBDEvaJgQrjJVWRgC21Z5+LYY52w0kRdVx3m2
	6eDLE+qhDPHGNhdN5Cq2AgSbj36Uy1Vrkec8RTWJLIwRNPPedI6e1Be/E32wVsRIjj44
	pd833R3qYNwiQpCzi5SPDtTObbmjhNM8wxeJsuzaQ1Dcu0t/hrOQ4DH87pThKXVUFi5N
	8kYCmbcwpBt6eQOBJc2K1ZpEAY8DzqvSJBcdvzRFEwNDwS1bdvSpNWG0Sk/E5Em9wA1t
	GpubPzvqkz2wJazf0ft5/16SpIOYrzwIAYs2VWTS/NoZha/ONToOSOEgfXnzi5HhcqQW
	ciow==
X-Gm-Message-State: ALoCoQlQqDS2ACv/JJPAp5NlFDTDgN2JgaBlP/jN9SCUjciFGq0pC50aZxWsqOCo8d9PB0NNx70I
MIME-Version: 1.0
X-Received: by 10.221.28.67 with SMTP id rt3mr1999415vcb.78.1409159989945;
	Wed, 27 Aug 2014 10:19:49 -0700 (PDT)
Received: by 10.52.255.168 with HTTP; Wed, 27 Aug 2014 10:19:49 -0700 (PDT)
In-Reply-To: <1408539450-17081-1-git-send-email-corneliux.stoicescu@intel.com>
References: <1408539450-17081-1-git-send-email-corneliux.stoicescu@intel.com>
Date: Wed, 27 Aug 2014 10:19:49 -0700
Message-ID: <CAPhnLPD6aQ6OAcCENPKcXwZ2+O=zu=bML_n+h27dD9bD5iOhUg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] buildsteps/RunOeSelftest.py: change the way oe-selftest is called
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
X-List-Received-Date: Wed, 27 Aug 2014 17:20:03 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 20, 2014 at 5:57 AM, Corneliu Stoicescu
<corneliux.stoicescu@intel.com> wrote:
> A recent patch went in poky master that added command line parsing and options to the oe-selftest script.
> Changing the way oe-selftest is called by the autobuilder to account for these changes.
>
> Signed-off-by: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> index 0efddd7..3d95583 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
> @@ -22,5 +22,5 @@ class RunOeSelftest(ShellCommand):
>          self.description = "Running oe-selftest"
>          self.timeout = 100000
>          kwargs['timeout']=self.timeout
> -        self.command = "if [ -d meta-selftest ]; then . ./oe-init-build-env; oe-selftest; else echo 'Skipping step - no meta-selftest layer here'; fi"
> +        self.command = "if [ -d meta-selftest ]; then . ./oe-init-build-env; oe-selftest --run-all-tests; else echo 'Skipping step - no meta-selftest layer here'; fi"
>          ShellCommand.__init__(self, **kwargs)
> --
> 1.8.3.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Pulled into master. Pushing into Production this afternoon. Thanks!

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

