Return-Path: <stephane.desneux@iot.bzh>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57353E00C6D; Sun, 20 Aug 2017 12:02:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7952E00B43
	for <yocto@yoctoproject.org>; Sun, 20 Aug 2017 12:02:30 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id f8so45778822wrf.3
	for <yocto@yoctoproject.org>; Sun, 20 Aug 2017 12:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=iot-bzh.20150623.gappssmtp.com; s=20150623;
	h=reply-to:subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=7O6t4JOTiTGiLYHKADdUvRuHC2sylZDz7hqU1u9jL9c=;
	b=a2+dIZERQivnVlZkNZ+DI4sYoPMiDySkjiWvKKi9uTyJ88D2neLvCNqou5PKP1Cs/p
	XLA29Wp9sYormJCud2E6oCPo28aW6SAe6e7s+p0lXq6QK3JFADkpSLR+jo2Gh9LdOslA
	IfjxMzaWAVjTfibLJcpa4r4NZ8EW7OsHYkzMrF+MsngpM3tTIz2TTVJoKH3Khysphzfz
	pxGDEqrtsLvxXq8/ElcXrQPAKUlMgv92Ac3hsmx/z8GICTVcdGS2YZ9WXdse03eVsGjz
	1c6sHSVDPKdQrNHLt6kh/JfoTbDRHJXBdZSGoVsm27SIdQGmgW4hV3Bn3exCyF7FZn1X
	fUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:reply-to:subject:to:cc:references:from
	:organization:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=7O6t4JOTiTGiLYHKADdUvRuHC2sylZDz7hqU1u9jL9c=;
	b=IDzFEOckmXttsu+ZEuiWeIapc9fHbj+fDQmBp9g2VCTRP9gEF0SK6weXnIItr2de1N
	Zuz2zacZj5OSwh3iH1tfQ3uBXpPOdOTFpEegP1LPecszf7xMy/ttBLW1fMsS5ZOGVVTR
	AhgZeJXXubAECau2uOAQOINaEUsEZWUKn62hD7thVb9aA+xLiZgOMkAPTrbBBSrzK2nF
	ZqY6c1nVy/eJVgOQVuE9kc2oMTlmqSZwTFKulK/GIARcKT3H3wx2nluV05y3GMQqSg9V
	QIZzJd03LY1MKBzYKV2AOyaXRHK/414hNvx4A04Gnjbx6Y97z0cvSlNuee8Z3xCppMuq
	9OAA==
X-Gm-Message-State: AHYfb5imfOOLk90yyKBTOOBA24xjnTHaULdX/rP8ZNYx4LLyFoa3oeKO
	HG2Qdpv50GtNjPfM
X-Received: by 10.223.151.74 with SMTP id r68mr4275462wrb.27.1503255750091;
	Sun, 20 Aug 2017 12:02:30 -0700 (PDT)
Received: from [10.0.0.13] (pre56-1-78-231-240-4.fbx.proxad.net.
	[78.231.240.4]) by smtp.gmail.com with ESMTPSA id
	w61sm6676505wrb.49.2017.08.20.12.02.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 20 Aug 2017 12:02:29 -0700 (PDT)
To: Mark Hatle <mark.hatle@windriver.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Gunnar Andersson <gandersson@genivi.org>, yocto@yoctoproject.org
References: <1502739375.26251.126.camel@genivi.org>
	<f75c19c6-e128-5932-fd29-1d3cb92b539d@windriver.com>
	<1503067579.6972.4.camel@genivi.org>
	<7d9c1bc9-648f-d5af-508e-089682e702e0@windriver.com>
	<74383aef-827f-44d8-630e-310e42f6667a@windriver.com>
From: Stephane Desneux <stephane.desneux@iot.bzh>
Organization: IoT.bzh
Message-ID: <51be8a03-0609-9bc6-ed7f-a35b896884f7@iot.bzh>
Date: Sun, 20 Aug 2017 21:02:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <74383aef-827f-44d8-630e-310e42f6667a@windriver.com>
Cc: "automotive-discussions@lists.linuxfoundation.org"
	<automotive-discussions@lists.linuxfoundation.org>
Subject: Re: Idea for bbappend / layer organization and naming convention
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: stephane.desneux@iot.bzh
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 20 Aug 2017 19:02:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi all,

I've followed this thread with interest. I'll try to bring here some ideas we
had in parallel on Automotive Grade Linux (AGL) side.

What we plan to do with backports on AGL is still WIP (see
https://jira.automotivelinux.org/browse/SPEC-802).

It's still cooking, but we're going to adopt a solution close to the one
proposed by Gunnar in GENIVI: I mean: we agree on the same goal, but what we end
up with differs slightly.

The scheme we're thinking about would be typically something like this:

meta-agl/meta-agl-backports/<meta-origin>/<recipes-origin>/<recipe>/<feature|reason>/<recipe>.bbappend

Where:
* the first meta-agl is our main git repo (not a meta in fact): the real meta is
meta-agl/meta-agl :)
* meta-agl/meta-agl-backports is a layer
* <meta-origin> is the name of the layer on which the backport is applied
* <recipes-origin> is the origin folder name for recipes in the origin layer
* <recipe> is the name of the recipe which is backported/amended
* <feature|reason> is something that defines why we have a backport here (bug
id, quick desc...)

And finally, in the folder where we put the bbappend, we want to add a
README.backport in YAML, similar to this one:

—
Origin: <name>
Origin-Url: <source repo url>
Origin-Ref: <rev/tag>
Destination: <AGL version name: dab, eel,...>
Expiration: <when> (if known)
Bug-AGL: <reference to bug ID>
Upstream-Status: <the same as OE's Upstream-Status tag>
Reason: <comment
   on
   multiple
   lines>
—

With that model, we expect to smooth the workflow and make the alignment on
Yocto/OE/Poky versions easier.

HTH

Best regards,
---
Stephane Desneux - CTO - IoT.bzh
stephane.desneux@iot.bzh - www.iot.bzh

On 18/08/17 21:35, Mark Hatle wrote:
> On 8/18/17 1:47 PM, Bruce Ashfield wrote:
>> On 08/18/2017 10:46 AM, Gunnar Andersson wrote:
>>>
>>> On Mon, 2017-08-14 at 23:02 -0400, Bruce Ashfield wrote:
>>>> On 2017-08-14 3:36 PM, Gunnar Andersson wrote:
>>>>>
>>>>> Yocto community,
>>>>>
>>>>> Triggered by the previous email request to yocto@ about best practices
>>>>> for layer organization I'm finally firing off this email for (hopefully)
>>>>> some feedback on an idea we first kicked around, discussed for rough
>>>>> consensus and then decided to implement in the Yocto based GDP project
>>>>> [1].  You can see it as a trial, anything can be changed, but so far so
>>>>> good...
>>>>>
>>>>> We adopted a somewhat novel (but actually not really unique, see inside)
>>>>> naming convention [2] for all modifications to components that belong to
>>>>> other layers.
>>>>>
>>>>
>>>> I've been using a similar naming/sorting mechanism in layers that
>>>> I maintain for several years now.
>>>
>>> Great.  Is it similar, or /exactly/ like this?  I'm only asking because I
>>> think it would be useful to have some written down rules and if there are
>>> additional tweaks that will improve this proposal, I'd like to hear them.
>>>
> 
> I suspect suggestions for best practices along with examples are what people
> would like to see.  This may be reasonable to do with both the Yocto Project and
> OpenEmbedded communities.
> 
> Obviously there are currently a large number of existing layers.  So showing how
> this works, and examples of how it makes it easier to maintain and manage the
> work over the longer term is a really good idea.
> 
> (Keep in mind, many of the current layers were originally designed/updated
> before there was a large ecosystem of layers.  So a lot of poor examples, of
> this kind of maintenance, may exist.  It is a good idea to steer people away
> from using these as examples, and even a way to potentially help the maintainers
> of those layers evolve into a better and more efficient format.)
> 
> --Mark
> 
>> Exactly. The layer name and recipe-* structure is nested in a layer
>> that is carrying bbappends. That way there's zero confusion about where
>> the main recipe can be found.
>>
>> Bruce
>>
>>> I suspected it might actually be somewhat of a common practice.
>>>
>>>> When you have a single layer that is carrying bbappends to many other
>>>> layers, I find that it really helps keep everything separated and aids
>>>> finding the original recipe.
>>>
>>> Yes, that is the idea.
>>>
>>>>
>>>> (that being said, recent work with layer index, etc, make it
>>>> easier to locate the original recipe and any bbappends .. but that
>>>> doesn't preclude keeping things organized in a layer).
>>>
>>> ... but I didn't get any more feedback than yours, so I'll just leave it
>>> where it is for now.  Maybe this is not something the other Yocto community
>>> cares about, or similar practices are actually done in practice, but not
>>> written down.  Or maybe everyone is OK with the state of mixing .bb and
>>> .bbappend files within the layers...
>>>
>>> So far I think the initial experience on our side is positive.  It's
>>> something that needs to be looked after a bit (we have a few mistakes to
>>> fix).  But since some directories will only have .bb files, and others only
>>> .bbappend files, it's therefore easy to script a warning system for anything
>>> that is out of place.
>>>
>>> Best Regards
>>> - Gunnar
>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>> [trimmed]
>>>
>>>>> -- 
>>>>> Gunnar Andersson <gandersson@genivi.org>
>>>>> Development Lead
>>>>> GENIVI Alliance
>>>>>
>>>>> [1] https://github.com/GENIVI/genivi-dev-platform
>>>>> [2] Naming strategy for bitbake extension layers:			
>>>>> https://at.projects.genivi.org/wiki/x/w4Xk
>>>
>>>
>>
> 

