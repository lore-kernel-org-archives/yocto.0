Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 185FAE00498
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 10:45:04 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id 9so1023865iec.32
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 10:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ZWee09Qp56s655Mp+c6EQMwd1ZvbZ2FT7RQvHd3VEjw=;
	b=jYqX5YsI2m24pxScPVPjGGavxK3iKSrW6lGiXLm4WJt/hxTRPsu30YKILXxgdAw5cK
	Wlj+IxctndLhSNW8Bu0zBUki7gu1FBGq+Q8dHDWloAEDAuKwpEiOIPMG0/PoI6UrNiVA
	R92i2NePeYwykKwHc/Xp0x16lZjoI0P+khracHgUUqgPX4x9ABWhJ0ldYIZADFM7fKB/
	sgXR7y+eilCoirIm35WwCT76NaG7vLnACF/B9RQTBjmiZBoXH5mcaodV2YoNn4m5P6Y5
	pcvOTbxoCoYH9SSafkr09FP8AhpGUcsQObU0N/PRx6blEmrbh3kblzPrKVOxyX1lweJ2
	/cwA==
X-Received: by 10.50.184.226 with SMTP id ex2mr8200575igc.24.1361990704102;
	Wed, 27 Feb 2013 10:45:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.163 with HTTP; Wed, 27 Feb 2013 10:44:33 -0800 (PST)
In-Reply-To: <CADzUK1+6wEc3mNAymgshmPDBrcoJ8RnzUpTmJyM0RTLPOFHruw@mail.gmail.com>
References: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
	<1358810277-11975-2-git-send-email-raj.khem@gmail.com>
	<CADzUK1+6wEc3mNAymgshmPDBrcoJ8RnzUpTmJyM0RTLPOFHruw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Feb 2013 10:44:33 -0800
Message-ID: <CAMKF1sp=16+oXdwn7-6YiVq1oJG20QWPmS+LzHu+8vGRwvgMyA@mail.gmail.com>
To: Autif Khan <autif.mlist@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono][PATCH 2/2] monotools-server: Remove multiline comment
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
X-List-Received-Date: Wed, 27 Feb 2013 18:45:05 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 27, 2013 at 9:05 AM, Autif Khan <autif.mlist@gmail.com> wrote:
> On Mon, Jan 21, 2013 at 6:17 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> bitbake/master does not like it anymore
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  .../monotools-server/monotools-server_2.0.bb       |    2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/recipes-mono/monotools-server/monotools-server_2.0.bb b/recipes-mono/monotools-server/monotools-server_2.0.bb
>> index 551c586..ef738da 100644
>> --- a/recipes-mono/monotools-server/monotools-server_2.0.bb
>> +++ b/recipes-mono/monotools-server/monotools-server_2.0.bb
>> @@ -22,8 +22,6 @@ SRC_URI += " \
>>         file://fix-pkglib_SCRIPTS.patch \
>>         "
>>
>> -#      file://Makefile-pkglib.patch \
>> -
>>  DEPENDS = "mono-xsp gtk-sharp"
>>
>>  S = "${WORKDIR}/${PN}"
>> --
>> 1.7.9.5
>>
>
> Merged into master
>
> Apologies for late merge - somehow this got lost because of bad email
> filtering on my part.

you need to update your maintainer email in README. Secondly we have a policy
for marking layers maintained in ecosystem if maintainers dont respond
in timely fashion its hard to keep layers marked as maintained.

