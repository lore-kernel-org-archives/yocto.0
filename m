Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E09E0049B; Thu,  5 Nov 2015 08:25:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2254EE00343
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 08:25:18 -0800 (PST)
Received: by obbww6 with SMTP id ww6so43800627obb.0
	for <yocto@yoctoproject.org>; Thu, 05 Nov 2015 08:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=awOBPEL3hdksn0n4fu9LGj3im9u4IefytP3IcLXZyGc=;
	b=J9FlwRSTxGeT54ApRRrLPEfLy+5IQgbDww/wPwWjXt5HWImeAoWkEM7MopKmYGSque
	xaLdFw1SUg9a7/NwG9r28poFZ7E3HyE0dipLSowc+4kcJSC7wFCBoNYAVA7HnD2N9a9S
	fgzfJuBlfpiN63SDFAWwy1UNsaPWHfewzRHYx4FhoYMZdBpGPhmVjnMPO6qcza+cwpLJ
	iGLZMqhzZ0xNMgDO2xXSDr0gLI4hyTgs8bQ56y9KmgjWXvt4aKOiIQwfAp26AhxxEh7c
	QQr0sbMEWBsr7w+0lkvZHSWyTPIGECZfrXz8WUlUGQNdHPZgbagzNNP2A+vv1cNSoW+D
	nabA==
MIME-Version: 1.0
X-Received: by 10.60.57.100 with SMTP id h4mr5138345oeq.71.1446740718123; Thu,
	05 Nov 2015 08:25:18 -0800 (PST)
Received: by 10.202.171.6 with HTTP; Thu, 5 Nov 2015 08:25:18 -0800 (PST)
In-Reply-To: <1758245.VzMHveDG3B@peggleto-mobl.ger.corp.intel.com>
References: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
	<6A5CD4C5-25C2-45C0-AF85-0BAC21D9B8A1@gmail.com>
	<1758245.VzMHveDG3B@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 5 Nov 2015 11:25:18 -0500
Message-ID: <CAME0jBSgL=kcW9OqBWiW8kDaB6tZ+KD7HA89A6w0ttHHmXJUgg@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
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
X-List-Received-Date: Thu, 05 Nov 2015 16:25:22 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 4:25 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 04 November 2015 17:16:32 Khem Raj wrote:
>> > On Nov 4, 2015, at 11:57 AM, Chris Hallinan <challinan@gmail.com> wrote:
>> > I was trying to "patch a patch" in a u-boot recipe using standard
>> > bbappends technique.  I added a task before do_patch after do_unpack
>> > to munge the patch that was broken.  Here is what seems to happen:
>> >
>> > do_unpack:
>> >    copies all the patch files from the metadata layer into ${WORKDIR}
>> >
>> > do_fix_patch (my additional task)
>> >
>> >    uses sed or patch to apply a local fix to a broken patch in ${WORKDIR}
>> >
>> > do_patch
>> >
>> >    creates a subdirectory in ${S} called "patches", and puts links to
>> >
>> > the actual files in the layer and uses those links back to the layer
>> > files to apply the patches.
>> >
>> > It seems quilt is using the actual layer files instead of the ones in
>> > ${WORKDIR}??
>> >
>> > This seems odd and somehow wrong.  We copy the layer files into
>> > WORKDIR, and the unsuspecting user (me) thinks those are the files
>> > that do_patch will use.
>> >
>> > This one took me some time (and help) to figure out!
>> >
>> > Comments?  Is this a bug?  halfway in the middle of some architectural
>> > changes?  Expected behavior?
>>
>> while what you are doing is quite questionable. You seem to have a point.
>> Most probably copy of the files in workdir should be removed from
>> happening.
>>
>> > My workaround was to simply replace the entire patch.
>>
>> you should use the quilt workflow and edit/refresh the patch once and copy
>> it back to metadata once for all yes.
>
> Or devtool modify, change the patch in the resulting git repository, then
> devtool update-recipe -a.
>

Thanks for comments.  But the point here is that in some workflows
(especially with a commercial vendor's implementation) we strongly
encourage users _NOT_ to modify the distributed sources, but to make
all modifications in users layers.  This provides a more manageable
upgrade path.  I guess the strangeness is that files from
recipe/metadata are copied to WORKDIR, but are not used, and I found
that very confusing at first.  Lesson learned! ;)

I guess I find it a bit strange that quilt (I assume it's quilt) links
back to the layer/metadata files directly and not back to the files in
WORKDIR, which seems more reasonable and easier to modify.  I could
label this as a "bug" rather than a "feature".  Matter of perspective,
perhaps.

-Chris



-- 
Life is like Linux - it never stands still.

