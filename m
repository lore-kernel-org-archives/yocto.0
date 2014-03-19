Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1D04E00B00
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:58:56 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id sa20so9002192veb.36
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 08:58:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=4jUxhfyifApTV0Xvi+Bi9CGfnMlC+GSRoMx6byZp564=;
	b=bs9tgrLGQZFmm4ixslCg5wNRl4iQDWU4yg4VUAHofDkTX1kUjfJvRRQhqXVc4y7Ni2
	ZIVxv1JJIkvSeoVOmoFn4JALkc82bjOgqAw6qA3a/Y7pmhV6hZM8lI5ABKepJ7c2ka0A
	eKctLk/pHP1sLZ2pXW4Zo3DJM8wRCO8qZCEoektrI/uhm/20hIkURMYKoWLUaNFqMbcb
	/koFNQqxAa77804Ylsc2llyrL0ZxtdGxzKyqQCB+27f+8GkSqWvDpYqZA2ReyuimKSMu
	Wdo56C2WZBFHZJqEQweI7GcGFNI7ZmBu/IiywWEyC2+AnoKhM70r50U1aFF1CcOK4sRP
	OCxQ==
X-Gm-Message-State: ALoCoQlLOHskXp3ylQbM1SwlD0p+xm+nnVKjyyzHcOK5Xt5tmCL6mP+XBuZ/afytA847GnVzfHWx
MIME-Version: 1.0
X-Received: by 10.52.171.68 with SMTP id as4mr26306608vdc.0.1395244735912;
	Wed, 19 Mar 2014 08:58:55 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 19 Mar 2014 08:58:55 -0700 (PDT)
In-Reply-To: <CAPhnLPBf-265aQhXa7TVdyHwS0AxqdjO9_6moXNn3KRzV=ggwg@mail.gmail.com>
References: <1395198633-6308-1-git-send-email-firemagelynn@gmail.com>
	<CAPhnLPBf-265aQhXa7TVdyHwS0AxqdjO9_6moXNn3KRzV=ggwg@mail.gmail.com>
Date: Wed, 19 Mar 2014 08:58:55 -0700
Message-ID: <CAPhnLPD-VatH84+Lb9-2VW5ticu8BzkDmtpPLgsSUATt_zc6nQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Lynn Cyrin <firemagelynn@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AUTOBUILDER 1/4] nightly.conf: added package image triggers
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
X-List-Received-Date: Wed, 19 Mar 2014 15:58:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

Although one thing before I pull these, could you resubmit these with
a bit better title/description? The general standard is:

filename: Title

Brief meaningful description.

Signed-off-by line.

On Wed, Mar 19, 2014 at 8:37 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> This looks good. I may switch these over to the no_wait scheduler, but
> for now yes.
>
> Reviewed-by: Beth Flanagan <elizabeth.flanagan@intel.com>
>
> On Tue, Mar 18, 2014 at 8:10 PM, Lynn Cyrin <firemagelynn@gmail.com> wrote:
>> Added triggers for nightly-rpm, nightly-deb, nightly-ipk into nightly.conf
>>
>> reference #3140
>>
>> Signed-off-by: Lynn Cyrin <firemagelynn@gmail.com>
>> ---
>>  buildset-config.master/nightly.conf |    3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/buildset-config.master/nightly.conf b/buildset-config.master/nightly.conf
>> index 085c25f..0bd68e3 100644
>> --- a/buildset-config.master/nightly.conf
>> +++ b/buildset-config.master/nightly.conf
>> @@ -78,7 +78,8 @@ steps: [{'SetDest':{}},
>>                             'nightly-multilib': {}, 'nightly-x32': {},
>>                             'nightly-ppc': {}, 'nightly-ppc-lsb': {},
>>                             'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
>> -                           'nightly-x86': {}, 'nightly-x86-lsb': {}},
>> +                           'nightly-x86': {}, 'nightly-x86-lsb': {},
>> +                           'nightly-rpm': {}, 'nightly-deb': {}, 'nightly-ipk': {}},
>>                             'schedulerNames_nowait' : {'build-appliance': {},
>>                             'eclipse-plugin-kepler': {}, 'eclipse-plugin-juno': {},
>>                             'nightly-non-gpl3': {}, 'nightly-oecore': {},
>> --
>> 1.7.9.5
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

