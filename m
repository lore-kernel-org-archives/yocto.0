Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 282CBE009AA; Wed,  8 Feb 2017 04:12:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDC39E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 04:12:29 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id v77so188146683wmv.0
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 04:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+GVuVO3tuCjkFxZS/ghIYzEPJICzBpFkmUPu2K+VGLY=;
	b=Aif81SLxCcf/31vcpHE/0MStdFu0ke5mMma8si17isPBgN+rDllI/JFSyNZuk/VVYd
	Ds0t8axQdBk9A8i1AhSq0rvW28wUT0SE9o5Gwj3ARXQkefXBjcOCRzhzK0/xJpbor/I2
	poaiANL7zYqpdI+2acBdDlHbks2I23NBYclchyF9XdbGuYtw8lH2Eic4N5ms8L73Qxa/
	47wtCeGtsJXDehEl/67PgOeqI/yW2ZzawegbWzW4tnofk1HHc9btuiGycZ78qkfPqs/G
	iKkNAV8Z9Ilpf2tGQdEAuzenvNQ7LYomKfkUlVmj+VIU1wO4YuBA5WywsK8EoABjewWh
	vQGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+GVuVO3tuCjkFxZS/ghIYzEPJICzBpFkmUPu2K+VGLY=;
	b=WdWfiRvCGI1GrS7as4pIirMe/FUemWzGeSB+qAhztLVNdTeB0+hTaTMbKuw4IkVfqy
	ifWnTQg/oFNKSvuWJ/byZTepn8b+xgD2sWrtnWba1QR/eoGcl3VyzT8MLyA301kFKG6X
	Vs+UYlHLcPXKc+arUK5+iCLoCBasGWx481fLbGv0BP4gtrCXlBR9HIpQv+AjNh0ykZ29
	YEWJiSjCAD2Ow8tIAQ3Cq8elcdHMs7oW8oB5R0oNP4MpmtZ4x9CPhPyxOeLHn8rAWtwH
	F0nA8zuITucgOc/GzQSKMr1bz/NwpDYo4vIsaK5vcsjdFwQdFwk9dYJXaNQEsKnk2ByR
	IUTA==
X-Gm-Message-State: AMke39m1or9a5F/DQqCAkLbVmo0G4lLpllTrQlpO5rPQyFZXgj7ELjtfWvzgZvhMPSObP3m9TsYauxsQKjvSgQ==
X-Received: by 10.28.4.216 with SMTP id 207mr16520663wme.45.1486555948733;
	Wed, 08 Feb 2017 04:12:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Wed, 8 Feb 2017 04:12:08 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1702080702070.12201@localhost.localdomain>
References: <alpine.LFD.2.20.1702070921520.13830@uk63952.mitel.com>
	<CAD4b0_Lqk756919hasgMuHx2eMxBPtywjLvzs0r3cjb9mj49Ag@mail.gmail.com>
	<alpine.LFD.2.20.1702080702070.12201@localhost.localdomain>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Wed, 8 Feb 2017 13:12:08 +0100
Message-ID: <CAD4b0_JRJa+xyg5QrJarbRD-PCZ3=aAtK56iBBx7mUX9_eysrQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a list somewhere of OE/YP-supported system perf/monitoring tools?
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
X-List-Received-Date: Wed, 08 Feb 2017 12:12:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 8, 2017 at 1:02 PM, Robert P. J. Day <rpjday@crashcourse.ca> wr=
ote:
> On Wed, 8 Feb 2017, Maciej Borz=C4=99cki wrote:
>
>> On Tue, Feb 7, 2017 at 3:31 PM, Robert P. J. Day <rpjday@crashcourse.ca>=
 wrote:
>> >
>> >   colleague asked me for a list of OE/YP recipes for monitoring system
>> > performance/resource utilization/profiling, i'm unaware of any single
>> > list that tracks that sort of thing so i'll just ask what people are
>> > aware of. just off the top of my head:
>> >
>> >  * sysstat
>> >  * atop
>> >  * collectd
>> >  * netdata
>> >  * rrdtool
>> >  * dstat
>>
>> * pcp http://pcp.io/
>
>   is there an OE recipe for that? i don't see one.

Sadly not :( The build system is based on autotools though. Most of
the 'heavy' features can be easily turned off using configure.


--=20
Maciej Borzecki
RnDity

