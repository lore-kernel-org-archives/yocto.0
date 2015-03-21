Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFA04E00922; Sat, 21 Mar 2015 01:40:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36439E00914
	for <yocto@yoctoproject.org>; Sat, 21 Mar 2015 01:40:39 -0700 (PDT)
Received: by wgs2 with SMTP id 2so491448wgs.1
	for <yocto@yoctoproject.org>; Sat, 21 Mar 2015 01:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pc1L0On/HeE6hdjf3driUnxtxrRcBicRGwK9U4WV/6o=;
	b=B0TwQ0yLZvxuniNQUBF9Q3gRXg91Jj97xbJaZhfBFR7FpvmnB5N9r2+dj+DnuhFHxi
	8l+IpdsiyUbeabiOtrYvlChB5I7NKAdIAJo5BrqM7B8+AbR2tF0o6A6UVRPN7czOjuCH
	RppswHEvsuLiBneV6L/LujrPsbVltdL7ZTlmppgCcX98f2dVpajIU6urdbEPh+wI19SC
	wmh6iTKE61RTGNODUQs9vC06eYfxPIk786Jymbf9nQVuAtusS96MP6yTdojOnNFxasYt
	8UcgYzEIZ4AQxNNaok+RNUR5CqT13mYBd3oIKLpEcFZlsC5Z7eRbt80Odga93kVhOmKx
	NdIA==
MIME-Version: 1.0
X-Received: by 10.194.24.35 with SMTP id r3mr106629251wjf.125.1426927238843;
	Sat, 21 Mar 2015 01:40:38 -0700 (PDT)
Received: by 10.28.182.65 with HTTP; Sat, 21 Mar 2015 01:40:38 -0700 (PDT)
In-Reply-To: <3145381.WbFnV3fS4E@peggleto-mobl.ger.corp.intel.com>
References: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>
	<550BF5E3.90900@dynamicdevices.co.uk>
	<203838231.pb6FNpVrD4@peggleto-mobl.ger.corp.intel.com>
	<3145381.WbFnV3fS4E@peggleto-mobl.ger.corp.intel.com>
Date: Sat, 21 Mar 2015 14:10:38 +0530
Message-ID: <CAA2DH4vNJxmenn5mVmt8x-=rdBhTnUOFbPpeCmWuO8WpKuZTOg@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux Package Management
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
X-List-Received-Date: Sat, 21 Mar 2015 08:40:43 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 20, 2015 at 4:44 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 20 March 2015 11:10:39 Paul Eggleton wrote:
>> On Friday 20 March 2015 11:26:43 Alex J Lennon wrote:
>> > On 20/03/2015 11:15, Prasant J wrote:
>> > > On Fri, Mar 20, 2015 at 2:21 PM, Alex J Lennon
>> >
>> > I don't know. To me the question would be does it do want I need it to
>> > do as well as I need it to do it,
>> > rather than asking whether there is a lot of activity. One might take
>> > the view that if it is doing its job,
>> > a lack of activity is a sign that it's a mature piece of software that
>> > needs little further development.
>> >
>> > You'll have to make that decision yourself.
>> >
>> > My understanding is that smart is the recommended way to do things (at
>> > least it was what was
>> > recommended to me) - https://wiki.yoctoproject.org/wiki/Smart

@Alex:
You are correct, it should be able to do what I need.
It did most of the things that I need.

But I'm not fine in using a package if the development has stopped.
Smart may stop development but other packages continue to develop.
It is important for me to know that the maintainer will continue to provide
compliance as other libraries are actively developed.


>>
>> FYI, here is some of the thinking that led to the decision to use smart:
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2012-October/010384.html
>>
>> Of course that was a few years ago now - we probably ought to look at the
>> RPM landscape again (e.g. DNF) and see if any change is warranted.

@Paul:
This is a very important link for me. This posts points out that yum
will not be compatible with rpm ver 5.
This will be a problem for me as my imx6 yocto build uses rpm5. So
technically I cannot use yum.

>
> I forgot to mention, we do have some basic documentation here on
> setting up a feed if you hadn't already seen it:
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-runtime-package-management
>


Thanks for inputs. Would like to get more inputs from community.

Looks like Alex is successful and happy in using smart + rpm. I would
re-consider smart + rpm for my solution.

Anyone else using any other package management solution ?


Regards, Pj

