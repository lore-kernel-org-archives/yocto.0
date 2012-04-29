Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF5CFE013D1
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 15:06:43 -0700 (PDT)
Received: by lagu2 with SMTP id u2so2072230lag.35
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 15:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=UPhu5WeXtrc7u5Nsa7fgSeHfPc04+zUZOvxGlT/AZHk=;
	b=CAuJZb8jq7cBBI3PwZFDkTydqGa6K47miDqjiKgwwuE/h8S6ToOc2WWj/1ubAwX0nM
	aRmkxK6nehyPaggRHNC6lOZWHLgtRZ9UVrPV+6h0SLOpO+SgVXIMAEEv7iQfQ3UrX911
	rsWsJgbgeKDSzItj6yRRjHTHqK6Ut+GrbLVGvQeDvZWdLh4jkseofBlMIkLX8Rh3/wkJ
	XCkAbVmrEoLHINqn8LkpIkQlW9Fw5FgJ8DMGc7+3/UQV0LkCP2jLz3EniMLB5rkGbMpc
	2nWDxsU0gUzI2jr/16x3JUTaT2b3gIZtGjHnREaDAKKBRo4E6aVDhNAa5nXLh+sr+l7a
	kEpg==
Received: by 10.112.32.72 with SMTP id g8mr3037479lbi.43.1335737202600; Sun,
	29 Apr 2012 15:06:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Sun, 29 Apr 2012 15:06:12 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1204291752230.2933@oneiric>
References: <alpine.DEB.2.02.1204271850580.3661@oneiric>
	<CAJG6M_PnnrkRF59LrkPE=pr_Mj_Qwj6G-7ut7FKOVKj+tb3Rxw@mail.gmail.com>
	<CAMKF1sp6je9iYBAqjC8aPKksE8yg=LcMaB20v_oDcktfbZ-5EA@mail.gmail.com>
	<alpine.DEB.2.02.1204291734450.2680@oneiric>
	<CAMKF1soatOi4e3yf3qOiwSuJJJQ6eGem1JvtaBaEbmz2aQtewQ@mail.gmail.com>
	<alpine.DEB.2.02.1204291752230.2933@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 29 Apr 2012 15:06:12 -0700
Message-ID: <CAMKF1sr6BXNRcu3DfsNku-g=R8D4LMpYjaC3dakOjkLNjnqx+A@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: looking for recom for MIPS dev kit (*not* RS pro)
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
X-List-Received-Date: Sun, 29 Apr 2012 22:06:44 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 29, 2012 at 2:55 PM, Robert P. J. Day <rpjday@crashcourse.ca> w=
rote:
> On Sun, 29 Apr 2012, Khem Raj wrote:
>
>> On Sun, Apr 29, 2012 at 2:38 PM, Robert P. J. Day <rpjday@crashcourse.ca=
> wrote:
>> > On Sun, 29 Apr 2012, Khem Raj wrote:
>> >
>> >> On Sun, Apr 29, 2012 at 10:38 AM, Yury Bushmelev <jay4mail@gmail.com>=
 wrote:
>> >> >
>> >> > Have you seen Qi-Hardware's Ben NanoNote?
>> >> > http://en.qi-hardware.com/wiki/Ben_NanoNote
>> >> >
>> >>
>> >> yes I know that it uses MIPS32 based processor and my inclination is
>> >> to use mips64 based cpu thats why I am more interested in lemote.
>> >
>> > =C2=A0the only issue i see is that that netbook is $449 in the US:
>> >
>> > http://www.amazon.com/Screen-Lemote-Yeeloong-8101_B-Netbook/dp/B005XH1=
0NQ/ref=3Dsr_1_2?ie=3DUTF8&qid=3D1319989211&sr=3D8-2?tag=3Delectronicfro-20
>> >
>> > and that strikes me as excessively expensive for a MIPS dev kit. =C2=
=A0when
>> > beagles and pandas are giving people sub-$200 ARM kits, more than
>> > doubling that price for a MIPS kit is a big jump unless you can buy
>> > just the board for much less.
>>
>> They also have fuloong (mini PC) which is said to be around 250
>> NanoNote aint that bad a choice I think from price POV
>
> =C2=A0ah, that's more reasonable. =C2=A0sorry for dragging out this threa=
d so
> long but i'd really like a stable of boards/kits for teaching embedded
> linux and it would be nice if there was one for each main architecture
> in the price range of a beagle xm or panda es (< $200).
>
> =C2=A0i'll shut up now and just watch the list for someone to someday
> announce the next yocto-supported MIPS board that would fit the bill.
>

I think fuloong(mips64/mips32) and NanoNote both look reasonable
choices at this time. I personally think NanoNote would need less work
to get it shoe horned into yocto BSP space

