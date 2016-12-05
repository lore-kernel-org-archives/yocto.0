Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4DF3E00A1A; Mon,  5 Dec 2016 00:30:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2AFE0086E
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 00:30:42 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id m5so446576708ioe.3
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 00:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=tFfzeG9+ZoNqEMra4iqd2YnyKJQTVA+CIxjtDVuVPcQ=;
	b=mocirpKlr8GXHw2jQcv7cxCYpA9fA5/cLBitnjqf2palMRCORXdjkgqnTHdsjn8Sx9
	+ZYcdK2w4mMPU0j+3HM4cuSDLETY195Cyb2mrQGBsTUkXoMpPHPIHeFyu6kUICBYgeXu
	LSRQrnaMpZh9538wBU39Te97dIPtUdm6EB0gNjzrw3AYhY72v64f4hl9TOE+4C6uqPjA
	sWKanaCh8UH6Bp8fW2h+WMqs3AjKh1s6tVqxkQN3bAtTIIPQTVSpJlxl5sswxqelbXCb
	0X7KOZ7jPgCKztgMzYb7uPyp9TR2qUKTp1lVdoYF7UgxyV4QkGTfAPfv4Onn5JKAW1rT
	N6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=tFfzeG9+ZoNqEMra4iqd2YnyKJQTVA+CIxjtDVuVPcQ=;
	b=EhC8IxMYEFSwelQ6YmpkY4WUKERRsLmM9WD8QNbTFG4i4Y7grBVrxvAGToLgJUWp4n
	87y5qrjeUz6njbx8Rhml4qY9PB9sBGv1HjSxwVTyn/mKebYz1yO4j1QdvvzgPMa3iwLm
	9C8WiPgr1l9cguFadoZntFTGG2ctl3mvnI2ppZLDEYRn08TfBOSJmqegVAODG8xuAFUW
	Kuzw2W7LrEj7sxTsOlQtLI9tmljcLw2jDFKzVp8eDlers+SgVplxM+9GjMkPUo+2rGS6
	sqdMBX4XKNCYX1hzOtEmmhHsnu9Fw5ydUp15cAzzUQjF3VndYuRVE9BC9uuIjG8GWTm0
	XVDQ==
X-Gm-Message-State: AKaTC02Ol5H89yWa07IdhvHwqsp9z/byfbk338wxflmrEPv4y8OD8caKLJ4331a3QvhyCA2B
X-Received: by 10.36.66.143 with SMTP id i137mr7496123itb.43.1480926642151;
	Mon, 05 Dec 2016 00:30:42 -0800 (PST)
Received: from pohly-mobl1 (p5DE8D0EB.dip0.t-ipconnect.de. [93.232.208.235])
	by smtp.gmail.com with ESMTPSA id
	m127sm5858745itc.19.2016.12.05.00.30.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Dec 2016 00:30:41 -0800 (PST)
Message-ID: <1480926638.17535.28.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>
Date: Mon, 05 Dec 2016 09:30:38 +0100
In-Reply-To: <2b837406-908e-91c4-313b-21132c52ed2d@linux.intel.com>
References: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>
	<2b837406-908e-91c4-313b-21132c52ed2d@linux.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [patchwork][PATCH v4] patchwork.models: Include first patch's name in series name
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
X-List-Received-Date: Mon, 05 Dec 2016 08:30:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-12-02 at 14:29 -0600, Jose Lamego wrote:
> Patch Series created without a cover letter are named using a
> non-descriptive generic string.
> 
> This change names the series using either the first 30 characters in
> patch #1 plus the remaining patches number, or the patch name for
> one-patch (1/1) series.
> 
> [YOCTO #10625]
> 
> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  patchwork/models.py | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

When you send different versions of your patches, can you include a
revision history? Otherwise, it's hard to see what changes between the
different iterations.

git notes can be used for that for single-commit changes. See "git
format-patch --notes" and "git notes".

> diff --git a/patchwork/models.py b/patchwork/models.py
> index 3f531e6..1521641 100644
> --- a/patchwork/models.py
> +++ b/patchwork/models.py
> @@ -1042,6 +1042,19 @@ def _series_supersede_previous_patches(series):
>  def _on_revision_complete(sender, revision, **kwargs):
>      series = revision.series
> 
> +    # Now we know how many patches are in the revision,
> +    # so we can update the name for series without a cover letter
> +    if series.name == SERIES_DEFAULT_NAME:
> +        name = series.latest_revision().ordered_patches()[0].name
> +        n = re.compile(r'(\[\d+\/\d+\]\s?)')
> +        name = n.sub('', name)
> +        c = len(series.latest_revision().ordered_patches())
> +        # For one-patch series (1/1) without cover letter
> +        if c == 1:
> +            series.name = name
> +        elif c > 1:
> +            series.name = "\"%s...\" and %s more" % (name[:30], c-1)
> +
>      # update series.last_revision
>      series.last_revision = series.latest_revision()
>      series.save()

Looks reasonable to me, but I don't really know the code. Were you
testing this and noticed cases with c == 0, i.e. cases where the last
series,name change didn't make sense?

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




