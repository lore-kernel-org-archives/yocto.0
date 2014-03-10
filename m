Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B42E00AA3
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:44:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7DE0327E003;
	Mon, 10 Mar 2014 11:44:02 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id eodZY56OWJJf; Mon, 10 Mar 2014 11:43:58 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 4958C27E001;
	Mon, 10 Mar 2014 11:43:58 +0000 (UTC)
Message-ID: <531DA573.5000408@dynamicdevices.co.uk>
Date: Mon, 10 Mar 2014 11:43:47 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Josef Holzmayr <jholzmayr@the-exact-steps.net>, 
	Vali Cobelea <valentin.cobelea@enea.com>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>	<531D9C64.4010806@enea.com>	<58476941.152432.1394449910667.open-xchange@email.1und1.de>	<531D9FFA.7060407@enea.com>
	<1342303316.154219.1394451169246.open-xchange@email.1und1.de>
In-Reply-To: <1342303316.154219.1394451169246.open-xchange@email.1und1.de>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
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
X-List-Received-Date: Mon, 10 Mar 2014 11:44:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


On 10/03/2014 11:32, Josef Holzmayr wrote:
> Hello Vali,
>
>> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. März 2014 um 12:20
>> geschrieben:
>>
>> The idea behind 'is' would be to have more safety and less crashes when
>> one of the arguments, in your case, is empty (eg None).
> Well there are cases where I needed to compare strings that have been read in
> and then modified from two different sources (e.g., files). Hence in my
> understanding, they have the same content, but not the same id. So if I want to
> match their content only, I'd have to use "==" because "is" would give me false
> even if the content matches.

Hi Josef, Vali,

Interesting points.

fwiw I'd have thought myself that string comparison should be string
comparison (==) as if you use an object identity comparison as a string
comparison (is), you potentially introduce opaque problems when the
strings are the same - i.e. same bytes of data - but the objects are not
the same for whatever reason.

e.g.

stringvar1 = "A string for comparison"
stringvar2 = "A string for "
stringvar2 += "comparison";

if stringvar1 == stringvar2:
  print stringvar1 + " == " + stringvar2
else:
  print stringvar1 + " != " + stringvar2

if stringvar1 is stringvar2:
  print stringvar1 + " is " + stringvar2
else:
  print stringvar1 + " is not " + stringvar2

Results in,

A string for comparison == A string for comparison
A string for comparison is not A string for comparison

Cheers,

Alex

>> This discussion can go over and over, is more a flavor thing: being
>> pythonian or not.
> Agreed, with the exception of the above said. But you're right, I'll look into
> the topic and see if it can bring improvements. Thanks again for your input.
>
>> Best regards,
>> Vali
> Greetz
> Josef /Leto
>
>> On 03/10/2014 01:11 PM, Josef Holzmayr wrote:
>>> Hello Vali,
>>>
>>>> Vali Cobelea <valentin.cobelea@enea.com> hat am 10. März 2014 um 12:05
>>>> geschrieben:
>>>>
>>>> Looks ok at a first look, but my first suggestion would be to start
>>>> using the "is" operator instead of "==" when it comes to comparing strings.
>>>> Otherwise using your way with "==" will crash if any of the variables
>>>> (those "sys.argv[]") are None (void).
>>> Thanks for the quick input! However, this is one of the very rare points I
>>> intently did that way, because of the difference in meaning from "==" to
>>> "is"
>>> (see
>>> http://stackoverflow.com/questions/1504717/why-does-comparing-strings-in-python-using-either-or-is-sometimes-produce).
>>> But I'm curious, how would one then properly compare the content of two
>>> strings?
>>> Checking both types first?
>>>
>>>> Best regards,
>>>> Vali
>>> Greetz
>>> Josef/Leto
>>>
>>>> On 03/10/2014 12:59 PM, Josef Holzmayr wrote:
>>>>> Howdy!
>>>>>
>>>>> After looking more and more into yocto, one of the main issues for me is
>>>>> the
>>>>> process to set up a project properly, including all layers and conf
>>>>> options.
>>>>> Especially those which would be needed to set exactly the same way again
>>>>> and
>>>>> again every time somebody needs to reproduce a build.
>>>>>
>>>>> So I've come up with an idea: a small tool that can handle these things
>>>>> for
>>>>> me.
>>>>> And here it is for your enjoyment/use/abuse/comments:
>>>>>
>>>>> https://github.com/LetoThe2nd/blubber
>>>>>
>>>>> Short excerpt from the README:
>>>>>
>>>>> But be warned first. Blubber is still in pre-pre-pre-alpha stage (more
>>>>> like
>>>>> a
>>>>> proof of concept), and has the following defects/bugs/non-features:
>>>>> - Horribly bad python code (Yes, its really that bad. Blame me, its my
>>>>> first
>>>>> attempt to use that language)
>>>>> - No error checking whatsoever
>>>>> - Largely incomplete feature set
>>>>> - Did I already mention the utterly bad code?
>>>>> - Only supports git sources so far.
>>>>>
>>>>> Despite that, it can already do some magic:
>>>>> - Getting poky and layers from git, and checking out branches/tags/commits
>>>>> if
>>>>> needed
>>>>> - Accordingly setting up build/conf/bblayers.conf
>>>>> - Setting up build/conf/local.conf with a set of predefined options
>>>>> - Running arbitrary commands with proper shell setup (source-ed
>>>>> poky/oe-init-build-env) for the configured project.
>>>>>
>>>>> If anybody has feedback, just scream loudly. Or if anybody knows of a
>>>>> better
>>>>> solution making it all obsolete, please also scream. Thanks!
>>>>>
>>>>> Leto


