Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA2EFE00ACE; Wed,  3 May 2017 00:08:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73857E00AA2
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 00:08:38 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id r189so7486629qkf.1
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 00:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zKtquC3txJh065q4xO5nYLxUpliNocA+9yfn4Vtwctg=;
	b=Z2y3iBTA6cSHh+Ebqpm17Dna0iYdSkMyLvnr6Jqd45899llgh7g+0UbsrW18RHDhd7
	XU7ix5n6xro2klqT/rM0jG4UHvxmNyfHjApG9GOrim9sRQ63Q49/ZC0tPh7jxEigVka6
	r4fcOt1TQxSIyRc4B8x/z0VOxmv0FzMQimkpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zKtquC3txJh065q4xO5nYLxUpliNocA+9yfn4Vtwctg=;
	b=ajEQTcpF8tG1T52pnwcVJEFs1FX22t4XR5pfFkranckhrsA3n8kJjaLY6sZnTttvJD
	d4fdXobSi0kRdFdDR3TI0Y61sJ/s5bzuMb82pJYxH9+sKZWyEQjlkjAPa+x+qoa+eJKx
	P7f16NGR2ON83VhCeDIE/C/ixbEGUozqoDlKxcPLliIazOYk6/VBlJVz9AkdOLGigZRU
	60/AGdxh6hJJ3Jr9fBcXY0mo2UNahb2ta9CrXh7e5CdBoS6rIAbS6uq3QvJ3bwNOIgoN
	jygxFbEOs1hLPvhdw247s5ea7bIhL5AOEEeamxLW8RGIAKzbSIZlYRaOriYOsWOlZ1Bs
	HrWw==
X-Gm-Message-State: AN3rC/5oKRdkeeeJVpiNGhAHyVzl9KXV5p7mskmdPhhFIGfhj6dNktLL
	Li/d2YsKW8/AuRGxe69PxnEN4ikGljRxHz7KSA==
X-Received: by 10.55.212.131 with SMTP id s3mr1708537qks.320.1493795318115;
	Wed, 03 May 2017 00:08:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.84.168 with HTTP; Wed, 3 May 2017 00:08:17 -0700 (PDT)
In-Reply-To: <BLUPR15MB050096D2E6998495D4578FDBD0110@BLUPR15MB0500.namprd15.prod.outlook.com>
References: <BLUPR15MB050096D2E6998495D4578FDBD0110@BLUPR15MB0500.namprd15.prod.outlook.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 3 May 2017 09:08:17 +0200
Message-ID: <CAP71WjyqEsy+ViEEr-cuPM0MOYZX6F95K1=4PJdWh5O4OO_aOw@mail.gmail.com>
To: "Aravindhlal G.S.S" <aravindhlalgss@embedur.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe changes to pull/fetch the source code from local instead of a remote server.
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
X-List-Received-Date: Wed, 03 May 2017 07:08:42 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 26, 2017 at 4:58 PM, Aravindhlal G.S.S
<aravindhlalgss@embedur.com> wrote:
> I am trying to make changes in the bitbake files(recipes) to pull/fetch the
> source code from the local instead of the remote server. The SRC_URI points
> to the local workspace, however I see that while building the source code is
> pulled from a remote repository.
>
>
>
> Do I need to make any specific changes in the recipes or any conf files
> under build directory (auto.conf) ? Could you please let me your
> pointers/suggestions ?
>

Not sure if this is exactly what you want to do, but you build an OE
recipe using an already existing local git workspace, instead of
fetching from a remote location:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-externalsrc

>
>
> Appreciate your help.
>
>

