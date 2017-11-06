Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8937AE00D1F; Mon,  6 Nov 2017 10:14:31 -0800 (PST)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C286EE00CC2
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 10:14:30 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id o7so19819pgc.4
	for <yocto@yoctoproject.org>; Mon, 06 Nov 2017 10:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=GkTKOfz11p/iY/JQCDgtV/j+9V8w8lvD/U7kH3JADr0=;
	b=ZUf5emTo4bhzorO54X7SyUH/gpzcC0NV9Xxjlp5evKqt5hYv+YX4iVoq7NkeWvqFRn
	a6DjSjTul63EjQvRZNp6XA0yh69lzJoOtHqVs63NwRcnYTQZJ8pmjrzO1oGM2jTTqFSV
	nhpOaaRYIpNhy/rRTvDkqCWAVgVb6IwMX0yEjsiFnzr1oGnxwHXXDBimDueL33GVHDLw
	RJ3C6fen0AzHnz2J/QrMMg+zqQH5UeVWwwe93NWWlNYXF0a8EaF92fisYJNHnmSw8ZIq
	OjJJe8et9wMNI5tMKV8qgOSrhjcsItFX8IzKZytK2wn3WbbdsQu0nHKKcNAm41+Z8bKl
	/S/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=GkTKOfz11p/iY/JQCDgtV/j+9V8w8lvD/U7kH3JADr0=;
	b=T5ZYbpOqSsNLpKmxO1UK0585uD0/6nTiC0gvTUN9LnuZEFnzzd+CJ44KSazQGyg6FX
	IP6vIcJhnpvnDoSOiY51RP5tBPGCBPwMFRhsIH1XZeejxZHSSX1Dl5ZG7S0fJmqBcvjQ
	V+nTvoCa25IqEYssUeNfWB5Sa09N82ML09Gkp19p9tZtF512FrXUUEwzwYtKCiriMoHH
	vZQCIGAWedEguFnEyN3gTCcFFWClrT8IRwLl6Lzju+QL4Zop38F+II4vy4wTm4njrUyr
	WUi5gatbkNU03RbtuUp9tjyVZYYowPN4iSdCGQLyJpC/2W1Mh525cNOa0m+uSZ46JG2i
	ZcVQ==
X-Gm-Message-State: AMCzsaX5yxXE3JhkJNdzxSOmTg0EKDQ5z277A5ZbmSwvg1s1XfqMUBx6
	W2SXDc40JdK20yi7VbtzREw=
X-Google-Smtp-Source: ABhQp+QVH8lWtkkCCzbeEg/LD1RHOv8nT5p8IFcg4DgXtQYY3otyUjt6/qJG5I2zkVHmPCgo8/z0gg==
X-Received: by 10.84.168.69 with SMTP id e63mr15265703plb.193.1509992070231;
	Mon, 06 Nov 2017 10:14:30 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:687e:6787:a054:61f8?
	([2601:202:4001:9ea0:687e:6787:a054:61f8])
	by smtp.gmail.com with ESMTPSA id
	b19sm25870757pfd.182.2017.11.06.10.14.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Nov 2017 10:14:29 -0800 (PST)
To: Denys Dmytriyenko <denis@denix.org>, akuster808 <akuster808@gmail.com>
References: <8075716d-066a-ec38-3787-fd64bb9c61d5@gmail.com>
	<20171106164345.GQ9221@denix.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <18f73e9e-6c8f-2c36-f9fc-6d6e53ef179d@gmail.com>
Date: Mon, 6 Nov 2017 10:14:27 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171106164345.GQ9221@denix.org>
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
X-List-Received-Date: Mon, 06 Nov 2017 18:14:31 -0000
Content-Type: multipart/alternative;
	boundary="------------A648722D162AA1881E00CF65"
Content-Language: en-US

--------------A648722D162AA1881E00CF65
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 11/06/2017 08:43 AM, Denys Dmytriyenko wrote:
> On Fri, Nov 03, 2017 at 09:20:43AM -0700, akuster808 wrote:
>> Hello,
>>
>> The problem I hope to solve is that a Maintainer can stage changes in
>> any branch in the contrib repos making it difficult for folks to track=

>> their back port requests. The also makes it harder to automate any kin=
d
>> of build automation.
>>
>> I would like to propose a contrib naming scheme for the stable release=

>> branches. I am thinking of the following:
>>
>> stable/{version}-next or {special char}_stable/{version}-next.
>>
>> =C2=A0=C2=A0 "version" is either the code name or numeric like in bitb=
ake.
>>
>> =C2=A0=C2=A0 "special char" would be used to have these branches at th=
e top of th
>> list, if we wont that.
> I like this branch unification!
>
> I know we discussed this at OEDEM and there was some convenience reason=
 given,=20
> but can we also standardize on the tree? I.e. openembedded-core-contrib=
 vs.=20
> poky-contrib?

The current Poky maintenance process talks about deconstructing
"stable-next":
https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Stable_branc=
h_maintainers
=C2=A0
# Split out any bitbake changes and send them to the bitbake-devel mailin=
g
list (marking them with the appropriate stable version in the subject
line e.g. [1.20])
# Split out OE-Core changes and create an openembedded-core-contrib branc=
h
containing them; send the cover letter only (marking it as such in the
subject) to the openembedded-core mailing list.
The above has been happening via=C2=A0 a script Richard runs.=C2=A0 I per=
sonally
think it the workflow should be for OE -> Yocto. This does add more work
for the maintainer but is cleaner.=C2=A0 I did ask Richard to create
bitbake-contrib for this purpose but am lazy as he uses his script ; )

The reason I choose "stable/" branching is that the "-next" branches are
out of sync and not being used correctly or not defined on their
purpose. another subject for another time.

- armin

>
>> We can apply this to all OE / Yocto repos that have stable branch
>> maintenance process.
>>
>> If we standardize on a naming scheme, We can then document this so
>> contributers can monitor their requests more easily. The community can=

>> see what changes are being backport.=C2=A0 This will enable the possib=
ility
>> to automate builds, etc.=C2=A0
>>
>> let me know what you think.
>>
>> Kind regards,
>>
>> Armin
>>
>>
>>
>> _______________________________________________
>> Openembedded-architecture mailing list
>> Openembedded-architecture@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-architectu=
re


--------------A648722D162AA1881E00CF65
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
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
      <pre wrap="">
I like this branch unification!

I know we discussed this at OEDEM and there was some convenience reason given, 
but can we also standardize on the tree? I.e. openembedded-core-contrib vs. 
poky-contrib?</pre>
    </blockquote>
    <br>
    The current Poky maintenance process talks about deconstructing
    "stable-next":<br>
<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Stable_branch_maintainers">https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance#Stable_branch_maintainers</a><br>
     <br>
    <li> Split out any bitbake changes and send them to the
      bitbake-devel mailing list (marking them with the appropriate
      stable version in the subject line e.g. [1.20])
    </li>
    <li> Split out OE-Core changes and create an
      openembedded-core-contrib branch containing them; send the cover
      letter only (marking it as such in the subject) to the
      openembedded-core mailing list.
    </li>
    <blockquote type="cite" cite="mid:20171106164345.GQ9221@denix.org">
      <pre wrap="">
</pre>
    </blockquote>
    The above has been happening via  a script Richard runs.  I
    personally think it the workflow should be for OE -&gt; Yocto. This
    does add more work for the maintainer but is cleaner.  I did ask
    Richard to create bitbake-contrib for this purpose but am lazy as he
    uses his script ; )<br>
    <br>
    The reason I choose "stable/" branching is that the "-next" branches
    are out of sync and not being used correctly or not defined on their
    purpose. another subject for another time.<br>
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
<a class="moz-txt-link-abbreviated" href="mailto:Openembedded-architecture@lists.openembedded.org">Openembedded-architecture@lists.openembedded.org</a>
<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/mailman/listinfo/openembedded-architecture">http://lists.openembedded.org/mailman/listinfo/openembedded-architecture</a>
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------A648722D162AA1881E00CF65--
