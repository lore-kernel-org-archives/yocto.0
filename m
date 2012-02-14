Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A22EAE0059B
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 05:38:34 -0800 (PST)
Received: by dadp13 with SMTP id p13so6601641dad.35
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 05:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=IyBqPypRIweSUJLupVKVVT2xtEEfqf3RvFdf5s0JwoY=;
	b=C+pto6QJCLEQtRFfS+6whK2E8Tm/ESmLuhYSsJYQ0Be2Be3zB31gSQf0vCxv9vhoCY
	euZyZc95iULhzLdpoO8KfP6oHq0cskBEy/ddIwcN/o5FUfuMol/5bTBu3o0KH4RCfRyZ
	/E3vz0WYGad+30kzDkBuS4VoMcSq3CklCleys=
MIME-Version: 1.0
Received: by 10.68.73.6 with SMTP id h6mr58474089pbv.116.1329226714494; Tue,
	14 Feb 2012 05:38:34 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Tue, 14 Feb 2012 05:38:34 -0800 (PST)
In-Reply-To: <EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
References: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
	<EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
Date: Tue, 14 Feb 2012 08:38:34 -0500
Message-ID: <CADzUK1KJhtbz6AFUmN8DW3n1PYL-cKgzcU7zeFH1L2VoDiTgMA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to find Log
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
X-List-Received-Date: Tue, 14 Feb 2012 13:38:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

>>> How to locate Log file while a error occur.
>>
>> It's under the directory ${WORKDIR}/temp/. Actually when an error occurs, you can find the specific log file in the output, something like.
>>
>> ERROR: Logfile of failure stored in:
>> /intel/poky/builds/toolchain/tmp/work-shared/gcc-4.6.2+svnr181430-r22/temp/log.do_patch.15156
>>
>> Best Regards,
>> Lianhao
>>
>>
> I have a similar questions. If the error occurs and the console log information scrolls too far to get back to, how do I find the error log file then? I know what directory all the logs will be, but is there an easy way to find the one with the error??

This is true - I set my terminal scrollback to 9999 lines to avoid this.

May be that error line should be displayed both before and after the log.

I will see if I can find where this happens and create a patch. But
that will have to wait until after ELC 2012.

