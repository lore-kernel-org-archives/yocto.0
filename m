Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BACE00A6A; Thu,  9 Nov 2017 11:43:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6125AE009B4
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 11:43:33 -0800 (PST)
Received: by mail-qk0-f196.google.com with SMTP id 2so8374085qkg.13
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 11:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=YbImLVS4nGebx8Au0rHEy27BmytjLPaTRLuHDZ40/yY=;
	b=DuRTQBgB4ocrVEBGgJlFjnvh8fB6p9ClszhoC/JsyIZ9pXeIiu4SPmHzCdwxsDWl85
	XSRKrtMw1jwh1X3aSE0FaN4JnxCPh7OkqKWCkhunEE6MjlS5fsyFc2+TIra9r6YmAseF
	nKCvoF14XnS2QMxVc+Jrfx6FsflvOsP6pw/NRze9UUBi3KjiThWMPm9AUhBBGegVowOJ
	lnh6XgNyEcDii0crkR4LuwFJKTGHV/P1i9Z2zXS/d5liolxPhW3o12gfRqGDapUJN1iC
	6fFFXcO6h40ETO8rbIz2T+vefkCjWmvzcyZ+UNJCYN3QLSCV5+k7RLhzYrYmH/fGxiWt
	Ttfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=YbImLVS4nGebx8Au0rHEy27BmytjLPaTRLuHDZ40/yY=;
	b=pQyp6mmYTzbcWb4XXN467+N6H10rZbsUwQo5ZwhAku3WzhlXMQ9vndqcewh+da6XA2
	kl1PtCOEPVygovGYY94TSaJ5CVUJALP75vxZnllBJkD1wPS+mmLsP8jL7Fxeo4WI4aMt
	9g4/feuDDr67VyM2mQPuNNlZqjgHbaYm2mlSMhAwZa9SYQT67Tshc2D5C/v8cFdsPdsu
	nyRd/oH1EBFZjbqh2UuXmmHIJ9SpRF2P/O86ceQtfGeogQStoISs1xn4IaRUCDV8URzd
	g6LzFI28KcfRGUJcPpJE71fDGdzZvxre7lQDRKbyZP0wbipCGhRN4I6CzFUanyyiU9EJ
	iqcQ==
X-Gm-Message-State: AJaThX4Mncfo2GCgaB10g7VGAnbLQ2vZO9zPfJR9v2AawW9f2nzSFhr6
	3qocCq4wSfA5GFnU7RE/oFAwmA==
X-Google-Smtp-Source: AGs4zMbiwT6KkHPsmQ0OXV7YauIW3p2JGa7eCSiitMAf5EY6Wtad1ZdWt1w/5aB19ebR/XR2qXFs/Q==
X-Received: by 10.55.151.4 with SMTP id z4mr2740342qkd.173.1510256613342;
	Thu, 09 Nov 2017 11:43:33 -0800 (PST)
Received: from [10.43.100.234] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	g47sm5161373qtk.37.2017.11.09.11.43.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Nov 2017 11:43:32 -0800 (PST)
To: Denys Dmytriyenko <denis@denix.org>
References: <8075716d-066a-ec38-3787-fd64bb9c61d5@gmail.com>
	<20171106164345.GQ9221@denix.org>
	<18f73e9e-6c8f-2c36-f9fc-6d6e53ef179d@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <808d5b44-4ecb-2da6-0dc3-0600afb2a759@gmail.com>
Date: Thu, 9 Nov 2017 11:43:31 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <18f73e9e-6c8f-2c36-f9fc-6d6e53ef179d@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] [RFC] stable branch naming scheme
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
X-List-Received-Date: Thu, 09 Nov 2017 19:43:35 -0000
Content-Type: multipart/alternative;
	boundary="------------B0984AA834AFF18CC912A036"
Content-Language: en-US

--------------B0984AA834AFF18CC912A036
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Any more comments?


I started to use stable/{branch}-next in all the contrib repos. Poky
will be constructed from oe-contrib repos.


thanks for all the feedback.

regards,

Armin


On 11/06/2017 10:14 AM, akuster808 wrote:
>
>
>
> On 11/06/2017 08:43 AM, Denys Dmytriyenko wrote:
>> On Fri, Nov 03, 2017 at 09:20:43AM -0700, akuster808 wrote:
>>> Hello,
>>>
>>> The problem I hope to solve is that a Maintainer can stage changes in=

>>> any branch in the contrib repos making it difficult for folks to trac=
k
>>> their back port requests. The also makes it harder to automate any ki=
nd
>>> of build automation.
>>>
>>> I would like to propose a contrib naming scheme for the stable releas=
e
>>> branches. I am thinking of the following:
>>>
>>> stable/{version}-next or {special char}_stable/{version}-next.
>>>
>>> =C2=A0=C2=A0 "version" is either the code name or numeric like in bit=
bake.
>>>
>>> =C2=A0=C2=A0 "special char" would be used to have these branches at t=
he top of th
>>> list, if we wont that.
>> I like this branch unification!
>>
>> I know we discussed this at OEDEM and there was some convenience reaso=
n given,=20
>> but can we also standardize on the tree? I.e. openembedded-core-contri=
b vs.=20
>> poky-contrib?
>
> The current Poky maintenance process talks about deconstructing
> "stable-next":
> https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Stable_bra=
nch_maintainers
> =C2=A0
> # Split out any bitbake changes and send them to the bitbake-devel
> mailing list (marking them with the appropriate stable version in the
> subject line e.g. [1.20])
> # Split out OE-Core changes and create an openembedded-core-contrib
> branch containing them; send the cover letter only (marking it as such
> in the subject) to the openembedded-core mailing list.
> The above has been happening via=C2=A0 a script Richard runs.=C2=A0 I p=
ersonally
> think it the workflow should be for OE -> Yocto. This does add more
> work for the maintainer but is cleaner.=C2=A0 I did ask Richard to crea=
te
> bitbake-contrib for this purpose but am lazy as he uses his script ; )
>
> The reason I choose "stable/" branching is that the "-next" branches
> are out of sync and not being used correctly or not defined on their
> purpose. another subject for another time.
>
> - armin
>
>>> We can apply this to all OE / Yocto repos that have stable branch
>>> maintenance process.
>>>
>>> If we standardize on a naming scheme, We can then document this so
>>> contributers can monitor their requests more easily. The community ca=
n
>>> see what changes are being backport.=C2=A0 This will enable the possi=
bility
>>> to automate builds, etc.=C2=A0
>>>
>>> let me know what you think.
>>>
>>> Kind regards,
>>>
>>> Armin
>>>
>>>
>>>
>>> _______________________________________________
>>> Openembedded-architecture mailing list
>>> Openembedded-architecture@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-architect=
ure
>


--------------B0984AA834AFF18CC912A036
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Any more comments?</p>
    <p><br>
    </p>
    <p>I started to use stable/{branch}-next in all the contrib repos.
      Poky will be constructed from oe-contrib repos.</p>
    <p><br>
    </p>
    <p>thanks for all the feedback.</p>
    <p>regards,</p>
    <p>Armin<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 11/06/2017 10:14 AM, akuster808
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:18f73e9e-6c8f-2c36-f9fc-6d6e53ef179d@gmail.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <p><br>
      </p>
      <br>
      <div class="moz-cite-prefix">On 11/06/2017 08:43 AM, Denys
        Dmytriyenko wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:20171106164345.GQ9221@denix.org">
        <pre wrap="">On Fri, Nov 03, 2017 at 09:20:43AM -0700, akuster808 wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">Hello,

The problem I hope to solve is that a Maintainer can stage changes in
any branch in the contrib repos making it difficult for folks to track
their back port requests. The also makes it harder to automate any kind
of build automation.

I would like to propose a contrib naming scheme for the stable release
branches. I am thinking of the following:

stable/{version}-next or {special char}_stable/{version}-next.

   "version" is either the code name or numeric like in bitbake.

   "special char" would be used to have these branches at the top of th
list, if we wont that.
</pre>
        </blockquote>
        <pre wrap="">I like this branch unification!

I know we discussed this at OEDEM and there was some convenience reason given, 
but can we also standardize on the tree? I.e. openembedded-core-contrib vs. 
poky-contrib?</pre>
      </blockquote>
      <br>
      The current Poky maintenance process talks about deconstructing
      "stable-next":<br>
      <a class="moz-txt-link-freetext"
href="https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Stable_branch_maintainers"
        moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Stable_branch_maintainers</a><br>
       <br>
      <li> Split out any bitbake changes and send them to the
        bitbake-devel mailing list (marking them with the appropriate
        stable version in the subject line e.g. [1.20]) </li>
      <li> Split out OE-Core changes and create an
        openembedded-core-contrib branch containing them; send the cover
        letter only (marking it as such in the subject) to the
        openembedded-core mailing list. </li>
      <blockquote type="cite" cite="mid:20171106164345.GQ9221@denix.org">
      </blockquote>
      The above has been happening via  a script Richard runs.  I
      personally think it the workflow should be for OE -&gt; Yocto.
      This does add more work for the maintainer but is cleaner.  I did
      ask Richard to create bitbake-contrib for this purpose but am lazy
      as he uses his script ; )<br>
      <br>
      The reason I choose "stable/" branching is that the "-next"
      branches are out of sync and not being used correctly or not
      defined on their purpose. another subject for another time.<br>
      <br>
      - armin<br>
      <br>
      <blockquote type="cite" cite="mid:20171106164345.GQ9221@denix.org">
        <pre wrap="">
</pre>
        <blockquote type="cite">
          <pre wrap="">We can apply this to all OE / Yocto repos that have stable branch
maintenance process.

If we standardize on a naming scheme, We can then document this so
contributers can monitor their requests more easily. The community can
see what changes are being backport.  This will enable the possibility
to automate builds, etc. 

let me know what you think.

Kind regards,

Armin



_______________________________________________
Openembedded-architecture mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Openembedded-architecture@lists.openembedded.org" moz-do-not-send="true">Openembedded-architecture@lists.openembedded.org</a>
<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/mailman/listinfo/openembedded-architecture" moz-do-not-send="true">http://lists.openembedded.org/mailman/listinfo/openembedded-architecture</a>
</pre>
        </blockquote>
      </blockquote>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------B0984AA834AFF18CC912A036--
