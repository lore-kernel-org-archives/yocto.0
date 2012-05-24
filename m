Return-Path: <kergoth@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6374E01363
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 09:32:43 -0700 (PDT)
Received: by weyr3 with SMTP id r3so7764122wey.35
	for <yocto@yoctoproject.org>; Thu, 24 May 2012 09:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=HC0PBEVVEon6KbXATabbD69s24xVCfMYdk6oNPEKq1Q=;
	b=bwniWid+61FDVK85NrW5tT3xMvbxzkEoQ6z9SH7YD6xJFhXxHpeImllFgeQWRhk6Nz
	ZvlUotL2kOA/WLkDyQaPAp+U8Xdvp41s1Tiq4ufh7QjSLd9+lNWzJg5CoeDpiwmZQIys
	XzfnJ0BD+dgr5tl0/hJlXESF77ieYhYrYULRK5FDyWHGUudfSbCeTKvHXXEOeIsldlce
	AXq3ZhU3JY3PhwPEaJZUzIE2qMUdu2shfgNrKQt4iDaMF8pjmXiSZsvQU5Ul9BEiECRE
	agqXRM9Cg7qWZ+WSQTotgSjMN7r9FOZ3iCrH3IGmVLSeksdCYzctxzQELPVzLLT6x4eN
	93+A==
Received: by 10.216.141.213 with SMTP id g63mr74064wej.34.1337877162544; Thu,
	24 May 2012 09:32:42 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.181.16 with HTTP; Thu, 24 May 2012 09:32:22 -0700 (PDT)
In-Reply-To: <4FBE5702.2090301@gmail.com>
References: <4FBE4BD6.5060800@gmail.com>
	<CABcZANmZ1k3vpJJxKKGNYG-bbZ-YH2bS5Fej6O5E=Fg5aRkitA@mail.gmail.com>
	<4FBE5702.2090301@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 24 May 2012 09:32:22 -0700
X-Google-Sender-Auth: F52qp77igQ_iOtgEyAVnedIXBaY
Message-ID: <CABcZANnO3p7AfG1a4cm=PLZv74=-F_zm1Z6=9CTG9yLDw4fONg@mail.gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: checking out branches: tracking vs. tags
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 May 2012 16:32:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 24, 2012 at 8:42 AM, jfabernathy <jfabernathy@gmail.com> wrote:
> On 05/24/2012 11:21 AM, Chris Larson wrote:
>>
>> On Thu, May 24, 2012 at 7:55 AM, jfabernathy<jfabernathy@gmail.com>
>> =C2=A0wrote:
>>>
>>> the Development Manual Appendix A
>>>
>>> (http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#de=
v-manual-bsp-appendix),
>>> I see the statement:
>>>
>>> =C2=A0$ git checkout denzil-7.0 -b denzil
>>>
>>>
>>> What I think this does is create me a local branch that is fixed to wha=
t
>>> was
>>> committed when the denzil-7.0 tag was created and it will remain that w=
ay
>>> and will not track the denzil branch as it gets updated. =C2=A0Right???=
?
>>>
>>> Now if I want to track the denzil branch as changes are committed, I
>>> think I
>>> do the following.
>>>
>>> =C2=A0$ git checkout origin/denzil -b denzil
>>>
>>>
>>> Now I can do git pull commands to get the updates that are committed.
>>> Right??
>>
>> Your arguments are backwards. See git help checkout.
>
> I looked at git help and man git, but it is still unclear because if I do
> the first one where I checkout using the tag, I cannot git pull at all; I
> get an error, about not enough information to merge. =C2=A0However, if I =
use the
> name of the branch I can now do git pull when changes are committed to
> denzil. =C2=A0That's why I thought I understood it. =C2=A0But who knows.

You're right, my mistake. Those commands are fine, and your
understanding is largely correct. I highly recommend reading Pro Git
for further information.
--=20
Christopher Larson

