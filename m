Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B962E0091A; Tue, 24 Mar 2015 09:19:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8DEFE00854
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 09:19:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t2OGJ4JE016159
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 09:19:04 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.226) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Tue, 24 Mar 2015 09:19:03 -0700
Message-ID: <55118E77.9040404@windriver.com>
Date: Tue, 24 Mar 2015 11:19:03 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>	<550BF5E3.90900@dynamicdevices.co.uk>	<203838231.pb6FNpVrD4@peggleto-mobl.ger.corp.intel.com>	<3145381.WbFnV3fS4E@peggleto-mobl.ger.corp.intel.com>
	<CAA2DH4vNJxmenn5mVmt8x-=rdBhTnUOFbPpeCmWuO8WpKuZTOg@mail.gmail.com>
In-Reply-To: <CAA2DH4vNJxmenn5mVmt8x-=rdBhTnUOFbPpeCmWuO8WpKuZTOg@mail.gmail.com>
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
X-List-Received-Date: Tue, 24 Mar 2015 16:19:08 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/21/15 3:40 AM, Prasant J wrote:
> On Fri, Mar 20, 2015 at 4:44 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Friday 20 March 2015 11:10:39 Paul Eggleton wrote:
>>> On Friday 20 March 2015 11:26:43 Alex J Lennon wrote:
>>>> On 20/03/2015 11:15, Prasant J wrote:
>>>>> On Fri, Mar 20, 2015 at 2:21 PM, Alex J Lennon
>>>>
>>>> I don't know. To me the question would be does it do want I need it to
>>>> do as well as I need it to do it,
>>>> rather than asking whether there is a lot of activity. One might take
>>>> the view that if it is doing its job,
>>>> a lack of activity is a sign that it's a mature piece of software that
>>>> needs little further development.
>>>>
>>>> You'll have to make that decision yourself.
>>>>
>>>> My understanding is that smart is the recommended way to do things (at
>>>> least it was what was
>>>> recommended to me) - https://wiki.yoctoproject.org/wiki/Smart
> 
> @Alex:
> You are correct, it should be able to do what I need.
> It did most of the things that I need.
> 
> But I'm not fine in using a package if the development has stopped.
> Smart may stop development but other packages continue to develop.
> It is important for me to know that the maintainer will continue to provide
> compliance as other libraries are actively developed.

This is an open source project.  The Yocto Project developers will do they're
best to stand behind the technology that has been selected and have plans to
continue to fix defects, improve (as appropriate), and continue to evaluate
options moving forward.  But at this time, SmartPM is still the best answer for
our present needs, when RPM is selected as the package type.

You are welcome to provide your own package management front end, and/or port
components like DNF into the environment.  There is nothing stopping you other
then time and resources (the same constrains we are under.)

We do welcome contributions and enhancements from community members, but don't
expect us to select technology on a whim.  Usually we have a good reason to
select something, community input, requirements from members, or simply
familiarity with the code.

The SmartPM project itself is on a downward swing, however it does everything we
need it to do.  (One exception would be DeltaRPM support.. but frankly it's been
a low priority for people for a while now...)  SmartPM also has the advantage
that it's python and small.  Some of the other technologies, such as Zypper were
tried, and failed due to the, IMHO, onerous requirements that it's support
libraries, such as Boost and libstdc++, put onto the environment.  YUM is simply
not easily compatible with RPM5 and their community had been actively hostile to
RPM5 development.  SmartPM was simple, fast, and easy to modify -- with a
community that didn't mind change.  (DNF did not yet, exist at the time of the
decision -- it was being discussed, but it's only been recently that it has
advanced to a point where it can be seriously investigated as a possible
alternative.)

Also if you don't like SmartPM/RPM, you can always use IPK.  But you will give
up some of the capabilities that RPM brings to the table.  (Note, I believe IPK
is a better solution for smaller environments, while RPM is a better solution
for medium to large environments.)

> 
>>>
>>> FYI, here is some of the thinking that led to the decision to use smart:
>>>
>>> https://lists.yoctoproject.org/pipermail/yocto/2012-October/010384.html
>>>
>>> Of course that was a few years ago now - we probably ought to look at the
>>> RPM landscape again (e.g. DNF) and see if any change is warranted.
> 
> @Paul:
> This is a very important link for me. This posts points out that yum
> will not be compatible with rpm ver 5.
> This will be a problem for me as my imx6 yocto build uses rpm5. So
> technically I cannot use yum.
> 
>>
>> I forgot to mention, we do have some basic documentation here on
>> setting up a feed if you hadn't already seen it:
>>
>> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-runtime-package-management
>>
> 
> 
> Thanks for inputs. Would like to get more inputs from community.
> 
> Looks like Alex is successful and happy in using smart + rpm. I would
> re-consider smart + rpm for my solution.

I have no heard any serious complaints about SmartPM, other then concern of
community decline.  I use SmartPM/RPM5 (and intend to continue for the
forseeable future) in supporting on-target field upgrade solutions.  So far this
has turned out to be much easier to support and work on unique requirements my
customers have based on the simplicity of the Smart implementation.

--Mark

> Anyone else using any other package management solution ?
>
> 
> Regards, Pj
> 


