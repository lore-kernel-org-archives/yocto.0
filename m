Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AEC3E00B20; Wed, 12 Apr 2017 00:38:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B664E00AD5
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:38:55 -0700 (PDT)
Received: by mail-ua0-f193.google.com with SMTP id q26so1565378uaa.3
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=32nhiHl029u9Hj/ZlcnyZ9ZgEdk9t7q+9jvWqdiYAkk=;
	b=MnyhNH1wWVF6nUeEL9wr9ie68nU7uZYMZ6cw9oyAH+inqwRccdgu2SGbA60xrEG0K9
	Pd66CldighDLm3Z9LmBa5SXMQX0jBXW6INpLSbOvDtjsUJCE4p+yyY29kWvwa19Emkih
	SrzrmVyjP7W3OwRBoDkrqdb4hjkMtZxc4qLeCAUglKlGmqUZ4Min9kiIsLg/6zGFFc2S
	ytndykISGuwfBQnSnGng4HCO8LSJuIl8IE+LIxZDn+ki+GYXKvEde5O1xvq1biX+1QzP
	2zLZhPKPY53R/qIPHQwrcP94HL4yqMp2khenh+i3PK+aHqD3fbmhTMs5UGrUfm7HWwm2
	Tghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=32nhiHl029u9Hj/ZlcnyZ9ZgEdk9t7q+9jvWqdiYAkk=;
	b=nlGN4hSIs+BEYoM/G7UKi6I3zMK/HZZMyZZtS5NSfpXZA7WMsuHUdBLpCSL143WDRF
	+IrXU+SSvZgubWWKEBWrZoRFWUTnJnUOoKPvUNzxmGMAqNzyrx85xpX8i27xjFU0q0sx
	6jFVIZvoZOsRvsMgkb3h2Q9yieJ1C9767rrtT6WoypsuaXUFEFXzWNO10boJbZt9vJBK
	wl0oKR0aQy04eBxAbJjxn3L5LedbWwLtTBVeUXM530/1ZfBGmTxd8wX9PdZQtFMg4dx1
	4Q5iDpR970eUd4wq8uh4KnIW6g6h+lxCxv26VYc21LBigEmH+8rMjzZ3vT8xwjwDI0LE
	2pew==
X-Gm-Message-State: AN3rC/5HJRHSf7Q6KwMMd+w20PhdPm8rTfzUc9s5qBhyKnXqCa1NV2OTN1aDC8mkZ9UOr0xkIaD0HJM2AHM/Xg==
X-Received: by 10.176.4.226 with SMTP id 89mr882427uaw.38.1491982735274; Wed,
	12 Apr 2017 00:38:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.38.134 with HTTP; Wed, 12 Apr 2017 00:38:54 -0700 (PDT)
In-Reply-To: <269ec5c1-c8c7-9ad8-3e7b-49e9678913e7@mlbassoc.com>
References: <CAJO0J4gmqfw--YUjMuituXm=zYeeg55HRpTP0ErMhGf=brLPpw@mail.gmail.com>
	<01133dfb-ddd8-5514-466a-ec64d829aa78@mlbassoc.com>
	<CAJO0J4jYOqkE3R0T19P2751cPbxHv_VZajhzJfF0A3cn5i7OAw@mail.gmail.com>
	<8461355b-7c0b-6705-6f9f-325d75caba97@mlbassoc.com>
	<CAJO0J4haGc9ML63FgXSDrmSsyxe7NFCZ2ZErW=_U1Kigsobdcw@mail.gmail.com>
	<269ec5c1-c8c7-9ad8-3e7b-49e9678913e7@mlbassoc.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Wed, 12 Apr 2017 09:38:54 +0200
Message-ID: <CAJO0J4g=RWsgNqbXQ0OD7TYFP22ZhbGD1ooVrHXi5rEGw89Xmw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 12 Apr 2017 07:38:59 -0000
Content-Type: text/plain; charset=UTF-8

>Not really my call to make.  Also, please keep this discussion on the
>mailing list so that everyone benefits.

Sorry forgot to hit the reply all. Thanks for the suggestion I am now
waiting input from the rest of the community regarding the
applicability of rename command.

On Wed, Apr 12, 2017 at 9:28 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2017-04-12 09:15, Paulo Neves wrote:
>>
>> Hello Gary.
>>
>> I didn't know it was not a coreutil. To do it in another way i think
>> this simple code will grow. Before refactoring could I have other
>> opinions?
>>
>> We have a very limited environment and even so the rename exists. It
>> is part of the util-linux-ng from the kernel...
>
>
> Not really my call to make.  Also, please keep this discussion on the
> mailing list so that everyone benefits.
>
>> On Wed, Apr 12, 2017 at 9:10 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> On 2017-04-12 09:02, Paulo Neves wrote:
>>>>
>>>>
>>>> I expect it to rename all the .conf.sample files from .conf.sample to
>>>> .conf. Give it a try ;)
>>>
>>>
>>>
>>> This introduces a new dependency for the rename tool/program which is
>>> a Perl script.  It seems to me that much effort has been made recently
>>> to minimize these scripts, removing bash-isms, etc, and adding this
>>> dependency would drift from that path.
>>>
>>> Just my 2c
>>>
>>>>
>>>> On Wed, Apr 12, 2017 at 8:54 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>>
>>>>>
>>>>> On 2017-04-12 08:48, Paulo Neves wrote:
>>>>>>
>>>>>>
>>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> I thought it would be consistent to have the multiconfig samples to
>>>>>> also be populated just like the local.conf.
>>>>>>
>>>>>> I produced a patch accordingly:
>>>>>>
>>>>>>> From 6091978f666463c46093203b74f28b82a9bf4d47 Mon Sep 17 00:00:00
>>>>>>> 2001
>>>>>>
>>>>>>
>>>>>>
>>>>>> From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
>>>>>> Date: Mon, 3 Apr 2017 11:23:12 +0200
>>>>>> Subject: [PATCH 1/2] multiconfig samples are now put in the build dir.
>>>>>>
>>>>>> The users of multiconfig which use the templateconf
>>>>>> mechanism may also want the multiconfig samples to
>>>>>> be retrieved from the template configuration
>>>>>> directories. This patch allows for that.
>>>>>>
>>>>>> It only copies the .conf.sample files. It does not
>>>>>> create the multiconfig directory if the templateconf
>>>>>> directory does not exist or have any sample files.
>>>>>> ---
>>>>>>  scripts/oe-setup-builddir | 10 +++++++++-
>>>>>>  1 file changed, 9 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
>>>>>> index
>>>>>>
>>>>>>
>>>>>> ef495517aaafd8150313ac1f8f5eb5079c90d09b..783ed20dd49d23fe38fa28d6a105918200a54610
>>>>>> 100755
>>>>>> --- a/scripts/oe-setup-builddir
>>>>>> +++ b/scripts/oe-setup-builddir
>>>>>> @@ -77,11 +77,11 @@ if [ -n "$TEMPLATECONF" ]; then
>>>>>>      OECORELOCALCONF="$TEMPLATECONF/local.conf.sample"
>>>>>>      OECORENOTESCONF="$TEMPLATECONF/conf-notes.txt"
>>>>>>  fi
>>>>>> -
>>>>>>  unset SHOWYPDOC
>>>>>>  if [ -z "$OECORELOCALCONF" ]; then
>>>>>>      OECORELOCALCONF="$OEROOT/meta/conf/local.conf.sample"
>>>>>>  fi
>>>>>> +
>>>>>>  if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
>>>>>>      cat <<EOM
>>>>>>  You had no conf/local.conf file. This configuration file has
>>>>>> therefore
>>>>>> been
>>>>>> @@ -91,12 +91,20 @@ for more information as common configuration
>>>>>> options are commented.
>>>>>>
>>>>>>  EOM
>>>>>>      cp -f $OECORELOCALCONF "$BUILDDIR/conf/local.conf"
>>>>>> +    if ( find "$TEMPLATECONF/multiconfig/" -iname '*.conf.sample'
>>>>>> 2>&1 >  /dev/null ); then
>>>>>> +       mkdir -p "$BUILDDIR/conf/multiconfig/"
>>>>>> +        cp -fa "$TEMPLATECONF/multiconfig" "$BUILDDIR/conf/"
>>>>>> +        (cd "$BUILDDIR/conf/multiconfig/" &&
>>>>>> +        rename .conf.sample .conf *.conf.sample)
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> This doesn't look right to me - what are you expecting the 'rename'
>>>>> command
>>>>> to do?
>>>>>
>>>>>> +        echo "Multiconfig samples detected copying them also.\n"
>>>>>> +    fi
>>>>>>      SHOWYPDOC=yes
>>>>>>  fi
>>>>>>
>>>>>>  if [ -z "$OECORELAYERCONF" ]; then
>>>>>>      OECORELAYERCONF="$OEROOT/meta/conf/bblayers.conf.sample"
>>>>>>  fi
>>>>>> +
>>>>>>  if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
>>>>>>      cat <<EOM
>>>>>>  You had no conf/bblayers.conf file. This configuration file has
>>>>>> therefore
>>>>>> been
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

