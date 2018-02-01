Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A55BEE00E18; Thu,  1 Feb 2018 12:10:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87E95E00CE8
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 12:10:15 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id c17so20512493iod.1
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 12:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w5XZmljwrolFLys5hB7YGjDpLl5D4gFKwc24hzZ6WYQ=;
	b=ujLjBanqpZRrYPsS2/5LjfQ6ZfCjgD7vkZvsddwppXeOwe+rHzRQjiJF8tmu6rMhDu
	IVZfgMAcWrZubQu7e152lbGFV1zECFGjMpClYGg8Fg1G1vyy8Zfvib37TBgRKU6SbDQe
	wAKJeXQVa5d7huUPXNbH3vzyeyWkHP/90sWJtVhYn7BDX/EU2uIokU2H8FgDFUUtLTDq
	izRYX/nDuvCab1ejEuJ+QNfpnD74brjlK4z8pNVeMpzcV2XMYltTgJWujdIFKWZxXB5B
	c8A3fF90u9bhzhPeoLDv58p3b1XMEUm9KPa21VjPQY2gM6W2XDIOE9GvXgvsoWWxnzlS
	oTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w5XZmljwrolFLys5hB7YGjDpLl5D4gFKwc24hzZ6WYQ=;
	b=bsiSc2yi4Gtkzah/s8R+Jb39jmGLkXhPdxsBa1m32UW2VjMAUWbtk+bP93GPpKHEWW
	Q1C7z4ktb+Pfw1JI/8GgMALty0vLtn6Ldf60Gbs/u8o+D5WwOdaTS+ruKrtxjI4C4hRI
	Ul8YatEzgkRfZlTmJIHF88TxKYEaMEMjyliM6+3ue3y134chadrTf9O5wL+VIotsRYj4
	BgTkbAVhRWwVeomFObENOKgxe/eiYrD3kXvPsOLclQDDrsA/FKmIAVRt3ZTarM5xf+1g
	utg4lADYZW4LLITKIFatCQ6/PDG6UnIdb4dGjNzwOgQmgu6pBkrnhJBUlcLWIzExRLW/
	JRtg==
X-Gm-Message-State: AKwxyteA6Qkro8zMa1LUMWEBOfcL20K/txvtV5Hc59VVg5xJ4np/JHTI
	+/97beeEu6Ehi+owZzyfJseq9RW+9sZw6WwslGDa+Q==
X-Google-Smtp-Source: AH8x226bkj09NBPKEECXw8R8Tyi6fq7GJ4M9VRXpyhOqemQVRF5BYbsoezq8rZC8bhOU+1DSukEDsKPTc4shzlAWsZM=
X-Received: by 10.107.133.75 with SMTP id h72mr38953094iod.227.1517515814696; 
	Thu, 01 Feb 2018 12:10:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Thu, 1 Feb 2018 12:09:54 -0800 (PST)
In-Reply-To: <CAOsp8o-=GpA7HJp0TmTkeZ7vbOqvzO=YA76JvLN1CcP4Y3Fr6Q@mail.gmail.com>
References: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
	<CAJTo0LZfeg37KA=XOd-G7QJABy53JC5kJ07+uMo17xjjNq66qw@mail.gmail.com>
	<CAOsp8o83H+_rTgZANb9c9SoLEbMpg6L_O-vAYAygPrNjeMpaFw@mail.gmail.com>
	<CAJTo0LYh9Y879OZejijDrvdvXvbYGsyeOb9vLm2ahdfiK3Dg9Q@mail.gmail.com>
	<CAOsp8o-=GpA7HJp0TmTkeZ7vbOqvzO=YA76JvLN1CcP4Y3Fr6Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 1 Feb 2018 20:09:54 +0000
Message-ID: <CAJTo0LZEy5q996P=oBM-QFC_ONQdw3A4HRF=BFAyY2GaWYDh2Q@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Patching only the target version of a package?
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
X-List-Received-Date: Thu, 01 Feb 2018 20:10:16 -0000
Content-Type: multipart/alternative; boundary="001a113ec5e413d63d05642c2f49"

--001a113ec5e413d63d05642c2f49
Content-Type: text/plain; charset="UTF-8"

bbclasses can cause a recipe to be cloned and overrides created.  The
overrides are class-target for the target build, class-native for the
native build, class-nativesdk for the SDK build.

The mechanism is normally inheriting the class directly (eg when a recipe
is only useful as native) or using BBCLASSEXTEND to make it happen
automatically.

Ross

On 1 February 2018 at 19:05, Michael Habibi <mikehabibi@gmail.com> wrote:

> Thanks, that seems to be pretty much precisely what I need. Where can I
> learn more about the class construct, e.g. class-target and native? I saw
> some references to it in the docs, but not an actual explanation of how
> that all works and is put together. Any ideas?
>
> On Thu, Feb 1, 2018 at 9:34 AM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 1 February 2018 at 15:03, Michael Habibi <mikehabibi@gmail.com> wrote:
>>
>>> So let's say my whole bbappend file is only necessary for the target
>>> version. Can I rename the whole thing package-target.bbappend (add the
>>> -target suffix) and it will only append it to the recipe when building the
>>> target? Is "target" the actual suffix or is it a placeholder for something
>>> more specific? I have only seen -native, -cross, and some other ones that
>>> don't seem to apply to this case.
>>>
>>>
>> That won't work, as native and cross suffixes in recipes are for humans,
>> not bitbake.
>>
>> Ross
>>
>
>

--001a113ec5e413d63d05642c2f49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">bbclasses can cause a recipe to be cloned and overrides cr=
eated.=C2=A0 The overrides are class-target for the target build, class-nat=
ive for the native build, class-nativesdk for the SDK build.<div><br></div>=
<div>The mechanism is normally inheriting the class directly (eg when a rec=
ipe is only useful as native) or using BBCLASSEXTEND to make it happen auto=
matically.</div><div><br></div><div>Ross</div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On 1 February 2018 at 19:05, Michael Hab=
ibi <span dir=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D=
"_blank">mikehabibi@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">Thanks, that seems to be pretty much precisely =
what I need. Where can I learn more about the class construct, e.g. class-t=
arget and native? I saw some references to it in the docs, but not an actua=
l explanation of how that all works and is put together. Any ideas?</div><d=
iv class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Thu, Feb 1, 2018 at 9:34 AM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><span>On 1 February 2018 at 15:03, Michael Habibi <span di=
r=3D"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mik=
ehabibi@gmail.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_extra=
"><div class=3D"gmail_quote"><span><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">So let&#39;s say my whole bbappend file is only necessary for the =
target version. Can I rename the whole thing package-target.bbappend (add t=
he -target suffix) and it will only append it to the recipe when building t=
he target? Is &quot;target&quot; the actual suffix or is it a placeholder f=
or something more specific? I have only seen -native, -cross, and some othe=
r ones that don&#39;t seem to apply to this case.</div><div class=3D"m_-760=
6975408332839371m_-704155850292949445HOEnZb"><div class=3D"m_-7606975408332=
839371m_-704155850292949445h5"><div class=3D"gmail_extra"><br></div></div><=
/div></blockquote><div><br></div></span><div>That won&#39;t work, as native=
 and cross suffixes in recipes are for humans, not bitbake.</div><span clas=
s=3D"m_-7606975408332839371HOEnZb"><font color=3D"#888888"><div><br></div><=
div>Ross=C2=A0</div></font></span></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a113ec5e413d63d05642c2f49--
