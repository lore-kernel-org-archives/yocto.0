Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E25F3E0030B
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 01:40:40 -0800 (PST)
Received: from [192.168.0.56] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 7278A24C51
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 09:40:01 +0000 (GMT)
Message-ID: <4EC6280B.1010308@communistcode.co.uk>
Date: Fri, 18 Nov 2011 09:40:27 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
	<94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
In-Reply-To: <94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com>
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Fri, 18 Nov 2011 09:40:46 -0000
Content-Type: multipart/alternative;
	boundary="------------040809070404050902010107"

--------------040809070404050902010107
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 17/11/2011 21:38, Chris Tapp wrote:
> On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote:
>
>> Mark & everyone else listening:
>>
>> Would you say that (1) the need for a recipe and (2) the requirement 
>> to cross-compile are two of the most major usability or 
>> learning-curve disadvantages of working with the Yocto Project (and 
>> oe-core)? What would be a third disadvantage from a usability 
>> standpoint?
>>
>> Another way to put it: if you could change three things about the 
>> Yocto Project to make it more approachable for someone who has never 
>> used it before, what would they be?
>
> As another very experienced embedded systems developer who is 
> relatively new to embedded linux I would say that documentation and 
> worked examples are what I would really be after.
>
I am a fairly in-experienced embedded systems developer (fresh graduate, 
6 months real work exp) and have used Linux for a few years now and I 
concur that written examples, tutorials if you will, would be a great idea.
> It can be really frustrating when you can't get something going 
> because you don't understand the phrases / terminology that's being 
> used and it isn't readily available via the documentation. I've seen 
> quite a few posts on here relating to the documentation and it does 
> look like good progress is being made. As someone said earlier in this 
> thread, it would be good it run stuff through new (or relatively new) 
> adopters to see if they can get the examples to work without a fight. 
> I'm more than happy to help (and learn!).
It is very frustrating when you come to an issue that isn't documented, 
however I have found the IRC an invaluable resource as well as this 
mailing list. If documentation was to become more extensive I feel the 
categories should be defined further and split into more documents.
>
> I to started with OE and failed to get a build to complete. Yocto got 
> me there first time, so it is already much better for a novice 'baker' !
>
> Some worked examples for 'how to do xxx' would also be nice. E.g.
>
> 1) How do I configure the kernel ?
This has been covered fairly extensively but a full worked example 
wouldn't go amiss.
> 2) What do I need to do when I change my recipe to ensure that the 
> changes make it in to the image ?
I don't know how to properly do this so +1
> 3) How do I change and add startup scripts ?
I read a lot about startup scripts to figure out how to do this the 
correct way - although it is more generic linux knowledge I believe an 
easy introduction to this with further reading wouldn't go amiss.
>
> 4) How do I add data files to the image ?
I would image these to go in with the software you are developing.. 
however the fact I don't have a good answer may mean it needs addressing?
> 5) How do I make sure dependencies (e.g. libraries) are included in 
> the image ? i.e. what do DEPENDS, RDEPENDS, etc. do.
See 8
> 6) How can I use a layer to hold my project files ?
See 8
> 7) Do I need to delete tmp/ and rebuild to ensure I've got a valid 
> project build configured ? (i.e. it doesn't rely on staged items that 
> don't build when I bitbake MyProject).
Would be very good to get an example of how to ensure your build process 
is stable and will work every time from scratch.
> 8) How do I make my existing autobuild project in to a recipe ?
*THIS.* I currently have no idea how to port my autobuild project coded 
using the Eclipse plugin to a recipe structure, couple this with 5 and 6 
and it would make a fantastic from 'start to finish' style manual.
> 9) How do I set / change the root password ?
This seems fairly minor, is there a section in the wiki which could be 
devoted to things like this, rather than the faff of creating a new pdf 
etc.. this would also allow for the community to add tricks and tips in 
an easily accessible manner.

I have had reams of help from the users and project employees already 
for which I am very grateful. I think this is a fantastic project and 
something I will definitely keep with. I am currently in the process of 
proposing this as my new companies base architecture and will hopefully 
be becoming very adept in OE and Yocto over the coming year.

Thanks for all the work done and help provided so far, may it continue!

Jack.

>
> These items would help explain how to create a recipe and to use 
> bbappend. Ideally they should be worded so that they can be followed 
> by someone with a general embedded background who has minimal exposure 
> to embedded linux. However, it probably doesn't want to be an embedded 
> linux primer.
>
> This project is already easier to use than many others and is 
> supported by a really knowledgeable group who are willing to help 
> newcomers out. As it grows it would be unreasonable to expect the same 
> (relatively small) group to be able to support a much wider user-base. 
> Comprehensive documentation and non-trivial worked example should help 
> to reduce the workload and allow the group to assist those who have a 
> genuine need of help.
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------040809070404050902010107
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 17/11/2011 21:38, Chris Tapp wrote:
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">On 16 Nov 2011, at 22:07, Jeff Osier-Mixon wrote: <br>
      <br>
      <blockquote type="cite">Mark &amp; everyone else listening:
        <br>
        <br>
        Would you say that (1) the need for a recipe and (2) the
        requirement to cross-compile are two of the most major usability
        or learning-curve disadvantages of working with the Yocto
        Project (and oe-core)? What would be a third disadvantage from a
        usability standpoint?
        <br>
        <br>
        Another way to put it: if you could change three things about
        the Yocto Project to make it more approachable for someone who
        has never used it before, what would they be?
        <br>
      </blockquote>
      <br>
      As another very experienced embedded systems developer who is
      relatively new to embedded linux I would say that documentation
      and worked examples are what I would really be after. <br>
      <br>
    </blockquote>
    I am a fairly in-experienced embedded systems developer (fresh
    graduate, 6 months real work exp) and have used Linux for a few
    years now and I concur that written examples, tutorials if you will,
    would be a great idea.<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">It can be really frustrating when you can't get
      something going because you don't understand the phrases /
      terminology that's being used and it isn't readily available via
      the documentation. I've seen quite a few posts on here relating to
      the documentation and it does look like good progress is being
      made. As someone said earlier in this thread, it would be good it
      run stuff through new (or relatively new) adopters to see if they
      can get the examples to work without a fight. I'm more than happy
      to help (and learn!). <br>
    </blockquote>
    It is very frustrating when you come to an issue that isn't
    documented, however I have found the IRC an invaluable resource as
    well as this mailing list. If documentation was to become more
    extensive I feel the categories should be defined further and split
    into more documents.<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite"> <br>
      I to started with OE and failed to get a build to complete. Yocto
      got me there first time, so it is already much better for a novice
      'baker' ! <br>
      <br>
      Some worked examples for 'how to do xxx' would also be nice. E.g.
      <br>
      <br>
      1) How do I configure the kernel ? <br>
    </blockquote>
    This has been covered fairly extensively but a full worked example
    wouldn't go amiss.<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">2) What do I need to do when I change my recipe to
      ensure that the changes make it in to the image ? <br>
    </blockquote>
    I don't know how to properly do this so +1<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">3) How do I change and add startup scripts ?</blockquote>
    I read a lot about startup scripts to figure out how to do this the
    correct way - although it is more generic linux knowledge I believe
    an easy introduction to this with further reading wouldn't go amiss.
    <br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite"> <br>
      4) How do I add data files to the image ? <br>
    </blockquote>
    I would image these to go in with the software you are developing..
    however the fact I don't have a good answer may mean it needs
    addressing?<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">5) How do I make sure dependencies (e.g. libraries)
      are included in the image ? i.e. what do DEPENDS, RDEPENDS, etc.
      do. <br>
    </blockquote>
    See 8<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">6) How can I use a layer to hold my project files ? <br>
    </blockquote>
    See 8<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">7) Do I need to delete tmp/ and rebuild to ensure I've
      got a valid project build configured ? (i.e. it doesn't rely on
      staged items that don't build when I bitbake MyProject). <br>
    </blockquote>
    Would be very good to get an example of how to ensure your build
    process is stable and will work every time from scratch. <br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">8) How do I make my existing autobuild project in to a
      recipe ? <br>
    </blockquote>
    <b>THIS.</b> I currently have no idea how to port my autobuild
    project coded using the Eclipse plugin to a recipe structure, couple
    this with 5 and 6 and it would make a fantastic from 'start to
    finish' style manual.<br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite">9) How do I set / change the root password ? <br>
    </blockquote>
    This seems fairly minor, is there a section in the wiki which could
    be devoted to things like this, rather than the faff of creating a
    new pdf etc.. this would also allow for the community to add tricks
    and tips in an easily accessible manner.<br>
    <br>
    I have had reams of help from the users and project employees
    already for which I am very grateful. I think this is a fantastic
    project and something I will definitely keep with. I am currently in
    the process of proposing this as my new companies base architecture
    and will hopefully be becoming very adept in OE and Yocto over the
    coming year.<br>
    <br>
    Thanks for all the work done and help provided so far, may it
    continue!<br>
    <br>
    Jack.<br>
    <br>
    <blockquote
      cite="mid:94FEB92A-6B46-4F5E-A331-B558F109B796@keylevel.com"
      type="cite"> <br>
      These items would help explain how to create a recipe and to use
      bbappend. Ideally they should be worded so that they can be
      followed by someone with a general embedded background who has
      minimal exposure to embedded linux. However, it probably doesn't
      want to be an embedded linux primer. <br>
      <br>
      This project is already easier to use than many others and is
      supported by a really knowledgeable group who are willing to help
      newcomers out. As it grows it would be unreasonable to expect the
      same (relatively small) group to be able to support a much wider
      user-base. Comprehensive documentation and non-trivial worked
      example should help to reduce the workload and allow the group to
      assist those who have a genuine need of help. <br>
      <br>
      Chris Tapp <br>
      <br>
      <a class="moz-txt-link-abbreviated" href="mailto:opensource@keylevel.com">opensource@keylevel.com</a> <br>
      <a class="moz-txt-link-abbreviated" href="http://www.keylevel.com">www.keylevel.com</a> <br>
      <br>
      _______________________________________________ <br>
      yocto mailing list <br>
      <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> <br>
      <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a> <br>
    </blockquote>
    <br>
  </body>
</html>

--------------040809070404050902010107--
