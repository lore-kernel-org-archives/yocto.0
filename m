Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 387C0E006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 15:05:33 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1838890eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 15:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=PIGnAc71fFDx2bpcmcuJwmerW33i8WY/IPgz/TsFpf8=;
	b=Wsru2hrnnP96MSR2oC4PCzLyspd8RAaqn1P5zEWT6FVu34UnGLFBA9R8JyyoYbp6TG
	vzrrdG+gu/42DEefX1gGv4NiF5Mv1NZBQB4xFsjFH4+7kljYViMFWSGEXy9vSYbKcza9
	yCOMAMe5h2Tb7RtEd3HORkwH1QvwrwwSUQ1bhzJUY3DEPIwRUyIcB7lqnYJMkY2cLX9f
	+TDqbtCMCMl6O6LqC/voOi441Mngkm+VwhBypc5iO+RRuXOiDTVUUriIA5NXh7FbhiKI
	QTPB1OdH0tqs17SZVXcl5ZIO+fbvULape6HOpQf30+V6E1JRlmJJd9CqZnAFTJ8QbTNq
	9GLA==
Received: by 10.14.185.137 with SMTP id u9mr2828761eem.220.1340661932331; Mon,
	25 Jun 2012 15:05:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 15:05:02 -0700 (PDT)
In-Reply-To: <E63D1693-2EBC-463D-9ABE-95DA612387EE@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
	<6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
	<CAMKF1soot0iQ-nfZKAbnEEYieW+_H6YPWnrxcFQMSQiz_XPFjg@mail.gmail.com>
	<863CA417-BC2A-4F07-89C2-3E7A57B402D4@keylevel.com>
	<CAMKF1spJU7av-qysV3kzcT5xbim_o09B6zwYirjRP4MojsBScA@mail.gmail.com>
	<E63D1693-2EBC-463D-9ABE-95DA612387EE@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 15:05:02 -0700
Message-ID: <CAMKF1srVRN4DfrbLb9xQ-h3EyUY_R6QR6cKaDPMBboRxG3aKeA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Selecting gcc version
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
X-List-Received-Date: Mon, 25 Jun 2012 22:05:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 25, 2012 at 2:57 PM, Chris Tapp <opensource@keylevel.com> wrote=
:
>
> On 25 Jun 2012, at 22:52, Khem Raj wrote:
>
>> On Mon, Jun 25, 2012 at 2:48 PM, Chris Tapp <opensource@keylevel.com> wr=
ote:
>>> Yes, it's 3.1.9 and it does compile. But the latest commits don't run w=
hen I build them (system displays a 'failed to execute kernel' error screen=
). Paul Eggleton has failed to get any to work when built using 4.7.0 (curr=
ent master), so it does look as if this is compiler-related.
>>>
>>> None of the commits appear to be likely to cause a change from 'good' t=
o 'bad'.
>>>
>>
>> can you tell me which commit is last good ?
>> yes there are interaction between kernel and compiler
>> sometimes kernel code has wrong expectation of gcc and when it gets
>> fixed in gcc things dont work so in such cases kernel is fixed in some
>> case kernel may expose real gcc bug too. Cant tell much unless its narro=
wed down
>
>
> Last one I've got to work is https://github.com/raspberrypi/linux/commit/=
3fc65f9f291fb19cad434968a4a0f66ab749e637.
>
> I've opened an issue at https://github.com/raspberrypi/linux/commit/3fc65=
f9f291fb19cad434968a4a0f66ab749e637 which also shows the firmware version t=
hat I know works, but that's probably not important here.
>

well there are options in .config being changed that can mean that now
you could be waking up the sleeping dinosaurs.

> I think I've got it building under 4.5.1 (Edison, as that was easier to d=
o for a quick test).

OK

