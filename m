Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1BA6E01426
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 04:35:57 -0700 (PDT)
Received: by qabg27 with SMTP id g27so310121qab.14
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 04:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=mXLn84uSbpWv3vTX3QQVNMf0tlHlQwae3onfzgoTBic=;
	b=ccqihgNl0frX5Fvw0URxNGnnzld9LOap5HKqkSIJeiNQgezzhbfk/XaLvmFwaCINLC
	sbi9cZsW5s8sDc+371b+/ufbfTwnfEZQJcbsTG3Ex6qui0xal+va+AMVQZBZ4g6XyMVx
	06iiMBtQNT4t72HbQJJ9n3MfDgEy6S4k7jsdBORcO3FeSbO5bJhXNPf0M9SePBWbHBSQ
	WzJvYM7AEEujVcRjXGB2IpF6AGlWktbQ4Zr4zVmsgTO8kKkN1aUI3Xc71oHgUaz5/EBb
	oIw+gbBu8/P84ACC4JHMWFjT+0eLbw9B2yKXG2kf8ixwjnNtHaI0NQqIFeiyH560EfNC
	t3Vw==
Received: by 10.224.208.66 with SMTP id gb2mr5694050qab.29.1340364956833;
	Fri, 22 Jun 2012 04:35:56 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	bk12sm68894167qab.6.2012.06.22.04.35.55 (version=SSLv3 cipher=OTHER);
	Fri, 22 Jun 2012 04:35:56 -0700 (PDT)
Message-ID: <4FE4589B.8070903@gmail.com>
Date: Fri, 22 Jun 2012 07:35:55 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4FE3345E.1000202@gmail.com> <4FE36A62.4070300@gmail.com>
	<1351454.WzZsGBvgHE@helios>
In-Reply-To: <1351454.WzZsGBvgHE@helios>
Cc: yocto@yoctoproject.org
Subject: Re: Hob - proper way to select machine and customer layers
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Jun 2012 11:35:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/22/2012 07:17 AM, Paul Eggleton wrote:
> On Thursday 21 June 2012 14:39:30 jfabernathy wrote:
>> On 06/21/2012 10:49 AM, jfabernathy wrote:
>>> To use Hob, I set my environment variable and the just ran hob.  It
>>> was very slow going through the first 63 packages. I think this is
>>> because parallel options had not been set and the packages were all
>>> being downloaded again.
> You're referring to the initial pseudo build here I presume?
Yes.
>>> But after I got to the UI of hob, I got
>>> errors adding my layers to get to the meta-intel layers I wanted.  So
>>> I started over and edited local.conf and bblayer.conf prior to
>>> launching hob.  Now I could see my machine from meta-intel, but I
>>> could not add my layer in. Parsing errors.
> By parsing errors it would help if you were more specific. Do you mean the
> following?
>
> ERROR: Unable to parse /home/paul/poky/meta-intel/meta-
> cedartrail/conf/layer.conf: Failure expanding variable BBPATH, expression was
> ${BBPATH}:/home/paul/poky/meta-intel which triggered exception Exception:
> variable BBPATH references itself!
ERROR: Unable to parse /home/jim/poky/meta-hob/conf/layer.conf:
Failure expanding variable BBPATH, expression was
$(BBPATH):/home/jim/meta-jfa:/home/jim/poky/meta
which triggered exception Exception: variable BBPATH
references itself!
>>> Before I report an error, I wanted to see if I have the hob startup
>>> process right. The issues is around the right way to add
>>> meta-intel/meta-cedartrail and my personal layer in my home directory.
>>>
>>> Any advice?
>>>
>>> JIm A
>> My experimenting tells me that currently Hob (denzil) only work with new
>> added layers that are in the poky directory and not in your home
>> directory.  This is a different requirement than normal command line
>> usage of bitbake.
> Assuming the error you're seeing is the one above, I don't think that's the
> problem - the problem AFAICT is that the order of the layers hob is using is
> not the same as the order in which it displays them, and the order it uses is
> not compatible with the old method of setting BBPATH which meta-intel and its
> sub-layers use, which is 'BBPATH := "${BBPATH} /extra/path/to/add"' - if
> BBPATH is not already set as it would not be if this is the first layer in the
> list, then it is unable to expand BBPATH and you get this failure. You can
> reproduce this outside of hob just by reordering the entries in bblayers.conf.
>
> So there are a few issues highlighted here:
>
> 1) Hob is re-ordering the layer list and it definitely shouldn't be. I've filed
> bug #2649 to get this fixed.
>
> 2) We really ought to go through and fix the BBPATH setting for all layers to
> not use the old method of appending to it.
>
> 3) It may be useful for people to be able to change the order of layers in the
> layer list within hob, particularly for situations where class/conf files are
> overlayed (which is to be avoided, but does occur).
>
> Cheers,
> Paul
>
Seems that you understand the problem :-)

Jim A



