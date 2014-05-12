Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CADDE00B76; Mon, 12 May 2014 16:25:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 330 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 16:25:51 PDT
Received: from mail-la0-f43.google.com (unknown [209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D41DEE00B5D
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 16:25:51 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id mc6so2453817lab.2
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 16:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=q6makARq8awrCPq/PLaWqqWMSEoO3MFJTy+/iTtO534=;
	b=sInSZZwWMU8JA0eAD71NS8QHHUPqbUi2YD7nCtbIj730dbtNnHtTVyW7jPqqIYb2KY
	kHkZvH0dSqhwm9izrNejz8YzigYrbjB10YUwHCoSqH9pcDVY21/Z2+iihFAwfdDz7Eg9
	sJwCzcu9QUQ4p9r5wYAwo76D42oUlR0MCdJfZIWUSq0uJrowVjQ+HrNmnnf0/ZgMC04Q
	PKBuBVx22j3ECjjkJishwHsjQdn6g4H0tV8ajgX8mGAgPXNRofkiRO+Jmf3uBQ3/Xjbj
	Am7eOhquja6TACt2hhEgxTlFgHFh6XTdQ70smuySq6PXVjg6Q7znODoOYxv6nxvrY3yS
	ai+g==
X-Received: by 10.152.121.72 with SMTP id li8mr23060lab.45.1399936819672; Mon,
	12 May 2014 16:20:19 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.173.197 with HTTP; Mon, 12 May 2014 16:19:59 -0700 (PDT)
In-Reply-To: <20140507231808.GM11339@denix.org>
References: <530697CC.5050402@balister.org> <20140507231808.GM11339@denix.org>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 12 May 2014 16:19:59 -0700
X-Google-Sender-Auth: YW0di-1wcvsWbjzhIFrBcR1U3Rk
Message-ID: <CA+YB3raM8kDp_K259c-ao=nSgfvgXTmi5vpju5wAnA0WwGHH3A@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
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
X-List-Received-Date: Mon, 12 May 2014 23:25:56 -0000
Content-Type: text/plain; charset=UTF-8

Meeting notes have been published on the OEDAM page:

http://openembedded.org/wiki/OEDAM#Minutes

Jefro takes the blame for typos and other reporting errors.

On Wed, May 7, 2014 at 4:18 PM, Denys Dmytriyenko <denis@denix.org> wrote:
> The OpenEmbedded Board of Directors would like to thank everyone who was able
> to participate (either in person in Santa Clara or online) in our first OEDAM
> OpenEmbedded Developers (Americas) Meeting on May 2nd and 3rd! The meeting was
> a huge success and a lot of fun!
>
> We would also like to thank Ettus Research/NI for providing the premises, as
> well as Jefro and the Yocto Project for sponsoring the event and providing
> food!
>
> The meeting minutes should be published shortly.
>
> --
> Denys
>
>
> On Thu, Feb 20, 2014 at 07:03:24PM -0500, Philip Balister wrote:
>> The OpenEmbedded Project is holding a developers meeting May 2-3,
>> 2014, in Santa Clara, CA. This meeting is immediately after the Embedded
>> Linux Conference North America. All active OpenEmbedded and Yocto
>> Project developers are invited to attend.
>>
>> NOTE: this is a development meeting for the project itself, not a
>> training session.
>>
>> May 2-3, 2014
>> time TBD
>>
>> Ettus Research/National Instruments
>> 4600 Patrick Henry Drive
>> Santa Clara, CA 95054 USA
>>
>> Lunch will be provided on both days.
>>
>> For more information and to add yourself to the list of attendees, see
>> the wiki page at
>> http://openembedded.org/wiki/OEDAM
>>
>> Here are a couple of photos from 2009:
>>
>> http://www.flickr.com/photos/32615155@N00/sets/72157622653686647/
>>
>> I'd like to thank Jefro for help with this announcement. Any errors are
>> mine though.
>>
>> Philip, OpenEmbedded eV Chair.
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core



-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

