Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f52.google.com (mail-oa0-f52.google.com
	[209.85.219.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2FF6E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:28:50 -0700 (PDT)
Received: by mail-oa0-f52.google.com with SMTP id g12so3934447oah.25
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=rp0t2GeKbARbpfxH+wwFk/jM1PHIO1dxS13/s9rpBoo=;
	b=f9D+VtMLqP+RPJo+onXTe8389dVZ263/jc8TtYq+7ablCyk7nvvHILu/g0bXaFybTH
	yjhn1DJqxiG+BqWiSV8aQjvvVj62j2ZH9T7k73bnZsJU2BsGsNQnMMkBljEBpKd/YgX0
	iE3eT8KrJvEw8b57ISRTekHwktlAKUU+eIwo8rDjKsu2ZmnzWPwIB54YJVfXMe/6kYqK
	l7PIRM/Wbh1JbRR9rp/L7Z8lG+/nNObJJS14hXv7toaOiTxRCmCdl7yc7nrEhY8cWIvN
	T1s6UhZhWWH/RClNGOxsvMFAIP8cpAXuBIPQnje9hBMf1NPtNYypOqZIuE/3rt3zn7uu
	PuhA==
X-Received: by 10.60.93.196 with SMTP id cw4mr594918oeb.135.1371025729140;
	Wed, 12 Jun 2013 01:28:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Wed, 12 Jun 2013 01:28:28 -0700 (PDT)
In-Reply-To: <51B83021.8010905@mlbassoc.com>
References: <CAP71Wjz-_omLGprC9xkBaZ6cbp=JmZrgGJy=UjtJCdrZiTfpEg@mail.gmail.com>
	<51B83021.8010905@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 12 Jun 2013 10:28:28 +0200
Message-ID: <CAP71WjxS=3-pJpbPBq3QbJqa_0_5M_keFnbPtHFDjRLQ4_1i6w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQmpBZlWrd6o9W2dcBeEHX3BddjeyOhACmvQNX3F+S3yAwkHNrGD1G8jXHv/jPesZQVSQLGR
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: question about packagegroups
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
X-List-Received-Date: Wed, 12 Jun 2013 08:28:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 12, 2013 at 10:24 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> The problem is that bitbake runs recipes, not packages.  So in order to
> get the package 'packagegroup-custom-tools', you have to build your main
> recipe which will also build 'packagegroup-custom-apps'
>
> I've run across this myself and what I did was to split my package groups
> (then called tasks) into separate recipes.

ok, i was suspecting something like that.. but i wasn't sure why. ok,
i will just split my recipes, then.

