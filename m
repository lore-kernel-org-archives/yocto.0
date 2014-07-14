Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7185DE006C4; Mon, 14 Jul 2014 15:55:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA21E004FF
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 15:54:49 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id b8so1338970lan.5
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 15:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=b8hhqqgtxsrUIJuebzN49RQZRAkbiwsgQGs5HrtNrEU=;
	b=MpBldNt4pnLMQgN0J0iSY2kY+Vcvt/XCl2d07VU5DTCZqUb2bAKFhOlraeiTGVrnfF
	FBk6WGACzWksml7PmxxHkIwY8fz7Bv84sj9Md4pb8eUry9dph9irua1oYB2IuUOEPOae
	amAUwcaa3giN0TrSEbET5jqtBGS4/Oag71mL4JbBq/6DDClJn9HEq5jPEvN20Yynpl4j
	y5+S+xRHnVEdRHA3Xrs+qEdpAXevC1zy3HjiCJJK0LZrqGA91YbW8W6CAiC3ybt5M8+C
	3fkEqftajbLbiH+2QbcVM7FRnzQmGwbHk4JfmfltrAruCt9ZvMEhJ/Zi+Cdy10DQmCID
	ZwKQ==
X-Received: by 10.112.181.74 with SMTP id du10mr15487641lbc.40.1405378487679; 
	Mon, 14 Jul 2014 15:54:47 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.168.66 with HTTP; Mon, 14 Jul 2014 15:54:27 -0700 (PDT)
In-Reply-To: <53C45EC0.6070801@linux.intel.com>
References: <53C45BD7.1020104@mvista.com> <53C45EC0.6070801@linux.intel.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 14 Jul 2014 15:54:27 -0700
X-Google-Sender-Auth: _khBV6I66bivep3i3MtH4CLAhu4
Message-ID: <CABcZANkqBZ3Kw7POOBYQ-1=6rxZSioakS-K7qbS2CcYvp1C_xg@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] /etc/os-release
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
X-List-Received-Date: Mon, 14 Jul 2014 22:55:00 -0000
Content-Type: multipart/alternative; boundary=001a11c36fe48883b204fe2f2d8b

--001a11c36fe48883b204fe2f2d8b
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 14, 2014 at 3:50 PM, Saul Wold <sgw@linux.intel.com> wrote:

> On 07/14/2014 03:38 PM, akuster wrote:
>
>> Hello all,
>>
>> I noticed some reference to /etc/os-release in some recipes. Where can I
>> find the initial creation of /etc/os-release? If one is not created,
>> would there desire to have one?
>>
>>  Really?  We reference it in the meta/lib/oe/lsb.py release_dict_file()
> function to search for LSB information of the host machine to identify the
> host distro version information.
>
> Can you be specific about which recipes are using os-release, I did do a
> search.


I'm pretty sure we don't have an os-release recipe in oe-core at all yet,
so the file isn't going to exist on target. Mentor has one in meta-mentor
at the moment pending time to submit it again / poke on the existing
thread. See the thread with the subject "[RFC PATCH 0/2] Add
/etc/os-release". It's definitely something we should have, in my opinion.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c36fe48883b204fe2f2d8b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Mon, Jul 14, 2014 at 3:50 PM, Saul Wold <span dir=3D"lt=
r">&lt;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.i=
ntel.com</a>&gt;</span> wrote:<br>
<div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div>On 07/14/2014 03:38 PM, akuster wrote:<br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hello all,<br>
<br>
I noticed some reference to /etc/os-release in some recipes. Where can I<br=
>
find the initial creation of /etc/os-release? If one is not created,<br>
would there desire to have one?<br>
<br>
</blockquote></div>
Really? =C2=A0We reference it in the meta/lib/oe/lsb.py release_dict_file()=
 function to search for LSB information of the host machine to identify the=
 host distro version information.<br>
<br>
Can you be specific about which recipes are using os-release, I did do a se=
arch.</blockquote></div><br></div><div class=3D"gmail_extra">I&#39;m pretty=
 sure we don&#39;t have an os-release recipe in oe-core at all yet, so the =
file isn&#39;t going to exist on target. Mentor has one in meta-mentor at t=
he moment pending time to submit it again / poke on the existing thread. Se=
e the thread with the subject &quot;[RFC PATCH 0/2] Add /etc/os-release&quo=
t;. It&#39;s definitely something we should have, in my opinion.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c36fe48883b204fe2f2d8b--
