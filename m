Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C6BE005BB
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 07:46:03 -0700 (PDT)
Received: from [192.168.0.69] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 0272D23B22
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 14:01:00 +0100 (BST)
Message-ID: <4EA6CB6F.9060304@communistcode.co.uk>
Date: Tue, 25 Oct 2011 15:45:03 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Tue, 25 Oct 2011 14:46:10 -0000
Content-Type: multipart/alternative;
	boundary="------------020006030209070201080607"

--------------020006030209070201080607
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 24/10/2011 16:55, Zhang, Jessica wrote:
> OK missed your env post. Then this is your problem:
>
> 16.export OECORE_DISTRO_VERSION="1.1+snapshot-20111021"
> 17.export OECORE_SDK_VERSION="1.1+snapshot"
>
> They need to be 1.1 instead of 1.1+snapshot.  You need to update your Edison branch then do "bitbake meta-ide-support"
>
> -----Original Message-----
> From: Jack Mitchell [mailto:ml@communistcode.co.uk]
> Sent: Monday, October 24, 2011 8:44 AM
> To: Zhang, Jessica
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Eclipse Plugin: ADT Version too old
>
> On 24/10/2011 16:42, Zhang, Jessica wrote:
>> Hi Jack,
>>
>> So you mean you did "bitbake meta-ide-support" to use the build tree?
>>
>> I just tried with my Edison build tree mode on my laptop and it works fine. So can you check under your build/tmp directory, there should be an environment-setup-*-poky-linux file, where * is your target arch.  At the end file do you have several OECORE_* settings ? If not, you need to rerun "bitbake meta-ide-support" and ensure there're OECORE_* settings at the end.
>>
>> Thanks,
>> Jessica
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
>> Sent: Monday, October 24, 2011 2:24 AM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Eclipse Plugin: ADT Version too old
>>
>> On 24/10/2011 10:18, Lu, Lianhao wrote:
>>> Jack Mitchell wrote on 2011-10-24:
>>>> I am trying to use the new eclipse plugin, which I have had working
>>>> fine for the past couple of weeks until I switched from the master branch to edison.
>>>>
>>>> I performed a fresh build using the stable edison branch, installed
>>>> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto
>>>> eclipse environment I receive the following error:
>>>>
>>>> Yocto Preferences Configuration Error!
>>>> OECORE related items are not found in envrionement setup files.
>>>> The ADT version you're using is too old.
>>>> Please upgrade to our latest ADT Version!
>>>>
>>>> This pops up in a message box, not the eclipse console. I have
>>>> followed the ADT Setup guide to the letter and it's not playing ball -
>>>> could someone confirm this as working or point me towards a reason why I may be getting this error?
>>>>
>>> Hi Jack,
>>>
>>> How did you install your ADT? You can check the ADT version by "cat" the file /opt/poky/${version}/version-xxxx, where xxxx is your target sys architecture.
>>>
>>> -Lianhao
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> Hi Lianhao,
>>
>> I am using the yocto build tree so I don't have an installed ADT in /opt
>> but one that has been generated within my build directory, this is
>> correct yes?
>>
>> Jack.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> Hi Jessica,
>
> I posted my environment settings earlier, which are located here:
> http://pastebin.com/4vnWPAD2
>
> Yes, I did use bitbake meta-ide-support to build my roo

Hi Jessica,

I just did a full fresh re-build from scratch and now my environment 
variables are as follows:

http://ix.io/1Wf

My current git status is:

# On branch edision
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#    ../bitbake/lib/bb/pysh/pyshtables.py
#    ../conf/
#    ./
#    ../qemuarm-toolchain/
nothing added to commit but untracked files present (use "git add" to 
track)

The environment variables are still wrong, can I manually change them, I 
understand this is bad practice but I can't develop until I fix this.
> t.


--------------020006030209070201080607
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 24/10/2011 16:55, Zhang, Jessica wrote:
    <blockquote
cite="mid:C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com"
      type="cite">
      <pre wrap="">OK missed your env post. Then this is your problem:

16.export OECORE_DISTRO_VERSION="1.1+snapshot-20111021"
17.export OECORE_SDK_VERSION="1.1+snapshot"

They need to be 1.1 instead of 1.1+snapshot.  You need to update your Edison branch then do "bitbake meta-ide-support"

-----Original Message-----
From: Jack Mitchell [<a class="moz-txt-link-freetext" href="mailto:ml@communistcode.co.uk">mailto:ml@communistcode.co.uk</a>]
Sent: Monday, October 24, 2011 8:44 AM
To: Zhang, Jessica
Cc: <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old

On 24/10/2011 16:42, Zhang, Jessica wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hi Jack,

So you mean you did "bitbake meta-ide-support" to use the build tree?

I just tried with my Edison build tree mode on my laptop and it works fine. So can you check under your build/tmp directory, there should be an environment-setup-*-poky-linux file, where * is your target arch.  At the end file do you have several OECORE_* settings ? If not, you need to rerun "bitbake meta-ide-support" and ensure there're OECORE_* settings at the end.

Thanks,
Jessica

-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a> [<a class="moz-txt-link-freetext" href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>] On Behalf Of Jack Mitchell
Sent: Monday, October 24, 2011 2:24 AM
To: <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old

On 24/10/2011 10:18, Lu, Lianhao wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">Jack Mitchell wrote on 2011-10-24:
</pre>
          <blockquote type="cite">
            <pre wrap="">I am trying to use the new eclipse plugin, which I have had working
fine for the past couple of weeks until I switched from the master branch to edison.

I performed a fresh build using the stable edison branch, installed
the new 1.1 eclipse plugin and now whenever I try to setup the Yocto
eclipse environment I receive the following error:

Yocto Preferences Configuration Error!
OECORE related items are not found in envrionement setup files.
The ADT version you're using is too old.
Please upgrade to our latest ADT Version!

This pops up in a message box, not the eclipse console. I have
followed the ADT Setup guide to the letter and it's not playing ball -
could someone confirm this as working or point me towards a reason why I may be getting this error?

</pre>
          </blockquote>
          <pre wrap="">Hi Jack,

How did you install your ADT? You can check the ADT version by "cat" the file /opt/poky/${version}/version-xxxx, where xxxx is your target sys architecture.

-Lianhao
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
        </blockquote>
        <pre wrap="">Hi Lianhao,

I am using the yocto build tree so I don't have an installed ADT in /opt
but one that has been generated within my build directory, this is
correct yes?

Jack.
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap="">
Hi Jessica,

I posted my environment settings earlier, which are located here:
<a class="moz-txt-link-freetext" href="http://pastebin.com/4vnWPAD2">http://pastebin.com/4vnWPAD2</a>

Yes, I did use bitbake meta-ide-support to build my roo</pre>
    </blockquote>
    <br>
    Hi Jessica,
    <br>
    <br>
    I just did a full fresh re-build from scratch and now my environment
    variables are as follows:
    <br>
    <br>
    <a class="moz-txt-link-freetext" href="http://ix.io/1Wf">http://ix.io/1Wf</a>
    <br>
    <br>
    My current git status is:
    <br>
    <br>
    # On branch edision
    <br>
    # Untracked files:
    <br>
    #&nbsp;&nbsp; (use "git add &lt;file&gt;..." to include in what will be
    committed)
    <br>
    #
    <br>
    #&nbsp;&nbsp;&nbsp; ../bitbake/lib/bb/pysh/pyshtables.py
    <br>
    #&nbsp;&nbsp;&nbsp; ..<i class="moz-txt-slash"><span class="moz-txt-tag">/</span>conf<span
        class="moz-txt-tag">/</span></i>
    <br>
    #&nbsp;&nbsp;&nbsp; ./
    <br>
    #&nbsp;&nbsp;&nbsp; ..<i class="moz-txt-slash"><span class="moz-txt-tag">/</span>qemuarm-toolchain<span
        class="moz-txt-tag">/</span></i>
    <br>
    nothing added to commit but untracked files present (use "git add"
    to track)
    <br>
    <br>
    The environment variables are still wrong, can I manually change
    them, I understand this is bad practice but I can't develop until I
    fix this.
    <br>
    <blockquote
cite="mid:C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com"
      type="cite">
      <pre wrap="">t.
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------020006030209070201080607--
