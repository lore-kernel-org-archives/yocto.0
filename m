Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0943E007C8; Sat, 30 Aug 2014 11:44:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B7FE00720
	for <yocto@yoctoproject.org>; Sat, 30 Aug 2014 11:44:37 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id at20so4375127iec.33
	for <yocto@yoctoproject.org>; Sat, 30 Aug 2014 11:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RlwVeabGoeCF0NLOxgnqxyjm+xJ+37od7BYfmJGUlR0=;
	b=VkWJLOzaHcaoMGec7LVkLJ/VOYcyVxvfeHZA47vUyOkyjifK2GMYBAd42a/aZ4Dwgp
	SXvUfx3m2u3WnotN6wi4Fgna6P6OdPczy54le7UyfJIqb8g/4pCeUPTw5KYoD+wWOZqX
	bQXb31YzI/WSKw9+Y6FlyGOy8iXFqPfmu1U35zK79L0AhppzEWSV2t/g954wJyKLl83o
	XRzeDS6TqYm2XowGCyZv4q5D08EZa4T9aV4vppBjbixv2kYaoYX9pcDNsO606K1IbeO3
	7Eci/ScAw5pfl7wj7iLY5lWOeAv16Aqu9GqwfHxgOndd9NedVjHc+bCf2oWnSPqtf9wu
	ugOA==
MIME-Version: 1.0
X-Received: by 10.50.176.169 with SMTP id cj9mr11929342igc.14.1409424275904;
	Sat, 30 Aug 2014 11:44:35 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Sat, 30 Aug 2014 11:44:35 -0700 (PDT)
In-Reply-To: <CALb2249LccFPUKvUSbU1Nax4LQc6Nc8iXqT9Cx24YOAcf6rv2g@mail.gmail.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<534F9598.5050003@ge.com>
	<CALb2249LccFPUKvUSbU1Nax4LQc6Nc8iXqT9Cx24YOAcf6rv2g@mail.gmail.com>
Date: Sat, 30 Aug 2014 19:44:35 +0100
Message-ID: <CAPhDKbFyPcg9+ViCw0pXzK1+MC8qEcx==dH_eOgN+f-BuPKu4A@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: Leo Schwab <lschwab@sensity.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Sat, 30 Aug 2014 18:44:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Leo and Martin,

On 17 April 2014 20:54, Leo Schwab <lschwab@sensity.com> wrote:
> On Thu, Apr 17, 2014 at 1:49 AM, Martin Donnelly <martin.donnelly@ge.com> wrote:
>> On 05/03/2014 21:55, Leo Schwab wrote:
>>> Has anyone else done any work here?  Is there anything that I can
>>> steal^H^H^H^H^Htake inspiration from?  Or am I in completely
>>> unexplored territory?
>>
>> I posted an RFC patch set last year but it didn't get any traction and
>> we subsequently ruled out use of go so I never followed up on it but it
>> might be a useful starting point.
>>
>> http://lists.openembedded.org/pipermail/openembedded-core/2013-May/078606.html
>>
> We cobbled together our own recipes to build the Go compiler
> (available upon request), which seem to be working well enough.  We
> didn't need to make any changes to the recipes building the GCC
> toolchain.

I would be very much interested to take a look at what you did. My
use-case right now is to build Docker with Yocto.

Are using gogcc? From what understood it doen't build static binary
like gc does... which is, to be honest, my favourite feature of Go.

> What I was more interested in learning was how people were integrating
> the building of Go applications into Yocto.  Specifically: 'go get
> foo' will build 'foo' and, in the process, fetch and build all its
> dependencies.  This conflicts directly with Yocto's duties -- fetching
> and building dependencies.

I understand your concern with `go get` fetching dependencies that
bitbake should rather fetch. However, I would rather avoid using
global $GOPATH and set it to be relative to the build directory, i.e.
have per-project $GOPATH. That way `go get` is just a step in the
build process and doesn't intervine with bitbake in any way.

I have previously written a few recipes for some Python packages, and
do know that Yocto doesn't use any of the convinient tools (i.e.
easy_install or pip), but I would debate that it should and, perhaps,
in combination with virtualenv as well. There is currently no support
for Python 3 in Yocto, which is something that needs looking into and
I would also look into using pip then also.

> My current not-solution is rather ugly:  Create a repository that is a
> standard Go build environment pre-populated with the app source code
> and all of its dependencies.  The idea is that 'go get foo' will find
> everything it needs already there and won't try and fetch anything
> else.  Then create a simple Yocto recipe that fetches this repository
> and builds it using 'go get ...'.  The repository itself is maintained
> via rather delicate use of git-subtree.
> This gets the job done, and prevents Go and Yocto having a fight about
> who fetches what and how, but it's damned ugly...

This is kind of an okay solution, as Go community is not interested to
have `go get` to handle versions of dependcy, which is somewhat fair.
So if you needs to pin specific revisions, you will have to do either
subtree or submodule or script that just clones those deps or or
anything else of this kind.

I don't think it's any useful if you have to write bitbake recipe for
each little Go library you might be using, this is not C and `go get`
just works for most part. And when it doesn't, I would either fork and
import from my own fork or checkout a working revision of give
dependency and do git add on it, checking it into my project's main
tree.

I think at this stage it's improtant to provide a working Go compiler
for the Yocto community to use on their own projects. There are
currently only very few things that one might treat as system-level
tools, well, I can only recall of one actually, and it's the one I'm
attempting to integrate - Docker.

Cheers,
-- 
Ilya

