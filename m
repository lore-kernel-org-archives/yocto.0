Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39278E0071E; Mon, 15 Feb 2016 12:02:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E27A4E00444
	for <yocto@yoctoproject.org>; Mon, 15 Feb 2016 12:02:28 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id hb3so58785443igb.0
	for <yocto@yoctoproject.org>; Mon, 15 Feb 2016 12:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oGNxNFLZX+mYAKtOHkuTAi1oNwOT9fWa83fRspvWqvU=;
	b=TXiVBfQGhSg/NHggYug54Gamy63w3LI94uudi8gNMNPWGWg3zxjvHUYHX9ALM2YmnN
	R79ZJWET/SIMoAJFFaBVxHaHr6jpRk4EGavGjH7lUGbUH0ByydKFo8KLnKapZIS35WNd
	bcnVNzuAWyGFoqqX/JUf1JONMMle8M/wpZBLjYtT/xfswhX3mBSORtnBqvnri/VBEXnv
	D0D4P+tjeH1/xzWWf9m5pUAuQLCAqjPv1fd2GMU0Y4xMdnLO4WCWAnQ3XVnly25yY63Q
	rAeetBfcd/TQKTojp4pfWfvgt3RXwBKESu/bSALThDxfIXsb3nDHb7/8eg8oNtDQ79NU
	viVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=oGNxNFLZX+mYAKtOHkuTAi1oNwOT9fWa83fRspvWqvU=;
	b=FONyo6eU4u5/+BVec6oL+mO7qYovcLZ9qPhpCPPi/d6/4griiGVlEEhi3EcdSAFM5f
	ZQBpOujZvprcyzi3TmuUQHRbB5eXh8LmlDWhpRg5bzlEstWIsM3cpuzmDxgQgSoUDRkz
	aPKByS52Mj3HqSY7ScAkywzk+3h49Nr5ZIWC5geRO8ZuAa1mGiF9bMqiW/jU+DT7yPxR
	Bq8FYvEKCXktrm6QScVS1xlnjII2k/0+Wvyxgs+WI6/r41sk5J8azFKx7YR4tkgf5Op4
	zCBFfXJAZc/CZRihaLn98Hjf7IWjt+rTWgNTgtpjTavY5ZHhNzNg2qasp9NfxjN0l7lS
	3Krw==
X-Gm-Message-State: AG10YOTySQJ5JpcyyAfKd26y0/kvN7+b27mw8OoGf1QFUOmRpiqUx4QAkUtmaDDWzNiNlSKslgSNZmRknulPQ3Nh
X-Received: by 10.50.87.7 with SMTP id t7mr14683344igz.65.1455566547882; Mon,
	15 Feb 2016 12:02:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.214 with HTTP; Mon, 15 Feb 2016 12:01:47 -0800 (PST)
In-Reply-To: <1455217525-19212-1-git-send-email-tracy.graydon@intel.com>
References: <1455217525-19212-1-git-send-email-tracy.graydon@intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 15 Feb 2016 20:01:47 +0000
Message-ID: <CAPhnLPAxAD4=wnN7kC4dXBO_W0dvJuZ5=r+-KmAXhg=yXfUw1w@mail.gmail.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] buildbot/status/web/templates/build.html
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
X-List-Received-Date: Mon, 15 Feb 2016 20:02:30 -0000
Content-Type: text/plain; charset=UTF-8

On 11 February 2016 at 19:05, Graydon, Tracy <tracy.graydon@intel.com> wrote:
> From: Tracy Graydon <tracy.graydon@intel.com>
>
> [YOCTO #8098]
>
> The resubmit build button on the build status page, when used with exact same
> revisions generates an exception. Fixed by removing the Resubmit Build button.
>
> Signed-off-by: Tracy Graydon <tracy.graydon@intel.com>
> ---
>  .../buildbot/status/web/templates/build.html                         | 5 -----
>  1 file changed, 5 deletions(-)
>

Pushed to master, waiting for a good time for final production push.


> diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html
> index a01d4b0..0f50888 100644
> --- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html
> +++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html
> @@ -213,11 +213,6 @@ SourceStamps:
>    <tr {{ 'class="alt"' if end else '' }}><td class="left">Elapsed</td><td>{{ elapsed }}</td></tr>
>  </table>
>
> -  {% if authz.advertiseAction('forceBuild', request) %}
> -    <h3>Resubmit Build:</h3>
> -    {{ forms.rebuild_build(build_url+"/rebuild", authz, sourcestamps[0]) }}
> -  {% endif %}
> -
>  </div>
>
>  <br style="clear:both"/>
> --
> 2.4.3
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

