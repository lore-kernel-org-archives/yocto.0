Return-Path: <jdamon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96214E00A5C; Thu, 15 Jun 2017 15:46:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jdamon[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 415EDE009A5
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 15:46:54 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id s66so3140205pfs.2
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 15:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=wHFRDdM7obS4STj+eH+XaTk4FbLd9UQsL06wEwxC15k=;
	b=QJUWZN+pLTuiLW3R0J5EXOB4DvkAhOzYZqZj5T07vRg12Y53kRxA+PWtrejW+bTHHV
	FA1W6FXJeQjvmKBgYKGyy7wq+gf0YFrp4StFZl/LMJ+BjJIRLc8EnA2AaGgd1tEpWf/u
	RguUCfevcdjAxfB9i5RSFKpVFxWAo7h+oE8R03P+/YUuG4t3ktYH2GT4LvkIE23HsIhp
	rMoGoXsYTzm62JqtE0VfywFll/wQtX1AJUnlq859BYKLOfm9C/FCA4x1mQ3r/MGxku2l
	o3RBAV5XZfwrE5Si4gleQtdEgeWmiAZrOniWTsd0qUNTjGJpfwwZf2so5HSRzj0Gz24P
	0V7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=wHFRDdM7obS4STj+eH+XaTk4FbLd9UQsL06wEwxC15k=;
	b=sN/CbwVdWWxo+UzAiJ5kgxhKhgqSXK4WRZKyHEJ9fnLzwl6yvnRdCOwkDBZqVecPpB
	Uaa8+tCnnhKpc0NfICEoLg4wH6TBZarRolhr1Ll5LY52b7OytLHycTCJc60vfaSZ4Hoi
	xUyiOixDhLFNqHWiiaprXF1DQ01MulPFWHJyLNtT6oW8gETvV9qzzOzaGRhepeT6fuug
	a5p7SIQ4F0WWKm5hRl+ztj+38sZS1P7PHxY4nsOTuj1r/+z7kkLKaMM3+rnlUIp8gv2L
	2Azm1sK/Su4fk4bg22gi8RBm+Fj/W2cvjCiT6Q4fLp27Zxd+1JWb3JSMZFWtcFT6Vl+/
	Kmmw==
X-Gm-Message-State: AKS2vOzVrQ3bfbv6yfvk7wcGGW5oMXH1uv62cXgIGREuSQB24kK8wHyH
	T0yBfAbvfLGrSkO0uSQ=
X-Received: by 10.99.49.20 with SMTP id x20mr7721794pgx.181.1497566814398;
	Thu, 15 Jun 2017 15:46:54 -0700 (PDT)
Received: from [10.0.0.98] ([216.84.176.126]) by smtp.gmail.com with ESMTPSA id
	x27sm539174pfe.113.2017.06.15.15.46.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jun 2017 15:46:53 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <bff03cd3-258c-95fd-63de-548168f363d0@gmail.com>
	<9cd8d4c6-cad7-3b26-6894-62aa0fd9f77f@mlbassoc.com>
	<1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com>
From: Jimi Damon <jdamon@gmail.com>
Message-ID: <737f1314-826c-79e7-6be9-fada7d4ad687@gmail.com>
Date: Thu, 15 Jun 2017 15:46:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: devshell not working for Qt or Boundary Devices based yocto
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
X-List-Received-Date: Thu, 15 Jun 2017 22:46:56 -0000
Content-Type: multipart/alternative;
	boundary="------------C93908B321D89BD3984E015A"
Content-Language: en-US

--------------C93908B321D89BD3984E015A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I created a yocto group and user for performing these builds.

The yocto user has the basic Ubuntu default account ( comes from a 
simple useradd ... )


I verified that this user is able to perform the exact same bitbake -c 
devshell gettext that fails for other username ( same exact location on 
the filesystem after a sudo chgrp -R yocto $directory && sudo chmod -R 
g+rw  $directory ).

I'm guessing something is going wrong with the fakeroot command as I'm 
now seeing the terminal show up for just a second and then close when I 
try running this devshell as my original username.

I'm not sure which setting in my bash shell is causing this error so I'm 
all ears for any suggestions.


-Jimi

On 06/15/2017 01:47 AM, Paul Eggleton wrote:
> On Thursday, 15 June 2017 5:12:19 AM CEST Gary Thomas wrote:
>> On 2017-06-15 01:58, Jimi Damon wrote:
>>> I'm trying out two different yocto distributions and in each one the
>>> devshell doens't work. Instead it just gets to the
>>> Summary line and returns to my normal shell ( bash ) .
>> What are you expecting to happen?  'devshell' is just that - a shell
>> environment (e.g. bash) where you are set up to "develop" (tinker, explore,
>> etc) the given recipe.
> I think Jimi is saying that it doesn't appear to be launching a separate
> terminal / shell. Right?
>
> Assuming that's what's happening, the devshell code is supposed to print out
> an error when it can't launch a suitable terminal, but if the terminal isn't
> doing what it should then that might leave you in this situation. Does
> log.do_devshell for the recipe indicate anything?
>
> Cheers,
> Paul
>


--------------C93908B321D89BD3984E015A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font face="Monaco">Hi,</font></p>
    <font face="Monaco">I created a yocto group and user for performing
      these builds.<br>
      <br>
      The yocto user has the basic Ubuntu default account ( comes from a
      simple useradd ... )<br>
      <br>
      <br>
      I verified that this user is able to perform the exact same
      bitbake -c devshell gettext that fails for other username ( same
      exact location on the filesystem after a sudo chgrp -R yocto
      $directory &amp;&amp; sudo chmod -R g+rw  $directory ).<br>
      <br>
      I'm guessing something is going wrong with the fakeroot command 
      as I'm now seeing the terminal show up for just a second and then
      close when I try running this devshell as my original username.<br>
      <br>
      I'm not sure which setting in my bash shell is causing this error
      so I'm all ears for any suggestions.<br>
      <br>
      <br>
      -Jimi<br>
      <br>
    </font>
    <div class="moz-cite-prefix">On 06/15/2017 01:47 AM, Paul Eggleton
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1721976.Tat4yvfF10@peggleto-mobl.ger.corp.intel.com">
      <pre wrap="">On Thursday, 15 June 2017 5:12:19 AM CEST Gary Thomas wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On 2017-06-15 01:58, Jimi Damon wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">I'm trying out two different yocto distributions and in each one the
devshell doens't work. Instead it just gets to the 
Summary line and returns to my normal shell ( bash ) .
</pre>
        </blockquote>
        <pre wrap="">
What are you expecting to happen?  'devshell' is just that - a shell
environment (e.g. bash) where you are set up to "develop" (tinker, explore,
etc) the given recipe.
</pre>
      </blockquote>
      <pre wrap="">
I think Jimi is saying that it doesn't appear to be launching a separate 
terminal / shell. Right?

Assuming that's what's happening, the devshell code is supposed to print out 
an error when it can't launch a suitable terminal, but if the terminal isn't 
doing what it should then that might leave you in this situation. Does 
log.do_devshell for the recipe indicate anything?

Cheers,
Paul

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------C93908B321D89BD3984E015A--
