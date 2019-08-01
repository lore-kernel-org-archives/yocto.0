Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E38CE00DD1; Thu,  1 Aug 2019 04:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDAF8E00927
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 04:33:02 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id p17so73178524wrf.11
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 04:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NgxrlOurNWLDxsA+rIbcxzxCsgHR4SV+IQ7OW+gyRDs=;
	b=1Zj+eY1no1R0kYFKSY5yF94orIRXoabPMbQ55CQTyDMVGeYzNNBWXhcxAFL0UFYQ7i
	kMFkXuM+wbCa0ZKvC86HD98uEFE59xohI0pKh6CPySZ8mFQfu2rCujSQRdJAGBpRi47k
	mJW0HzO6awi0lX4MlgvRkhAUuU+NMs8Kyy/GGIF5CL9F0yg1yYKg+U6bFH5++TFiGdep
	JGZnOK2yR0NFKQIId8u3fRI6Nqrz7+lxlkem1kFaDuqzSsC92tyqXO6Lkf26T/+9JVV0
	QaUKNtroy0qPULRtGSCQdCFyuRS0gdesgultdcMPeA71wFSHPJlRlXXNnCoq7MDLnRXA
	Zkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=NgxrlOurNWLDxsA+rIbcxzxCsgHR4SV+IQ7OW+gyRDs=;
	b=fmRTK+l4DwyZuZEnRjw9ZUwD7l7ZAVFmrUFZaequxTD6VMNOAOo5C16ZAYCU4T+Bmz
	S/3BoD9btYWuh09+arKPghyMlaxign6uk+fvyuwhi3Lvwg/5rR4cSUonJ0CVjCcR1GFt
	+XCJUWIvFfKByRS3J6IEGnFPrUGxfmhYa9bgHXWMTbTyLnC6IkAUGRu6c6e/zritZpz5
	LkxGaLdaaihOrPXPoLoCLKd7wByHrfLxHMh2mv0Gu2DCxuc0Vcjfwy6fpm8GDLOnLXcu
	g+ddli6exD6BbFs9Ht52oo6FoscKtTRyey1Cdxk213eDK/bBsvlNQy+6/mWChIW2n61h
	5Dmw==
X-Gm-Message-State: APjAAAXHxfSZMkrr3EnJGois3etoQ4uiIROMfIzNImwAbRKhf4YcXiOr
	2uQyBoa3iQACyXTtoRN2JNCjPP759vlH3wFl
X-Google-Smtp-Source: APXvYqySfKseriTbZWYtlCz0Ko6kpb4zbgvpDmVdP7tTAbK35eUZDkNpU+3Av4AiM2UIcIDzGn9upg==
X-Received: by 2002:adf:c508:: with SMTP id q8mr7742870wrf.148.1564659181325; 
	Thu, 01 Aug 2019 04:33:01 -0700 (PDT)
Received: from [192.168.1.25]
	(host86-161-197-210.range86-161.btcentralplus.com. [86.161.197.210])
	by smtp.gmail.com with ESMTPSA id
	r4sm43478444wrq.82.2019.08.01.04.33.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Aug 2019 04:33:00 -0700 (PDT)
To: Thomas Goodwin <btgoodwin@geontech.com>, yocto@yoctoproject.org
References: <20190730183621.26193-1-btgoodwin@geontech.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <82dd561e-17a9-e65a-48ef-23b005bd94c7@mvista.com>
Date: Thu, 1 Aug 2019 04:32:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730183621.26193-1-btgoodwin@geontech.com>
Subject: Re: [yocto-autobuilder2][PATCH 1/3] Bug fix: added support for ABHELPER_JSON environ.
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
X-List-Received-Date: Thu, 01 Aug 2019 11:34:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 7/30/19 11:36 AM, Thomas Goodwin wrote:
> The readme suggests exporting this variable from the
> environment to expose multiple configuration JSON files
> but the intended behavior doesn't work without adding the
> variable to extra_env.

Any chance of updating documentation on how to use this?

- armin
>
> Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
> ---
>  builders.py | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/builders.py b/builders.py
> index 5765040..3d12969 100644
> --- a/builders.py
> +++ b/builders.py
> @@ -15,7 +15,8 @@ maxsteps = 9
>  # Environment to pass into the workers, e.g. to load further local configuration
>  # fragments
>  extra_env = {}
> -#extra_env = {"ABHELPER_JSON" : "config.json /home/pokybuild/config-local.json"}
> +if os.environ.get('ABHELPER_JSON'):
> +    extra_env['ABHELPER_JSON'] = os.environ['ABHELPER_JSON']
>  
>  @util.renderer
>  def get_sstate_release_number(props):


