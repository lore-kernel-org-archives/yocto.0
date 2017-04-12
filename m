Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E14B3E00AD5; Wed, 12 Apr 2017 00:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ECE5E00AD5
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:02:25 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id w6so1286870vkd.1
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=50qpe4RIPjAPJPSt2uFS8zbc1K31B1M+ETtjxSdNG6w=;
	b=GPUnqdtRobDaA08VxRxiwL0oHGldRxcyBF8lbc/5MVr61sW5vdlOnub8KYoL5wkhxp
	GawMp+AS5ZvHhJ3z0vUwhvYgwfQQmK6LanlREH3mu/AnwioYmmglR1TzbG2KIvzL2IBy
	HvjtkyTM8ZVJ7GMfzxiOV1hgsCyuA6zTnNvVfl3rQ4MM+FaLkYSvH/Zv1xYKdP5SOlAx
	3V6ZruijTRlGD2zfvlPy5DAbFXnHYDrKLujLAOZ2O2VNLoPCjkVCWjiB/bWgEalbVnYi
	BnX9nb9aseGrlbCG6b3N/aw34mZuLCvurKcZPjSkz6RGuRKwmK6DaRk7uzSi4TG6Qk/k
	hghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=50qpe4RIPjAPJPSt2uFS8zbc1K31B1M+ETtjxSdNG6w=;
	b=k/+MulPgchylt64qN2aupXoQMlDqKc1ln2qMWjr3wWcerXX9ApT/aGWduhLFQ5gW7r
	Hyc6aW8c+BcvbKWRws/zSDCa/ocx2ASzSqYdCVVmrbM6GW/EpQD3zF65cDbnaDSPrblY
	b44Evqq9bwAjAZGKqfBHrklUaryDgV9qpGgAu2uh+y2GnJPWd2yXpobuIMNLwpI/fjD4
	THvj9b5wLZDG8IuHX8DehZ+fmkT1Nz2LLLEK7W/u96cQd4r5syhEkt1Nd9P/RVTo4X96
	7SHB2UQf053xuVqKa3q49wpXyOrn+0zZUMWAcrv8w+Wq2J+LpPP1UPnv8BHwWkH4HiqD
	7GZw==
X-Gm-Message-State: AN3rC/5IkKK5NVcSDZ9ZHD8Md1b8t6mIFdnSxSYz+Ds2j9Sg4DTtw96S+Aa4xpGpSjAn9BfyghXCkyKfOVm6gQ==
X-Received: by 10.31.8.20 with SMTP id 20mr551696vki.144.1491980545045; Wed,
	12 Apr 2017 00:02:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.38.134 with HTTP; Wed, 12 Apr 2017 00:02:24 -0700 (PDT)
In-Reply-To: <01133dfb-ddd8-5514-466a-ec64d829aa78@mlbassoc.com>
References: <CAJO0J4gmqfw--YUjMuituXm=zYeeg55HRpTP0ErMhGf=brLPpw@mail.gmail.com>
	<01133dfb-ddd8-5514-466a-ec64d829aa78@mlbassoc.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Wed, 12 Apr 2017 09:02:24 +0200
Message-ID: <CAJO0J4jYOqkE3R0T19P2751cPbxHv_VZajhzJfF0A3cn5i7OAw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: multiconfig samples not put in the build dir.
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
X-List-Received-Date: Wed, 12 Apr 2017 07:02:27 -0000
Content-Type: text/plain; charset=UTF-8

I expect it to rename all the .conf.sample files from .conf.sample to
.conf. Give it a try ;)

On Wed, Apr 12, 2017 at 8:54 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2017-04-12 08:48, Paulo Neves wrote:
>>
>> Hello,
>>
>> I thought it would be consistent to have the multiconfig samples to
>> also be populated just like the local.conf.
>>
>> I produced a patch accordingly:
>>
>>> From 6091978f666463c46093203b74f28b82a9bf4d47 Mon Sep 17 00:00:00 2001
>>
>> From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
>> Date: Mon, 3 Apr 2017 11:23:12 +0200
>> Subject: [PATCH 1/2] multiconfig samples are now put in the build dir.
>>
>> The users of multiconfig which use the templateconf
>> mechanism may also want the multiconfig samples to
>> be retrieved from the template configuration
>> directories. This patch allows for that.
>>
>> It only copies the .conf.sample files. It does not
>> create the multiconfig directory if the templateconf
>> directory does not exist or have any sample files.
>> ---
>>  scripts/oe-setup-builddir | 10 +++++++++-
>>  1 file changed, 9 insertions(+), 1 deletion(-)
>>
>> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
>> index
>> ef495517aaafd8150313ac1f8f5eb5079c90d09b..783ed20dd49d23fe38fa28d6a105918200a54610
>> 100755
>> --- a/scripts/oe-setup-builddir
>> +++ b/scripts/oe-setup-builddir
>> @@ -77,11 +77,11 @@ if [ -n "$TEMPLATECONF" ]; then
>>      OECORELOCALCONF="$TEMPLATECONF/local.conf.sample"
>>      OECORENOTESCONF="$TEMPLATECONF/conf-notes.txt"
>>  fi
>> -
>>  unset SHOWYPDOC
>>  if [ -z "$OECORELOCALCONF" ]; then
>>      OECORELOCALCONF="$OEROOT/meta/conf/local.conf.sample"
>>  fi
>> +
>>  if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
>>      cat <<EOM
>>  You had no conf/local.conf file. This configuration file has therefore
>> been
>> @@ -91,12 +91,20 @@ for more information as common configuration
>> options are commented.
>>
>>  EOM
>>      cp -f $OECORELOCALCONF "$BUILDDIR/conf/local.conf"
>> +    if ( find "$TEMPLATECONF/multiconfig/" -iname '*.conf.sample'
>> 2>&1 >  /dev/null ); then
>> +       mkdir -p "$BUILDDIR/conf/multiconfig/"
>> +        cp -fa "$TEMPLATECONF/multiconfig" "$BUILDDIR/conf/"
>> +        (cd "$BUILDDIR/conf/multiconfig/" &&
>> +        rename .conf.sample .conf *.conf.sample)
>
>
> This doesn't look right to me - what are you expecting the 'rename' command
> to do?
>
>> +        echo "Multiconfig samples detected copying them also.\n"
>> +    fi
>>      SHOWYPDOC=yes
>>  fi
>>
>>  if [ -z "$OECORELAYERCONF" ]; then
>>      OECORELAYERCONF="$OEROOT/meta/conf/bblayers.conf.sample"
>>  fi
>> +
>>  if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
>>      cat <<EOM
>>  You had no conf/bblayers.conf file. This configuration file has therefore
>> been
>>
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

