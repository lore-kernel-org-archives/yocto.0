Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4FF8E00C44; Wed, 21 Mar 2018 07:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76655E00BF7
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:41:09 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id w3-v6so7178673itc.4
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ly1s3DdBm+sr1OxtgKkcdKSKaYTCMmwguuGZLSBjmPw=;
	b=Ur7je3hdG0G/bAbkoPliDK5QOkUtzjVAtfOcIVBWSaPOegFLJ/XJrG7NqEtquTUtAJ
	g2tSZrQR4IW2ebFjuEsBiZchsiRtdLsSebBqd53rBnlON471aLWcLelHQp727v2v+ftt
	C62AkM+IlGTkP1kXcGtKWMxuevnC98Vw79TzulFOsMEQJr+EFVdZWrlnWO+6ArpOCiZ5
	0xMYRR2LWshCnpKat+zrJO/pUFCYMHcWDn7yd54F6fEpRFqoeclL7+N0e8uOeK9oR+Ud
	NHKeXiYnHhKmx7otz4L6MkZxzOzLm01UphcAOX5d1A/MvV6uxhTfMLYsDfbgoe9fTWzu
	O1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ly1s3DdBm+sr1OxtgKkcdKSKaYTCMmwguuGZLSBjmPw=;
	b=a8D0nABBd+5EuLQh3hRgpjNZUMMqZkSoYrlOFyzE9sVcHR/G3F3j80lF+8gzN7cfdg
	FgXAoNLFrEoKGkieQUyzmKqerke4oALsF+5bN+xFq2QevlXRfkR0COFwAiwHaZSxJ/Ru
	OBHgGIBhOC+mlSGvDVT6MbAZ/t7/wu2oFze+ro3s6TA8q9VDf6CLs7KTS/dWzNnDQxBx
	oTJxs7mLn+NUIVuCe/U/nx4DZajBOKhHmos5eWBdCOjEOoEopUsyL9MSVHouc86BsZwO
	LAf2E9LIyGnGrIXTi1KPpnIolvslUcvkiuy8b2VyLqvUf/shlmr50Je0cKQlBIET3ild
	Rn2Q==
X-Gm-Message-State: AElRT7HfdzV4pe4+PuzfkYl5136FXibLIrdK4YOyAhAmpxNWTIpFjNQL
	qjHgVpyRDLlOtzwX0jR8KMql6i0nLtyiRbQB9ZC0Cw==
X-Google-Smtp-Source: AG47ELtKmn8AEIAZlqIaZHu2EvSZ4YfWPqW/tucW3VuTI0lLcNMMgSqyMzACw3VkU0wA/l5XFN6Sg1cb2mkDq9GSvXE=
X-Received: by 2002:a24:4a53:: with SMTP id
	k80-v6mr4682091itb.45.1521643269293; 
	Wed, 21 Mar 2018 07:41:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 21 Mar 2018 07:40:48 -0700 (PDT)
In-Reply-To: <ccc3ea2f-f22a-930a-8912-489963dae8f4@linux.intel.com>
References: <CY4PR11MB17663B664B1ED6ADE96BC48AC7D40@CY4PR11MB1766.namprd11.prod.outlook.com>
	<dd055b01-fe83-d706-bce1-5a2aea3103fe@gmail.com>
	<CAJTo0LbxDGNrJH8tDiCgMKoSHUsK8Q17BUH=UVkY8zDBAm70+g@mail.gmail.com>
	<833712e4-00aa-1e05-8df5-a0f9a18d4e29@linux.intel.com>
	<CAJTo0LadpoW1BCCbfhsEac7PBV2qNxuiWrnRk6MZeV2DVWiDEA@mail.gmail.com>
	<61d1ecb9-e4a6-8d26-9bcc-76c7c42abb7f@linux.intel.com>
	<b65227e0-d37f-6ae6-9f4c-4c535460143e@balister.org>
	<ccc3ea2f-f22a-930a-8912-489963dae8f4@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Mar 2018 14:40:48 +0000
Message-ID: <CAJTo0LbtW7mP6p14ZfZAP-uVpvvQRxZjgoJnz7CbwBGUS3rDuA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?UmU6IFtPRS1jb3JlXSBZb2N0byBQcm9qZWN0IFN0YXR1cyBXVzEy4oCZMTg=?=
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
X-List-Received-Date: Wed, 21 Mar 2018 14:41:12 -0000
Content-Type: multipart/alternative; boundary="0000000000008ab6050567ed2e0b"

--0000000000008ab6050567ed2e0b
Content-Type: text/plain; charset="UTF-8"

Monthly seems like a good enough cadence to give everyone time to review
the mails, send the mails, get reviewed on the list, go through the
autobuilder, and eventually reach master.  Too fast and AUH will be sending
nagging mails for a patch which is shortly being merged.

Can we stop bikeshedding now? :)

Ross

On 21 March 2018 at 14:31, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 03/21/2018 04:24 PM, Philip Balister wrote:
>
>>      Which brings me to a question: what is a good schedule and cadence
>>>>      for AUH runs? Currently it's run on the 15th of every odd-numbered
>>>>      month (so January, March, and so on), but I thought of shifting it
>>>>      one month forward, so it doesn't land right in the middle of a
>>>>      feature freeze. Thoughts?
>>>>
>>>>
>>>> How long does a single run take, and why not run it every month?
>>>>
>>>
>>> Just a bit longer than a day, maybe 30 hours, if it needs to update the
>>> typical amount of 100-150 packages. I'll shift it to monthly then.
>>>
>>
>> Maybe bi-weekly? Could that help reduce the number of upgrades needed
>> for each run?
>>
>
> Only if the maintainers take those reminders as high priority items, and
> actually send out the patches quickly, and then those patches make it to
> master. All that needs to happen within those two weeks. Otherwise, the AUH
> will just re-run the same set.
>
> Alex
>

--0000000000008ab6050567ed2e0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Monthly seems like a good enough cadence to give everyone =
time to review the mails, send the mails, get reviewed on the list, go thro=
ugh the autobuilder, and eventually reach master.=C2=A0 Too fast and AUH wi=
ll be sending nagging mails for a patch which is shortly being merged.<div>=
<br></div><div>Can we stop bikeshedding now? :)</div><div><br></div><div>Ro=
ss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
21 March 2018 at 14:31, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"=
mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.kanav=
in@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D"">On 03/21/2018 04:24 PM, Philip Balister wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
=C2=A0=C2=A0=C2=A0=C2=A0 Which brings me to a question: what is a good sche=
dule and cadence<br>
=C2=A0=C2=A0=C2=A0=C2=A0 for AUH runs? Currently it&#39;s run on the 15th o=
f every odd-numbered<br>
=C2=A0=C2=A0=C2=A0=C2=A0 month (so January, March, and so on), but I though=
t of shifting it<br>
=C2=A0=C2=A0=C2=A0=C2=A0 one month forward, so it doesn&#39;t land right in=
 the middle of a<br>
=C2=A0=C2=A0=C2=A0=C2=A0 feature freeze. Thoughts?<br>
<br>
<br>
How long does a single run take, and why not run it every month?<br>
</blockquote>
<br>
Just a bit longer than a day, maybe 30 hours, if it needs to update the<br>
typical amount of 100-150 packages. I&#39;ll shift it to monthly then.<br>
</blockquote>
<br>
Maybe bi-weekly? Could that help reduce the number of upgrades needed<br>
for each run?<br>
</blockquote>
<br></span>
Only if the maintainers take those reminders as high priority items, and ac=
tually send out the patches quickly, and then those patches make it to mast=
er. All that needs to happen within those two weeks. Otherwise, the AUH wil=
l just re-run the same set.<br>
<br>
Alex<br>
</blockquote></div><br></div>

--0000000000008ab6050567ed2e0b--
