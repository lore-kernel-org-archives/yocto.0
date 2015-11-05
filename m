Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C589E0089D; Thu,  5 Nov 2015 10:05:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B39C1E0071C
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 10:05:25 -0800 (PST)
Received: by iodd200 with SMTP id d200so98420103iod.0
	for <yocto@yoctoproject.org>; Thu, 05 Nov 2015 10:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=RVlIv4T4Gxs5Aew33Pm3rss3rlpBghDRAU41v0EZazg=;
	b=M9WosB7RKYIrvJrMy7uxHuAfeMt/D7XST0Fp3LQbiPOpx5dHuDDinEgB8bFwL6TAJv
	z48BgqNCGGlGJk9OwKvaayI5CBcIAmlXM4vTMk/a0F1/MAcMuFdXflTjDQnxiLBrSwcS
	52cpoTpH7AX9z7zvKpD7HHROn4IFC1cAUNw95lM7aE7k3xL4Ynx/pglYrIgFN8HKS4n7
	6ycb/+azjY8kAI3kffBReVfakkOc+/j+RZMBN+bB3Dd9TtnQW+/xxWMGAM+2IioUF9rt
	Fdew4PdU7HdDhP9A5PzIAzwkxvrRNYfViTPUacfKpCcSO2IPLVKlITRVY1/lQTGyj5EE
	N/Ag==
X-Received: by 10.107.137.66 with SMTP id l63mr10793964iod.112.1446746724636; 
	Thu, 05 Nov 2015 10:05:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Thu, 5 Nov 2015 10:04:55 -0800 (PST)
In-Reply-To: <CAME0jBSgL=kcW9OqBWiW8kDaB6tZ+KD7HA89A6w0ttHHmXJUgg@mail.gmail.com>
References: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
	<6A5CD4C5-25C2-45C0-AF85-0BAC21D9B8A1@gmail.com>
	<1758245.VzMHveDG3B@peggleto-mobl.ger.corp.intel.com>
	<CAME0jBSgL=kcW9OqBWiW8kDaB6tZ+KD7HA89A6w0ttHHmXJUgg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 Nov 2015 10:04:55 -0800
Message-ID: <CAMKF1spGKG6HnQCbzvqFXK=bN6FQ9f6faS71Qm-P7PP7mMeRqA@mail.gmail.com>
To: Chris Hallinan <challinan@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 05 Nov 2015 18:05:28 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 8:25 AM, Chris Hallinan <challinan@gmail.com> wrote:
> On Thu, Nov 5, 2015 at 4:25 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Wednesday 04 November 2015 17:16:32 Khem Raj wrote:
>>> > On Nov 4, 2015, at 11:57 AM, Chris Hallinan <challinan@gmail.com> wrote:
>>> > I was trying to "patch a patch" in a u-boot recipe using standard
>>> > bbappends technique.  I added a task before do_patch after do_unpack
>>> > to munge the patch that was broken.  Here is what seems to happen:
>>> >
>>> > do_unpack:
>>> >    copies all the patch files from the metadata layer into ${WORKDIR}
>>> >
>>> > do_fix_patch (my additional task)
>>> >
>>> >    uses sed or patch to apply a local fix to a broken patch in ${WORKDIR}
>>> >
>>> > do_patch
>>> >
>>> >    creates a subdirectory in ${S} called "patches", and puts links to
>>> >
>>> > the actual files in the layer and uses those links back to the layer
>>> > files to apply the patches.
>>> >
>>> > It seems quilt is using the actual layer files instead of the ones in
>>> > ${WORKDIR}??
>>> >
>>> > This seems odd and somehow wrong.  We copy the layer files into
>>> > WORKDIR, and the unsuspecting user (me) thinks those are the files
>>> > that do_patch will use.
>>> >
>>> > This one took me some time (and help) to figure out!
>>> >
>>> > Comments?  Is this a bug?  halfway in the middle of some architectural
>>> > changes?  Expected behavior?
>>>
>>> while what you are doing is quite questionable. You seem to have a point.
>>> Most probably copy of the files in workdir should be removed from
>>> happening.
>>>
>>> > My workaround was to simply replace the entire patch.
>>>
>>> you should use the quilt workflow and edit/refresh the patch once and copy
>>> it back to metadata once for all yes.
>>
>> Or devtool modify, change the patch in the resulting git repository, then
>> devtool update-recipe -a.
>>
>
> Thanks for comments.  But the point here is that in some workflows
> (especially with a commercial vendor's implementation) we strongly
> encourage users _NOT_ to modify the distributed sources, but to make
> all modifications in users layers.  This provides a more manageable
> upgrade path.  I guess the strangeness is that files from
> recipe/metadata are copied to WORKDIR, but are not used, and I found
> that very confusing at first.  Lesson learned! ;)

Fair enough. you can also create new patches to fix changes from
patches that you dont
want to modify.

>
> I guess I find it a bit strange that quilt (I assume it's quilt) links
> back to the layer/metadata files directly and not back to the files in
> WORKDIR, which seems more reasonable and easier to modify.  I could
> label this as a "bug" rather than a "feature".  Matter of perspective,
> perhaps.

Well it doesnt use the patches from WORKDIR at all. It applies then
straight from metadata
and if you refresh a patch then at that time it will create a local
copy in patches/ dir
that you should then manually copy over to metadata once you are happy
hacking it.

>
> -Chris
>
>
>
> --
> Life is like Linux - it never stands still.

