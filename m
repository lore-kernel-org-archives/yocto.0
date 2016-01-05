Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB437E00956; Tue,  5 Jan 2016 10:14:00 -0800 (PST)
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
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCBA3E0070F
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2016 10:13:57 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id q63so188030481pfb.0
	for <yocto@yoctoproject.org>; Tue, 05 Jan 2016 10:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TNQMmdSSjyUWCf4UFpfnCzusmAPxPhPv+cVCOHz7374=;
	b=XTG3Ga55hG50w0l2AKbLX5yUdTdLoBDWOyVFKJR1riA3UA2ehheqF9oZsHw8AiU1mk
	mAdmOdPDgRB1fIYJeIASfrEWCNN3hHCh+jipLrAHAi9lVXcofOjP3iYSdiPqtOSN4xHA
	K+MaYxiDkjCzqTlSLGN+Gkd4WJOc4zFgh254lK2kiaqcdS//bNhIJg7uUJLPSajDTRXk
	p2d1Lx+gOmu/+onjJ9kgeJvE6IJDPlmQmD9cY9Dxbl9/sSwYkiutbK2bCDVr/Ndtsd4T
	qZT3kIb3vd7owtn9gF19te8Wm9yXvTarQkFsLeCAK2UPUCrksatyH5k9+zawIdxzj3tf
	JS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=TNQMmdSSjyUWCf4UFpfnCzusmAPxPhPv+cVCOHz7374=;
	b=XOzNbqG2PQtizd+RXkfjXozsGP8iIxUJXDHKsRyB+dpxNN2mOrf7ueiac0824/sjvF
	R9EWoF6tLjj5saIMFuHWuRUBQJCtHz6PhdTkP4JjpE1ciiD6W6NyMJJN9Q33C7PrPBNJ
	pp+vKVTyWeXUShW6Gdn5r8AmUwoP+gugh7sgN9Ap6AeQFNSZ5/fQUR9COatZRxEp2JzV
	VKJ0LVYmbDo/P37dhRciQSp+toopTfiMIN0al312a1sPW2iqk4OfzL5DejJRyGHUduKF
	6nzZbqvNuOPQxrX9o5BzZC/2YAnllvYTu3u/FE4/Jr8OQ9owOEq4nvhhonjOnU75uwmg
	SP0g==
X-Gm-Message-State: ALoCoQnacruwDYoF79OqwcoH1hBMqVz7zYolLxt0+5L0TAME04AZkEZBkP1tuuek8+YUTsLKnXHKpLdtPAqTcQeu2cceriAXWg==
X-Received: by 10.98.75.155 with SMTP id d27mr87675093pfj.137.1452017636985;
	Tue, 05 Jan 2016 10:13:56 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:6183:49a5:2f8e:29ef?
	([2601:202:4000:1239:6183:49a5:2f8e:29ef])
	by smtp.googlemail.com with ESMTPSA id
	g68sm129692514pfg.9.2016.01.05.10.13.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Jan 2016 10:13:56 -0800 (PST)
To: Thomas Perrot <thomas.perrot@tupi.fr>, yocto@yoctoproject.org
References: <1451932268-25264-1-git-send-email-thomas.perrot@tupi.fr>
From: akuster <akuster@mvista.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <568C07DF.50100@mvista.com>
Date: Tue, 5 Jan 2016 10:13:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1451932268-25264-1-git-send-email-thomas.perrot@tupi.fr>
Subject: Re: [meta-security][PATCH] Remove recipe for the kernel 3.14 from master branch, to fix a build error. ERROR: No recipes available for: meta-security/recipes-kernel/linux/linux-yocto_3.14.bbappend
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
X-List-Received-Date: Tue, 05 Jan 2016 18:14:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Thomas,

thanks.

On 01/04/2016 10:31 AM, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  recipes-kernel/linux/linux-yocto_3.14.bbappend | 4 ----
>  1 file changed, 4 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-yocto_3.14.bbappend
> 
> diff --git a/recipes-kernel/linux/linux-yocto_3.14.bbappend b/recipes-kernel/linux/linux-yocto_3.14.bbappend
> deleted file mode 100644
> index b46419c..0000000
> --- a/recipes-kernel/linux/linux-yocto_3.14.bbappend
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> -
> -# Tomoyo kernel support
> -SRC_URI += "${@base_contains('DISTRO_FEATURES', 'tomoyo', ' file://tomoyo.cfg', '', d)}"
> 

merged to master next

- armin

