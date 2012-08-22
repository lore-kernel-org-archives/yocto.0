Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 281E9E013B2
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:15:31 -0700 (PDT)
Received: by lagr15 with SMTP id r15so939079lag.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 13:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JNpmv7EB6X2EZcN6O+oL56Viayjat2eK6ZT5QEjQHxI=;
	b=TcNoZbMFK2oqn51OWFYHuFsQXqZ6O7EsLZ1nKlfIwy8PJTp3kAaLbLzUj1CU+87hyb
	QLmsaxe3OsIChG3L5KUuVaIdkCwtex3U+HTzgCW4PdEFF3Jj9LcuGIg3x2k+QVhV2nM1
	oQMUAwSsYKPRJE+SKSUy5o2MBXRHSj6Ga66R1Y7We0qcBFW3VVy7IP5HSKjk/JveaSgf
	QpH221VPx4COCKvbpfKSYyY9Y5V7BEDAUjRl6WYr+qGcXqfvouGXxsMbbssoOok+WjZ5
	cm249NUTcgCTesnm1O416jNupEKgxBU0gCIVPzO0HAu+N7Lv239eq2SdytMgkmsEt1aT
	a+8A==
MIME-Version: 1.0
Received: by 10.112.44.9 with SMTP id a9mr1174656lbm.84.1345666530894; Wed, 22
	Aug 2012 13:15:30 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Wed, 22 Aug 2012 13:15:30 -0700 (PDT)
In-Reply-To: <CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
	<CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
	<CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
Date: Wed, 22 Aug 2012 16:15:30 -0400
Message-ID: <CAHUNapRvcW+M2t-LUpDYGRYJBYhLu0Yy_z66gHqE67kb9yWXvA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Wed, 22 Aug 2012 20:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 22, 2012 at 3:24 PM, Chris Larson <clarson@kergoth.com> wrote:
> On Wed, Aug 22, 2012 at 12:23 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>> "bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev..."
>> it lists "net-snmp". Therefore couldn't the wording of the bitbake
>> help be improved to say:
>>
>> -s, --show-versions   show current and preferred versions of all __recipes__
>>
>> instead of:
>
>
> It could, and should, be changed in that way, yes.

Do the OE people accept this wording too, or is this a
yocto-project-only thing? In other words, should a potential patch be
sent to OE or here?

