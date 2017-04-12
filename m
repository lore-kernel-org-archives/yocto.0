Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3F93E00B20; Wed, 12 Apr 2017 00:28:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2115E00AD5
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:28:53 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9EBA268A01A; Wed, 12 Apr 2017 08:28:52 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id C2AD168A019;
	Wed, 12 Apr 2017 08:28:49 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 21FC66740334;
	Wed, 12 Apr 2017 09:28:49 +0200 (CEST)
From: Gary Thomas <gary@mlbassoc.com>
To: Paulo Neves <ptsneves@gmail.com>
References: <CAJO0J4gmqfw--YUjMuituXm=zYeeg55HRpTP0ErMhGf=brLPpw@mail.gmail.com>
	<01133dfb-ddd8-5514-466a-ec64d829aa78@mlbassoc.com>
	<CAJO0J4jYOqkE3R0T19P2751cPbxHv_VZajhzJfF0A3cn5i7OAw@mail.gmail.com>
	<8461355b-7c0b-6705-6f9f-325d75caba97@mlbassoc.com>
	<CAJO0J4haGc9ML63FgXSDrmSsyxe7NFCZ2ZErW=_U1Kigsobdcw@mail.gmail.com>
Message-ID: <269ec5c1-c8c7-9ad8-3e7b-49e9678913e7@mlbassoc.com>
Date: Wed, 12 Apr 2017 09:28:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJO0J4haGc9ML63FgXSDrmSsyxe7NFCZ2ZErW=_U1Kigsobdcw@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Apr 2017 07:28:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-12 09:15, Paulo Neves wrote:
> Hello Gary.
>
> I didn't know it was not a coreutil. To do it in another way i think
> this simple code will grow. Before refactoring could I have other
> opinions?
>
> We have a very limited environment and even so the rename exists. It
> is part of the util-linux-ng from the kernel...

Not really my call to make.  Also, please keep this discussion on the
mailing list so that everyone benefits.

> On Wed, Apr 12, 2017 at 9:10 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> On 2017-04-12 09:02, Paulo Neves wrote:
>>>
>>> I expect it to rename all the .conf.sample files from .conf.sample to
>>> .conf. Give it a try ;)
>>
>>
>> This introduces a new dependency for the rename tool/program which is
>> a Perl script.  It seems to me that much effort has been made recently
>> to minimize these scripts, removing bash-isms, etc, and adding this
>> dependency would drift from that path.
>>
>> Just my 2c
>>
>>>
>>> On Wed, Apr 12, 2017 at 8:54 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>>
>>>> On 2017-04-12 08:48, Paulo Neves wrote:
>>>>>
>>>>>
>>>>> Hello,
>>>>>
>>>>> I thought it would be consistent to have the multiconfig samples to
>>>>> also be populated just like the local.conf.
>>>>>
>>>>> I produced a patch accordingly:
>>>>>
>>>>>> From 6091978f666463c46093203b74f28b82a9bf4d47 Mon Sep 17 00:00:00 2001
>>>>>
>>>>>
>>>>> From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
>>>>> Date: Mon, 3 Apr 2017 11:23:12 +0200
>>>>> Subject: [PATCH 1/2] multiconfig samples are now put in the build dir.
>>>>>
>>>>> The users of multiconfig which use the templateconf
>>>>> mechanism may also want the multiconfig samples to
>>>>> be retrieved from the template configuration
>>>>> directories. This patch allows for that.
>>>>>
>>>>> It only copies the .conf.sample files. It does not
>>>>> create the multiconfig directory if the templateconf
>>>>> directory does not exist or have any sample files.
>>>>> ---
>>>>>  scripts/oe-setup-builddir | 10 +++++++++-
>>>>>  1 file changed, 9 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
>>>>> index
>>>>>
>>>>> ef495517aaafd8150313ac1f8f5eb5079c90d09b..783ed20dd49d23fe38fa28d6a105918200a54610
>>>>> 100755
>>>>> --- a/scripts/oe-setup-builddir
>>>>> +++ b/scripts/oe-setup-builddir
>>>>> @@ -77,11 +77,11 @@ if [ -n "$TEMPLATECONF" ]; then
>>>>>      OECORELOCALCONF="$TEMPLATECONF/local.conf.sample"
>>>>>      OECORENOTESCONF="$TEMPLATECONF/conf-notes.txt"
>>>>>  fi
>>>>> -
>>>>>  unset SHOWYPDOC
>>>>>  if [ -z "$OECORELOCALCONF" ]; then
>>>>>      OECORELOCALCONF="$OEROOT/meta/conf/local.conf.sample"
>>>>>  fi
>>>>> +
>>>>>  if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
>>>>>      cat <<EOM
>>>>>  You had no conf/local.conf file. This configuration file has therefore
>>>>> been
>>>>> @@ -91,12 +91,20 @@ for more information as common configuration
>>>>> options are commented.
>>>>>
>>>>>  EOM
>>>>>      cp -f $OECORELOCALCONF "$BUILDDIR/conf/local.conf"
>>>>> +    if ( find "$TEMPLATECONF/multiconfig/" -iname '*.conf.sample'
>>>>> 2>&1 >  /dev/null ); then
>>>>> +       mkdir -p "$BUILDDIR/conf/multiconfig/"
>>>>> +        cp -fa "$TEMPLATECONF/multiconfig" "$BUILDDIR/conf/"
>>>>> +        (cd "$BUILDDIR/conf/multiconfig/" &&
>>>>> +        rename .conf.sample .conf *.conf.sample)
>>>>
>>>>
>>>>
>>>> This doesn't look right to me - what are you expecting the 'rename'
>>>> command
>>>> to do?
>>>>
>>>>> +        echo "Multiconfig samples detected copying them also.\n"
>>>>> +    fi
>>>>>      SHOWYPDOC=yes
>>>>>  fi
>>>>>
>>>>>  if [ -z "$OECORELAYERCONF" ]; then
>>>>>      OECORELAYERCONF="$OEROOT/meta/conf/bblayers.conf.sample"
>>>>>  fi
>>>>> +
>>>>>  if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
>>>>>      cat <<EOM
>>>>>  You had no conf/bblayers.conf file. This configuration file has
>>>>> therefore
>>>>> been

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

