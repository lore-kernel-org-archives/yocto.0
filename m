Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA660E00916; Thu,  8 Jan 2015 07:21:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF03E00824
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 07:21:38 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id hy10so1300970vcb.0
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 07:21:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=qMSWcg82z6cvA+tndrk00Ilzob40/BGxoFExHviuziw=;
	b=EKa7yk6yXi8FGi/PCUeywryBba1XjUVJVJKbo+5KQuuAyEjo/LzZbYCBbndlRTINbJ
	5TIP2HOTDYfJr0JrAlvsKaDXaK46HE5U1xxxQnqCMkvFPNkBN++cHfys+I4yudmNaDPV
	ywqnLfF23cwGMArFxhKE8cTQ1UMeRu78+f+NDfPpKejkPt5fqEGF3Au1lAc/o6euaPG4
	5gJwcjS6/fH/DXPqg5Pz3I8a/86XTg3SCYGPa+pHq0+H5NctoqEY/DaTPuZSRM4fbvaA
	DpRVr5UozyEhtB6yjwMFOehgDUcgzrKo0INHDXRI7S/FZaq1TWSAqdu0fQ8VnZ/vFp6N
	8FDw==
X-Gm-Message-State: ALoCoQlP1Rbhv54Zbl8xg+Y3LI8LU5X/m5BIDeA9SoKG3Vnn0yeTG8S3OqpIGd0uUxPfSd/uEfSE
MIME-Version: 1.0
X-Received: by 10.52.171.9 with SMTP id aq9mr5537192vdc.48.1420730496526; Thu,
	08 Jan 2015 07:21:36 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Thu, 8 Jan 2015 07:21:36 -0800 (PST)
In-Reply-To: <CAJ2CSBvgxv3JPDatY5HHENL36jyq1gXufJafTTgdJaSTM-qNjQ@mail.gmail.com>
References: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
	<CAPhnLPAJhemtHnbRQcfQrJc--xjgqS47MkA96YPKFwaBueYM0w@mail.gmail.com>
	<CAJ2CSBsau7yx2LCnw4nOu5c0vTRayJgZcfNEiMXKqm6U59anEg@mail.gmail.com>
	<CAJ2CSBsA1D0aDWpmHgjkhwYxkY8G-FVY61b9Z-kuRoy9h6eaGA@mail.gmail.com>
	<CAPhnLPC3Uf2jnc4jkB7rWHLqiZbw0CffEoeD2TbzMBoRz6iVXA@mail.gmail.com>
	<CAJ2CSBvgxv3JPDatY5HHENL36jyq1gXufJafTTgdJaSTM-qNjQ@mail.gmail.com>
Date: Thu, 8 Jan 2015 15:21:36 +0000
Message-ID: <CAPhnLPApKGriXnARv37eiwwo-t4K6SVcn2dfVQpbys-9DurHTg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Damian, Alexandru" <alexandru.damian@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: RFC - enable toaster on the autobuilder
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
X-List-Received-Date: Thu, 08 Jan 2015 15:21:44 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master. Thanks,

-b

On 24 December 2014 at 14:06, Damian, Alexandru
<alexandru.damian@intel.com> wrote:
> Sure, thanks !
>
> Happy holidays !
>
> On 24 Dec 2014 00:46, "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
> wrote:
>>
>> On 23 December 2014 at 07:20, Damian, Alexandru
>> <alexandru.damian@intel.com> wrote:
>> > Hi Beth,
>> >
>> > The bitbake patchset was merged last week, and I've made the requested
>> > changes to the autobuilder patchset.
>>
>> Sure, this will probably not be until during the holidays (26thish or so).
>>
>> >
>> > Can you please review and pull poky-contrib:
>> > adamian/autobuilder-enable-toaster at your convenience ?
>> >
>> > Thanks,
>> > Alex
>> >
>> > On Wed, Dec 10, 2014 at 11:13 AM, Damian, Alexandru
>> > <alexandru.damian@intel.com> wrote:
>> >>
>> >> Hi,
>> >>
>> >> Thanks for the quick reply -
>> >>
>> >> yes, Toaster needs buildhistory; it also needs the "toaster" bbclass in
>> >> the INHERIT list.
>> >>
>> >> I'll make the changes and re-submit.
>> >>
>> >> Cheers,
>> >> Alex
>> >>
>> >> On Tue, Dec 9, 2014 at 6:07 PM, Flanagan, Elizabeth
>> >> <elizabeth.flanagan@intel.com> wrote:
>> >>>
>> >>> A few initial comments.
>> >>>
>> >>> TOASTER_UPLOADURL needs to be added to
>> >>> config/autobuilder.conf.example. It would also be nice if it was added
>> >>> to docs. Please set it to a localhost URL and comment it out for the
>> >>> time being.
>> >>>
>> >>> Also, can we make it TOASTER_UPLOAD_URL. It matches my naming
>> >>> convention for config strings a bit closer.
>> >>>
>> >>> If toaster needs buildhistory, I'm going to have to do some work on
>> >>> getting buildhistory to setup automatically on an autobuilder install
>> >>> (or at least document how to do it).
>> >>>
>> >>> -b
>> >>>
>> >>> On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru
>> >>> <alexandru.damian@intel.com> wrote:
>> >>> > Hello,
>> >>> >
>> >>> > I'm sending a patchset to enable Toaster logging for the autobuilder
>> >>> > -
>> >>> > can
>> >>> > you please review and comment ?
>> >>> >
>> >>> > I have pending Bitbake patchset
>> >>> > (poky-contrib:adamian/devel-settings)
>> >>> > Bitbake that adds two toaster-on-autobuilder related features:
>> >>> > 1. build event logging flag (-w) will write an UI event log file
>> >>> > 2. toaster end point that receives a log file over a HTTP POST
>> >>> > request
>> >>> > and
>> >>> > loads the data in the toaster database
>> >>> >
>> >>> > Based on this approach, I've created an autobuilder patchset that
>> >>> > enables 1.
>> >>> > at all times, and 2. uploads the data to a Toaster server if such
>> >>> > server is
>> >>> > specified in the build configuration
>> >>> >
>> >>> > Can you please review:
>> >>> >
>> >>> > poky-contrib: adamian/autobuilder-enable-toaster
>> >>> >
>> >>> >
>> >>> > Thanks,
>> >>> > Alex
>> >>> >
>> >>> > --
>> >>> > Alex Damian
>> >>> > Yocto Project
>> >>> > SSG / OTC
>> >>> >
>> >>> >
>> >>> > ---------------------------------------------------------------------
>> >>> > Intel Corporation (UK) Limited
>> >>> > Registered No. 1134945 (England)
>> >>> > Registered Office: Pipers Way, Swindon SN3 1RJ
>> >>> > VAT No: 860 2173 47
>> >>> >
>> >>> > This e-mail and any attachments may contain confidential material
>> >>> > for
>> >>> > the sole use of the intended recipient(s). Any review or
>> >>> > distribution
>> >>> > by others is strictly prohibited. If you are not the intended
>> >>> > recipient, please contact the sender and delete all copies.
>> >>>
>> >>>
>> >>>
>> >>> --
>> >>> Elizabeth Flanagan
>> >>> Yocto Project
>> >>> Build and Release
>> >>
>> >>
>> >>
>> >>
>> >> --
>> >> Alex Damian
>> >> Yocto Project
>> >> SSG / OTC
>> >
>> >
>> >
>> >
>> > --
>> > Alex Damian
>> > Yocto Project
>> > SSG / OTC
>> >
>> > ---------------------------------------------------------------------
>> > Intel Corporation (UK) Limited
>> > Registered No. 1134945 (England)
>> > Registered Office: Pipers Way, Swindon SN3 1RJ
>> > VAT No: 860 2173 47
>> >
>> > This e-mail and any attachments may contain confidential material for
>> > the sole use of the intended recipient(s). Any review or distribution
>> > by others is strictly prohibited. If you are not the intended
>> > recipient, please contact the sender and delete all copies.
>>
>>
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

