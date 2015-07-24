Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA112E00A51; Fri, 24 Jul 2015 13:10:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF1A8E00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 13:10:16 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so25228686igb.0
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 13:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=z65glHGCl8gZ+aWkmQabWm+x90zCOcptbL/kGejhyVQ=;
	b=JWMpsBbQ9b4B2A9AFs8FpYEvANSnkCysamon0GOJYtVwlMe9F7Rz3LnHjD6A2jgB4Q
	l17EryPWQL+JF/PaBdCjegPVD39vl9ScBjVIQroLRv2KVonP9C0BS4CwBU9QozvuWcZ4
	raULn8vijQTENWRTxCzfMToUXYmUX+YBUCOcP/fOrS+qzzaqth9YyiZMFEGOP+VKIJG5
	RMx91+2jv2cF/Hk4Vmoy/xDpW1+N+FEeTVZdqE1ebaHBeCWCJoPEk1tFMUxLe/3fDKqV
	UKC8inzID6MhXxA0QitbO7Xq4iMweZmva/Cp/rejhhUg/43rbmNLCl+wmvl9j2qAmjhw
	UkFg==
X-Received: by 10.107.134.83 with SMTP id i80mr23947222iod.123.1437768616435; 
	Fri, 24 Jul 2015 13:10:16 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.199 with HTTP; Fri, 24 Jul 2015 13:09:57 -0700 (PDT)
In-Reply-To: <55B296CA.6000404@mlbassoc.com>
References: <55B27DC9.1090307@mlbassoc.com> <55B2926F.4010608@linux.intel.com>
	<55B296CA.6000404@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 24 Jul 2015 13:09:57 -0700
X-Google-Sender-Auth: RWsf4M06BivbqcZnL7ch6EIQR8k
Message-ID: <CABcZANn0aLo8Pzxrn0G=5BkeHk=BFvf1QyTKiUY2G5YUzEVv-A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Missing certificates
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
X-List-Received-Date: Fri, 24 Jul 2015 20:10:23 -0000
Content-Type: multipart/alternative; boundary=001a113fe07aa6e890051ba497ee

--001a113fe07aa6e890051ba497ee
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 24, 2015 at 12:49 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-07-24 13:30, An=C3=ADbal Lim=C3=B3n wrote:
>
>> Hi Gary,
>>
>> What version of python do you use?.
>>
>> Since 2.7.9 cert checking is enabled by default causing this kind of
>> errors. [1]
>>
>> [1] https://www.python.org/dev/peps/pep-0476/
>>
>> Kind regards,
>>      alimon
>>
>
> I'm using the stock python 2.7.9 from Poky/Yocto
> master:901be2cb69892595443ed41ab4be285932db15eb
>
> Is there an answer for this that's a bit less intrusive?
> Perhaps there could be a DISTRO or even IMAGE feature to
> enable/disable this checking?
>
> The pep you referenced mostly talks about why this was changed
> and how to disable it - manually within the python code itself.
> What I don't see is where/how/what to change/import to actually
> let the full certificate checking happen.


I think the better bet is to fix it so it actually finds the certs from
ca-certificates rather than bypassing certificate checking, personally, but
I can see how that would be a useful workaround. :)
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113fe07aa6e890051ba497ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jul 24, 2015 at 12:49 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 2015-07-=
24 13:30, An=C3=ADbal Lim=C3=B3n wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi Gary,<br>
<br>
What version of python do you use?.<br>
<br>
Since 2.7.9 cert checking is enabled by default causing this kind of errors=
. [1]<br>
<br></span>
[1] <a href=3D"https://www.python.org/dev/peps/pep-0476/" rel=3D"noreferrer=
" target=3D"_blank">https://www.python.org/dev/peps/pep-0476/</a><br>
<br>
Kind regards,<br>
=C2=A0 =C2=A0 =C2=A0alimon<br>
</blockquote>
<br>
I&#39;m using the stock python 2.7.9 from Poky/Yocto master:901be2cb6989259=
5443ed41ab4be285932db15eb<br>
<br>
Is there an answer for this that&#39;s a bit less intrusive?<br>
Perhaps there could be a DISTRO or even IMAGE feature to<br>
enable/disable this checking?<br>
<br>
The pep you referenced mostly talks about why this was changed<br>
and how to disable it - manually within the python code itself.<br>
What I don&#39;t see is where/how/what to change/import to actually<br>
let the full certificate checking happen.</blockquote></div><br>I think the=
 better bet is to fix it so it actually finds the certs from ca-certificate=
s rather than bypassing certificate checking, personally, but I can see how=
 that would be a useful workaround. :)<br>-- <br><div class=3D"gmail_signat=
ure">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake,=
 OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer=
, Mentor Graphics</div>
</div></div>

--001a113fe07aa6e890051ba497ee--
