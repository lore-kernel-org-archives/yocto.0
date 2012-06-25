Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F10E00739
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:52:32 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1826814eaa.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=PPxTrpkJp1SdRqEbLstTt1LJ8VsvAW45ESlKGYRWO0k=;
	b=L5VyEi9Z+h5O4sdlpppXFD2RJDWzz3KGkICRvlLiJy07QnoN+xkg/fIMQopH9Dw2ew
	0j+kh75KbZKgl2S90f22WBnKYOJjPLve6LRodOZDARCzqw1aWkziHp9dSV77u5V/rE4o
	SOPA1CWbRyDHKRfSWkrKHG9wI5OiTC/hj6h+3WGp9j0xAZTc0ABmX4wPkLpR0e0MKZqr
	ioyjr+JYGpWVf0oQwZivQPROrcr1Fz5NJ0X1nI8S6vjC90mUshxXd/7RWMkSVs3eURJB
	vS0HWecg2W7Dn7LzD84AijhsAkAt1xqJmGaBDpy48v0PqiooheO1K2X+iZ8CpWPilh6t
	F05A==
Received: by 10.14.97.16 with SMTP id s16mr2478313eef.117.1340661151964; Mon,
	25 Jun 2012 14:52:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 14:52:01 -0700 (PDT)
In-Reply-To: <863CA417-BC2A-4F07-89C2-3E7A57B402D4@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
	<6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
	<CAMKF1soot0iQ-nfZKAbnEEYieW+_H6YPWnrxcFQMSQiz_XPFjg@mail.gmail.com>
	<863CA417-BC2A-4F07-89C2-3E7A57B402D4@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 14:52:01 -0700
Message-ID: <CAMKF1spJU7av-qysV3kzcT5xbim_o09B6zwYirjRP4MojsBScA@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Jun 2012 21:52:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 25, 2012 at 2:48 PM, Chris Tapp <opensource@keylevel.com> wrote=
:
> Yes, it's 3.1.9 and it does compile. But the latest commits don't run whe=
n I build them (system displays a 'failed to execute kernel' error screen).=
 Paul Eggleton has failed to get any to work when built using 4.7.0 (curren=
t master), so it does look as if this is compiler-related.
>
> None of the commits appear to be likely to cause a change from 'good' to =
'bad'.
>

can you tell me which commit is last good ?
yes there are interaction between kernel and compiler
sometimes kernel code has wrong expectation of gcc and when it gets
fixed in gcc things dont work so in such cases kernel is fixed in some
case kernel may expose real gcc bug too. Cant tell much unless its narrowed=
 down

in some case

