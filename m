Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A773E00D11; Tue, 23 Feb 2016 09:21:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE52FE00D0B
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 09:21:16 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id 9so222218592iom.1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 09:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=arwopd+5ajHoexnF5HHJ5sva0dORNf1endU35R5bePM=;
	b=1ro+oxo9EKrpExREwRJrjtbfD2zO86LFtYqADkSzklZsAYG8Vl1/+7qjmhX3BRoFI+
	cECdPX46MuNG4JnExYzknyJoEk1reFVI0o9cK7nZHdCT4nf6W0eHl1obSUaSlXchzAIQ
	okcvafTZG2nHEPwZbOnAc5rnFlW9SqimROs9LPH37NtNwwWsR4DhLnYfSt8206MurHYP
	qSOUIjchAgqpZKy2gmqDj4LGLNo0+VMgHY1RjMkLyLrRmGwY6Mw/OYXWXlQqWjDzLb5+
	bq6sCNlW0g2NBVXi3tYvvQcQjzGDFV/eaXe8rEb7I2iuvXqAlNYyybCNxO+lAWoXmVwK
	x3oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=arwopd+5ajHoexnF5HHJ5sva0dORNf1endU35R5bePM=;
	b=TjuJqMRH3uKvNBOW52/zYrSKE4i1t5/jMEaGhlCD7FWpY4U+JOHunqsYXYl4Vqqf/4
	yeeiN7/9RdP6byX6/QkOYHEczHaYYUwhBGXcIJn2/iaFgFr9BifGKWKgixSUTvZvJr3q
	CDHMUWCnia6w4xxixGAcD17wfBaq8Ven0T8Sgfm/b9GkQY9kan85XBHzV39t9kMP6c/G
	zdt2EuPa5GANed2E3sNnGfriC9dl4bEHuvOx//ML5lY1le95vhduyHeaWFHBp+jA0jZh
	AVeGCzFRfxNVEt5ARFzd2wWsQ8wooc0H/XJ5PcqH0ITvCIPpCOTKURwaVC6K0RmdPBTW
	qCMQ==
X-Gm-Message-State: AG10YOQB+CJHuDkaxNKfGMU7z7+NZgpdSlsI5vhbRBlAMd4+5jMKcpNx1xOU4ZxgUD3KMZ5hEYaqCOzUMWx6pQcH
X-Received: by 10.107.185.8 with SMTP id j8mr32881000iof.94.1456248075896;
	Tue, 23 Feb 2016 09:21:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.214 with HTTP; Tue, 23 Feb 2016 09:20:36 -0800 (PST)
In-Reply-To: <1456242163-12255-1-git-send-email-alejandro.franco@linux.intel.com>
References: <1456242163-12255-1-git-send-email-alejandro.franco@linux.intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Tue, 23 Feb 2016 17:20:36 +0000
Message-ID: <CAPhnLPCZroeRe9_6BDjKUQcCEWtEMHTVrg-ArteADj42pjNaxQ@mail.gmail.com>
To: Alex Franco <alejandro.franco@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC] [autobuilder] Autobuilder.py: add verbose buildset parse error
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
X-List-Received-Date: Tue, 23 Feb 2016 17:21:18 -0000
Content-Type: text/plain; charset=UTF-8

On 23 February 2016 at 15:42, Alex Franco
<alejandro.franco@linux.intel.com> wrote:
> From: Alejandro Franco <alejandro.franco@linux.intel.com>
>
> Add a more verbose Exception when a buildset parse operation fails
>

Approved and in master.

-b

> Signed-off-by: Alejandro Franco <alejandro.franco@linux.intel.com>
> ---
>  lib/python2.7/site-packages/autobuilder/Autobuilder.py | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> index 3174784..f200974 100644
> --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
> @@ -118,12 +118,15 @@ class Autobuilder:
>      def parseRepos(self, buildset=None):
>          buildset=buildset
>          if self.configdict[buildset].has_key('repos'):
> -            for layer in ast.literal_eval(self.configdict[buildset]['repos']):
> -                if layer.iterkeys().next() not in self.repos:
> -                    schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=buildset, triggerer=True)
> -                    self.schedprops.extend(schedpropstoextend)
> -                    self.checkoutprops.update(newcheckoutprops)
> -                    self.repos.append(layer.iterkeys().next())
> +            try:
> +                for layer in ast.literal_eval(self.configdict[buildset]['repos']):
> +                    if layer.iterkeys().next() not in self.repos:
> +                        schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=buildset, triggerer=True)
> +                        self.schedprops.extend(schedpropstoextend)
> +                        self.checkoutprops.update(newcheckoutprops)
> +                        self.repos.append(layer.iterkeys().next())
> +            except SyntaxError as err:
> +                raise ABConfigError("%s found in %s" % (err, buildset))
>          return
>
>      def parseProps(self, buildset):
> --
> 1.9.1
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

