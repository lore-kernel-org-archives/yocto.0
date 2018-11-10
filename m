Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 963D4E00B21; Sat, 10 Nov 2018 10:02:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AFC3E0090E
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 10:02:53 -0800 (PST)
Received: by mail-pg1-f172.google.com with SMTP id y4so2206630pgc.12
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2018 10:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=xoUpHtPpzhLI+7Z9XNrbWRrtTArsaIq/tszaZ5JPtHo=;
	b=SMOeRDezvIrLLhdPLZF3bkmRCAEukVeVzbyC6onPnGFfMWDFtmog0qnRq4sBqsqNr9
	PAJzuLL2kMbXH2Ctbte292gOh3ZJFTcFZ/c5evmiYtTzH6wFgsWx+HlW3ToHNkg4tJ1u
	i/mZtLsgaDfMhpm7s9fEzqnZOE9kehHdwcG67Ft+Hfs/DiTPTSdPxar5t0TjimUuDFVU
	twcZ2WVLNGpLZ3ekvG0nzNkGhhnFTzX9XGdZb8aNwNwYZqdxse+FMB+Lksxwf95N0RHS
	rqhC77C6kHDwlcVXaZW7mS92DbYqwz/GsVUXZ3ZZSlJGt4Q6Ek6pbMmd7Ui3qb2bpA6c
	oOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=xoUpHtPpzhLI+7Z9XNrbWRrtTArsaIq/tszaZ5JPtHo=;
	b=IF0MnvBQb7hzvrrZs6/7qA5MUHC8kHVEU6+c9j//8TclywAyROgBSc7twYRpsiBiLV
	jQzHtXVL7N+bVXJpqKFau+K5OgxfZwQHXo5HBtMZN5d6bxVFfvfdFnuPmJ8uAP7nriaH
	cREVKv1QdvlNYqDDNBiMXWbi4IB0tSox7zXt8vyE1VHm8L46jiUU76VdLIC4UODn1YW4
	b1CeWZbvX9JLfJ/Q81AmuHp5xNMo6lm6DvCzyUdCUomr9YztQIeMHjq1vqsaqQjpb6ar
	T6aOosZqPVI0HSYfRiPugwKtYh+6RSa5tBzaRWknRCLicpUKX/biHw2nSL+quCvwVejK
	WvtQ==
X-Gm-Message-State: AGRZ1gLdF6EM5h1e3mGGy0mv2nCITmFu8joVuGngKWXJ0S+ajT8PoY75
	TuAKtkfcsxCzy7nsGTYMVOI=
X-Google-Smtp-Source: AJdET5eSXEsjzv+r/59tkSE9gUvxEdVapSD1jAdzX1ZdkG/Wf6/zaIBBYZjssK38X/Vk4zuZs03riQ==
X-Received: by 2002:a63:de4c:: with SMTP id y12mr11736060pgi.198.1541872972804;
	Sat, 10 Nov 2018 10:02:52 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:d54:e739:cec5:49dd?
	([2601:202:4180:c33:d54:e739:cec5:49dd])
	by smtp.gmail.com with ESMTPSA id
	r6sm10006736pgk.91.2018.11.10.10.02.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 10 Nov 2018 10:02:52 -0800 (PST)
To: richard.purdie@linuxfoundation.org,
	"Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>,
	"Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <8446b502-4dfc-676b-fcf1-d1de1d8eb004@gmail.com>
Date: Sat, 10 Nov 2018 10:02:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Sat, 10 Nov 2018 18:02:55 -0000
Content-Type: multipart/alternative;
	boundary="------------BACA5B4F50808C7D98B4FFE7"
Content-Language: en-US

--------------BACA5B4F50808C7D98B4FFE7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 11/10/18 8:25 AM, richard.purdie@linuxfoundation.org wrote:
> On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
>> This is the full report for 2.6 M4 RC1:=20
>> https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle=
_2.6_M4_RC1
> Thanks Sangeeta and team!
>
> Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need to make=

> a release go or nogo decision. To do this we have the following:
> =20
> QA Report: https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_=
Test_Cycle_2.6_M4_RC1
> Release Criteria: https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6=
_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018
>
> We'd be happy to take representations from members and the community to=

> help reach that decision.

Regarding.

*Bug=C2=A012991* <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D129=
91>
-[2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image getting
failed during building image due to webkitgtk package

Does it mean the Build-Appliance is non functioning ?=C2=A0 It was broken=
 at
the Sumo release time as well. Should it be dropped as the release criter=
ia?

- Armin

> My personal view is that whilst there are a number of issues present in=

> rc1, we should release it, collect up fixes on the thud branch (aleady
> happening) and plan on a 2.6.1 as soon as it looks like we have enough
> critical mass behind those as opposed to an rc2 and further delays to
> the release.
>
> Cheers,
>
> Richard
>
>
>
>
>

--------------BACA5B4F50808C7D98B4FFE7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/10/18 8:25 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a> wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
This is the full report for 2.6 M4 RC1: 
<a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1">https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1</a>
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Thanks Sangeeta and team!

Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need to make
a release go or nogo decision. To do this we have the following:
 
QA Report: <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1">https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1</a>
Release Criteria: <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018</a>

We'd be happy to take representations from members and the community to
help reach that decision.
</pre>
    </blockquote>
    <p>Regarding. <br>
    </p>
    <p><a href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991"><b>Bug 12991</b></a>
      -<span id="summary_alias_container"> <span
          id="short_desc_nonedit_display">[2.6 M4 RC1][Build-Appliance]
          Bitbake build-appliance-image getting failed during building
          image due to webkitgtk package</span></span></p>
    <p><span id="summary_alias_container"><span
          id="short_desc_nonedit_display">Does it mean the
          Build-Appliance is non functioning ?  It was broken at the
          Sumo release time as well. Should it be dropped as the release
          criteria?<br>
        </span></span></p>
    <p><span id="summary_alias_container"><span
          id="short_desc_nonedit_display">- Armin<br>
        </span>
      </span></p>
    <blockquote type="cite"
cite="mid:124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">
My personal view is that whilst there are a number of issues present in
rc1, we should release it, collect up fixes on the thud branch (aleady
happening) and plan on a 2.6.1 as soon as it looks like we have enough
critical mass behind those as opposed to an rc2 and further delays to
the release.

Cheers,

Richard





</pre>
    </blockquote>
  </body>
</html>

--------------BACA5B4F50808C7D98B4FFE7--
