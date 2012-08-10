Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45DFAE003C8
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 16:39:31 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1289127lag.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 16:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=O5t/jctdKqy4Q2x53bnkNXeylKpWTByr3FynczWo0M4=;
	b=UYZ8W0HXxSBu8czkbQI9D7M43Ra/022qnut9S+T2WjZi8b3YldWoUeCBZYnQWBVekU
	3I+NYm0FFpqpU5lZMObaFEXCXYXDGA5FZKGzOqm9ukxT/vc3EZz2C9yme8UXMBihB9eu
	s1yqD/V0BGqeQxy/sELSRwheS+/ugwYVv3w0QyDmxvH6/jDOUCaPpNVqKFrqirLJOGTZ
	e0jy3fyxL5OGy8xMQHCOGzbIx9ae5xESkLxEzsPpqpDn47AMZJKPbCWRGeydu6yYf2eQ
	JbbbFFK2HSsC2qiG7meb7E2Pt8bIYKxOmr66mVhqjvteFPojOgX54eTurInU+syUEhS1
	LqiA==
MIME-Version: 1.0
Received: by 10.152.105.173 with SMTP id gn13mr4497287lab.20.1344641969944;
	Fri, 10 Aug 2012 16:39:29 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Fri, 10 Aug 2012 16:39:29 -0700 (PDT)
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46ACEEE4@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapTBvghatM8xxnuCMPSkFZzS4_ssiU1b3TXvWk1SR74Qug@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46ACEEE4@ORSMSX101.amr.corp.intel.com>
Date: Fri, 10 Aug 2012 19:39:29 -0400
Message-ID: <CAHUNapTmQSJPESzrrf=DR4uwhmTBWXm=+8Zw0P7Yqgsx3Bqq9Q@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob workflow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Aug 2012 23:39:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Jessica,

Thanks so much for considering my feedback :-)
I do tend to be "wordy", don't I? :-)

On Fri, Aug 10, 2012 at 6:56 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
> Am I missing any point that you're also trying to make here?

No, I think you've captured everything quite succinctly.

Expanding on point 1 a little bit:

> 1. hob should save the customization into the project's configuration, instead of using its own configuration saving mechanism.  In this way, people will be able to achieve same customized build result from command line or using hob.

Due to the fact you have to be "in a project build" (i.e. you have to
have already sourced oe-init-build-env) in order to run Hob I thought
the configurations I was performing in Hob were changing the
configurations of the project from which Hob was started. So I was
really confused that I couldn't find any of the changes anywhere. But
what is even more confusing is that when Hob starts it begins by
taking your project's base configuration. I feel Hob sort of "sits on
the fence" in the way it starts with the project's configuration, but
then doesn't update it (back again) as it goes along. Since I was
hoping to use Hob, and then look through the project's configuration
to see how my Hob changes were changing the underlying configuration
files I was getting a bit of a run-around since none of the changes
from Hob were showing up anywhere I could find.

If someone wanted to say "Hob is independent of the project from which
it is started" I would be okay with that, but in that case Hob
shouldn't start with the given project's configuration and shouldn't
need to be run after sourcing a particular project's oe-init-build-env
file.

In fact I was originally going to send an email asking where Hob's
configuration changes were being saved until I started playing with
the "save as template" thing.

With respect to number 2:
> 2. Current "Save template" wording is confusing.

On the one hand I would prefer to be able to save the configuration as
I go along. It looks like the only time I can save a given
configuration is after I have successfully built an image (?). Perhaps
I take a long time to sift through the available packages, maybe I
don't complete that all in one step. So I'd like to be able to save as
I go along. Then, after building my packages, perhaps I then take more
time to sift through the build artifacts to determine which I want in
my image. Again this step can take quite a while and I'd prefer to be
able to save intermediate configurations as I go along (just in case
of a crash or whatever).

On the other hand I can't help think that if Hob could be saving the
configuration to the current project's configuration files as I go
along then having an explicit "save template/configuration" wouldn't
even be required. If one instance of Hob is meant to work with only
one given project then what to save and where to save it would become
explicit, so perhaps Hob could just save with every click as I go
along?

> I think these are valid points, could you file enhancement bugs for them in Yocto project bugzilla for us to track them and plan the future work for them accordingly?

Yes, thank you.

