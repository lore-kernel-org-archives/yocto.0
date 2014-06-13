Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DCC9E00BEA; Fri, 13 Jun 2014 15:38:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE3AE00BB1
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 15:38:04 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id gl10so1801470lab.5
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 15:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=MDyfdF2HSEJ/rXd+aBAysmo1BD2qlcSJBg/54JGph6I=;
	b=RsFdzLlWmR/2futh0gaqWozqo5tu3n9qLqBF6hgIC1Nc8lGaJgNqAKYPNPfs8vm4C/
	4PKy5zDf3yUi36W/3es5eVbAB1Qv9SQLqPHQK9dnksJv71JygaLi+LitMdDRxY4JXJKG
	iozjduY9uaZOr4X+c5FwVfTHniwlqqZ8WD/9S96C1IeuBITpGbT2R9zCxnDtIFXOY1YU
	CIfcKkIgVPittUz0jcC3JX1K2Y+ftAoQgwMG90Q1pOb7K/d4XxjnURh8hJ7KX43cQ6m5
	BPHqLHVpW2b0xwLgL/vg+VWCFhFeMetZ6fQymE94RXKN0DyS9SeFBiTLsOB8ZI58mEI8
	oI3Q==
X-Received: by 10.112.217.10 with SMTP id ou10mr3330887lbc.20.1402699082907;
	Fri, 13 Jun 2014 15:38:02 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.173.197 with HTTP; Fri, 13 Jun 2014 15:37:42 -0700 (PDT)
In-Reply-To: <CAOLEWZV87Ld5ek1mAGBpC57UpUSBT+VkJK0QBqoLhfbquGY=0g@mail.gmail.com>
References: <530697CC.5050402@balister.org> <20140507231808.GM11339@denix.org>
	<CA+YB3raM8kDp_K259c-ao=nSgfvgXTmi5vpju5wAnA0WwGHH3A@mail.gmail.com>
	<CAOLEWZV87Ld5ek1mAGBpC57UpUSBT+VkJK0QBqoLhfbquGY=0g@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Fri, 13 Jun 2014 15:37:42 -0700
X-Google-Sender-Auth: 6lx4r54qm07qXWWUw7R6cDPWUgA
Message-ID: <CA+YB3rbNui9jMKQov2km_Zt2=DTZF5UZzcS3O9ct_7oF4gXjzg@mail.gmail.com>
To: Stephen Arnold <stephen.arnold42@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OEDAM: OpenEmbedded Developers (Americas) Meeting
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
X-List-Received-Date: Fri, 13 Jun 2014 22:38:14 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, May 19, 2014 at 5:57 PM, Stephen Arnold
<stephen.arnold42@gmail.com> wrote:
> And a special thanks to everyone for letting the Gentoo dev crash the
> meeting.  The meeting *was* fun and educational (especially for me).  So far
> both the community and technology have been a lot of fun getting custom
> builds for various machines, as well as educational (is there an echo in
> here? ;)

We were glad to have you there, Steve. Thanks for coming!

>
> Thanks again, Steve  (aka mr_science)
>
>
> On Mon, May 12, 2014 at 4:19 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
>>
>> Meeting notes have been published on the OEDAM page:
>>
>> http://openembedded.org/wiki/OEDAM#Minutes
>>
>> Jefro takes the blame for typos and other reporting errors.
>>
>> On Wed, May 7, 2014 at 4:18 PM, Denys Dmytriyenko <denis@denix.org> wrote:
>> > The OpenEmbedded Board of Directors would like to thank everyone who was
>> > able
>> > to participate (either in person in Santa Clara or online) in our first
>> > OEDAM
>> > OpenEmbedded Developers (Americas) Meeting on May 2nd and 3rd! The
>> > meeting was
>> > a huge success and a lot of fun!
>> >
>> > We would also like to thank Ettus Research/NI for providing the
>> > premises, as
>> > well as Jefro and the Yocto Project for sponsoring the event and
>> > providing
>> > food!
>> >
>> > The meeting minutes should be published shortly.
>> >
>> > --
>> > Denys
>> >
>> >
>> > On Thu, Feb 20, 2014 at 07:03:24PM -0500, Philip Balister wrote:
>> >> The OpenEmbedded Project is holding a developers meeting May 2-3,
>> >> 2014, in Santa Clara, CA. This meeting is immediately after the
>> >> Embedded
>> >> Linux Conference North America. All active OpenEmbedded and Yocto
>> >> Project developers are invited to attend.
>> >>
>> >> NOTE: this is a development meeting for the project itself, not a
>> >> training session.
>> >>
>> >> May 2-3, 2014
>> >> time TBD
>> >>
>> >> Ettus Research/National Instruments
>> >> 4600 Patrick Henry Drive
>> >> Santa Clara, CA 95054 USA
>> >>
>> >> Lunch will be provided on both days.
>> >>
>> >> For more information and to add yourself to the list of attendees, see
>> >> the wiki page at
>> >> http://openembedded.org/wiki/OEDAM
>> >>
>> >> Here are a couple of photos from 2009:
>> >>
>> >> http://www.flickr.com/photos/32615155@N00/sets/72157622653686647/
>> >>
>> >> I'd like to thank Jefro for help with this announcement. Any errors are
>> >> mine though.
>> >>
>> >> Philip, OpenEmbedded eV Chair.
>> >> _______________________________________________
>> >> Openembedded-core mailing list
>> >> Openembedded-core@lists.openembedded.org
>> >> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>> > --
>> > _______________________________________________
>> > Openembedded-core mailing list
>> > Openembedded-core@lists.openembedded.org
>> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
>>
>>
>>
>> --
>> Jeff Osier-Mixon @Intel
>> Yocto Project Community Manager http://yoctoproject.org
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>



-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

