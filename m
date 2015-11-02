Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC6CCE00ACF; Mon,  2 Nov 2015 04:23:56 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB4FE00AAA
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 04:23:54 -0800 (PST)
Received: by iofz202 with SMTP id z202so141462368iof.2
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 04:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=AllwoXSUAblVZq/u/dAjK6Resg0N1WJCI0Fn4rQkg50=;
	b=gCAmFR/Mc1vUMmR4dgS+Raox5PsB8mkxLWGrQhnaKT7AwFyZuxEtjxKrtzzEfEMIwi
	HLBqZYCobA+9DbyMwoP7oM2gaZwQEElgr5fXmEjk+q0XvIVgZUcqUgeZWJr9jM3KsH3a
	ewHCWei/bbFR9pNrNt72rvhjGxDXkyh/jiH5Zo//h0bfwEmriQtDoEoRo+Yaa/vnZned
	Q/FVGbpgCoJ73jMMAmogtWBHPWdwI27ml/JzELyhlvFaXqedoPO7uyxTrerSrgRq5YVl
	t/QFH+F27NE+EtIPKVS62nr5VuomRWOuCptzU9p+YMMDdbGJPPetufLKUie8tPtcvQbw
	BRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=AllwoXSUAblVZq/u/dAjK6Resg0N1WJCI0Fn4rQkg50=;
	b=MKJMaexNDWrrunND6fIlNRJxKQJ0A9+LKb2uyUPu2A+8fvtB/JAbdun/LGv9a/9FaP
	Jf3zZ8i0XCFodpydQeVOz3txH/8VGkH7kdAzCB9NhuWyH4mkxZdUkKZ1QxcFD1NraYfh
	r+j5Y99Cy9IWmJkEkr5jBN9dpA38gdKPX8ahATE8zIjRFfD3SWLMKl24YZ72uaA8NZro
	mNqxnHfG3dwZaYMPTLcqu+9YM5LIQ4YHb8kuRCO0Ox/k4Ej0WBy3oSd11Cr5wGGX+CVS
	j6zQ4ZK6uG5uS17SSk1z2lwVpUfQzSpJoH6Q9HRaCiCUk0lSnfJCvKIfFbxZDzA0dPFm
	SNsQ==
X-Gm-Message-State: ALoCoQl6ObIftJ5UAgUy/Xt5/hfQnw9kmr7U362D+w+m1D0N0Cq52funIpdvU84vIX1arwnPu08b
MIME-Version: 1.0
X-Received: by 10.107.131.88 with SMTP id f85mr21302900iod.89.1446467033513;
	Mon, 02 Nov 2015 04:23:53 -0800 (PST)
Received: by 10.107.20.204 with HTTP; Mon, 2 Nov 2015 04:23:53 -0800 (PST)
In-Reply-To: <CAJTo0LYxKmqJRvqbJ3CUgG9RJnhcZ3kwH738rZ=Bc2XC4tJW2Q@mail.gmail.com>
References: <1446465503-23774-1-git-send-email-jussi.kukkonen@intel.com>
	<CAJTo0LYxKmqJRvqbJ3CUgG9RJnhcZ3kwH738rZ=Bc2XC4tJW2Q@mail.gmail.com>
Date: Mon, 2 Nov 2015 12:23:53 +0000
Message-ID: <CAPhnLPB3pU08kuumhs03dRQ781ARa-e1vWxViTdszQME6z3ZWA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-autobuilder] buildset-config.controller: Workaround module dependency issue
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
X-List-Received-Date: Mon, 02 Nov 2015 12:23:56 -0000
Content-Type: text/plain; charset=UTF-8

On 2 November 2015 at 11:57, Burton, Ross <ross.burton@intel.com> wrote:
> Acked-by: Ross Burton <ross.burton@intel.com>
>
> Beth, please merge before the RC3 build.
>

Pulled into master and pushed into production. Thanks.

> Ross
>
> On 2 November 2015 at 11:58, Jussi Kukkonen <jussi.kukkonen@intel.com>
> wrote:
>>
>> Dynamically loaded modules are a problem for multilib builds: 32-bit
>> Pango and Gdk-Pixbuf modules in particular do not get included in the
>> image when 32-bit versions of the libraries get included.
>>
>> Proper fix may require extensive changes to dependency handling:
>> Include the required modules manually in the test configuration as a
>> workaround for 2.0.
>>
>> Fixes [YOCTO #8624].
>> The underlying issue is [YOCTO #8570]
>>
>> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
>> ---
>>  buildset-config.controller/nightly-multilib.conf | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/buildset-config.controller/nightly-multilib.conf
>> b/buildset-config.controller/nightly-multilib.conf
>> index 7cf75c3..bc63c39 100644
>> --- a/buildset-config.controller/nightly-multilib.conf
>> +++ b/buildset-config.controller/nightly-multilib.conf
>> @@ -24,13 +24,13 @@ steps: [{'SetDest':{}},
>>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
>> 'x86_64',
>>                              'buildhistory' : False, 'multilib': 'lib32',
>>                              'distro': 'poky',
>> -                            'atextappend' : '\nRPM_PREFER_ELF_ARCH =
>> "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
>> +                            'atextappend' : '\nRPM_PREFER_ELF_ARCH =
>> "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome gdk-pixbuf-loader-jpeg
>> lib32-gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-png
>> lib32-gdk-pixbuf-loader-png pango-module-basic-fc
>> lib32-pango-module-basic-fc"\n'}},
>>          {'BuildImages': {'images': 'core-image-sato'}},
>>          {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' :
>> 'multilib'}},
>>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
>> 'x86_64',
>>                              'buildhistory' : False, 'multilib': 'lib32',
>>                              'distro': 'poky', 'packages' : 'ipk',
>> -                            'atextappend' : '\nIMAGE_INSTALL_append = "
>> lib32-connman-gnome"\n'}},
>> +                            'atextappend' : '\nIMAGE_INSTALL_append = "
>> lib32-connman-gnome gdk-pixbuf-loader-jpeg lib32-gdk-pixbuf-loader-jpeg
>> gdk-pixbuf-loader-png  lib32-gdk-pixbuf-loader-png pango-module-basic-fc
>> lib32-pango-module-basic-fc"\n'}},
>>          {'BuildImages': {'images': 'core-image-sato'}},
>>          {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' :
>> 'multilib'}},
>>          {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
>> --
>> 2.1.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

