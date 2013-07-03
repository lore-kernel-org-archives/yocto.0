Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B97E013CB;
	Tue,  2 Jul 2013 19:24:13 -0700 (PDT)
Received: by mail-pd0-f172.google.com with SMTP id z10so4154027pdj.17
	for <multiple recipients>; Tue, 02 Jul 2013 19:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=itn9oFv8Ft1hC0NPk+lxWqo/+N1BkvKhgDBeqcMtENA=;
	b=Ua60XdBzs4XOSzKFMm9C/tgSzncFB0CVck2tDDFAQHm2YWl1HAEp6N+KvpDZztppzZ
	+34O2qcO3Pa7ynS/eRMgp23nt9D6nqCh72mrn2dztkOBY0d/dzxOKr7jGtvskBw6GoiH
	PRfuP5cJLjHGqRSvN6OflGWRIzNWtMBD3ZYW1XbKht1ujv9ZFvV1ab/MTeR0hUCGgxiN
	xM+FRCctwVG3pxEA5iC65xerLj0AsoK6+1Oo8/c2oLqnykwRLsc+FsyKFPC+KvmPtzXX
	U4WEPmCMVaUJyo9jp1LDgOXmtO8lYomG6juwZEwUei2yHZud0/+/gA9goNkz3Qioi8Na
	1yFA==
MIME-Version: 1.0
X-Received: by 10.68.224.228 with SMTP id rf4mr31819067pbc.50.1372818253474;
	Tue, 02 Jul 2013 19:24:13 -0700 (PDT)
Received: by 10.68.175.33 with HTTP; Tue, 2 Jul 2013 19:24:13 -0700 (PDT)
In-Reply-To: <51D11493.6030602@yoctoproject.org>
References: <1372409484.9930.245.camel@ted> <51CD86F1.7090409@windriver.com>
	<1372424223.9930.257.camel@ted> <51CD8973.7020704@windriver.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF5244E@ORSMSX101.amr.corp.intel.com>
	<51CD9264.2040609@windriver.com> <1372427783.9930.258.camel@ted>
	<1372482483.9243.42.camel@envy.home>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF52828@ORSMSX101.amr.corp.intel.com>
	<51D11493.6030602@yoctoproject.org>
Date: Tue, 2 Jul 2013 22:24:13 -0400
Message-ID: <CADkTA4OvO8Z5ScwOv=+ednvKBBWJeKX5R0qcn-dbPMC=On8swA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Michael Halstead <michael@yoctoproject.org>
Cc: "Hart, Darren" <darren.hart@intel.com>, yocto <yocto@yoctoproject.org>
Subject: Re: poky-extras
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
X-List-Received-Date: Wed, 03 Jul 2013 02:24:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 1, 2013 at 1:33 AM, Michael Halstead
<michael@yoctoproject.org> wrote:
> I can change the name shortly. Is there any reason to keep a read-only
> copy available at the current location temporarily?

It can't hurt, but I also can't think of a really compelling reason that it=
 is
absolutely required. By the name alone, we can be sure that nothing
core to a build uses it, or fetches it, and that anyone with a copy can
continue to use their local copy under the current name .. until they
track down the new repo name.

Cheers,

Bruce

>
> Michael Halstead
> Yocto Project / Sys Admin
>
> On 06/30/2013 10:19 PM, Rifenbark, Scott M wrote:
>> Hi,
>>
>> I updated the dev-manual section that tells the user what is in this rep=
o and shows an example of cloning it.  Nothing changes except for the name,=
 which I switched to 'meta-yocto-kernel-extras'.  To me, it appears that th=
e contents of the repo still contain the kernel BitBake append files that y=
ou edit to point to your locally modified kernel source files as described =
in the text.  Within the entire YP documentation set, this little area is t=
he only reference to the old 'poky-extras' repo.  Here is the link to see t=
he changes - http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.htm=
l#meta-yocto-kernel-extras-repo.
>>
>> I am assuming that the name of the repo will indeed be changed to 'meta-=
yocto-kernel-extras'.  If I don't hear from anyone, I will assume everythin=
g is good.
>>
>> Thanks,
>> Scott
>>
>>> -----Original Message-----
>>> From: Hart, Darren
>>> Sent: Friday, June 28, 2013 10:08 PM
>>> To: Richard Purdie
>>> Cc: Bruce Ashfield; Rifenbark, Scott M; yocto; Michael Halstead
>>> Subject: Re: poky-extras
>>>
>>> On Fri, 2013-06-28 at 14:56 +0100, Richard Purdie wrote:
>>>> On Fri, 2013-06-28 at 09:40 -0400, Bruce Ashfield wrote:
>>>>> On 13-06-28 09:22 AM, Rifenbark, Scott M wrote:
>>>>>> All I need is the name to make some initial changes.
>>>>> Personally, I'm fine with 'meta-yocto-kernel'. Naming things is
>>>>> never easy, so I won't agonize over whether or not an "extras"
>>>>> should be on the end. But the name should be clear that it isn't
>>>>> the main yocto kernel, it's just a few crappy bbappends that make
>>>>> working with it locally easier for some :)
>>>>>
>>>>> So my only counter proposal is: meta-yocto-kernel-extras
>>>>>
>>>>> I'm going to de-crapify the bbappends so they are more useful, and
>>>>> have started on that work, but haven't finished it yet.
>>>> No strong feelings here. I just wiped out meta-linaro from there
>>> (hoping
>>>> Darren won't mind) and that checksums.ini file.
>>> That's fine, I was just thinking about that last week when I saw Linaro
>>> has a meta-linaro. That's where it belongs, so buh-bye. :-)
>>>
>>> --
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Technical Lead - Linux Kernel
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

