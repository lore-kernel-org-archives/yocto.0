Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4862BE00D5C; Tue,  3 Oct 2017 08:03:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CE25E00CF5
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 08:02:21 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id 85so11816038ith.2
	for <yocto@yoctoproject.org>; Tue, 03 Oct 2017 08:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0oD/XocLfkSpiHpxwN2G/g2jowL81t4LPDzqpjdENdw=;
	b=j4hb8g/Yy6eSjGNYieJey7SBSZl0rGInYwmDJA0H5SQkARkGMvht8KSKGZ24f1rlZ6
	GzhAZj+llC9uwW34U8Z4BksWTIl2KRP3Ty7d6gMSQ7ouQCZQmKo/uSdAJBici27tP2L0
	yxw0eNuUaq+3ZnFE+AIVdHjOh2eXqUj2tMm/vBVe6hd2l2SU16hDh5THs+bNkWeC1pr4
	C+P1e142+0s7nLno+B1QaowLSmz4MahRCghRNqjuBEBPRSaZjLadLWIbYo/jAnVqfvW6
	tEVtC7d8eqxLjnxl5UTv3YgbAf6amBI+oTRmUEy19mkyPVdd7nY7QxR6q7bnqQQsXnLY
	htkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0oD/XocLfkSpiHpxwN2G/g2jowL81t4LPDzqpjdENdw=;
	b=bJL3RVChHTCj/XLQUhlGVPJYHMyD5jLm6Ft1Vk3bdmuxVgou2zqxofrZwMJxE21yjY
	IRIPe3Ja32WsFfYoIpnqNkOq6ui7UEB1Rgr9Edq0Yc1XjO3ZuwkV5Smzvxo0EGjRsSxV
	aIY6/QLVmjtQfmT8vn9GBJmzuCB0sKgx09jXRsokctR3FLIJVGJSteaZV8qDJGKGfBLI
	bvY8W+8r99V77kgCvJtA3m7/KhCGSm0PFtogS0SfcMRIzRGmcOA7D3OAcJLFDBDOvitW
	Pz4qsICkbHJERBhO+6WTXNRtBGGgurtSOPkodcKy0062sGmJ5kXfn3I3Ht5WsdUc4vP+
	YDfg==
X-Gm-Message-State: AHPjjUhwE3YpSFJObdxI4Jrm7Jn02CAqKqADmCWnq2D1qC7ILR4vACMY
	G1cu+LBBZT5KH8HyoeGU/EdKsXKEN08fK+O7gmRk8A==
X-Google-Smtp-Source: AOwi7QBSuwnjbOoVDdZBhBQ3T5HKqhmYf+s2kSBVLc/fRMdRehu3DBjeZ6VcqYFm4OcjVM8jnth+QMQg3YILJtx3IaA=
X-Received: by 10.36.26.87 with SMTP id 84mr24714319iti.38.1507042941156; Tue,
	03 Oct 2017 08:02:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.164.134 with HTTP; Tue, 3 Oct 2017 08:02:00 -0700 (PDT)
In-Reply-To: <CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Oct 2017 16:02:00 +0100
Message-ID: <CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
To: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Tue, 03 Oct 2017 15:03:45 -0000
Content-Type: multipart/alternative; boundary="001a1144159a2b81b1055aa5c7fa"

--001a1144159a2b81b1055aa5c7fa
Content-Type: text/plain; charset="UTF-8"

You don't need to, it will search the host.

Ross

On 3 October 2017 at 15:54, eliya.mir@gmail.com <eliya.mir@gmail.com> wrote:

> Hi Ross,
> how to configure use of pkg-config-native ?
>
> On Tue, Oct 3, 2017 at 5:51 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 3 October 2017 at 15:13, eliya.mir@gmail.com <eliya.mir@gmail.com>
>> wrote:
>>
>>> Hi all,
>>> I am new to the Yocto project.
>>> Is this the Yocto forum ?
>>> I would like configure pkg-config search directories but, the program
>>> configured from the sysroots file system, so it does not see Host
>>> environment variables.
>>> i.e : there are two pkg-config apps : Host's pkg-config located at
>>> /usr/bin/ , and bitbake pkg-config located at ~/Yocto/build/tmp/sysroots/
>>> x86_64-linux/usr/bin/
>>>
>>>
>> If you want to access pkg-config files on the host, you'll need to use
>> the pkg-config-native binary as pkg-config uses the *target* sysroots.
>>
>> Ross
>>
>
>

--001a1144159a2b81b1055aa5c7fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You don&#39;t need to, it will search the host.<div><br></=
div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On 3 October 2017 at 15:54, <a href=3D"mailto:eliya.mir@gmail.com">=
eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@g=
mail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Ross,=C2=A0<div>how to con=
figure use of pkg-config-native ?</div></div><div class=3D"HOEnZb"><div cla=
ss=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue,=
 Oct 3, 2017 at 5:51 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span>On 3 =
October 2017 at 15:13, <a href=3D"mailto:eliya.mir@gmail.com" target=3D"_bl=
ank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.=
mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<=
br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr">Hi all,=C2=A0<br>I am new to the=
 Yocto project.=C2=A0<div>Is this the Yocto forum ?=C2=A0</div><div>I would=
 like configure pkg-config search directories but, the program configured f=
rom the sysroots file system, so it does not see Host environment variables=
.</div><div>i.e : there are two pkg-config apps : Host&#39;s pkg-config loc=
ated at /usr/bin/ , and bitbake pkg-config located at=C2=A0~/Yocto/build/tm=
p/sysroots/<wbr>x86_64-linux/usr/bin/</div><div><br></div></div></blockquot=
e><div><br></div></span><div>If you want to access pkg-config files on the =
host, you&#39;ll need to use the pkg-config-native binary as pkg-config use=
s the *target* sysroots.</div><span class=3D"m_6408664309892672214HOEnZb"><=
font color=3D"#888888"><div><br></div><div>Ross=C2=A0</div></font></span></=
div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a1144159a2b81b1055aa5c7fa--
