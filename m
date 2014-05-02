Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1D09E0096C; Fri,  2 May 2014 06:35:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A99AE00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 06:35:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 3A08D27E015;
	Fri,  2 May 2014 13:35:31 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 0ik1UcyqTTIX; Fri,  2 May 2014 13:35:29 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id C29B527E006;
	Fri,  2 May 2014 13:35:29 +0000 (UTC)
Message-ID: <53639F1F.8090309@dynamicdevices.co.uk>
Date: Fri, 02 May 2014 14:35:27 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <5362171B.8010000@dynamicdevices.co.uk>	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>	<536285BC.8010200@dynamicdevices.co.uk>	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>	<53632C0B.1010401@dynamicdevices.co.uk>	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>	<5363973A.6020106@dynamicdevices.co.uk>	<CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>	<53639996.4090604@dynamicdevices.co.uk>
	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
In-Reply-To: <CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 13:35:37 -0000
Content-Type: multipart/alternative;
	boundary="------------080709040507090202020404"

--------------080709040507090202020404
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 02/05/2014 14:23, Otavio Salvador wrote:
> On Fri, May 2, 2014 at 10:11 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
>> On 02/05/2014 14:07, Otavio Salvador wrote:
>>> On Fri, May 2, 2014 at 10:01 AM, Alex J Lennon
>>> <ajlennon@dynamicdevices.co.uk> wrote:
>>>> On 02/05/2014 13:56, Otavio Salvador wrote:
>>>>> On Fri, May 2, 2014 at 2:24 AM, Alex J Lennon
>>>>> <ajlennon@dynamicdevices.co.uk> wrote:
>>>>> ...
>>>>>> So I guess I'm at the point where I'm wondering if a getVar() with a
>>>>>> flag is behaving as you would expect it to,
>>>>>> or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
>>>>>> isn't defined?
>>>>>>
>>>>>> Thanks in advance for any advice,
>>>>> I think we have a simple error error. You are mixing a recipe, which
>>>>> is old and a metadata layer with new concepts.
>>>>>
>>>>> The u-boot-imx, in 2009.08 recipe, used to set the UBOOT_MACHINE in
>>>>> the recipe as it was left as a fallback in case user needed it and the
>>>>> value was different from newer releases.
>>>>>
>>>>> In your case, the easier is to make a new yourmachine.conf and use the
>>>>> UBOOT_CONFIG or UBOOT_MACHINE setting there so it will work just fine.
>>>>>
>>>> If I have to do that, then I have to do that.
>>>>
>>>> However if I could just undefine one of the two variables defined in the
>>>> meta-fsl-arm
>>>> layer then I could continue with what I am doing without having to spend
>>>> the time
>>>> right now to rework the configuration, which is wasted effort for me, as
>>>> I will be moving
>>>> up to the new version of u-boot in the near future.
>>>>
>>>> Is there no simple way to undefine a variable in a recipe?
>>> You can change the recipe byhand. This is ugly and I wouldn't do it. I
>>> do think you are wasting more time trying to 'workaround' it than
>>> fixing it.
>> Or indeed, would be not be reasonable to modify the uboot-config.bbclass
>> such that
>> it tested for and discarded empty strings in UBOOT_MACHINE / UBOOT_CONFIG
>> which would seem to be a more complete test and would eliminate the
>> problem ?
> Like: http://privatepaste.com/8046479967
>
>>> Comment the UBOOT_MACHINE setting in the u-boot-imx recipe and move
>>> on. The log is clear you're not setting the PREFERRED_VERSION
>>> accordingly and you should.
>>>
>> You've lost me. Why am I not setting PREFERRED_VERSION accordingly? I have
>> two recipes in the checkout and I have configured prefer the older one,
>> which
>> seems entirely reasonable.
> Your log say's it looks for u-boot-imx 2013.04 and not for 2009.08.
>

I might be misunderstanding what you are saying here, but if you look at
my earlier email, and check the patchbin snippets I provided you will
see I am preferring 2009.08

 1.
    PREFERRED_VERSION_u-boot-imx="2009.08"

The test in uboot-config.bbclass causes this to fail/be unavailable to
the build, which is why the log says I cannot use 2009.08, instead
falling back to the newer version. Removing the two lines checking for
the definition of the two variables results in the 2009.08 build
completing successfully - but I don't want to leave that little bomb in
meta-fsl-arm for colleagues to fall over in future.

I cannot override what meta-fsl-arm is setting because I can't (or don't
know how to) undefine one of those two variables in my bbappend, and
although I believe I _can_ set it to an empty string as  Paul suggested,
I don't believe the the getVar() code in uboot-config.bbclass checks
this, although I'm a bit unclear on the semantics of that function call.

I appreciate the help here Otavio, and I was hoping there was a simple
non-invasive way to solve the problem by undefining the variable in my
layer, as it seemed cleaner.

I don't want to waste any more of your time on this though so if I can't
do that then I'll  just  take the hacky route  as an intermediary step,
copy out your 2009.08 recipe into my layer and mod it there.

Thanks for the time & feedback though,

Alex




--------------080709040507090202020404
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 02/05/2014 14:23, Otavio Salvador
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com"
      type="cite">
      <pre wrap="">On Fri, May 2, 2014 at 10:11 AM, Alex J Lennon
<a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">
On 02/05/2014 14:07, Otavio Salvador wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On Fri, May 2, 2014 at 10:01 AM, Alex J Lennon
<a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a> wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">On 02/05/2014 13:56, Otavio Salvador wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">On Fri, May 2, 2014 at 2:24 AM, Alex J Lennon
<a class="moz-txt-link-rfc2396E" href="mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.co.uk&gt;</a> wrote:
...
</pre>
              <blockquote type="cite">
                <pre wrap="">So I guess I'm at the point where I'm wondering if a getVar() with a
flag is behaving as you would expect it to,
or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
isn't defined?

Thanks in advance for any advice,
</pre>
              </blockquote>
              <pre wrap="">I think we have a simple error error. You are mixing a recipe, which
is old and a metadata layer with new concepts.

The u-boot-imx, in 2009.08 recipe, used to set the UBOOT_MACHINE in
the recipe as it was left as a fallback in case user needed it and the
value was different from newer releases.

In your case, the easier is to make a new yourmachine.conf and use the
UBOOT_CONFIG or UBOOT_MACHINE setting there so it will work just fine.

</pre>
            </blockquote>
            <pre wrap="">If I have to do that, then I have to do that.

However if I could just undefine one of the two variables defined in the
meta-fsl-arm
layer then I could continue with what I am doing without having to spend
the time
right now to rework the configuration, which is wasted effort for me, as
I will be moving
up to the new version of u-boot in the near future.

Is there no simple way to undefine a variable in a recipe?
</pre>
          </blockquote>
          <pre wrap="">You can change the recipe byhand. This is ugly and I wouldn't do it. I
do think you are wasting more time trying to 'workaround' it than
fixing it.
</pre>
        </blockquote>
        <pre wrap="">
Or indeed, would be not be reasonable to modify the uboot-config.bbclass
such that
it tested for and discarded empty strings in UBOOT_MACHINE / UBOOT_CONFIG
which would seem to be a more complete test and would eliminate the
problem ?
</pre>
      </blockquote>
      <pre wrap="">
Like: <a class="moz-txt-link-freetext" href="http://privatepaste.com/8046479967">http://privatepaste.com/8046479967</a>

</pre>
      <blockquote type="cite">
        <blockquote type="cite">
          <pre wrap="">Comment the UBOOT_MACHINE setting in the u-boot-imx recipe and move
on. The log is clear you're not setting the PREFERRED_VERSION
accordingly and you should.

</pre>
        </blockquote>
        <pre wrap="">
You've lost me. Why am I not setting PREFERRED_VERSION accordingly? I have
two recipes in the checkout and I have configured prefer the older one,
which
seems entirely reasonable.
</pre>
      </blockquote>
      <pre wrap="">
Your log say's it looks for u-boot-imx 2013.04 and not for 2009.08.

</pre>
    </blockquote>
    <br>
    I might be misunderstanding what you are saying here, but if you
    look at my earlier email, and check the patchbin snippets I provided
    you will see I am preferring 2009.08<br>
    <br>
    <ol style="margin: 0px; padding: 0px 0px 0px 48px; color: rgb(172,
      172, 172); font-family: Consolas, Menlo, Monaco, 'Lucida Console',
      'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono',
      monospace, serif; font-size: 12px; font-style: normal;
      font-variant: normal; font-weight: normal; letter-spacing: normal;
      line-height: 21px; orphans: auto; text-align: start; text-indent:
      0px; text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(248, 248, 248);">
      <li class="li2" style="-webkit-user-select: none;">
        <div class="de2" style="-webkit-user-select: text; padding: 0px
          5px; vertical-align: top; color: rgb(0, 0, 0);
          border-left-width: 1px; border-left-style: solid;
          border-left-color: rgb(204, 204, 204); margin: 0px 0px 0px
          -7px; position: relative; background-color: rgb(255, 255,
          255); font-family: Consolas, Menlo, Monaco, 'Lucida Console',
          'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans
          Mono', monospace, serif; line-height: 21px;
          background-position: initial initial; background-repeat:
          initial initial;">PREFERRED_VERSION_u-boot-imx="2009.08"</div>
      </li>
    </ol>
    <p>The test in uboot-config.bbclass causes this to fail/be
      unavailable to the build, which is why the log says I cannot use
      2009.08, instead falling back to the newer version. Removing the
      two lines checking for the definition of the two variables results
      in the 2009.08 build completing successfully - but I don't want to
      leave that little bomb in meta-fsl-arm for colleagues to fall over
      in future.<br>
    </p>
    <p>I cannot override what meta-fsl-arm is setting because I can't
      (or don't know how to) undefine one of those two variables in my
      bbappend, and although I believe I _can_ set it to an empty string
      as  Paul suggested, I don't believe the the getVar() code in
      uboot-config.bbclass checks this, although I'm a bit unclear on
      the semantics of that function call.<br>
    </p>
    <p>I appreciate the help here Otavio, and I was hoping there was a
      simple non-invasive way to solve the problem by undefining the
      variable in my layer, as it seemed cleaner. <br>
    </p>
    <p>I don't want to waste any more of your time on this though so if
      I can't do that then I'll  just  take the hacky route  as an
      intermediary step, copy out your 2009.08 recipe into my layer and
      mod it there.<br>
    </p>
    <p>Thanks for the time &amp; feedback though,<br>
    </p>
    <p>Alex<br>
      <br>
    </p>
    <br>
    <br>
  </body>
</html>

--------------080709040507090202020404--
