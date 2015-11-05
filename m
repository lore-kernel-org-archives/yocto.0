Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B02CE007D5; Thu,  5 Nov 2015 09:56:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0501E0071C
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 09:56:00 -0800 (PST)
Received: by iody8 with SMTP id y8so97935240iod.1
	for <yocto@yoctoproject.org>; Thu, 05 Nov 2015 09:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CUvaLmuU3KjLCyL+wfarzgDOMsFR7MjN7ApZ7skejmQ=;
	b=yVNqe/Au83tZuCvhrqp9c2uyyOq2XWhcArcLg9mg3Iw8Npqy2zuSdH1MUl6uNdZnVp
	Ml95xcTRDx5hwN+Q0MAKp1S/vCg3/iu/eSvQZNKg95FNzoXns77N2JbjZrWS/2Bxhp/R
	P4jKbX3UT/g9h7WAMdPqRZtuyIeQTSPTJAV3tEljhlDdejaT0nDzbx26/wzPDgsMH7KQ
	yyIVaWPYNvMcU0jp+zJNtEWucI7JX03uvMz1cc79JQqvbCpoomQ/tvT0YwSZIVGw+ImI
	E1rhzWlQrUa84GBlDvFCzePQLNhCurkYQN+EpaXEdNZ4tGzrkOqttA5GWBiQLYg+z2e3
	nnmw==
X-Received: by 10.107.3.77 with SMTP id 74mr10503222iod.49.1446746160274; Thu,
	05 Nov 2015 09:56:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Thu, 5 Nov 2015 09:55:30 -0800 (PST)
In-Reply-To: <8413820.GWojYgLLoG@peggleto-mobl.ger.corp.intel.com>
References: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
	<1758245.VzMHveDG3B@peggleto-mobl.ger.corp.intel.com>
	<CAME0jBSgL=kcW9OqBWiW8kDaB6tZ+KD7HA89A6w0ttHHmXJUgg@mail.gmail.com>
	<8413820.GWojYgLLoG@peggleto-mobl.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 Nov 2015 09:55:30 -0800
Message-ID: <CAMKF1sruZru_a8UDVeyEjoq1Dft=sK5+W1dA+iymzJ-J-ND99g@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unable to modify patch files in u-boot recipe - quilt applies direct from layer files
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
X-List-Received-Date: Thu, 05 Nov 2015 17:56:03 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 9:05 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 05 November 2015 11:25:18 Chris Hallinan wrote:
>> On Thu, Nov 5, 2015 at 4:25 AM, Paul Eggleton
>>
>> <paul.eggleton@linux.intel.com> wrote:
>> > On Wednesday 04 November 2015 17:16:32 Khem Raj wrote:
>> >> > On Nov 4, 2015, at 11:57 AM, Chris Hallinan <challinan@gmail.com>
>> >> > wrote:
>> >> > I was trying to "patch a patch" in a u-boot recipe using standard
>> >> > bbappends technique.  I added a task before do_patch after do_unpack
>> >> > to munge the patch that was broken.  Here is what seems to happen:
>> >> >
>> >> > do_unpack:
>> >> >    copies all the patch files from the metadata layer into ${WORKDIR}
>> >> >
>> >> > do_fix_patch (my additional task)
>> >> >
>> >> >    uses sed or patch to apply a local fix to a broken patch in
>> >> >    ${WORKDIR}
>> >> >
>> >> > do_patch
>> >> >
>> >> >    creates a subdirectory in ${S} called "patches", and puts links to
>> >> >
>> >> > the actual files in the layer and uses those links back to the layer
>> >> > files to apply the patches.
>> >> >
>> >> > It seems quilt is using the actual layer files instead of the ones in
>> >> > ${WORKDIR}??
>> >> >
>> >> > This seems odd and somehow wrong.  We copy the layer files into
>> >> > WORKDIR, and the unsuspecting user (me) thinks those are the files
>> >> > that do_patch will use.
>> >> >
>> >> > This one took me some time (and help) to figure out!
>> >> >
>> >> > Comments?  Is this a bug?  halfway in the middle of some architectural
>> >> > changes?  Expected behavior?
>> >>
>> >> while what you are doing is quite questionable. You seem to have a point.
>> >> Most probably copy of the files in workdir should be removed from
>> >> happening.
>> >>
>> >> > My workaround was to simply replace the entire patch.
>> >>
>> >> you should use the quilt workflow and edit/refresh the patch once and
>> >> copy
>> >> it back to metadata once for all yes.
>> >
>> > Or devtool modify, change the patch in the resulting git repository, then
>> > devtool update-recipe -a.
>>
>> Thanks for comments.  But the point here is that in some workflows
>> (especially with a commercial vendor's implementation) we strongly
>> encourage users _NOT_ to modify the distributed sources, but to make
>> all modifications in users layers.  This provides a more manageable
>> upgrade path.  I guess the strangeness is that files from
>> recipe/metadata are copied to WORKDIR, but are not used, and I found
>> that very confusing at first.  Lesson learned! ;)
>
> Right, that's what the -a does though - puts your change into a bbappend as
> opposed to the original recipe.
>
>> I guess I find it a bit strange that quilt (I assume it's quilt) links
>> back to the layer/metadata files directly and not back to the files in
>> WORKDIR, which seems more reasonable and easier to modify.  I could
>> label this as a "bug" rather than a "feature".  Matter of perspective,
>> perhaps.
>
> Yeah, I think it would be reasonable to fix this as well. I have sometimes
> wondered myself why the symlinking was done this way.

its time/space optimization more than anything you avoid copying and copies

>
> Going forward though I would like to encourage people to use devtool modify
> for this kind of thing rather than working with files in the WORKDIR, because
> among other things there's less chance of losing work when WORKDIR goes away.
> If that means we need to enhance or fix devtool so it works better for people
> then by all means let's do that.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

